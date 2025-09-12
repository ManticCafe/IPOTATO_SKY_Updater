import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

val tree_controller = RecipeBuilder.newBuilder("tree_controller","assembly_machine",400);
tree_controller.addItemInputs([<randomthings:naturecore>,<modularmachinery:itemmodularium>*4,<botania:livingwood>*4,<immersiveengineering:material:7>]);
tree_controller.addEnergyPerTickInput(512);
tree_controller.addItemOutput(<modularmachinery:tree_growth_simulator_controller>);
tree_controller.build();

val Compressor_machine = RecipeBuilder.newBuilder("Compressor_machine","assembly_machine",400);
Compressor_machine.addItemInputs([<ic2:te:43>,<ic2:ingot> * 8]);
Compressor_machine.addEnergyPerTickInput(1024);
Compressor_machine.addItemOutput(<modularmachinery:compressor_machine_controller>);
Compressor_machine.build();

val motor_mk1 = RecipeBuilder.newBuilder("motor_mk1","assembly_machine",60);
motor_mk1.addItemInputs([<ic2:crafting:3>,<immersiveengineering:material:20>,<moreplates:copper_stick>,<immersiveengineering:material:20>,<immersiveengineering:material:2>,<immersiveengineering:material:20>,<moreplates:copper_stick>,<immersiveengineering:material:20>,<ic2:crafting:3>]);
motor_mk1.addEnergyPerTickInput(512);
motor_mk1.addItemOutput(<contenttweaker:motor_mk1>);
motor_mk1.build();

val conveyor_module_mk1 = RecipeBuilder.newBuilder("conveyor_module_mk1","assembly_machine",60);
conveyor_module_mk1.addItemInputs([<ore:rubber_sheet>,<ore:rubber_sheet>,<ore:rubber_sheet>,<contenttweaker:motor_mk1>,<ic2:crafting:3>,<contenttweaker:motor_mk1>,<ore:rubber_sheet>,<ore:rubber_sheet>,<ore:rubber_sheet>]);
conveyor_module_mk1.addEnergyPerTickInput(512);
conveyor_module_mk1.addItemOutput(<contenttweaker:conveyor_module_mk1>);
conveyor_module_mk1.build();

val robot_arm_mk1 = RecipeBuilder.newBuilder("robot_arm_mk1","assembly_machine",60);
robot_arm_mk1.addItemInputs([<ic2:crafting:3>*2,<ore:circuitBasic>*2,<contenttweaker:motor_mk1>,<ore:stickSteel>*2,<contenttweaker:rubber_sheet>]);
robot_arm_mk1.addEnergyPerTickInput(512);
robot_arm_mk1.addItemOutput(<contenttweaker:robot_arm_mk1>);
robot_arm_mk1.build();

val electric_piston_MK1 = RecipeBuilder.newBuilder("electric_piston_MK1","assembly_machine",60);
electric_piston_MK1.addItemInputs([<ic2:crafting:3>,<ore:circuitBasic>,<ic2:crafting:3>,<ore:plateSteel>,<immersiveengineering:material:2>,<ic2:crafting:3>,<ic2:crafting:3>,<contenttweaker:motor_mk1>,<ic2:crafting:3>]);
electric_piston_MK1.addEnergyPerTickInput(512);
electric_piston_MK1.addItemOutput(<contenttweaker:electric_piston_mk1>);
electric_piston_MK1.build();

val inscriber = RecipeBuilder.newBuilder("inscriber","assembly_machine",600);
inscriber.addItemInputs([<ic2:crafting:3>*5,<appliedenergistics2:material:7>,<contenttweaker:electric_piston_mk1>*2]);
inscriber.addEnergyPerTickInput(2048);
inscriber.addItemOutput(<appliedenergistics2:inscriber>);
inscriber.build();

val solid_steel_machine_casing = RecipeBuilder.newBuilder("solid_steel_machine_casing","assembly_machine",40);
solid_steel_machine_casing.addItemInputs([<ic2:crafting:3>*6,<ore:gearGaia>,<immersiveengineering:metal_decoration1:1>*2]);
solid_steel_machine_casing.addEnergyPerTickInput(512);
solid_steel_machine_casing.addItemOutput(<contenttweaker:solid_steel_machine_casing> * 4);
solid_steel_machine_casing.build();

val assembly_controller = RecipeBuilder.newBuilder("assembly_controller","assembly_machine",600);
assembly_controller.addItemInputs([<modularmachinery:assembly_machine_controller>,<contenttweaker:assembly_core>*4,<ore:gearGaia>,<ic2:crafting:3>*8]);
assembly_controller.addEnergyPerTickInput(4096);
assembly_controller.addFluidInput(<liquid:lifeessence> *500);
assembly_controller.addItemOutput(<modularmachinery:assembly_machine_mk2_controller>);
assembly_controller.build();

val Light_Engineering_Block = RecipeBuilder.newBuilder("Light_Engineering_Block","assembly_machine",60);
Light_Engineering_Block.addItemInputs([<ore:ingotCopper>*3,<ore:ingotIron>*4,<immersiveengineering:material:8>*2]);
Light_Engineering_Block.addEnergyPerTickInput(512);
Light_Engineering_Block.addItemOutput(<immersiveengineering:metal_decoration0:4>*2);
Light_Engineering_Block.build();

val Redstone_Engineering_Block = RecipeBuilder.newBuilder("Redstone_Engineering_Block","assembly_machine",60);
Redstone_Engineering_Block.addItemInputs([<ore:blockCopper>,<minecraft:redstone>*4,<ore:ingotIron>*4]);
Redstone_Engineering_Block.addEnergyPerTickInput(512);
Redstone_Engineering_Block.addItemOutput(<immersiveengineering:metal_decoration0:3>*2);
Redstone_Engineering_Block.build();

val Heavy_Engineering_Block = RecipeBuilder.newBuilder("Heavy_Engineering_Block","assembly_machine",60);
Heavy_Engineering_Block.addItemInputs([<ore:ingotSteel>*4,<minecraft:piston>*2,<ore:ingotElectrum>,<immersiveengineering:material:9>*2]);
Heavy_Engineering_Block.addEnergyPerTickInput(512);
Heavy_Engineering_Block.addItemOutput(<immersiveengineering:metal_decoration0:5>*2);
Heavy_Engineering_Block.build();

val blood_rune = RecipeBuilder.newBuilder("blood_rune","assembly_machine",150);
blood_rune.addItemInputs([<bloodmagic:slate>,<naturesaura:calling_spirit>*2]);
blood_rune.addItemInput(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"})).setChance(0);
blood_rune.addFluidInput(<liquid:blood>*125);
blood_rune.addEnergyPerTickInput(512);
blood_rune.addOutput(<bloodmagic:blood_rune>);
blood_rune.build();

val blood_rune1 = RecipeBuilder.newBuilder("blood_rune","assembly_machine",150);
blood_rune1.addItemInputs([<bloodmagic:slate>,<naturesaura:calling_spirit>*2]);
blood_rune1.addItemInput(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"})).setChance(0);
blood_rune1.addFluidInput(<liquid:lifeessence>*250);
blood_rune1.addEnergyPerTickInput(512);
blood_rune1.addOutput(<bloodmagic:blood_rune>);
blood_rune1.build();

val re_battery = RecipeBuilder.newBuilder("re_battery","assembly_machine",60);
re_battery.addItemInputs([<ore:itemInsulatedTinCable>,<ic2:casing:6>*4,<minecraft:redstone>*4]);
re_battery.addEnergyPerTickInput(512);
re_battery.addItemOutput(<ic2:re_battery>);
re_battery.build();

val te52 = RecipeBuilder.newBuilder("re52","assembly_machine",300);
te52.addItemInputs([<ic2:resource:13>,<ore:circuitBasic>*2,<ic2:crafting:5>*4,<contenttweaker:assembly_core>*2,<ore:plateIron>*8]);
te52.addEnergyPerTickInput(1024);
te52.addItemOutput(<ic2:te:52>);
te52.build();

val te50 = RecipeBuilder.newBuilder("te50","assembly_machine",450);
te50.addItemInputs([<ic2:resource:13>,<ore:circuitAdvanced>*2,<ic2:crafting:3>*8,<contenttweaker:fire_essence>*2,<ic2:crafting:7>,<ore:plateSteel>*8]);
te50.addEnergyPerTickInput(1500);
te50.addItemOutput(<ic2:te:50>);
te50.build();

val te47 = RecipeBuilder.newBuilder("te47","assembly_machine",450);
te47.addItemInputs([<ic2:resource:12>,<ore:circuitBasic>,<ore:plateSteel> * 2,<minecraft:flint> * 4]);
te47.addEnergyPerTickInput(512);
te47.addOutput(<ic2:te:47>);
te47.build();

val te44 = RecipeBuilder.newBuilder("te44","assembly_machine",100);
te44.addItemInputs([<ic2:te:46>,<ore:circuitBasic>,<ore:plateSteel>*2,<minecraft:redstone>*4]);
te44.addEnergyPerTickInput(300);
te44.addOutput(<ic2:te:44>);
te44.build();

val te45 = RecipeBuilder.newBuilder("te45","assembly_machine",450);
te45.addItemInputs([<ic2:resource:12>,<ore:circuitBasic>,<ic2:treetap>*2,<ore:plateSteel>*2]);
te45.addEnergyPerTickInput(512);
te45.addOutput(<ic2:te:45>);
te45.build();

val te28 = RecipeBuilder.newBuilder("te28","assembly_machine",450);
te28.addItemInputs([<ic2:resource:12>,<ore:circuitBasic>*2,<ic2:fluid_cell>*2,<ore:plateSteel>*2,<contenttweaker:motor_mk1>]);
te28.addEnergyPerTickInput(512);
te28.addOutput(<ic2:te:28>);
te28.build();

val te48 = RecipeBuilder.newBuilder("te48","assembly_machine",450);
te48.addItemInputs([<ic2:te:43>,<ore:circuitBasic>*2,<ore:plateSteel>*2,<minecraft:dirt>*8]);
te48.addEnergyPerTickInput(512);
te48.addItemOutput(<ic2:te:48>);
te48.build();

val te51 = RecipeBuilder.newBuilder("te51","assembly_machine",700);
te51.addItemInputs([<ic2:resource:12>,<ore:circuitBasic>*2,<ic2:crafting:6>,<ore:plateSteel>*8]);
te51.addEnergyPerTickInput(512);
te51.addOutput(<ic2:te:51>);
te51.build();

# 火力发电机
val te3 = RecipeBuilder.newBuilder("te3","assembly_machine",200);
te3.addItemInputs([<ic2:re_battery>,<minecraft:furnace>*2,<thermalfoundation:material:32>*8]);
te3.addEnergyPerTickInput(256);
te3.addOutput(<ic2:te:3>);
te3.build();

# 通用流体单元
val iccell = RecipeBuilder.newBuilder("iccell","assembly_machine",40);
iccell.addItemInputs([<ic2:casing:6>*4,<minecraft:glass_pane>]);
iccell.addEnergyPerTickInput(512);
iccell.addOutput(<ic2:fluid_cell>);
iccell.build();