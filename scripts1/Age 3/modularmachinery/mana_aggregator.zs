//mana_aggregator

import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val ic2_ingot = RecipeBuilder.newBuilder("ic2_ingot","mana_aggregator",20);
ic2_ingot.addItemInputs([<moreplates:gaia_spirit_plate>,<moreplates:gaia_spirit_plate>,<moreplates:gaia_spirit_plate>,
<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>,
<naturesaura:gold_powder>,<naturesaura:gold_powder>,<naturesaura:gold_powder>]);
ic2_ingot.addManaInput(2048);
ic2_ingot.addItemOutput(<ic2:ingot> * 8);
ic2_ingot.build();

val ic2dust6 = RecipeBuilder.newBuilder("ic2dust6","mana_aggregator",20);
ic2dust6.addItemInputs([<minecraft:redstone>    *24,<botania:manaresource:23>*12,<ore:dustSkyStone>*4,<ore:dustDiamond>*4]);
ic2dust6.addManaInput(12000);
ic2dust6.addItemOutput(<ic2:dust:6>*12);
ic2dust6.build();