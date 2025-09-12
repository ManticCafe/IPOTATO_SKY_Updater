import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val book_flower1 = RecipeBuilder.newBuilder("book_flower1","mana_production",1);
book_flower1.addItemInput(<botania:specialflower>.withTag({type: "omniviolet"})).setChance(0);
book_flower1.addItemInput(<botania:pylon>*15).setChance(0);
book_flower1.addItemInput(<minecraft:book>).setChance(0);
book_flower1.addItemInput(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51}]})).setChance(0);
book_flower1.addManaOutput(48);
book_flower1.build();