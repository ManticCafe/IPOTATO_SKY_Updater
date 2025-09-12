import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val Gaia_Simulation = RecipeBuilder.newBuilder("Gaia_Simulation","Gaia_Simulation_Room",20);
Gaia_Simulation.addItemInput(<botania:manaresource:5>).setChance(0.15);
Gaia_Simulation.addManaInput(50000);
Gaia_Simulation.addFluidInput(<liquid:blood>* 10);
Gaia_Simulation.addItemOutputs([<botania:manaresource:5>*8]);
Gaia_Simulation.addItemOutput(<botania:blacklotus>).setChance(0.7);
Gaia_Simulation.addItemOutput(<botania:dice>).setChance(0.05);
Gaia_Simulation.build();

val Gaia_Simulation1 = RecipeBuilder.newBuilder("Gaia_Simulation","Gaia_Simulation_Room",20);
Gaia_Simulation1.addItemInput(<botania:manaresource:5>).setChance(0.15);
Gaia_Simulation1.addManaInput(50000);
Gaia_Simulation1.addFluidInput(<liquid:lifeessence>* 100);
Gaia_Simulation1.addItemOutputs([<botania:manaresource:5>*8]);
Gaia_Simulation1.addItemOutput(<botania:blacklotus>).setChance(0.7);
Gaia_Simulation1.addItemOutput(<botania:dice>).setChance(0.05);
Gaia_Simulation1.build();