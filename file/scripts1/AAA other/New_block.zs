#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;
import crafttweaker.item.WeightedItemStack;
import mods.contenttweaker.VanillaFactory.createDirectionalBlock;
import mods.contenttweaker.IBlockAction;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.util.Position3f;
import mods.contenttweaker.BlockPos;
import crafttweaker.event.BlockBreakEvent;


//不幸运方块
val unlucky_block  = VanillaFactory.createBlock("lucky_block",<blockmaterial:iron>);
unlucky_block.setBlockHardness(1.0);
unlucky_block.setToolLevel(0);
unlucky_block.setToolClass("pickaxe");
unlucky_block.register();


//装配机械方块
val solid_steel_machine_casing = VanillaFactory.createBlock("solid_steel_machine_casing",<blockmaterial:iron>);
solid_steel_machine_casing.setToolClass("pickaxe");
solid_steel_machine_casing.setToolLevel(2);
solid_steel_machine_casing.register();

//装配核心
val assembly_core = VanillaFactory.createBlock("assembly_core",<blockmaterial:iron>);
assembly_core.setToolClass("pickaxe");
assembly_core.setToolLevel(2);
assembly_core.register();

//进阶装配核心
val assembly_core_MK2 as Block = VanillaFactory.createBlock("assembly_core_MK2",<blockmaterial:iron>);
assembly_core_MK2.setToolClass(2);
assembly_core_MK2.setToolClass("pickaxe");
assembly_core_MK2.register();

//高级装配核心
val assembly_core_MK3 as Block = VanillaFactory.createBlock("assembly_core_MK3",<blockmaterial:iron>);
assembly_core_MK3.setToolClass(2);
assembly_core_MK3.setToolClass("pickaxe");
assembly_core_MK3.register();

//精英装配核心
val assembly_core_MK4 as Block = VanillaFactory.createBlock("assembly_core_MK4",<blockmaterial:iron>);
assembly_core_MK4.setToolClass(2);
assembly_core_MK4.setToolClass("pickaxe");
assembly_core_MK4.register();

//土豆核心
val potato_core = VanillaFactory.createBlock("potato_core",<blockmaterial:iron>);
potato_core.setToolClass("pickaxe");
potato_core.setToolLevel(2);
potato_core.register();

//温室机械方块
val greemhouse_machine_casing  = VanillaFactory.createBlock("greemhouse_machine_casing",<blockmaterial:iron>);
greemhouse_machine_casing.setToolClass("pickaxe");
greemhouse_machine_casing.setToolLevel(2);
greemhouse_machine_casing.register();

//kkr
val smile_block = VanillaFactory.createBlock("smile_block",<blockmaterial:iron>);
smile_block.register();

//mashiro
val mashiro_block = VanillaFactory.createBlock("mashiro_block",<blockmaterial:iron>);
mashiro_block.register();

//me控制器(未完成)
val me_controller_unfinished = VanillaFactory.createBlock("me_controller_unfinished",<blockmaterial:iron>);
me_controller_unfinished.setToolLevel(2);
me_controller_unfinished.setToolClass("pickaxe");
me_controller_unfinished.register();

//超能金属爆弹
val Charged_Metal_Blaster as Block = VanillaFactory.createBlock("Charged_Metal_Blaster",<blockmaterial:iron>);
Charged_Metal_Blaster.setToolLevel(3);
Charged_Metal_Blaster.setToolClass("pickaxe");
Charged_Metal_Blaster.register();

//强化机械方块
val reinforced_mechine_casing as Block = VanillaFactory.createBlock("reinforced_mechine_casing",<blockmaterial:iron>);
reinforced_mechine_casing.setToolLevel(2);
reinforced_mechine_casing.setToolClass("pickaxe");
reinforced_mechine_casing.register();

//强化机械通风口
val reinforced_mechine_vents as Block = VanillaFactory.createBlock("reinforced_mechine_vents",<blockmaterial:iron>);
reinforced_mechine_vents.setToolLevel(2);
reinforced_mechine_vents.setToolClass("pickaxe");
reinforced_mechine_vents.register();

//筛网
val mesh as Block =VanillaFactory.createBlock("mesh",<blockmaterial:iron>);
mesh.register();

//粒子加速器外壳
val particle_accelerator_casing as Block = VanillaFactory.createBlock("particle_accelerator_casing",<blockmaterial:iron>);
particle_accelerator_casing.setToolLevel(3);
particle_accelerator_casing.setToolClass("pickaxe");
particle_accelerator_casing.register();

//粒子加速器线圈
val particle_accelerator_coil as Block = VanillaFactory.createBlock("particle_accelerator_coil",<blockmaterial:iron>);
particle_accelerator_coil.setToolLevel(3);
particle_accelerator_coil.setToolClass("pickaxe");
particle_accelerator_coil.register();

//超能金属框架
val Charged_Metal_Frame as Block = VanillaFactory.createBlock("Charged_Metal_Frame",<blockmaterial:iron>);
Charged_Metal_Frame.setToolLevel(3);
Charged_Metal_Frame.setToolClass("pickaxe");
Charged_Metal_Frame.register();