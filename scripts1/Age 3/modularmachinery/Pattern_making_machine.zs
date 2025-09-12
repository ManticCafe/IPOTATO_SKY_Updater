import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

val pattern = RecipeBuilder.newBuilder("pattern", "Pattern_making_machine",300);
pattern.addInputs([<ic2:crafting:3>*16,<appliedenergistics2:material>*8,<minecraft:redstone>*64]);
pattern.addFluidInput(<liquid:pyrotheum> * 4000);
pattern.addEnergyPerTickInput(1024);
pattern.addOutput(<appliedenergistics2:material:52>*32);
pattern.build();

val pattern2 = RecipeBuilder.newBuilder("pattern2", "Pattern_making_machine",160);
pattern2.addInputs([<extrautils2:ingredients>*2,<contenttweaker:super_alloy_plate>]);
pattern2.addEnergyPerTickInput(8192);
pattern2.addOutput(<appliedenergistics2:material:52>*16);
pattern2.build();

val pattern3 = RecipeBuilder.newBuilder("pattern3", "Pattern_making_machine",80);
pattern3.addInputs([<contenttweaker:roots_dust>*2,<ore:plateIridium>]);
pattern3.addEnergyPerTickInput(16384);
pattern3.addOutput(<appliedenergistics2:material:52>*16);
pattern3.build();