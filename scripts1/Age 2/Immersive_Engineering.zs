//导包
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.BlastFurnace;
import mods.immersiveengineering.ArcFurnace;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.AlloySmelter;

//高炉砖
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:stone_decoration:1>, 0, <minecraft:nether_brick>, 600);

//火种子
mods.immersiveengineering.BlastFurnace.addRecipe(<mysticalagriculture:fire_seeds>, <minecraft:wheat_seeds>, 480);

//删除 电路板
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:27>);

//删除 钢锭
mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:metal:8>);

mods.immersiveengineering.BlastFurnace.removeRecipe(<immersiveengineering:storage:8>);

//删除电弧炉磁钢锭
mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot>);

//删除电弧炉充能合金
mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:1>);

//删除电弧炉导电铁
mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:4>);

//删除电弧炉玄钢
mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:6>);

//删除电弧炉魂金
mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot:7>);

# 删除 铱矿石
mods.immersiveengineering.Crusher.removeRecipe(<ic2:misc_resource:1>);

//钢锭
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:material:160>, <naturesaura:infused_iron>, 600);
mods.immersiveengineering.BlastFurnace.addRecipe(<thermalfoundation:storage_alloy>, <naturesaura:infused_iron_block>, 3000);

//橡胶片
mods.immersiveengineering.MetalPress.addRecipe(<contenttweaker:rubber_sheet>,<ic2:crafting>,<immersiveengineering:mold>, 512);

//模块化合金锭
mods.immersiveengineering.ArcFurnace.addRecipe(<modularmachinery:itemmodularium> *4, <minecraft:redstone>* 3, <immersiveengineering:material:7>*2, 100, 512, [<botania:manaresource>, <ore:ingotInvar>,<ore:ingotElectrum>,<naturesaura:infused_iron>]);

//充能铁锭
mods.immersiveengineering.AlloySmelter.addRecipe(<enderio:item_alloy_ingot:5>, <ore:ingotIron>, <minecraft:ender_pearl>, 200);

//脉冲合金
mods.immersiveengineering.AlloySmelter.addRecipe(<enderio:item_alloy_ingot:2>, <enderio:item_alloy_ingot:1>, <minecraft:ender_pearl>, 320);