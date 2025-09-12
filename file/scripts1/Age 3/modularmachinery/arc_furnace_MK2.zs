import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//红色合金锭
val red_ingot = RecipeBuilder.newBuilder("red_ingot", "arc_furnace_MK2",100);
red_ingot.addItemInputs([<minecraft:redstone>*4,<ore:ingotCopper>]);
red_ingot.addEnergyPerTickInput(400);
red_ingot.addItemOutput(<contenttweaker:red_ingot>);
red_ingot.build();

val red_ingot2 = RecipeBuilder.newBuilder("red_ingot2", "arc_furnace_MK2",120);
red_ingot2.addItemInputs([<minecraft:redstone>*4,<ore:dustCopper>]);
red_ingot2.addEnergyPerTickInput(400);
red_ingot2.addItemOutput(<contenttweaker:red_ingot>);
red_ingot2.build();

//白铜锭
val cupronickel_ingot = RecipeBuilder.newBuilder("cupronickel_ingot","arc_furnace_MK2",120);
cupronickel_ingot.addItemInputs([<ore:ingotNickel>,<ore:ingotCopper>]);
cupronickel_ingot.addEnergyPerTickInput(400);
cupronickel_ingot.addOutput(<contenttweaker:cupronickel_ingot>*2);
cupronickel_ingot.build();

//玫瑰金锭
val rose_gold_ingot = RecipeBuilder.newBuilder("rose_gold_ingot","arc_furnace_MK2",150);
rose_gold_ingot.addItemInputs([<ore:ingotGold>*4,<ore:ingotCopper>]);
rose_gold_ingot.addEnergyPerTickInput(400);
rose_gold_ingot.addOutput(<contenttweaker:rose_gold_ingot>*5);
rose_gold_ingot.build();

# 超级合金锭
val super_alloy = RecipeBuilder.newBuilder("super_alloy","arc_furnace_MK2",240);
super_alloy.addItemInputs([<contenttweaker:alumite_plate>*3,<contenttweaker:rose_gold_ingot>*3,<enderio:item_material:20>*2]);
super_alloy.addFluidInput(<liquid:petrotheum>*125);
super_alloy.addEnergyPerTickInput(5000);
super_alloy.addOutput(<contenttweaker:super_alloy>*4);
super_alloy.build();

# 高耐度合金锭
val high_strength_alloy = RecipeBuilder.newBuilder("high_strength_alloy","arc_furnace_MK2",160);
high_strength_alloy.addItemInputs([<contenttweaker:cupronickel_plate>*3,<enderio:item_alloy_ingot>*3,<ore:dustAluminum>*3]);
high_strength_alloy.addEnergyPerTickInput(4096);
high_strength_alloy.addOutput(<contenttweaker:high_strength_alloy>*6);
high_strength_alloy.build();

//绯红铁锭
val karme = RecipeBuilder.newBuilder("karme","arc_furnace_MK2",40);
karme.addItemInputs(<extrautils2:ingredients>,<naturesaura:infused_iron>*4);
karme.addEnergyPerTickInput(2048);
karme.addOutput(<taiga:karmesine_ingot>*2);
karme.build();

//深渊金属锭
val abyingot = RecipeBuilder.newBuilder("abyingot","arc_furnace_MK2",60);
abyingot.addItemInputs(<botania:manaresource:4>*2,<contenttweaker:fire_essence>);
abyingot.addEnergyPerTickInput(4096);
abyingot.addOutput(<taiga:abyssum_ingot>*2);
abyingot.build();

//充能铁锭
val cengot = RecipeBuilder.newBuilder("cengot","arc_furnace_MK2",45);
cengot.addItemInputs([<minecraft:ender_pearl>,<ore:ingotIron>]);
cengot.addEnergyPerTickInput(4096);
cengot.addOutput(<enderio:item_alloy_ingot:5>);
cengot.build();

//充能合金锭
val cealloy = RecipeBuilder.newBuilder("cealloy","arc_furnace_MK2",120);
cealloy.addItemInputs([<minecraft:redstone>,<ore:ingotGold>,<minecraft:glowstone>]);
cealloy.addEnergyPerTickInput(4096);
cealloy.addOutput(<enderio:item_alloy_ingot:1>);
cealloy.build();

//脉冲合金锭
val pulsating_alloy = RecipeBuilder.newBuilder("pulsating_alloy","arc_furnace_MK2",120);
pulsating_alloy.addItemInputs([<enderio:item_alloy_ingot:1>,<minecraft:ender_pearl>]);
pulsating_alloy.addEnergyPerTickInput(8192);
pulsating_alloy.addOutput(<enderio:item_alloy_ingot:2>);
pulsating_alloy.build();


# 配方继承
RecipeAdapterBuilder.create("arc_furnace_MK2", "modularmachinery:arc_furnace")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0, 1, false).build())
    .build();