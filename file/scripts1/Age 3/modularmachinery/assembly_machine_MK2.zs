import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;


//IC2机械外壳简化配方
val manchine_block_1 = RecipeBuilder.newBuilder("manchine_block_1", "assembly_machine_MK2", 60);
manchine_block_1.addItemInputs([<immersiveengineering:metal_decoration0:4>,<ic2:crafting:3>*4,<botania:manaresource:14>*1]);
manchine_block_1.addEnergyPerTickInput(512);
manchine_block_1.addItemOutput(<ic2:resource:12> *1);
manchine_block_1.build();

val manchine_block1_1 = RecipeBuilder.newBuilder("manchine_block1_1", "assembly_machine_MK2", 60);
manchine_block1_1.addItemInputs([<immersiveengineering:metal_decoration0:5>,<ic2:crafting:3>*4,<botania:manaresource:14>*2]);
manchine_block1_1.addEnergyPerTickInput(512);
manchine_block1_1.addItemOutput(<ic2:resource:12> *2);
manchine_block1_1.build();

val manchine_block_2 = RecipeBuilder.newBuilder("manchine_block_2", "assembly_machine_MK2", 80);
manchine_block_2.addItemInputs([<contenttweaker:assembly_core>*2,<ic2:resource:12>,<ic2:crafting:3>*4,<ic2:crafting:15>*2]);
manchine_block_2.addItemInput(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"})).setChance(0);
manchine_block_2.addEnergyPerTickInput(1024);
manchine_block_2.addOutput(<ic2:resource:13>);
manchine_block_2.build();

val soul_forge = RecipeBuilder.newBuilder("soul_forge", "assembly_machine_MK2", 300);
soul_forge.addItemInputs([<bloodmagic:slate:1> *2,<bloodmagic:monster_soul>,<minecraft:furnace>*4,<ore:powderMana> *8,<minecraft:obsidian>*16]);
soul_forge.addEnergyPerTickInput(2048);
soul_forge.addItemOutput(<bloodmagic:soul_forge>);
soul_forge.build();

val Auxiliary_Reception_Coil = RecipeBuilder.newBuilder("Auxiliary_Reception_Coil", "assembly_machine_MK2", 100);
Auxiliary_Reception_Coil.addItemInputs([<thermalfoundation:material:1024>*4,<thermalfoundation:material:513>*3,<thermalfoundation:material:353>*2,<ic2:crafting:3>*2]);
Auxiliary_Reception_Coil.addEnergyPerTickInput(2048);
Auxiliary_Reception_Coil.addItemOutput(<thermalexpansion:augment:128>*3);
Auxiliary_Reception_Coil.build();

val ic2crafting1 = RecipeBuilder.newBuilder("ic2crafting1","assembly_machine_MK2",200);
ic2crafting1.addItemInputs([<immersiveengineering:material:27>,<ore:itemInsulatedCopperCable>*2,<ic2:crafting>]);
ic2crafting1.addEnergyPerTickInput(2048);
ic2crafting1.addItemOutput(<ic2:crafting:1>*2);
ic2crafting1.build();

val ic2craftings = RecipeBuilder.newBuilder("ic2craftings","assembly_machine_MK2",200);
ic2craftings.addItemInputs([<immersiveengineering:material:27>,<ore:itemInsulatedCopperCable>*4]);
ic2craftings.addFluidInput(<liquid:rubber>*144);
ic2craftings.addEnergyPerTickInput(2048);
ic2craftings.addItemOutput(<ic2:crafting:1>*4);
ic2craftings.build();

val ae2charger = RecipeBuilder.newBuilder("ae2charger","assembly_machine_MK2",300);
ae2charger.addItemInputs([<ic2:crafting:3>*4,<ore:circuitBasic>,<appliedenergistics2:material:1>*2,<naturesaura:infused_iron>*2,<ore:ingotSteel>*2,<bloodmagic:monster_soul>]);
ae2charger.addFluidInput(<liquid:cryotheum> *500);
ae2charger.addEnergyPerTickInput(2048);
ae2charger.addItemOutput(<appliedenergistics2:charger>);
ae2charger.build();

val upgrade = RecipeBuilder.newBuilder("upgrade","assembly_machine_MK2",300);
upgrade.addItemInputs([<bloodmagic:slate:1>*3,<ore:dustLapis>*24,<ore:circuitBasic>,<thermalexpansion:augment:128>]);
upgrade.addFluidInput(<liquid:cryotheum>*1000);
upgrade.addEnergyPerTickInput(1200);
upgrade.addItemOutput(<ic2:upgrade>*3);
upgrade.build();

val ae2interface = RecipeBuilder.newBuilder("ae2interface","assembly_machine_MK2",300);
ae2interface.addItemInputs([<contenttweaker:potato_core>*2,<contenttweaker:assembly_core>*4,<appliedenergistics2:material:43>*2,<appliedenergistics2:material:44>*2,<ic2:crafting:3>*8,<minecraft:redstone>*12]);
ae2interface.addFluidInput(<liquid:lubricant> *1000);
ae2interface.addEnergyPerTickInput(2048);
ae2interface.addItemOutput(<appliedenergistics2:interface>*3);
ae2interface.build();

val ae2_molecular_assembler  = RecipeBuilder.newBuilder("ae2_molecular_assembler","assembly_machine_MK2",300);
ae2_molecular_assembler.addItemInputs([<contenttweaker:assembly_core>,<contenttweaker:potato_core>,<appliedenergistics2:material:22>*2,<ic2:crafting:3>*4,<minecraft:redstone>*8,<appliedenergistics2:material:8>]);
ae2_molecular_assembler.addFluidInput(<liquid:cryotheum>*250);
ae2_molecular_assembler.addEnergyPerTickInput(1500);
ae2_molecular_assembler.addItemOutput(<appliedenergistics2:molecular_assembler>);
ae2_molecular_assembler.build();

val te_machine_7 = RecipeBuilder.newBuilder("te_machine_7","assembly_machine_MK2",300);
te_machine_7.addItemInputs([<thermalexpansion:frame>,<ic2:glass>*2,<contenttweaker:potato_core>,<ore:gearGaia>,<ore:plateSteel>*8]);
te_machine_7.addFluidInput(<liquid:rubber> *720);
te_machine_7.addEnergyPerTickInput(2048);
te_machine_7.addItemOutput(<thermalexpansion:machine:7>);
te_machine_7.build();

val upgrade2 = RecipeBuilder.newBuilder("upgrade2","assembly_machine_MK2",300);
upgrade2.addItemInputs([<ore:gearSignalum>,<extrabotany:material:1>*2,<thermalfoundation:glass_alloy:1>*3]);
upgrade2.addFluidInput(<liquid:cryotheum> *1000);
upgrade2.addEnergyPerTickInput(2048);
upgrade2.addItemOutput(<thermalfoundation:upgrade:2>);
upgrade2.build();

val ic2_heat_exchanger = RecipeBuilder.newBuilder("ic2_heat_exchanger","assembly_machine_MK2",200);
ic2_heat_exchanger.addItemInputs([<ore:circuitBasic>,<ore:plateTin>*4,<ore:plateCopper>*4,<ore:plateSteel>]);
ic2_heat_exchanger.addEnergyPerTickInput(2048);
ic2_heat_exchanger.addItemOutput(<ic2:heat_exchanger>);
ic2_heat_exchanger.build();

val ic2_heat_exchanger2 = RecipeBuilder.newBuilder("ic2_heat_exchanger2","assembly_machine_MK2",200);
ic2_heat_exchanger2.addItemInputs([<ore:circuitBasic>*2,<ic2:heat_exchanger>*2,<ore:plateCopper>,<ore:dustBlizz>*2]);
ic2_heat_exchanger2.addFluidInput(<liquid:ic2coolant> * 1000);
ic2_heat_exchanger2.addEnergyPerTickInput(2048);
ic2_heat_exchanger2.addItemOutput(<ic2:advanced_heat_exchanger>);
ic2_heat_exchanger2.build();

val te54 = RecipeBuilder.newBuilder("te54","assembly_machine_MK2",600);
te54.addItemInputs([<contenttweaker:fire_essence>*2,<thermalexpansion:frame>,<thermalfoundation:material:513>,<ore:gearGaia>,<ore:plateSteel>*4]);
te54.addFluidInput(<liquid:pyrotheum> * 1000);
te54.addEnergyPerTickInput(2048);
te54.addItemOutput(<thermalexpansion:machine:3>);
te54.build();

val te_machine_6 = RecipeBuilder.newBuilder("te_machine_6","assembly_machine_MK2",600);
te_machine_6.addItemInputs([<ore:plateSteel> * 4,<thermalfoundation:material:513>,<ore:gearGaia>,<thermalexpansion:frame>,<contenttweaker:fire_essence>*2,<thermalfoundation:material:1024>*4]);
te_machine_6.addEnergyPerTickInput(2048);
te_machine_6.addItemOutput(<thermalexpansion:machine:6>);
te_machine_6.build();

val te_machine_8 = RecipeBuilder.newBuilder("te_machine_8","assembly_machine_MK2",600);
te_machine_8.addItemInputs([<ore:plateSteel>*4,<thermalfoundation:material:513>,<ore:gearGaia>,<thermalexpansion:frame>,<contenttweaker:goldleaf_essence>*2,<minecraft:bucket>*2]);
te_machine_8.addEnergyPerTickInput(2048);
te_machine_8.addItemOutput(<thermalexpansion:machine:8>);
te_machine_8.build();

val augment368 = RecipeBuilder.newBuilder("augment368","assembly_machine_MK2",600);
augment368.addItemInputs([<thermalfoundation:material:1024>*4,<thermalfoundation:material:515>,<ore:plateLumium>*2,<ic2:crafting:3>*2]);
augment368.addFluidInput(<liquid:lubricant> * 4000);
augment368.addEnergyPerTickInput(2048);
augment368.addItemOutput(<thermalexpansion:augment:368>);
augment368.build();

val te_machine_1 = RecipeBuilder.newBuilder("te_machine_1","assembly_machine_MK2",600);
te_machine_1.addItemInputs([<ore:plateSteel>*4,<ore:gearGaia>,<thermalexpansion:frame>,<thermalfoundation:material:513>,<contenttweaker:goldleaf_essence>*2,<contenttweaker:electric_piston_mk1>*2]);
te_machine_1.addEnergyPerTickInput(2048);
te_machine_1.addItemOutput(<thermalexpansion:machine:1>);
te_machine_1.build();

val te_machine = RecipeBuilder.newBuilder("te_machine","assembly_machine_MK2",600);
te_machine.addItemInputs([<ore:plateSteel>*4,<ore:gearGaia>,<thermalexpansion:frame>,<thermalfoundation:material:513>,<contenttweaker:fire_essence>*2,<contenttweaker:motor_mk1>*2]);
te_machine.addEnergyPerTickInput(2048);
te_machine.addItemOutput(<thermalexpansion:machine>);
te_machine.build();

val te_machine_2 = RecipeBuilder.newBuilder("te_machine_2","assembly_machine_MK2",600);
te_machine_2.addItemInputs([<ore:plateSteel>*4,<ore:gearGaia>,<thermalexpansion:frame>,<thermalfoundation:material:513>,<thermalfoundation:material:657>,<contenttweaker:motor_mk1>*2]);
te_machine_2.addEnergyPerTickInput(2048);
te_machine_2.addItemOutput(<thermalexpansion:machine:2>);
te_machine_2.build();

val te_machine_4 = RecipeBuilder.newBuilder("te_machine_4","assembly_machine_MK2",600);
te_machine_4.addItemInputs([<ore:plateSteel>*4,<ore:gearGaia>,<thermalexpansion:frame>,<thermalfoundation:material:513>,<contenttweaker:sky_essence>*2,<contenttweaker:growth_essence>*4]);
te_machine_4.addEnergyPerTickInput(2048);
te_machine_4.addItemOutput(<thermalexpansion:machine:4>);
te_machine_4.build();

val ae2drive = RecipeBuilder.newBuilder("ae2drive","assembly_machine_MK2",600);
ae2drive.addItemInputs([<ic2:crafting:3>*4,<appliedenergistics2:material:24>*2,<contenttweaker:assembly_core>,<minecraft:redstone>*8]);
ae2drive.addFluidInput(<liquid:lubricant> *1000);
ae2drive.addEnergyPerTickInput(2048);
ae2drive.addItemOutput(<appliedenergistics2:drive>);
ae2drive.build();

val greem_machine_casing = RecipeBuilder.newBuilder("greem_machine_casing","assembly_machine_MK2",600);
greem_machine_casing.addItemInputs([<immersiveengineering:metal_decoration1:5>*2,<ic2:crafting:3>*2,<contenttweaker:greemhouse_ingot>*4]);
greem_machine_casing.addEnergyPerTickInput(2048);
greem_machine_casing.addItemOutput(<contenttweaker:greemhouse_machine_casing>);
greem_machine_casing.build();

val industrial_farm_max_controller = RecipeBuilder.newBuilder("industrial_farm_max_controller","assembly_machine_MK2",900);
industrial_farm_max_controller.addItemInputs([<ic2:te:58>,<ic2:te:59>,<contenttweaker:growth_essence> * 8,<contenttweaker:potato_core>,<thermalexpansion:frame:64>]);
industrial_farm_max_controller.addFluidInput(<liquid:refined_fuel> * 1000);
industrial_farm_max_controller.addEnergyPerTickInput(1028);
industrial_farm_max_controller.addItemOutput(<modularmachinery:industrial_farm_max_controller>);
industrial_farm_max_controller.build();

val circuit_assembly_controller = RecipeBuilder.newBuilder("circuit_assembly_controller","assembly_machine_MK2",800);
circuit_assembly_controller.addItemInputs([<thermalexpansion:frame>,<ic2:crafting:3> * 8,<ore:gearSignalum> * 2,<ore:circuitBasic> * 4]);
circuit_assembly_controller.addEnergyPerTickInput(1600);
circuit_assembly_controller.addItemOutput(<modularmachinery:circuit_assembly_controller>);
circuit_assembly_controller.build();

//TE压缩机
val te_machine_5 = RecipeBuilder.newBuilder("te_machine_5","assembly_machine_MK2",600);
te_machine_5.addItemInputs([<ore:plateSteel>*4,<ore:gearGaia>,<thermalexpansion:frame>,<thermalfoundation:material:513>,<minecraft:piston>]);
te_machine_5.addFluidInput(<liquid:signalum> * 1500);
te_machine_5.addEnergyPerTickInput(2048);
te_machine_5.addItemOutput(<thermalexpansion:machine:5>);
te_machine_5.build();

//TE离心机
val te_machine_10 = RecipeBuilder.newBuilder("te_machine_10","assembly_machine_MK2",600);
te_machine_10.addItemInputs([<ore:plateSteel>*4,<ore:gearGaia>,<thermalexpansion:frame>,<thermalfoundation:material:513>,<contenttweaker:fire_essence>*2]);
te_machine_10.addFluidInput(<liquid:lumium> * 1500);
te_machine_10.addEnergyPerTickInput(2048);
te_machine_10.addItemOutput(<thermalexpansion:machine:10>);
te_machine_10.build();

val kokoro_core_manufacturing_beta_controller = RecipeBuilder.newBuilder("kokoro_core_manufacturing_beta_controller","assembly_machine_MK2",1200);
kokoro_core_manufacturing_beta_controller.addItemInputs([<ic2:resource:13>,<ic2:crafting:2> * 4,<contenttweaker:sterling_silver_plate>* 8]); //材料暂定
kokoro_core_manufacturing_beta_controller.addEnergyPerTickInput(4096);
kokoro_core_manufacturing_beta_controller.addItemOutput(<modularmachinery:kokoro_core_manufacturing_beta_controller>);
kokoro_core_manufacturing_beta_controller.build();

val pattern_making_machine_controller  = RecipeBuilder.newBuilder("pattern_making_machine_controller","assembly_machine_MK2",1800);
pattern_making_machine_controller.addItemInputs([<thermalexpansion:frame:64>,<ic2:crafting:2>*8,<ore:circuitElite>*2,<contenttweaker:sterling_silver_plate>*16]);
pattern_making_machine_controller.addFluidInput(<liquid:rubber> * 720);
pattern_making_machine_controller.addEnergyPerTickInput(4096);
pattern_making_machine_controller.addOutput(<modularmachinery:pattern_making_machine_controller>);
pattern_making_machine_controller.build();

//1k存储组件
val onek = RecipeBuilder.newBuilder("onek","assembly_machine_MK2",500);
onek.addInputs([<appliedenergistics2:material:22>*2,<ore:crystalCertusQuartz>*8,<ore:circuitBasic>*2,<contenttweaker:red_alloy_dust>*8]);
onek.addFluidInput(<liquid:redstone> * 2000);
onek.addEnergyPerTickInput(512);
onek.addOutput(<appliedenergistics2:material:35>);
onek.build();

//1k流体存储组件
val oneliquidk = RecipeBuilder.newBuilder("oneliquidk","assembly_machine_MK2",900);
oneliquidk.addInputs([<appliedenergistics2:material:22>*2,<ore:crystalCertusQuartz>*8,<ore:circuitElite>,<ore:dustLapis>*8]);
oneliquidk.addFluidInput(<liquid:cryotheum> * 500);
oneliquidk.addEnergyPerTickInput(1024);
oneliquidk.addOutput(<appliedenergistics2:material:54>);
oneliquidk.build();

//4k存储组件
val fourk = RecipeBuilder.newBuilder("fourk","assembly_machine_MK2",500);
fourk.addInputs([<appliedenergistics2:material:35>*4,<appliedenergistics2:material:23>,<ic2:crafting:2>*2,<ore:crystalCertusQuartz>*32]);
fourk.addFluidInput(<liquid:redstone> * 4500);
fourk.addEnergyPerTickInput(1024);
fourk.addOutput(<appliedenergistics2:material:36>);
fourk.build();

# 4k流体存储组件
val fourliquidk = RecipeBuilder.newBuilder("fourliquidk","assembly_machine_MK2",900);
fourliquidk.addInputs([<appliedenergistics2:material:54>*4,<contenttweaker:blood_crystal_dust>*2,<appliedenergistics2:material:23>,<ore:dustLapis>*32]);
fourliquidk.addFluidInput(<liquid:cryotheum> * 1000);
fourliquidk.addEnergyPerTickInput(2048);
fourliquidk.addOutput(<appliedenergistics2:material:55>);
fourliquidk.build();

//手动发动机 From Age 4
val passivegen = RecipeBuilder.newBuilder("passivegen","assembly_machine_MK2",900);
passivegen.addInputs([<extrautils2:ingredients:1>,<extrautils2:ingredients>*2,<enderio:item_material>,<contenttweaker:motor_mk1>*2,<contenttweaker:sterling_silver_plate>*4]);
passivegen.addFluidInput(<liquid:refined_fuel>*3000);
passivegen.addEnergyPerTickInput(2048);
passivegen.addOutput(<extrautils2:passivegenerator:7>);
passivegen.build();

# 装配机MK3控制器 From Age 4
val assembly_machine_MK3 = RecipeBuilder.newBuilder("assembly_machine_MK3","assembly_machine_MK2",2000);
assembly_machine_MK3.addInputs([<modularmachinery:assembly_machine_mk2_controller>,<enderio:item_material:51>*8,<contenttweaker:bedrock_core>,<contenttweaker:penglai_gem>*4,<contenttweaker:super_alloy_plate>*8]);
assembly_machine_MK3.addFluidInput(<liquid:cryotheum>*4000);
assembly_machine_MK3.addEnergyPerTickInput(8192);
assembly_machine_MK3.addOutput(<modularmachinery:assembly_machine_mk3_controller>);
assembly_machine_MK3.build();

# 互联方块
val interconnect = RecipeBuilder.newBuilder("interconnect","assembly_machine_MK2",300);
interconnect.addInputs([<environmentaltech:connector>*4,<valkyrielib:modifier_component>,<ore:circuitBasic>]);
interconnect.addFluidInput(<liquid:redstone>*300);
interconnect.addEnergyPerTickInput(2048);
interconnect.addOutput(<environmentaltech:interconnect>);
interconnect.build();

# 一级结构方块
val tier1str = RecipeBuilder.newBuilder("tier1str","assembly_machine_MK2",200);
tier1str.addInputs([<environmentaltech:interconnect>,<environmentaltech:litherite_crystal>*2,<contenttweaker:sterling_silver_plate>*2,<ore:dustLapis>*2]);
tier1str.addEnergyPerTickInput(4096);
tier1str.addOutput(<environmentaltech:structure_frame_1>);
tier1str.build();

# 核反应仓
val icnu1 = RecipeBuilder.newBuilder("icnu1","assembly_machine_MK2",600);
icnu1.addInputs([<ic2:resource:12>,<contenttweaker:robot_arm_mk1>,<ic2:crafting:3>*2]);
icnu1.addFluidInput(<liquid:lead>*1152);
icnu1.addEnergyPerTickInput(1600);
icnu1.addOutput(<ic2:te:24>);
icnu1.build();

# 核反应堆
val icnu2 = RecipeBuilder.newBuilder("icnu2","assembly_machine_MK2",1800);
icnu2.addInputs([<ic2:te:24>,<ic2:crafting:2>*2,<contenttweaker:electric_piston_mk1>*2,<ic2:crafting:3>*4,<ic2:te:4>]);
icnu2.addFluidInput(<liquid:lead>*3888);
icnu2.addEnergyPerTickInput(4096);
icnu2.addOutput(<ic2:te:22>);
icnu2.build();

# 电解机
val te76 = RecipeBuilder.newBuilder("te76","assembly_machine_MK2",300);
te76.addItemInputs([<ic2:resource:13>,<ic2:crafting:2>,<ic2:crafting:3>*4,<ic2:fluid_cell>*3,<contenttweaker:hikari_gem>]);
te76.addEnergyPerTickInput(2048);
te76.addOutput(<ic2:te:76>);
te76.build();

# 强化机械方块
val reinforced_machine_block = RecipeBuilder.newBuilder("reinforced_machine_block","assembly_machine_MK2",100);
reinforced_machine_block.addItemInputs([<contenttweaker:solid_steel_machine_casing>,<contenttweaker:high_strength_alloy_plate>*4]);
reinforced_machine_block.addFluidInput(<liquid:refined_fuel>*50);
reinforced_machine_block.addEnergyPerTickInput(4096);
reinforced_machine_block.addItemOutput(<contenttweaker:reinforced_mechine_casing>*4);
reinforced_machine_block.build();

# 强化机械方块通风口
val reinforced_machine_vent = RecipeBuilder.newBuilder("reinforced_machine_vent","assembly_machine_MK2",120);
reinforced_machine_vent.addItemInputs([<contenttweaker:high_strength_alloy_plate>*6,<contenttweaker:motor_mk2>]);
reinforced_machine_vent.addFluidInput(<liquid:refined_fuel>*100);
reinforced_machine_vent.addItemInput(<contenttweaker:reinforced_mechine_casing>);
reinforced_machine_vent.addEnergyPerTickInput(6400);
reinforced_machine_vent.addItemOutput(<contenttweaker:reinforced_mechine_vents>*2);
reinforced_machine_vent.build();

# 沉浸电路板 tier2
val immt2 = RecipeBuilder.newBuilder("immt2","assembly_machine_MK2",10);
immt2.addItemInputs([<immersiveengineering:material:20>*2,<ic2:dust:6>]);
immt2.addEnergyPerTickInput(4096);
immt2.addOutput(<immersiveengineering:material:27>);
immt2.addRecipeTooltip("§a沉浸电路板简化配方(原配方来自装配机MKI)");
immt2.addRecipeTooltip("§a      -由装配机MKII提供");
immt2.build();

//L4 存储子系统主机
val ecol4 = RecipeBuilder.newBuilder("ecol4","assembly_machine_MK2",240);
ecol4.addItemInputs([<contenttweaker:me_controller_unfinished>,<ecoaeextension:estorage_casing>*3,<ic2:crafting:2>*2,<contenttweaker:abyssum_gem>*3]);
ecol4.addEnergyPerTickInput(4096);
ecol4.addOutput(<ecoaeextension:extendable_digital_storage_subsystem_l4>);
ecol4.addFluidInput(<liquid:glowstone>*4000);
ecol4.build();

//F4 合成子系统主机
val ecof4 = RecipeBuilder.newBuilder("ecof4","assembly_machine_MK2",240);
ecof4.addItemInputs([<appliedenergistics2:interface>*2,<ecoaeextension:efabricator_casing>*3,<ic2:crafting:2>*2,<contenttweaker:extremeredkrystal_processor>*2]);
ecof4.addEnergyPerTickInput(8192);
ecof4.addFluidInput(<liquid:cryotheum>*1500);
ecof4.addOutput(<ecoaeextension:extendable_fabricator_subsystem_l4>);
ecof4.build();

//配方继承自装配机 assembly_machine_MK2 assembly_machine
RecipeAdapterBuilder.create("assembly_machine_MK2", "modularmachinery:assembly_machine")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0, 1, false).build())
    .build();
