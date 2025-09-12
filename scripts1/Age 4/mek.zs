#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mod.mekanism.gas.IGasStack;

//蒸馏塔

//纯净钯浸出液
mods.mekanism.thermalevaporation.addRecipe(<liquid:palladium_rich_tramp_metal_leaching_solution>,<liquid:palladium_rich_tramp_metal_leaching_solution2>);
//纯净铂浸出液体
mods.mekanism.thermalevaporation.addRecipe(<liquid:platinum_rich_tramp_metal_leaching_solution>,<liquid:platinum_rich_tramp_metal_leaching_solution2>);

//冶金灌注机
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>);

mods.mekanism.infuser.addRecipe("REDSTONE", 20, <bigreactors:ingotblutonium>, <mekanism:enrichedalloy>);

mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>);

mods.mekanism.infuser.addRecipe("REDSTONE", 20, <ore:ingotIridium>, <mekanism:controlcircuit>);

//==============================================================================================================================================================================================

//数字组装机

//幸运方块
addDigitalAssemblyTableRecipe(<minecraft:chest> * 16,null,null,null,null,null,null,null,null,<liquid:gold> * 9216,<gas:oxygen> * 10000,<contenttweaker:lucky_block> * 16,<liquid:water> * 1000,<gas:hydrogen> * 1000,2048.0d,100);
//超能金属爆弹
addDigitalAssemblyTableRecipe(<contenttweaker:naquadah_plate> * 64,<contenttweaker:charged_metal_frame> * 32,<contenttweaker:taranium_plate> * 16,<contenttweaker:charged_metal_frame> * 32,<contenttweaker:bomb_star> * 4,<contenttweaker:charged_metal_frame> *32,<contenttweaker:taranium_plate> * 16,<contenttweaker:charged_metal_frame> * 32,<contenttweaker:naquadah_plate> * 64,<liquid:growth> * 20000,<gas:oxygen> * 10000,<contenttweaker:charged_metal_blaster> * 4,<liquid:water> * 1000,<gas:hydrogen> * 1000,16384.0d,1200);
//富集合金
addDigitalAssemblyTableRecipe(<thermalfoundation:material:160> * 48,null,null,null,null,null,null,null,null,<liquid:redstone> * 480,<gas:oxygen> * 10000,<mekanism:enrichedalloy> * 64,<liquid:water> * 1000,<gas:hydrogen> * 1000,2048.0d,640);
//基础控制电路
addDigitalAssemblyTableRecipe(<thermalfoundation:material:135> * 48,null,null,null,null,null,null,null,null,<liquid:redstone> * 480,<gas:oxygen> * 10000,<mekanism:controlcircuit> * 64,<liquid:water> * 1000,<gas:hydrogen> * 1000,2048.0d,640);

//==============================================================================================================================================================================================

//环境气体收集器
addAmbientGas(6,<gas:unstabledimensional>,0.2);
addAmbientGas(9,<gas:unstabledimensional>,0.2);