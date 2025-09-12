import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.world.IWorld;
import crafttweaker.item.IItemDefinition;

import mods.zenutils.ICatenationBuilder;
import crafttweaker.util.Math;
import native.java.util.Random;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.RecipeStartEvent;
import mods.modularmachinery.RecipeFinishEvent;
import mods.modularmachinery.SimpleMachineUpgrade;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.MachineBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.MachineStructureUpdateEvent;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.Sync;
import mods.modularmachinery.MachineUpgradeHelper;
import mods.modularmachinery.MachineUpgradeBuilder;
import mods.modularmachinery.MachineUpgrade;
import mods.modularmachinery.UpgradeEventHandlerWrapper;

MachineModifier.setInternalParallelism("stone_machine_0", 32);
RecipeBuilder.newBuilder("makecobblestone_0","stone_machine_0",10)
    .addInput(<extrautils2:ingredients:8>).setChance(0)
    .addItemOutputs(<minecraft:cobblestone> *2)
    .addRecipeTooltip("在一级刷石机中，最多可放入32个升级，每多一个+2圆石")
    .build();
global crushMap as IItemStack[string] = {
    "minecraft:cobblestone:0" : <minecraft:gravel>,
    "minecraft:gravel:0" : <minecraft:sand>,
    "minecraft:sand:0" : <exnihilocreatio:block_dust>,
    "minecraft:sand:1" : <minecraft:sand:1>
};

var smeltMap as IItemStack[string] = {
    "minecraft:cobblestone:0" : <minecraft:stone>,
    "minecraft:sand:0" : <minecraft:glass>
};

function getKey(it as IItemStack) as string {
    return it.definition.id + ":" + it.metadata;
}

function doCrush(input as IItemStack, maxTimes as int) as IItemStack {
    var current = input;
    var times = 0;
    while (times < maxTimes) {
        var key = getKey(current);
        if (crushMap has key) {
            current = crushMap[key];
            times = times + 1;
        } else {
            break;
        }
    }
    return current;
}

function getUpgradeLevel(ctrl as IMachineController, id as string, max as int) as int {
    val upgrades = ctrl.getMachineUpgrade(id);
    var total = 0;
    for u in upgrades {
        total = total + u.stackSize;
    }
    return total > max ? max : total;
}

RecipeBuilder.newBuilder("makecobblestone_1","stone_machine_1",20,1000)
    .addItemOutput(<minecraft:cobblestone> * 4)
    .addItemModifier(function(ctrl as IMachineController, item as IItemStack) {
        val data =ctrl.customData;
        var ddata = D(data);
        var map =data.asMap();
        var outputdesc =ddata.getString("output","空");
        var arg1 =ddata.getInt("arg1",0);
        var arg2 =ddata.getInt("arg2",0);
        var arg3 =ddata.getInt("arg3",0);
        val amountMultiplier = getUpgradeLevel(ctrl, "upgrade_mining", 15) + 1;
        val crushLevel = getUpgradeLevel(ctrl, "upgrade_crush", 3);
        //var randomStone = applyTypeUpgrade(ctrl, ctrl.world);
        var result = doCrush(item, crushLevel);
        val smeltLevel = getUpgradeLevel(ctrl, "upgrade_smelt", 1);
        if (smeltLevel > 0) {
            var key = getKey(result);
            if (smeltMap has key) {
                result = smeltMap[key];
            }
        }
        if (result.isSameStack(item)) {
            result = <minecraft:cobblestone>;
        }
        map["arg1"] =amountMultiplier - 1;
        map["arg2"] =crushLevel;
        map["arg3"] =smeltLevel;
        map["output"] = result.displayName;
        ctrl.customData = data;
        return result.withAmount(amountMultiplier);
    })
    .addPreCheckHandler(function(ev as RecipeCheckEvent){
        val ctrl = ev.controller;
        val data =ctrl.customData;
        var ddata = D(data);
        var map =data.asMap();
        var upgrade_stable = ddata.getInt("upgrade_stable",1);
        var failure_rate = ddata.getInt("failure_rate",0);
        val maintenanceLevel = getUpgradeLevel(ctrl,"upgrade_stable",1);
        val miningLevel = getUpgradeLevel(ctrl, "upgrade_mining", 15);
        val crushLevel = getUpgradeLevel(ctrl, "upgrade_crush", 3);
        val smeltLevel = getUpgradeLevel(ctrl, "upgrade_smelt", 1);
        val rate = (miningLevel*1) + (crushLevel*3) + (smeltLevel*5) - (maintenanceLevel*5);
        map["arg4"] = maintenanceLevel;
        map["failure_rate"] = rate;
        ctrl.customData = data; 
        if(ctrl.world.random.Chance(rate)){
            ev.setFailed("本次合成失败！");
        }
    })
    .addRecipeTooltip("不需要任何升级即可产出")
    .addRecipeTooltip("不过你可以放入挖掘升级来提高产出,每放入一个挖掘升级产出+4")
    .addRecipeTooltip("如果放入的升级失效了，可以拿出来重新放入")
    .build();
MachineUpgradeBuilder.newBuilder("upgrade_mining","升级：挖掘升级",1,15)
    .addDescriptions("在模块化机械中最多可叠加15个,每多一个产出+4圆石")
    .addDescriptions("每放一个进入造石机中可增加1%的失败率")
    .addCompatibleMachines("stone_machine_1")
.buildAndRegister();
MachineUpgradeBuilder.newBuilder("upgrade_smelt","升级：熔炼升级",1,1)
    .addDescriptions("放入造石机的升级总线方块中可让造石机进行一次熔炼工作")
    .addDescriptions("每放一个进入造石机中可增加3%的失败率")
    .addDescriptions("在模块化机械中最多可放入1个")
    .addCompatibleMachines("stone_machine_1")
.buildAndRegister();
MachineUpgradeBuilder.newBuilder("upgrade_type","升级：种类升级",1,1)
    .addDescriptions("放入造石机的升级总线方块中可让造石机生产安山岩/闪长岩/花岗岩/圆石")
    .addDescriptions("每放一个进入造石机中可增加error%的失败率")
    .addDescriptions("在模块化机械中最多可放入1个")
    .addCompatibleMachines("stone_machine_1")
.buildAndRegister();
MachineUpgradeBuilder.newBuilder("upgrade_crush","升级：粉碎升级",1,3)
    .addDescriptions("放入造石机的升级总线方块中可让造石机进行一次粉碎工作")
    .addDescriptions("每放一个进入造石机中可增加2%的失败率")
    .addDescriptions("在模块化机械中最多可叠加3个")
    .addCompatibleMachines("stone_machine_1")
.buildAndRegister();
MachineUpgradeBuilder.newBuilder("upgrade_stable","升级：稳定升级",1,1)
    .addDescriptions("在模块化机械中最多可放入1个")
    .addCompatibleMachines("stone_machine_1")
.buildAndRegister();
MachineUpgradeHelper.addFixedUpgrade(<extrautils2:ingredients:8>,"upgrade_mining");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:upgrade_crush>,"upgrade_crush");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:upgrade_melt>,"upgrade_smelt");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:upgrade_type>,"upgrade_type");
MachineUpgradeHelper.addFixedUpgrade(<contenttweaker:upgrade_stable>,"upgrade_stable");
//二级刷石机显示输出
RecipeBuilder.newBuilder("stone_machine_render01","stone_machine_1",10,0)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {event.setFailed("本次合成失败！");})
    .addItemOutput(<minecraft:gravel> * 4)
    .addRecipeTooltip("放入一个粉碎升级即可产出")
    .addRecipeTooltip("每放入一个挖掘升级产出+4")
    .addRecipeTooltip("如果放入的升级失效/输出有误，可以拿出来重新放入")
.build();
RecipeBuilder.newBuilder("stone_machine_render02","stone_machine_1",10,0)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {event.setFailed("本次合成失败！");})
    .addItemOutput(<minecraft:sand> * 4)
    .addRecipeTooltip("放入二个粉碎升级即可产出")
    .addRecipeTooltip("每放入一个挖掘升级产出+4")
    .addRecipeTooltip("如果放入的升级失效/输出有误，可以拿出来重新放入")
.build();
RecipeBuilder.newBuilder("stone_machine_render03","stone_machine_1",10,0)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {event.setFailed("本次合成失败！");})
    .addItemOutput(<exnihilocreatio:block_dust> * 4)
    .addRecipeTooltip("放入三个粉碎升级即可产出")
    .addRecipeTooltip("每放入一个挖掘升级产出+4")
    .addRecipeTooltip("如果放入的升级失效/输出有误，可以拿出来重新放入")
.build();
RecipeBuilder.newBuilder("stone_machine_render04","stone_machine_1",10,0)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {event.setFailed("本次合成失败！");})
    .addItemOutput(<minecraft:stone> * 4)
    .addRecipeTooltip("放入一个熔炼升级即可产出")
    .addRecipeTooltip("每放入一个挖掘升级产出+4")
    .addRecipeTooltip("如果放入的升级失效/输出有误，可以拿出来重新放入")
.build();
RecipeBuilder.newBuilder("stone_machine_render05","stone_machine_1",10,0)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {event.setFailed("本次合成失败！");})
    .addItemOutput(<minecraft:glass> * 4)
    .addRecipeTooltip("放入一个熔炼+两个粉碎升级即可产出")
    .addRecipeTooltip("每放入一个挖掘升级产出+4")
    .addRecipeTooltip("如果放入的升级失效/输出有误，可以拿出来重新放入")
.build();
//guirender
MMEvents.onControllerGUIRender("stone_machine_1",function(event as ControllerGUIRenderEvent){
    val ctrl = event.controller;
    val data = ctrl.customData;
    val ddata = D(data);
    var mining = ddata.getInt("arg1",0);
    val smelt = ddata.getInt("arg2",0);
    val crush = ddata.getInt("arg3",0);
    val stable = ddata.getInt("arg4",0);
    val failure_rate = ddata.getInt("failure_rate",0);
    val outputdesc =ddata.getString("output","空"); 
    var info as string[]= [];
    info += "当前刷石机产出：" ~ outputdesc ~ "*" ~ ((mining*4) + 4);
    if(failure_rate >= 0){
        info += "失败率：" ~ failure_rate ~ "%";
    }else{
        info += "失败率：0%";
    }
    info += "—————升级总线监控器—————";
    info += "挖掘升级：" ~ mining;
    info += "粉碎升级：" ~ crush;
    info += "熔炼升级：" ~ smelt;
    info += "稳定升级：" ~ stable;
    event.extraInfo = info;
});