import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.world.IWorld;

import mods.zenutils.ICatenationBuilder;
import crafttweaker.util.Math;
import native.java.util.Random;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.Sync;

val rand as Random =Random();

MachineModifier.setMaxThreads("internal_combustion_engine",0);
//MachineModifier.addCoreThread("internal_combustion_engine",FactoryRecipeThread.createCoreThread("部件升级"));
MachineModifier.addCoreThread("internal_combustion_engine",FactoryRecipeThread.createCoreThread("燃料"));
MachineModifier.addCoreThread("internal_combustion_engine",FactoryRecipeThread.createCoreThread("发电"));

MMEvents.onControllerGUIRender("internal_combustion_engine", function(event as ControllerGUIRenderEvent) {
        val ctrl = event.controller;
        val world = ctrl.world;
        val data = ctrl.customData;
        val ddata = D(data);
        val map = data.asMap();
        val rpm = ddata.getLong("rpm",0);
        var info = "转速: " + rpm + " RPM";
        event.extraInfo = info;
});

RecipeBuilder.newBuilder("swcy1","internal_combustion_engine",10)
    .addFluidInput(<liquid:biodiesel>*40)
    .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var rpm = ddata.getLong("rpm",0);
        var hasfuel =ddata.getInt("hasfuel",0);
        val target = 1800;
        val alpha = 0.1;
        val randomDelta = rand.nextInt(19);
        if(rpm < 1800){
            rpm = rpm + (target - rpm) * alpha + randomDelta;
            map["rpm"] = Math.floor(rpm);
        }else if(rand.nextInt(1) == 0){
            map["rpm"] = rpm - 1;
        }
        map["hasfuel"] = 1;
        event.controller.customData = data;
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var hasfuel =ddata.getInt("hasfuel",0);
        map["hasfuel"] = 0;
        event.controller.customData = data;
    })
    .setThreadName("燃料")
.build();
RecipeBuilder.newBuilder("cy","internal_combustion_engine",10)
    .addFluidInput(<liquid:diesel>*20)
    .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var rpm = ddata.getLong("rpm",0);
        var hasfuel =ddata.getInt("hasfuel",0);
        val target = 2000;
        val alpha = 0.2;
        val randomDelta = rand.nextInt(19);
        if(rpm < 2000){
            rpm = rpm + (target - rpm) * alpha + randomDelta;
            map["rpm"] = Math.floor(rpm);
        }else if(rand.nextInt(1) == 0){
            map["rpm"] = rpm - 1;
        }
        map["hasfuel"] = 1;
        event.controller.customData = data;
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var hasfuel =ddata.getInt("hasfuel",0);
        map["hasfuel"] = 0;
        event.controller.customData = data;
    })
    .setThreadName("燃料")
.build();
RecipeBuilder.newBuilder("zfy","internal_combustion_engine",10)
    .addFluidInput(<liquid:creosote>*500)
    .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var rpm = ddata.getLong("rpm",0);
        var hasfuel =ddata.getInt("hasfuel",0);
        val target = 1700;
        val alpha = 0.1;
        val randomDelta = rand.nextInt(19);
        if(rpm < 1700){
            rpm = rpm + (target - rpm) * alpha + randomDelta;
            map["rpm"] = Math.floor(rpm);
        }else if(rand.nextInt(2) == 1){
            map["rpm"] = rpm - 1;
        }
        map["hasfuel"] = 1;
        event.controller.customData = data;
    })
    .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var hasfuel =ddata.getInt("hasfuel",0);
        map["hasfuel"] = 0;
        event.controller.customData = data;
    })
    .setThreadName("燃料")
.build();
RecipeBuilder.newBuilder("energy","internal_combustion_engine",1)
    .addEnergyPerTickOutput(5)
    .addPreCheckHandler(function(event as RecipeCheckEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var rpm = ddata.getLong("rpm",0);
        if(rpm == 0){
            event.setFailed("转速过低，无法发电！");
        } else if(rpm <= 150 && rpm != 0){
            map["rpm"] = rpm - 1;
        } else if(rpm > 150 && rpm <= 500){
            map["rpm"] = rpm - 3;
        } else if(rpm > 500 ){
            map["rpm"] = rpm - 7;
        }
        event.controller.addModifier("energy", RecipeModifierBuilder.create("modularmachinery:energy", "output", Math.floor(rpm) , 1, false).build());
        event.controller.customData = data;
    })
/*  .addFactoryPreTickHandler(function(event as FactoryRecipeTickEvent) {
        val data = event.controller.customData;
        val ddata = D(data);
        val map = data.asMap();
        var rpm = ddata.getLong("rpm",0);
        var hasfuel =ddata.getInt("hasfuel",0);
        val alpha = 0.99;
        if(rpm > 150){
            event.controller.addModifier("energy", RecipeModifierBuilder.create("modularmachinery:energy", "output", rpm , 1, false).build());
        }
        if(hasfuel == 0 && tickaa ==0){
            event.controller.world.catenation().sleep(1).run(function(w,c){
                val data = event.controller.customData;
                val ddata = D(data);
                var hasfuel =ddata.getInt("hasfuel",0);
                if(hasfuel == 0){tickaa = 1;}
            }).start();
        }
        if(tickaa == 1 && rpm == 0 ){
            tickaa = 0; 
        }
        if(hasfuel == 0 && tickaa == 1) {
            rpm = rpm * 0.99;
            map["rpm"] = Math.floor(rpm);
            event.controller.customData = data;
        }
    })*/
    .setThreadName("发电")
.build();
