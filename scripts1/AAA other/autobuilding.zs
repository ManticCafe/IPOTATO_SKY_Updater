import mods.modularmachinery.MMEvents;
import mods.modularmachinery.IMachineController;
import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlock;
import mods.modularmachinery.MachineStructureFormedEvent;
import crafttweaker.block.IBlockDefinition;

//ab(模块化机械注册名,模块化机械控制器方块,替换的方块,合成催化剂没有填null,tips=1时不会自己写tooltips,meta值);
function ab (mm_name as string,b1 as IItemStack,b2 as IItemStack,catalyst as IItemStack,tips as int,meta as int) {
    MMEvents.onStructureFormed(mm_name, function(event as MachineStructureFormedEvent) {
        val ctrl = event.controller;
        val world = ctrl.world;
        val pos = ctrl.pos;
        if(meta == 0){
            world.setBlockState((b2 as IBlock).definition.defaultState,pos);
        }else{
            world.setBlockState((b2 as IBlock).definition.getStateFromMeta(meta),pos);
        }
    });
    if(!isNull(catalyst)) {
        recipes.addShapeless(b1, [b2,catalyst.reuse()]);
        recipes.addShapeless(b2, [b1]);
    }else{
        recipes.addShapeless(b1, [b2]);
        recipes.addShapeless(b2, [b1]);    
    }
    if(tips != 1){
        b1.addTooltip("可用于自动搭建" + b2.displayName + "，成型后[§n§l" + b1.displayName + "§r§r]将变回[§n§l" + b2.displayName + "§r§r]方块");
    }
}
ab("nature_altar",<modularmachinery:nature_altar_controller>, <naturesaura:nature_altar>,null,0,0);
ab("ritual_forest",<modularmachinery:ritual_forest_controller>,<minecraft:sapling:*>,<naturesaura:gold_leaf>,1,0);
<modularmachinery:ritual_forest_controller>.addTooltip("觉得自己放金粉太麻烦了?这个机器来帮你!放下后用木棍右键快速搭建森林仪式的结构,完成后控制器方块自动变成橡树树苗");
ab("starlight_altar",<modularmachinery:starlight_altar_controller>,<astralsorcery:blockaltar:1>,<astralsorcery:itemwand>,2906379524,1);
ab("celestial_altar",<modularmachinery:celestial_altar_controller>,<astralsorcery:blockaltar:2>,<astralsorcery:itemwand>,114514,2);
ab("iridescent_altar",<modularmachinery:iridescent_altar_controller>,<astralsorcery:blockaltar:3>,<astralsorcery:itemwand>,1919810,3);
