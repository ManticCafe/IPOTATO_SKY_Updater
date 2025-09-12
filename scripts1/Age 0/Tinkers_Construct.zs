//导包
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.naturesaura.AnimalSpawner;
import mods.naturesaura.Altar;
import mods.naturesaura.Offering;
import mods.naturesaura.TreeRitual;
import mods.immersiveengineering.CokeOven;
import mods.tconstruct.Melting;
import mods.tconstruct.Alloy;

//微缩冶炼炉
recipes.addShaped(<tcomplement:melter>, [[null, <ore:ingotBrickSeared>, null], [<ore:ingotBrickSeared>, <ore:blockGlassColorless>, <ore:ingotBrickSeared>], [<ore:blockSeared>, <ore:blockSeared>, <ore:blockSeared>]]);

//焦黑加热器
recipes.addShaped(<tcomplement:melter:8>, [[null, <ore:ingotBrickSeared>, null], [<ore:blockSeared>, <ore:ingotBrickSeared>, <ore:blockSeared>], [<ore:cobblestone>, <minecraft:furnace>, <ore:cobblestone>]]);

//水泥
recipes.addShaped(<tconstruct:soil> *3, [[<ore:sand>, <ore:gravel>], [<ore:itemClay>, <ore:listAllwater>]]);

//末影之眼
mods.tconstruct.Casting.addTableRecipe(<minecraft:ender_eye>, <minecraft:ender_pearl>, <liquid:lava>,140, true, 200);

//液态橡胶
mods.tconstruct.Melting.addRecipe(<liquid:rubber> * 144,<ic2:crafting>,20);
mods.tconstruct.Melting.addRecipe(<liquid:rubber> * 144,<contenttweaker:rubber_sheet>,20);

//橡胶板
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:rubber_sheet>,<tconstruct:cast_custom:3>, <liquid:rubber>, 144);

//删除EIO 充能铁锭、充能合金锭、脉冲合金锭熔融合金
mods.tconstruct.Alloy.removeRecipe(<liquid:pulsating_iron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:energetic_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:vibrant_alloy>);

//添加EIO 充能铁锭、充能合金锭、脉冲合金锭熔融合金
mods.tconstruct.Alloy.addRecipe(<liquid:pulsating_iron> * 72, [<liquid:ender>* 125, <liquid:iron> * 72]);
mods.tconstruct.Alloy.addRecipe(<liquid:energetic_alloy> * 72, [<liquid:redstone> * 50, <liquid:glowstone> * 125,<liquid:gold>*72]);
mods.tconstruct.Alloy.addRecipe(<liquid:vibrant_alloy> * 72, [<liquid:energetic_alloy> * 72, <liquid:ender> * 125]);