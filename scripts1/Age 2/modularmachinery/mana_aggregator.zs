//mana_aggregator

import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val gaia_ingot = RecipeBuilder.newBuilder("gaia_ingot","mana_aggregator",20);
gaia_ingot.addItemInputs([<botania:manaresource:5>*4 ,<ore:ingotTerrasteel>]);
gaia_ingot.addManaInput(100000);
gaia_ingot.addItemOutputs([<botania:manaresource:14>*2]);
gaia_ingot.build();

val gaia_ingot1 = RecipeBuilder.newBuilder("gaia_ingot1","mana_aggregator",20);
gaia_ingot1.addItemInputs([<botania:manaresource:5>*2 ,<ore:ingotTerrasteel>,<naturesaura:calling_spirit>]);
gaia_ingot1.addFluidInput(<liquid:lifeessence>*100);
gaia_ingot1.addItemOutputs([<botania:manaresource:14>*2]);
gaia_ingot1.build();

val Orichalcos_ingot = RecipeBuilder.newBuilder("Orichalcos_ingot","mana_aggregator",20);
Orichalcos_ingot.addItemInputs([<ore:ingotGaia>,<extrabotany:material:2>,<ore:eternalLifeEssence>*4]);
Orichalcos_ingot.addFluidInput(<liquid:fluidedmana> * 100);
Orichalcos_ingot.addManaInput(50000);
Orichalcos_ingot.addItemOutput(<extrabotany:material:1>);
Orichalcos_ingot.build();

val Gilded_Potato = RecipeBuilder.newBuilder("Gilded_Potato","mana_aggregator",4);
Gilded_Potato.addItemInputs([<minecraft:potato>,<minecraft:gold_nugget>]);
Gilded_Potato.addManaInput(500);
Gilded_Potato.addItemOutputs([<extrabotany:material:2> *2]);
Gilded_Potato.build();

val mana_liquefies = RecipeBuilder.newBuilder("mana_liquefies","mana_aggregator",400);
mana_liquefies.addItemInputs([<botania:managlass>*4,<modularmachinery:blockcasing:4>*4,<immersiveengineering:wooden_device0:1>]);
mana_liquefies.addManaInput(100000);
mana_liquefies.addItemOutput(<modularmachinery:mana_liquefies_controller>);
mana_liquefies.build();
