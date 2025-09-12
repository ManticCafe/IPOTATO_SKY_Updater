import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val mana_diamond = RecipeBuilder.newBuilder("mana_diamond", "mana_infusion", 1);
mana_diamond.addItemInput(<ore:gemDiamond>);
mana_diamond.addItemOutput(<botania:manaresource:2>);
mana_diamond.addManaInput(10000);
mana_diamond.build();

val mana_diamond_block =  RecipeBuilder.newBuilder("mana_diamond_block","mana_infusion",1);
mana_diamond_block.addItemInput(<ore:blockDiamond>);
mana_diamond_block.addItemOutput(<botania:storage:3>);
mana_diamond_block.addManaInput(90000);
mana_diamond_block.build();

val mana_cookie = RecipeBuilder.newBuilder("mana_cookie","mana_infusion",1);
mana_cookie.addItemInput(<minecraft:cookie>);
mana_cookie.addItemOutput(<botania:manacookie>);
mana_cookie.addManaInput(20000);
mana_cookie.build();

val fertilizer = RecipeBuilder.newBuilder("fertilizer","mana_infusion",1);
fertilizer.addItemInput(<minecraft:dye:15>);
fertilizer.addItemOutput(<botania:fertilizer>);
fertilizer.addManaInput(500);
fertilizer.build();

val mana_pearl = RecipeBuilder.newBuilder("mana_pearl","mana_infusion",1);
mana_pearl.addItemInput(<minecraft:ender_pearl>);
mana_pearl.addItemOutput(<botania:manaresource:1>);
mana_pearl.addManaInput(6000);
mana_pearl.build();

val mana_steel = RecipeBuilder.newBuilder("mana_steel","mana_infusion",1);
mana_steel.addItemInput(<ore:ingotSteel>);
mana_steel.addItemOutput(<botania:manaresource>);
mana_steel.addManaInput(3000);
mana_steel.build();

val mana_steel_block = RecipeBuilder.newBuilder("mana_steel_block","mana_infusion",1);
mana_steel_block.addItemInput(<ore:blockSteel>);
mana_steel_block.addItemOutput(<botania:storage>);
mana_steel_block.addManaInput(27000);
mana_steel_block.build();

val nightmarefuel = RecipeBuilder.newBuilder("nightmarefuel","mana_infusion",1);
nightmarefuel.addItemInput(<minecraft:coal>);
nightmarefuel.addItemOutput(<extrabotany:nightmarefuel>);
nightmarefuel.addManaInput(2000);
nightmarefuel.build();

val mana_resource = RecipeBuilder.newBuilder("mana_resource","mana_infusion",1);
mana_resource.addItemInput(<naturesaura:gold_powder>);
mana_resource.addItemOutput(<botania:manaresource:23>);
mana_resource.addManaInput(500);
mana_resource.build();

val grassseeds = RecipeBuilder.newBuilder("grassseeds","mana_infusion",1);
grassseeds.addItemInput(<minecraft:tallgrass:1>);
grassseeds.addItemOutput(<botania:grassseeds>);
grassseeds.addManaInput(2500);
grassseeds.build();

val pistonrelay = RecipeBuilder.newBuilder("pistonrelay","mana_infusion",1);
pistonrelay.addItemInput(<minecraft:piston>);
pistonrelay.addItemOutput(<botania:pistonrelay>);
pistonrelay.addManaInput(15000);
pistonrelay.build();

val mana_quartz = RecipeBuilder.newBuilder("mana_quartz","mana_infusion",1);
mana_quartz.addItemInput(<minecraft:quartz>);
mana_quartz.addItemOutput(<botania:quartz:1>);
mana_quartz.addManaInput(250);
mana_quartz.build();

val tinypotato = RecipeBuilder.newBuilder("tiny_potato","mana_infusion",1);
tinypotato.addItemInput(<minecraft:potato>);
tinypotato.addItemOutput(<botania:tinypotato>);
tinypotato.addManaInput(1337);
tinypotato.build();

val mana_glass = RecipeBuilder.newBuilder("mana_glass","mana_infusion",1);
mana_glass.addItemInput(<minecraft:glass>);
mana_glass.addItemOutput(<botania:managlass>);
mana_glass.addManaInput(150);
mana_glass.build();

val mana_string = RecipeBuilder.newBuilder("mana_string","mana_infusion",1);
mana_string.addItemInput(<minecraft:string>);
mana_string.addItemOutput(<botania:manaresource:16>);
mana_string.addManaInput(5000);
mana_string.build();