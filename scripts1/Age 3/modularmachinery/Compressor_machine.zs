import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//配方继承自IC2的压缩机 
val Adapter= RecipeAdapterBuilder.create("Compressor_machine", "ic2:te_compressor");
Adapter.addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.05, 1, false).build());
Adapter.addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 1.0, 1, false).build());
Adapter.build();

//高级合金
val crafting = RecipeBuilder.newBuilder("crafting", "Compressor_machine", 10);
crafting.addItemInput(<ic2:ingot>);
crafting.addEnergyPerTickInput(1536);
crafting.addItemOutput(<ic2:crafting:3>);
crafting.build();

//超级合金
val super_alloy_plate = RecipeBuilder.newBuilder("super_alloy_plate","Compressor_machine",40);
super_alloy_plate.addItemInput(<contenttweaker:super_alloy>);
super_alloy_plate.addEnergyPerTickInput(8192);
super_alloy_plate.addItemOutput(<contenttweaker:super_alloy_plate>);
super_alloy_plate.build();

//标准压印模板
val standard_stencil_stencil = RecipeBuilder.newBuilder("standard_stencil_stencil","Compressor_machine",1200);
standard_stencil_stencil.addItemInputs([<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,
<appliedenergistics2:smooth_sky_stone_block>,<ic2:crafting:3>,<appliedenergistics2:smooth_sky_stone_block>,
<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>,<appliedenergistics2:smooth_sky_stone_block>]);
standard_stencil_stencil.addEnergyPerTickInput(1024);
standard_stencil_stencil.addItemOutput(<contenttweaker:standard_stencil_stencil>);
standard_stencil_stencil.build();

# 高耐度合金
val high_strength_alloy_plate = RecipeBuilder.newBuilder("high_strength_alloy_plate","Compressor_machine",30);
high_strength_alloy_plate.addItemInput(<contenttweaker:high_strength_alloy>);
high_strength_alloy_plate.addEnergyPerTickInput(12000);
high_strength_alloy_plate.addOutput(<contenttweaker:high_strength_alloy_plate>);
high_strength_alloy_plate.build();

# 强化铱板
val reinforced_iridium_plate = RecipeBuilder.newBuilder("reinforced_iridium_plate","Compressor_machine",200);
reinforced_iridium_plate.addItemInputs([<ic2:misc_resource:1>*4,<contenttweaker:super_alloy_plate>*8,<contenttweaker:middle_intergrowth_dust>*2]);
reinforced_iridium_plate.addEnergyPerTickInput(25565);
reinforced_iridium_plate.addOutput(<ic2:crafting:4>);
reinforced_iridium_plate.build();

//压缩地狱岩
RecipeBuilder.newBuilder("nether","Compressor_machine",10)
             .addItemInput(<minecraft:netherrack>*9)
             .addEnergyPerTickInput(256)
             .addItemOutput(<extrautils2:compressednetherrack>)
             .build();

//通量粉尘
RecipeBuilder.newBuilder("flux_dust","Compressor_machine",1)
             .addItemInput(<minecraft:redstone>)
             .addEnergyPerTickInput(256)
             .addItemOutput(<fluxnetworks:flux>)
             .build();