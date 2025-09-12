import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

val power = RecipeBuilder.newBuilder("power","biomass_generators",128);
power.addFluidInput(<liquid:biocrude>*50);
power.addFluidInput(<liquid:water>*8000);
power.addEnergyPerTickOutput(131072);
power.addRecipeTooltip("§a生物科技,孩子");
power.addItemInput(<ore:biomass>).setChance(0.8);
power.build();

val power2 = RecipeBuilder.newBuilder("power2","biomass_generators",128);
power2.addFluidInput(<liquid:biocrude>*100);
power2.addFluidInput(<liquid:water>*16000);
power2.addEnergyPerTickOutput(196608);
power2.addRecipeTooltip("§a生物科技,孩子");
power2.addItemInput(<ore:Abundant_biomass>).setChance(0.6);
power2.build();

val power3 = RecipeBuilder.newBuilder("power3","biomass_generators",128);
power3.addFluidInput(<liquid:biocrude>*100);
power3.addFluidInput(<liquid:water>*16000);
power3.addEnergyPerTickOutput(131072);
power3.addRecipeTooltip("§a生物科技,孩子");
power3.addItemInput(<mekanism:biofuel>);
power3.build();
