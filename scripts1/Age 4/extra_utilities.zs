# Age 4

import mods.extrautils2.Resonator;
import crafttweaker.item.IItemStack;

function gongzhen (input as IItemStack, inputnumber as int, output as IItemStack, outputnumber as int, GP as int) {
    mods.extrautils2.Resonator.add(output * outputnumber, input * inputnumber, GP*100);
}

//血之晶
mods.extrautils2.Resonator.add(<contenttweaker:blood_crystal_up>, <contenttweaker:blood_crystal>*4, 3200);

//烧制石头
mods.extrautils2.Resonator.add(<extrautils2:decorativesolid:3>, <naturesaura:infused_stone>*2, 800);

//珠宝商工作站
mods.extrautils2.Resonator.add(<artisanworktables:workstation:4>, <artisanworktables:worktable:4>, 6400);

# 天空之锭
gongzhen(<naturesaura:infused_iron>,4,<naturesaura:sky_ingot>,1,16);

# 生命源质输入仓
gongzhen(<modularmachinery:blockcasing>,1,<modularmachinery:blocklifeessenceproviderinput>,1,96);

# 强化机器零件
gongzhen(<enderio:item_material:54>,1,<enderio:item_material:68>,8,192);

//次级血晶粉
gongzhen(<contenttweaker:basic_intergrowth_dust>,1,<contenttweaker:blood_crystal_dust>,2,16);

//基岩粉种子
gongzhen(<mysticalagriculture:stone_seeds>,1,<mysticalagriculture:grains_of_infinity_seeds>,1,128);

//钻石种子
gongzhen(<mysticalagriculture:coal_seeds>,1,<mysticalagriculture:diamond_seeds>,1,512);

//基础线圈
gongzhen(<enderio:item_basic_capacitor:1>,1,<actuallyadditions:item_misc:7>,2,16);