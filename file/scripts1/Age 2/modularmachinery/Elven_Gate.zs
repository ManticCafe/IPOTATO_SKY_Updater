import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

val dreamwood = RecipeBuilder.newBuilder("dreamwood","elven_gate",5);
dreamwood.addItemInput(<botania:livingwood>);
dreamwood.addManaInput(500);
dreamwood.addItemOutput(<botania:dreamwood>);
dreamwood.build();

val Elementium = RecipeBuilder.newBuilder("elementium","elven_gate",5);
Elementium.addItemInputs([<botania:manaresource>,<botania:manaresource>]);
Elementium.addManaInput(500);
Elementium.addItemOutput(<botania:manaresource:7>);
Elementium.build();

val Elementiumblock  = RecipeBuilder.newBuilder("elementium_block","elven_gate",5);
Elementiumblock.addItemInputs([<botania:storage>,<botania:storage>]);
Elementiumblock.addManaInput(500);
Elementiumblock.addItemOutput(<botania:storage:2>);
Elementiumblock.build();

val PixieDust = RecipeBuilder.newBuilder("PixieDust","elven_gate",5);
PixieDust.addItemInput(<botania:manaresource:1>);
PixieDust.addManaInput(500);
PixieDust.addItemOutput(<botania:manaresource:8>);
PixieDust.build();

val dragonstone = RecipeBuilder.newBuilder("dragonstone","elven_gate",5);
dragonstone.addItemInput(<botania:manaresource:2>);
dragonstone.addManaInput(500);
dragonstone.addItemOutput(<botania:manaresource:9>);
dragonstone.build();

val dragonstoneblock = RecipeBuilder.newBuilder("dragonstone_block","elven_gate",5);
dragonstoneblock.addItemInput(<botania:storage:3>);
dragonstoneblock.addManaInput(500);
dragonstoneblock.addItemOutput(<botania:storage:4>);
dragonstoneblock.build();

val pixiequartz = RecipeBuilder.newBuilder("pixiequartz","elven_gate",5);
pixiequartz.addItemInput(<minecraft:quartz>);
pixiequartz.addManaInput(500);
pixiequartz.addItemOutput(<botania:quartz:5>);
pixiequartz.build();

val pixieglass = RecipeBuilder.newBuilder("pixieglass","elven_gate",5);
pixieglass.addItemInput(<botania:managlass>);
pixieglass.addManaInput(500);
pixieglass.addItemOutput(<botania:elfglass>);
pixieglass.build();

val Elementiumplate = RecipeBuilder.newBuilder("elementiumplate","elven_gate",5);
Elementiumplate.addItemInputs([<ore:plateManasteel>,<ore:plateManasteel>]);
Elementiumplate.addManaInput(500);
Elementiumplate.addItemOutput(<moreplates:elementium_plate>);
Elementiumplate.build();

val Elementiumgear = RecipeBuilder.newBuilder("elementiumgear","elven_gate",5);
Elementiumgear.addItemInputs([<ore:gearManasteel>,<ore:gearManasteel>]);
Elementiumgear.addManaInput(500);
Elementiumgear.addItemOutput(<moreplates:elementium_gear>);
Elementiumgear.build();

val jqx1 = RecipeBuilder.newBuilder("jqx1","elven_gate",5);
jqx1.addItemInputs([<extendedcrafting:table_basic>,<botania:opencrate:1>]);
jqx1.addManaInput(500);
jqx1.addItemOutput(<botania_tweaks:basic_extended_crafty_crate>);
jqx1.build();

val jqx2 = RecipeBuilder.newBuilder("jqx2","elven_gate",5);
jqx2.addItemInputs([<extendedcrafting:table_advanced>,<botania:opencrate:1>]);
jqx2.addManaInput(500);
jqx2.addItemOutput(<botania_tweaks:advanced_extended_crafty_crate>);
jqx2.build();

val jqx3 = RecipeBuilder.newBuilder("jqx3","elven_gate",5);
jqx3.addItemInputs([<extendedcrafting:table_elite>,<botania:opencrate:1>]);
jqx3.addManaInput(500);
jqx3.addItemOutput(<botania_tweaks:elite_extended_crafty_crate>);
jqx3.build();

val jqx4 = RecipeBuilder.newBuilder("jqx4","elven_gate",5);
jqx4.addItemInputs([<extendedcrafting:table_ultimate>,<botania:opencrate:1>]);
jqx4.addManaInput(500);
jqx4.addItemOutput(<botania_tweaks:ultimate_extended_crafty_crate>);
jqx4.build();

val jqx5 = RecipeBuilder.newBuilder("jqx5","elven_gate",5);
jqx5.addItemInputs([<avaritia:extreme_crafting_table>,<botania:opencrate:1>]);
jqx5.addManaInput(500);
jqx5.addItemOutput(<botania_tweaks:dire_crafty_crate>);
jqx5.build();

val bomb_star = RecipeBuilder.newBuilder("bomb_star","elven_gate",5);
bomb_star.addItemInput(<contenttweaker:bread_singularity>);
bomb_star.addManaInput(500);
bomb_star.addItemOutput(<contenttweaker:bomb_star>);
bomb_star.build();

val infused_iron = RecipeBuilder.newBuilder("infused_iron","elven_gate",5);
infused_iron.addItemInput(<minecraft:iron_ingot>*2);
infused_iron.addRecipeTooltip("§a灌注铁锭高效配方(原配方来自自然祭坛)");
infused_iron.addRecipeTooltip("§a      -由精灵提供");
infused_iron.addManaInput(500);
infused_iron.addItemOutput(<naturesaura:infused_iron>);
infused_iron.build();   

val infused_stone = RecipeBuilder.newBuilder("infused_stone","elven_gate",5);
infused_stone.addItemInput(<minecraft:stone>*4);
infused_stone.addRecipeTooltip("§a灌注石高效配方(原配方来自自然祭坛)");
infused_stone.addRecipeTooltip("§a      -由精灵提供");
infused_stone.addManaInput(500);
infused_stone.addItemOutput(<naturesaura:infused_stone>);
infused_stone.build();

val spirit = RecipeBuilder.newBuilder("infused_stone","elven_gate",5);
spirit.addItemInput(<contenttweaker:goldleaf_essence>);
spirit.addRecipeTooltip("§a呼唤之魂简化配方(原配方来自工作台)");
spirit.addRecipeTooltip("§a      -由精灵提供");
spirit.addManaInput(500);
spirit.addItemOutput(<naturesaura:calling_spirit>);
spirit.build();