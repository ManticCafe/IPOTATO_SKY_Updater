# Age 4
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//基础电容
val basic_capacitor = RecipeBuilder.newBuilder("basic_capacitor","circuit_assembly",120);
basic_capacitor.addItemInputs([<thermalfoundation:material:160>*8,<enderio:item_material:20>,<contenttweaker:aoxi_metal>*3,<environmentaltech:diode>*2]);
basic_capacitor.addFluidInput(<liquid:lubricant> *200);
basic_capacitor.addEnergyPerTickInput(2048);
basic_capacitor.addItemOutput(<enderio:item_basic_capacitor>);
basic_capacitor.build();

# 奥席电路板
val aoxi_circuit = RecipeBuilder.newBuilder("aoxi_circuit","circuit_assembly",60);
aoxi_circuit.addItemInput(<appliedenergistics2:material:13>).setChance(0);
aoxi_circuit.addItemInput(<contenttweaker:aoxi_metal>);
aoxi_circuit.addEnergyPerTickInput(2048);
aoxi_circuit.addOutput(<contenttweaker:aoxi_circuit>);
aoxi_circuit.build();

# 蕴含深渊的电路板
val abyssum_circuit = RecipeBuilder.newBuilder("abyssum_circuit","circuit_assembly",60);
abyssum_circuit.addItemInput(<appliedenergistics2:material:14>).setChance(0);
abyssum_circuit.addItemInput(<contenttweaker:abyssum_gem>);
abyssum_circuit.addEnergyPerTickInput(2048);
abyssum_circuit.addOutput(<contenttweaker:abyssum_circuit>);
abyssum_circuit.build();

# 高级电路板 Tier2
val ict2circuit = RecipeBuilder.newBuilder("ict2circuit","circuit_assembly",80);
ict2circuit.addItemInputs([<contenttweaker:aoxi_processor>*2,<contenttweaker:basic_intergrowth_dust>*2,<contenttweaker:super_alloy_plate>]);
ict2circuit.addEnergyPerTickInput(16384);
ict2circuit.addOutput(<ic2:crafting:2>*2);
ict2circuit.addRecipeTooltip("§a高级电路板简化配方");
ict2circuit.addRecipeTooltip("§b      -由Corpus提供蓝图");
ict2circuit.build();

# 双层电容
val capacitor2 = RecipeBuilder.newBuilder("capacitor2","circuit_assembly",240);
capacitor2.addItemInputs([<enderio:item_basic_capacitor>*2,<moreplates:energetic_alloy_plate>*4,<contenttweaker:basic_intergrowth_dust>*2]);
capacitor2.addEnergyPerTickInput(4096);
capacitor2.addFluidInput(<liquid:refined_fuel>*200);
capacitor2.addOutput(<enderio:item_basic_capacitor:1>);
capacitor2.build();

# 八位电容
val capacitor3 = RecipeBuilder.newBuilder("capacitor3","circuit_assembly",400);
capacitor3.addItemInputs([<enderio:item_basic_capacitor:1>*2,<moreplates:vibrant_alloy_plate>*4,<contenttweaker:middle_intergrowth_dust>*2]);
capacitor3.addEnergyPerTickInput(8192);
capacitor3.addFluidInput(<liquid:extremeredliquid>*200);
capacitor3.addOutput(<enderio:item_basic_capacitor:2>);
capacitor3.build();

# 银制电容
val capacitor4 = RecipeBuilder.newBuilder("capacitor4","circuit_assembly",120);
capacitor4.addItemInputs([<ore:ingotSilver>*12,<enderio:item_material:20>,<contenttweaker:aoxi_metal>*3,<environmentaltech:diode>*2]);
capacitor4.addFluidInput(<liquid:lubricant> *100);
capacitor4.addEnergyPerTickInput(2048);
capacitor4.addOutput(<enderio:item_capacitor_silver>);
capacitor4.build();

# 充能银电容
val capacitor5 = RecipeBuilder.newBuilder("capacitor5","circuit_assembly",200);
capacitor5.addItemInputs([<enderio:item_capacitor_silver>*2,<moreplates:energetic_silver_plate>*4,<contenttweaker:basic_intergrowth_dust>*3]);
capacitor5.addFluidInput(<liquid:refined_fuel>*100);
capacitor5.addEnergyPerTickInput(4096);
capacitor5.addOutput(<enderio:item_capacitor_energetic_silver>);
capacitor5.build();

# 生动合金电容
val capacitor6 = RecipeBuilder.newBuilder("capacitor6","circuit_assembly",300);
capacitor6.addItemInputs([<enderio:item_capacitor_energetic_silver>*2,<moreplates:vivid_alloy_plate>*4,<contenttweaker:middle_intergrowth_dust>*2]);
capacitor6.addFluidInput(<liquid:extremeredliquid>*100);
capacitor6.addEnergyPerTickInput(8192);
capacitor6.addOutput(<enderio:item_capacitor_vivid>);
capacitor6.build();

# 晶化合金电容
val capacitor7 = RecipeBuilder.newBuilder("capacitor7","circuit_assembly",450);
capacitor7.addItemInputs([<enderio:item_basic_capacitor:2>,<enderio:item_capacitor_vivid>,<moreplates:crystalline_alloy_plate>*6,<contenttweaker:abyssum_processor>*2]);
capacitor7.addItemInput(<contenttweaker:mystical_source>).setChance(0.5);
capacitor7.addFluidInput(<liquid:enderium>*576);
capacitor7.addEnergyPerTickInput(16384);
capacitor7.addOutput(<enderio:item_capacitor_crystalline>);
capacitor7.build();

# 生物电路基板
val biology_circuit_substrates1 = RecipeBuilder.newBuilder("biology_circuit_substrates1","circuit_assembly",60);
biology_circuit_substrates1.addItemInput(<contenttweaker:biotype_press>).setChance(0);
biology_circuit_substrates1.addItemInput(<thermalfoundation:material:818>);
biology_circuit_substrates1.addEnergyPerTickInput(8192);
biology_circuit_substrates1.addOutput(<contenttweaker:biological_circuit_substrates>);
biology_circuit_substrates1.build();

val biology_circuit_substrates2 = RecipeBuilder.newBuilder("biology_circuit_substrates2","circuit_assembly",60);
biology_circuit_substrates2.addItemInput(<contenttweaker:biotype_press>).setChance(0);
biology_circuit_substrates2.addItemInput(<thermalfoundation:material:817>);
biology_circuit_substrates2.addEnergyPerTickInput(8192);
biology_circuit_substrates2.addOutput(<contenttweaker:biological_circuit_substrates>);
biology_circuit_substrates2.build();

# 旋律电容
val melodic_capacitor = RecipeBuilder.newBuilder("melodic_capacitor","circuit_assembly",600);
melodic_capacitor.addItemInputs([<enderio:item_capacitor_crystalline>*2,<moreplates:melodic_alloy_plate>*6,<contenttweaker:tomori_controller>*2,<contenttweaker:mystical_source>]);
melodic_capacitor.addFluidInput(<liquid:ender_distillation>*500);
melodic_capacitor.addEnergyPerTickInput(32768);
melodic_capacitor.addOutput(<enderio:item_capacitor_melodic>);
melodic_capacitor.build();

# 恒星电容
val stellar_capacitor = RecipeBuilder.newBuilder("stellar_capacitor","circuit_assembly",800);
stellar_capacitor.addItemInputs([<enderio:item_capacitor_melodic>*2,<moreplates:stellar_alloy_plate>*6,<contenttweaker:yuri_controller>*2,<contenttweaker:biology_circuit>*2,]);
stellar_capacitor.addFluidInput(<liquid:cloud_seed_concentrated>*2000);
stellar_capacitor.addEnergyPerTickInput(65536);
stellar_capacitor.addOutput(<enderio:item_capacitor_stellar>);
stellar_capacitor.build();