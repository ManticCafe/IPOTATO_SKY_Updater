# Age 4

import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.RecipeCheckEvent;

//简易机器框架
val eioclassicchassis = RecipeBuilder.newBuilder("eioclassicchassis", "kokoro_core_manufacturing_beta",300);
eioclassicchassis.addInputs([<ic2:resource:13>,<thermalfoundation:material:833>*8,<contenttweaker:bedrock_core>,<contenttweaker:cupronickel_plate>*2]);
eioclassicchassis.addFluidInput(<liquid:rubber> * 1152);
eioclassicchassis.addEnergyPerTickInput(4096);
eioclassicchassis.addOutput(<enderio:item_material>);
eioclassicchassis.build();

//红石齿轮
val ingred = RecipeBuilder.newBuilder("ingred", "kokoro_core_manufacturing_beta",300);
ingred.addInputs([<thermalfoundation:material:293>,<contenttweaker:red_alloy_dust>*4]);
ingred.addEnergyPerTickInput(1024);
ingred.addOutput(<extrautils2:ingredients:1>);
ingred.build();

//共振红石水晶
val redgem = RecipeBuilder.newBuilder("redgem", "kokoro_core_manufacturing_beta",200);
redgem.addInput(<extrautils2:endershard>);
redgem.addInput(<contenttweaker:extreme_unstable_redcrystal>).setChance(0.15);
redgem.addEnergyPerTickInput(1024);
redgem.addFluidInput(<liquid:redstone>*500);
redgem.addOutput(<extrautils2:ingredients>);
redgem.build();

//基岩核心
val bedrock_core = RecipeBuilder.newBuilder("bedrock_core", "kokoro_core_manufacturing_beta",450);
bedrock_core.addInputs([<enderio:item_material:20>*2,<enderio:item_material:50>*2,<extrautils2:compressedcobblestone:2>*2,<thermalfoundation:material:96>*8]);
bedrock_core.addInput(<contenttweaker:extreme_unstable_redcrystal>).setChance(0.3);
bedrock_core.addFluidInput(<liquid:refined_fuel>*500);
bedrock_core.addPreCheckHandler(function(event as RecipeCheckEvent) {
        val y = event.controller;
        if (y.pos.y > 15) {
            event.setFailed("只能在y = 15以下工作哦！");
        }
});
bedrock_core.addRecipeTooltip("§6地底产物，仅能在§a临近虚空时§6合成");
bedrock_core.addEnergyPerTickInput(3090);
bedrock_core.addOutput(<contenttweaker:bedrock_core>);
bedrock_core.build();

# 进阶马达
val motor_MK2 = RecipeBuilder.newBuilder("motor_MK2","kokoro_core_manufacturing_beta",120);
motor_MK2.addInputs([<contenttweaker:super_alloy_plate>*2,<contenttweaker:cupronickel_ingot>*12,<contenttweaker:aoxi_metal>*2]);
motor_MK2.addFluidInput(<liquid:lubricant>*200);
motor_MK2.addEnergyPerTickInput(4096);
motor_MK2.addOutput(<contenttweaker:motor_mk2>);
motor_MK2.build();

# 进阶机械臂
val robot_arm_MK2 = RecipeBuilder.newBuilder("robot_arm_MK2","kokoro_core_manufacturing_beta",160);
robot_arm_MK2.addInputs([<contenttweaker:super_alloy_plate>*2,<contenttweaker:motor_mk2>,<extrautils2:ingredients>*4,<contenttweaker:green_gem>,<enderio:item_material:50>*2]);
robot_arm_MK2.addFluidInput(<liquid:rubber>*144);
robot_arm_MK2.addEnergyPerTickInput(4096);
robot_arm_MK2.addOutput(<contenttweaker:robot_arm_mk2>);
robot_arm_MK2.build();

# 进阶传送带
val conveyor_module_MK2 = RecipeBuilder.newBuilder("conveyor_module_MK2","kokoro_core_manufacturing_beta",160);
conveyor_module_MK2.addInputs([<contenttweaker:motor_mk2>,<contenttweaker:super_alloy_plate>,<taiga:abyssum_dust>*2]);
conveyor_module_MK2.addFluidInput(<liquid:rubber>*864);
conveyor_module_MK2.addEnergyPerTickInput(4096);
conveyor_module_MK2.addOutput(<contenttweaker:conveyor_module_mk2>);
conveyor_module_MK2.build();

# 进阶活塞
val electric_piston_MK2 = RecipeBuilder.newBuilder("electric_piston_MK2","kokoro_core_manufacturing_beta",160);
electric_piston_MK2.addInputs([<contenttweaker:super_alloy_plate>*5,<contenttweaker:luna_gem>*2,<extrautils2:ingredients>*2,<contenttweaker:motor_mk2>]);
electric_piston_MK2.addEnergyPerTickInput(4096);
electric_piston_MK2.addOutput(<contenttweaker:electric_piston_mk2>);
electric_piston_MK2.build();

# 进阶装配核心
val assembly_core_MK2 = RecipeBuilder.newBuilder("essembly_core_MK2","kokoro_core_manufacturing_beta",600);
assembly_core_MK2.addInputs([<contenttweaker:smile_block>,<contenttweaker:motor_mk2>,<contenttweaker:robot_arm_mk2>,<contenttweaker:conveyor_module_mk2>,<contenttweaker:electric_piston_mk2>]);
assembly_core_MK2.addFluidInput(<liquid:photoresist>*2000);
assembly_core_MK2.addEnergyPerTickInput(4096);
assembly_core_MK2.addOutput(<contenttweaker:assembly_core_mk2>*3);
assembly_core_MK2.build();

# 末影核心
val ender_core = RecipeBuilder.newBuilder("ender_core","kokoro_core_manufacturing_beta",450);
ender_core.addInputs([<extrautils2:ingredients>,<contenttweaker:blood_crystal_dust>*2,<contenttweaker:basic_intergrowth_dust>*3 ,<contenttweaker:penglai_gem>]);
ender_core.addEnergyPerTickInput(5000);
ender_core.addFluidInput(<liquid:ender>*1500);
ender_core.addOutput(<contenttweaker:ender_core>);
ender_core.build();

# 奥席处理器
val aoxi_processor = RecipeBuilder.newBuilder("aoxi_processor","kokoro_core_manufacturing_beta",90);
aoxi_processor.addItemInputs([<contenttweaker:aoxi_circuit>,<appliedenergistics2:material:20>]);
aoxi_processor.addEnergyPerTickInput(4096);
aoxi_processor.addFluidInput(<liquid:cryotheum>*200);
aoxi_processor.addOutput(<contenttweaker:aoxi_processor>);
aoxi_processor.build();

# 蕴含深渊的处理器
val abyssum_processor = RecipeBuilder.newBuilder("abyssum_processor","kokoro_core_manufacturing_beta",120);
abyssum_processor.addItemInputs([<contenttweaker:abyssum_circuit>,<appliedenergistics2:material:20>]);
abyssum_processor.addFluidInput(<liquid:iridium>*288);
abyssum_processor.addEnergyPerTickInput(8192);
abyssum_processor.addOutput(<contenttweaker:abyssum_processor>);
abyssum_processor.build();

