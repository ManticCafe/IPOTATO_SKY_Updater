import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

# 无效果强化部件
val envimodnull = RecipeBuilder.newBuilder("envimodnull","assembly_machine_MK3",600);
envimodnull.addItemInputs([<environmentaltech:interconnect>,<contenttweaker:hikari_gem>*2,<ore:fusedQuartz>*3,<contenttweaker:sterling_silver_plate>*4]);
envimodnull.addManaInput(8000);
envimodnull.addGridPowerInput(256);
envimodnull.addEnergyPerTickInput(8192);
envimodnull.addOutput(<environmentaltech:modifier_null>);
envimodnull.build();

# 高级机械外壳 tier2
val ic1t2 = RecipeBuilder.newBuilder("ic1t2","assembly_machine_MK3",200);
ic1t2.addItemInputs([<ic2:resource:12>*3,<taiga:palladium_ingot>*3,<contenttweaker:super_alloy_plate>*2]);
ic1t2.addGridPowerInput(64);
ic1t2.addEnergyPerTickInput(12120);
ic1t2.addOutput(<ic2:resource:13>*2);
ic1t2.addRecipeTooltip("§a高级机械外壳简化配方(原配方来自装配机MKII)");
ic1t2.addRecipeTooltip("§a      -由装配机MKIII提供");
ic1t2.build();

# 机器框架 tier2
val te1t2 = RecipeBuilder.newBuilder("te1t2","assembly_machine_MK3",500);
te1t2.addItemInputs([<moreplates:gaia_spirit_gear>,<ore:fusedQuartz>*2,<taiga:karmesine_ingot>*8,<contenttweaker:alumite_plate>*2]);
te1t2.addFluidInput(<liquid:lubricant>*250);
te1t2.addGridPowerInput(96);
te1t2.addLifeEssenceInput(2000,false);
te1t2.addEnergyPerTickInput(8192);
te1t2.addRecipeTooltip("§a机器框架简化配方(原配方来自铁匠工作台)");
te1t2.addRecipeTooltip("§a      -由装配机MKIII提供");
te1t2.addOutput(<thermalexpansion:frame>*2);
te1t2.build();

# 设备框架 tier2
val te2t2 = RecipeBuilder.newBuilder("te2t2","assembly_machine_MK3",600);
te2t2.addItemInputs([<ic2:resource:13>,<taiga:abyssum_ingot>*4,<ore:fusedQuartz>*2]);
te2t2.addFluidInput(<liquid:refined_fuel>*200);
te2t2.addGridPowerInput(24);
te2t2.addEnergyPerTickInput(4096);
te2t2.addRecipeTooltip("§a设备框架框架简化配方(原配方来自铁匠工作站)");
te2t2.addRecipeTooltip("§a      -由装配机MKIII提供");
te2t2.addOutput(<thermalexpansion:frame:64>);
te2t2.build();

# 工业机器框架
val eio1 = RecipeBuilder.newBuilder("eio1","assembly_machine_MK3",450);
eio1.addItemInputs([<enderio:item_material>,<enderio:item_material:51>*3,<contenttweaker:aoxi_processor>*2,<contenttweaker:super_alloy_plate>*3]);
eio1.addGridPowerInput(96);
eio1.addFluidInput(<liquid:ender>*500);
eio1.addEnergyPerTickInput(11451);
eio1.addOutput(<enderio:item_material:1>);
eio1.build();

# 合金炉
val eio2 = RecipeBuilder.newBuilder("eio2","assembly_machine_MK3",600);
eio2.addItemInputs([<enderio:item_material:1>,<enderio:block_simple_alloy_smelter>,<enderio:block_simple_furnace>,<contenttweaker:super_alloy_plate>*4,<contenttweaker:penglai_gem>*2,<contenttweaker:conveyor_module_mk2>*2]);
eio2.addGridPowerInput(128);
eio2.addFluidInput(<liquid:pyrotheum>*500);
eio2.addEnergyPerTickInput(12520);
eio2.addOutput(<enderio:block_alloy_smelter>);
eio2.build();

# SAG磨粉机
val eio3 = RecipeBuilder.newBuilder("eio3","assembly_machine_MK3",600);
eio3.addItemInputs([<enderio:item_material:1>,<ic2:te:47>,<enderio:item_material:59>*8,<contenttweaker:super_alloy_plate>*4,<contenttweaker:green_gem>*3,<contenttweaker:electric_piston_mk2>]);
eio3.addGridPowerInput(128);
eio3.addFluidInput(<liquid:refined_fuel>*2000);
eio3.addEnergyPerTickInput(12520);
eio3.addOutput(<enderio:block_sag_mill>);
eio3.build();

# 酿液桶
val eio4 = RecipeBuilder.newBuilder("eio4","assembly_machine_MK3",450);
eio4.addItemInputs([<enderio:item_material:1>,<contenttweaker:basic_intergrowth_dust>*4,<contenttweaker:super_alloy_plate>*4,<contenttweaker:motor_mk2>*2,<minecraft:cauldron>*2,<tconevo:metal:39>*2]);//暂定
eio4.addGridPowerInput(128);
eio4.addEnergyPerTickInput(12520);
eio4.addOutput(<enderio:block_vat>);
eio4.build();

# 一级虚空植物采掘机控制器
val envibott1 = RecipeBuilder.newBuilder("envibott1","assembly_machine_MK3",600);
envibott1.addItemInputs([<environmentaltech:diode>,<ore:etLaserLens>,<environmentaltech:litherite>*8,<environmentaltech:interconnect>*2,<botania:overgrowthseed>*3,<roots:cloud_berry>*8]);
envibott1.addGridPowerInput(32);
envibott1.addManaInput(50000);
envibott1.addEnergyPerTickInput(8192);
envibott1.addOutput(<environmentaltech:void_botanic_miner_cont_1>);
envibott1.build();

# 末影钢机器框架
val eio5 = RecipeBuilder.newBuilder("eio5","assembly_machine_MK3",1200);
eio5.addItemInput(<enderio:item_material:1>);
eio5.addItemInput(<contenttweaker:mystical_source>).setChance(0.33);
eio5.addEnergyPerTickInput(8192);
eio5.addFluidInput(<liquid:end_steel>*1152);
eio5.addGridPowerInput(64);
eio5.addOutput(<enderio:item_material:66>);
eio5.build();

# 高级大型物品过滤器
val eio6 = RecipeBuilder.newBuilder("eio6","assembly_machine_MK3",80);
eio6.addItemInputs([<enderio:item_big_item_filter>,<minecraft:shulker_shell>*2]);
eio6.addEnergyPerTickInput(2048);
eio6.addGridPowerInput(8);
eio6.addOutput(<enderio:item_big_advanced_item_filter>);
eio6.build();

# 现有物品过滤器
val eio7 = RecipeBuilder.newBuilder("eio7","assembly_machine_MK3",80);
eio7.addItemInputs([<enderio:item_big_item_filter>,<minecraft:redstone>*3,<minecraft:comparator>]);
eio7.addEnergyPerTickInput(2048);
eio7.addGridPowerInput(8);
eio7.addOutput(<enderio:item_existing_item_filter>);
eio7.build();

# 限制物品过滤器
val eio8 = RecipeBuilder.newBuilder("eio8","assembly_machine_MK3",80);
eio8.addItemInputs([<enderio:item_big_item_filter>,<minecraft:comparator>*2]);
eio8.addEnergyPerTickInput(2048);
eio8.addGridPowerInput(8);
eio8.addOutput(<enderio:item_limited_item_filter>);
eio8.build();

# 基础电容库
val eio9 = RecipeBuilder.newBuilder("eio9","assembly_machine_MK3",300);
eio9.addItemInputs([<enderio:item_basic_capacitor>*3,<contenttweaker:rose_gold_plate>*8]);
eio9.addFluidInput(<liquid:redstone>*1000);
eio9.addEnergyPerTickInput(4096);
eio9.addOutput(<enderio:block_cap_bank:1>);
eio9.build();

# 电容库
val eio10 = RecipeBuilder.newBuilder("eio10","assembly_machine_MK3",300);
eio10.addItemInputs([<enderio:block_cap_bank:1>*2,<enderio:item_basic_capacitor:1>,<moreplates:energetic_alloy_plate>*8]);
eio10.addFluidInput(<liquid:redstone>*1000);
eio10.addFluidInput(<liquid:fire_water>*50);
eio10.addEnergyPerTickInput(4096);
eio10.addOutput(<enderio:block_cap_bank:2>);
eio10.build();

# 脉冲电容库
val eio11 = RecipeBuilder.newBuilder("eio11","assembly_machine_MK3",300);
eio11.addItemInputs([<enderio:block_cap_bank:2>*2,<enderio:item_basic_capacitor:2>,<moreplates:vibrant_alloy_plate>*8]);
eio11.addFluidInput(<liquid:redstone>*2400);
eio11.addFluidInput(<liquid:enderium>*288);
eio11.addEnergyPerTickInput(8192);
eio11.addOutput(<enderio:block_cap_bank:3>);
eio11.build();

# 自动仪式台控制器
val autotable = RecipeBuilder.newBuilder("autotable","assembly_machine_MK3",900);
autotable.addItemInputs([<enderio:item_material:53>,<bloodmagic:component:8>*2,<tconevo:metal:28>*8]);
autotable.addGridPowerInput(128);
autotable.addManaInput(100000);
autotable.addLifeEssenceInput(10,true);
autotable.addFluidInput(<liquid:mana>*200);
autotable.addEnergyPerTickInput(8192);
autotable.addOutput(<modularmachinery:auto_ritual_table_controller>);
autotable.build();

# 头颅装配机
val eio12 = RecipeBuilder.newBuilder("eio12","assembly_machine_MK3",600);
eio12.addItemInputs([<enderio:item_material:53>,<moreplates:soularium_plate>*8,<moreplates:crystalline_alloy_gear>*2,<ore:itemSkull>,<contenttweaker:middle_intergrowth_dust>*4]);
eio12.addGridPowerInput(64);
eio12.addFluidInput(<liquid:xu_demonic_metal>*3888);
eio12.addLifeEssenceInput(20,true);
eio12.addEnergyPerTickInput(12000);
eio12.addOutput(<enderio:block_slice_and_splice>);
eio12.build();

# 灵魂绑定器
val eio13 = RecipeBuilder.newBuilder("eio13","assembly_machine_MK3",800);
eio13.addItemInputs([<enderio:item_material:53>,<enderio:block_enderman_skull>*2,<minecraft:skull:2>,<minecraft:skull:4>,<minecraft:skull>,<moreplates:soularium_plate>*12,<moreplates:end_steel_gear>*2]);
eio13.addGridPowerInput(32);
eio13.addManaInput(50000);
eio13.addEnergyPerTickInput(8192);
eio13.addLifeEssenceInput(30,true);
eio13.addOutput(<enderio:block_soul_binder>);
eio13.build();

# 数字化苦难之井
val digago = RecipeBuilder.newBuilder("digago","assembly_machine_MK3",600);
digago.addItemInputs([<deepmoblearning:machine_casing>,<deepmoblearning:polymer_clay>*8,<bloodmagic:blood_rune:3>*2,<bloodmagic:slate:4>]);
digago.addGridPowerInput(16);
digago.addEnergyPerTickInput(25565);
digago.addLifeEssenceInput(30,true);
digago.addOutput(<deepmoblearningbm:digital_agonizer>);
digago.build();

//热力蒸馏方块
RecipeBuilder.newBuilder("basicblock2","assembly_machine_MK3",60)
             .addItemInputs([<contenttweaker:high_strength_alloy_plate>,<contenttweaker:super_alloy_plate>,<contenttweaker:high_strength_alloy_plate>,
             <contenttweaker:super_alloy_plate>,<ic2:resource:13>,<contenttweaker:super_alloy_plate>,
             <contenttweaker:high_strength_alloy_plate>,<contenttweaker:super_alloy_plate>,<contenttweaker:high_strength_alloy_plate>])
             .addEnergyPerTickInput(16384)
             .addItemOutput(<mekanism:basicblock2> *4)
             .build();
//热力蒸馏阀门
RecipeBuilder.newBuilder("basicblock2_1","assembly_machine_MK3",60)
             .addItemInputs([<ore:circuitAdvanced>,<mekanism:basicblock2> *4])
             .addEnergyPerTickInput(16384)
             .addItemOutput(<mekanism:basicblock:15>)
             .build();
//热力蒸馏控制器
RecipeBuilder.newBuilder("basicblock2_2","assembly_machine_MK3",120)
             .addItemInputs([<ore:circuitAdvanced> *2,<mekanism:basicblock2> *5,<ore:paneGlass>,<immersiveengineering:metal_device1:1>])
             .addEnergyPerTickInput(16384)
             .addItemOutput(<mekanism:basicblock:14>)
             .build();

//强化机械方块简化配方
RecipeBuilder.newBuilder("reinforced_mechine_casing","assembly_machine_MK3",60)
             .addItemInputs([<immersiveengineering:metal_decoration1:1>*2,<ore:gearOsmium>,<contenttweaker:high_strength_alloy_plate>*6])
             .addEnergyPerTickInput(16384)
             .addItemOutput(<contenttweaker:reinforced_mechine_casing> *4)
             .addRecipeTooltip("§a强化机械方块简化配方(原配方来自装配机MKII)")
             .addRecipeTooltip("§a      -由装配机MKIII提供")
             .build();

//生物质发电机控制器
RecipeBuilder.newBuilder("biomass_generators_controller","assembly_machine_MK3",600)
             .addItemInputs([<enderio:block_vat>,<contenttweaker:high_strength_alloy_plate>*4,<contenttweaker:super_alloy_plate>*4,<contenttweaker:reinforced_mechine_casing>*6])
             .addGridPowerInput(64)
             .addItemOutput(<modularmachinery:biomass_generators_controller>)
             .addEnergyPerTickInput(16384)
             .addFluidInput(<liquid:biocrude> * 1000)
             .build();

# 大型魔力研钵控制器
val auto_mortar = RecipeBuilder.newBuilder("auto_mortar","assembly_machine_MK3",800);
auto_mortar.addItemInputs([<roots:mortar>,<enderio:item_material:53>,<contenttweaker:blood_crystal_empowered>,<tconevo:metal:28>*8]);
auto_mortar.addGridPowerInput(128);
auto_mortar.addManaInput(500000);
auto_mortar.addEnergyPerTickInput(8192);
auto_mortar.addOutput(<modularmachinery:auto_mortar_controller>);
auto_mortar.build();

# 二级虚空矿物采掘机控制器
val envioret2 = RecipeBuilder.newBuilder("envioret2","assembly_machine_MK3",1200);
envioret2.addItemInputs([<environmentaltech:void_ore_miner_cont_1>,<enderio:item_material:43>,<environmentaltech:erodium>*4,<ic2:crafting:4>*4]);
envioret2.addGridPowerInput(128);
envioret2.addEnergyPerTickInput(12000);
envioret2.addFluidInput(<liquid:enderium>*1152);
envioret2.addFluidInput(<liquid:rocket_fuel>*2000);
envioret2.addOutput(<environmentaltech:void_ore_miner_cont_2>);
envioret2.build();

# 二级虚空资源采掘机控制器
val envirest2 = RecipeBuilder.newBuilder("envirest2","assembly_machine_MK3",1200);
envirest2.addItemInputs([<environmentaltech:void_res_miner_cont_1>,<enderio:item_material:43>,<environmentaltech:erodium>*4,<ic2:crafting:4>*4]);
envirest2.addGridPowerInput(128);
envirest2.addEnergyPerTickInput(12000);
envirest2.addFluidInput(<liquid:enderium>*1152);
envirest2.addFluidInput(<liquid:rocket_fuel>*2000);
envirest2.addOutput(<environmentaltech:void_res_miner_cont_2>);
envirest2.build();

# 二级虚空植物采掘机控制器
val envibotanict2 = RecipeBuilder.newBuilder("envibotanict2","assembly_machine_MK3",1200);
envibotanict2.addItemInputs([<environmentaltech:void_botanic_miner_cont_1>,<enderio:item_material:43>,<environmentaltech:erodium>*4,<ic2:crafting:4>*4]);
envibotanict2.addGridPowerInput(128);
envibotanict2.addEnergyPerTickInput(12000);
envibotanict2.addFluidInput(<liquid:enderium>*1152);
envibotanict2.addFluidInput(<liquid:rocket_fuel>*2000);
envibotanict2.addOutput(<environmentaltech:void_botanic_miner_cont_2>);
envibotanict2.build();

# 三级虚空矿物采掘机控制器
val envioret3 = RecipeBuilder.newBuilder("envioret3","assembly_machine_MK3",1200);
envioret3.addItemInputs([<environmentaltech:void_ore_miner_cont_2>,<ore:circuitUltimate>,<environmentaltech:kyronite>*4,<thermalfoundation:material:326>*4]);
envioret3.addGridPowerInput(128);
envioret3.addEnergyPerTickInput(24000);
envioret3.addFluidInput(<liquid:osmium>*1152);
envioret3.addFluidInput(<liquid:rocket_fuel>*2000);
envioret3.addOutput(<environmentaltech:void_ore_miner_cont_3>);
envioret3.build();

# 三级虚空资源采掘机控制器
val envirest3 = RecipeBuilder.newBuilder("envirest3","assembly_machine_MK3",1200);
envirest3.addItemInputs([<environmentaltech:void_res_miner_cont_2>,<ore:circuitUltimate>,<environmentaltech:kyronite>*4,<thermalfoundation:material:326>*4]);
envirest3.addGridPowerInput(128);
envirest3.addEnergyPerTickInput(24000);
envirest3.addFluidInput(<liquid:osmium>*1152);
envirest3.addFluidInput(<liquid:rocket_fuel>*2000);
envirest3.addOutput(<environmentaltech:void_res_miner_cont_3>);
envirest3.build();

# 三级虚空植物采掘机控制器
val envibotanict3 = RecipeBuilder.newBuilder("envibotanict3","assembly_machine_MK3",1200);
envibotanict3.addItemInputs([<environmentaltech:void_botanic_miner_cont_2>,<ore:circuitUltimate>,<environmentaltech:kyronite>*4,<thermalfoundation:material:326>*4]);
envibotanict3.addGridPowerInput(128);
envibotanict3.addEnergyPerTickInput(24000);
envibotanict3.addFluidInput(<liquid:osmium>*1152);
envibotanict3.addFluidInput(<liquid:rocket_fuel>*2000);
envibotanict3.addOutput(<environmentaltech:void_botanic_miner_cont_3>);
envibotanict3.build();


# 附魔器
val enchanting_machine = RecipeBuilder.newBuilder("enchanting_machine","assembly_machine_MK3",600);
enchanting_machine.addItemInputs([<extrautils2:machine>,<minecraft:enchanted_book>,<minecraft:enchanted_book>,<moreplates:dark_steel_gear>*2,<contenttweaker:yuri_controller>]);
enchanting_machine.addGridPowerInput(128);
enchanting_machine.addEnergyPerTickInput(32768);
enchanting_machine.addFluidInput(<liquid:experience>*1000);
enchanting_machine.addOutput(<extrautils2:machine>.withTag({Type: "extrautils2:enchanter"}));
enchanting_machine.build();

# 原子再构机
val atomic_reconstructor = RecipeBuilder.newBuilder("atomic_reconstructor","assembly_machine_MK3",1200);
atomic_reconstructor.addItemInputs([<extrautils2:machine>,<contenttweaker:yuri_controller>,<contenttweaker:tomori_controller>,<ic2:crafting:4>*16,<contenttweaker:mystical_source>*2,<enderio:item_capacitor_melodic>*2]);
atomic_reconstructor.addGridPowerInput(256);
atomic_reconstructor.addEnergyPerTickInput(65536);
atomic_reconstructor.addFluidInput(<liquid:enderium>*3888);
atomic_reconstructor.addFluidInput(<liquid:fire_water>*2000);
atomic_reconstructor.addOutput(<actuallyadditions:block_atomic_reconstructor>);
atomic_reconstructor.build();

# 化学反应釜控制器
val chemical_reactor = RecipeBuilder.newBuilder("chemical_reactor","assembly_machine_MK3",600);
chemical_reactor.addItemInputs([<enderio:item_material:1>,<contenttweaker:high_strength_alloy_plate>*16,<contenttweaker:motor_mk2>*4,<contenttweaker:middle_intergrowth_dust>*3]);
chemical_reactor.addGridPowerInput(32);
chemical_reactor.addEnergyPerTickInput(52000);
chemical_reactor.addOutput(<modularmachinery:chemical_reactors_controller>);
chemical_reactor.build();

# 反应堆控制器
val reactor_controller = RecipeBuilder.newBuilder("reactor_controller","assembly_machine_MK3",600);
reactor_controller.addItemInputs([<bigreactors:reactorcasing>*4,<bigreactors:ingotyellorium>*8,<contenttweaker:tomori_controller>,<enderio:item_material:54>,<contenttweaker:middle_intergrowth_dust>*3]);
reactor_controller.addGridPowerInput(64);
reactor_controller.addEnergyPerTickInput(65536);
reactor_controller.addOutput(<bigreactors:reactorcontroller>);
reactor_controller.build();

# 物质生成机
val matter_generator = RecipeBuilder.newBuilder("matter_generator","assembly_machine_MK3",200);
matter_generator.addItemInputs([<ic2:resource:13>,<contenttweaker:biology_circuit>*2,<ic2:crafting:4>*3,<contenttweaker:mystical_source>]);
matter_generator.addGridPowerInput(128);
matter_generator.addFluidInput(<liquid:xu_enchanted_metal>*1152);
matter_generator.addEnergyPerTickInput(65536);
matter_generator.addOutput(<ic2:te:61>);
matter_generator.build();

# 复制机
val replicator = RecipeBuilder.newBuilder("replicator","assembly_machine_MK3",300);
replicator.addItemInputs([<ic2:resource:13>,<contenttweaker:biology_circuit>,<enderio:item_capacitor_melodic>,<extrautils2:ingredients:17>*4,<ic2:crafting:4>*3,<contenttweaker:yuri_controller>*2]);
replicator.addGridPowerInput(64);
replicator.addEnergyPerTickInput(65536);
replicator.addOutput(<ic2:te:63>);
replicator.build();

//合成单元 tier2
val ae2t2 = RecipeBuilder.newBuilder("ae2t2","assembly_machine_MK3",300);
ae2t2.addItemInputs([<contenttweaker:assembly_core>,<appliedenergistics2:material:22>,<contenttweaker:super_alloy_plate>*2]);
ae2t2.addGridPowerInput(16);
ae2t2.addEnergyPerTickInput(8192);
ae2t2.addRecipeTooltip("§a高级机械外壳简化配方(原配方来自铁匠工作台)");
ae2t2.addRecipeTooltip("§a      -由装配机MKIII提供");
ae2t2.addOutput(<appliedenergistics2:crafting_unit>);
ae2t2.build();

//高级马达
val motor_mk3= RecipeBuilder.newBuilder("motor_mk3","assembly_machine_MK3",300);
motor_mk3.addItemInputs([<contenttweaker:motor_mk2>,<taiga:palladium_ingot> *6,<ic2:crafting:4> * 2,<ore:circuitUltimate>]);
motor_mk3.addFluidInput(<liquid:xu_evil_metal> * 144);
motor_mk3.addGridPowerInput(32);
motor_mk3.addEnergyPerTickInput(32768);
motor_mk3.addOutput(<contenttweaker:motor_mk3>);
motor_mk3.build();

//高级传送带
val conveyor_module_mk3= RecipeBuilder.newBuilder("conveyor_module_mk3","assembly_machine_MK3",300);
conveyor_module_mk3.addItemInputs([<contenttweaker:conveyor_module_mk2>,<taiga:palladium_ingot> *6,<ic2:crafting:4> * 2]);
conveyor_module_mk3.addFluidInput(<liquid:rubber> * 864);
conveyor_module_mk3.addGridPowerInput(32);
conveyor_module_mk3.addEnergyPerTickInput(32768);
conveyor_module_mk3.addOutput(<contenttweaker:conveyor_module_mk3>);
conveyor_module_mk3.build();

//高级机械臂
val robot_arm_mk3= RecipeBuilder.newBuilder("robot_arm_mk3","assembly_machine_MK3",300);
robot_arm_mk3.addItemInputs([<contenttweaker:motor_mk3>,<contenttweaker:robot_arm_mk2>,<taiga:palladium_ingot> *6,<ic2:crafting:4> * 4,<ore:circuitUltimate> *2,<actuallyadditions:item_crystal:4>]);
robot_arm_mk3.addFluidInput(<liquid:rubber> * 144);
robot_arm_mk3.addGridPowerInput(32);
robot_arm_mk3.addEnergyPerTickInput(32768);
robot_arm_mk3.addOutput(<contenttweaker:robot_arm_mk3>);
robot_arm_mk3.build();

//高级活塞
val electric_piston_mk3= RecipeBuilder.newBuilder("electric_piston_mk3","assembly_machine_MK3",300);
electric_piston_mk3.addItemInputs([<contenttweaker:motor_mk3>,<contenttweaker:electric_piston_mk2>,<taiga:palladium_ingot> *6,<ic2:crafting:4> * 4,<ore:circuitUltimate> *2]);
electric_piston_mk3.addFluidInput(<liquid:xu_evil_metal> * 288);
electric_piston_mk3.addGridPowerInput(32);
electric_piston_mk3.addEnergyPerTickInput(32768);
electric_piston_mk3.addOutput(<contenttweaker:electric_piston_mk3>);
electric_piston_mk3.build();

//配方继承自装配机 assembly_machine_MK2 assembly_machine_MK1
RecipeAdapterBuilder.create("assembly_machine_MK3", "modularmachinery:assembly_machine_MK2")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.5, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 4.0, 1, false).build())
    .build();

RecipeAdapterBuilder.create("assembly_machine_MK3", "modularmachinery:assembly_machine")
    .addModifier(RecipeModifierBuilder.create("modularmachinery:duration", "input", 0.25, 1, false).build())
    .addModifier(RecipeModifierBuilder.create("modularmachinery:energy",   "input", 8.0, 1, false).build())
    .build();