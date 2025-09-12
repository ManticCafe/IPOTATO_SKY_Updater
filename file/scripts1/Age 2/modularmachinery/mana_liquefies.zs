import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val liquefies = RecipeBuilder.newBuilder("liquefies","mana_liquefies",1);
liquefies.addManaInput(100000);
liquefies.addFluidOutput(<liquid:fluidedmana> * 100);
liquefies.build();