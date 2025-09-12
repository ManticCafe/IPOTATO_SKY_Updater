import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

# 恶魔锭
val demon_ingot = RecipeBuilder.newBuilder("demon_ingot","assembly_machine_mini",5);
demon_ingot.addItemInput(<minecraft:gold_ingot>);
demon_ingot.addFluidInput(<liquid:lava>*25);
demon_ingot.addGridPowerInput(2);
demon_ingot.addOutput(<extrautils2:ingredients:11>);
demon_ingot.build();

# 机器方块
val machine_block = RecipeBuilder.newBuilder("machine_block","assembly_machine_mini",300);
machine_block.addItemInputs([<enderio:block_alloy:6>,<enderio:item_material:68>*3,<enderio:item_material:41>,<contenttweaker:abyssum_processor>*2,<contenttweaker:ender_core>]);
machine_block.addFluidInput(<liquid:xu_demonic_metal>*2592);
machine_block.addGridPowerInput(96);
machine_block.addEnergyPerTickInput(65536);
machine_block.addOutput(<extrautils2:machine>);
machine_block.build();

# 一级虚空资源采掘机控制器
val void_miner_controller1 = RecipeBuilder.newBuilder("void_miner_controller1","assembly_machine_mini",600);
void_miner_controller1.addItemInputs([<environmentaltech:diode>,<ore:etLaserLens>,<environmentaltech:litherite>*16,<environmentaltech:interconnect>*2,<extrautils2:compressedcobblestone:4>,<contenttweaker:growth_dust>*2]);
void_miner_controller1.addGridPowerInput(64);
void_miner_controller1.addEnergyPerTickInput(65536);
void_miner_controller1.addFluidInput(<liquid:xu_enchanted_metal>*1152);
void_miner_controller1.addOutput(<environmentaltech:void_res_miner_cont_1>);
void_miner_controller1.build();

# 二级结构方块
val structure_block2 = RecipeBuilder.newBuilder("structure_block2","assembly_machine_mini",200);
structure_block2.addItemInputs([<environmentaltech:structure_frame_1>,<environmentaltech:erodium_crystal>*4,<contenttweaker:super_alloy_plate>*2,<contenttweaker:basic_intergrowth_dust>*2]);
structure_block2.addGridPowerInput(16);
structure_block2.addEnergyPerTickInput(32768);
structure_block2.addFluidInput(<liquid:iridium>*576);
structure_block2.addOutput(<environmentaltech:structure_frame_2>);
structure_block2.build();

# 反应堆外壳核心
val reactor_core = RecipeBuilder.newBuilder("reactor_core","assembly_machine_mini",80);
reactor_core.addItemInputs([<contenttweaker:super_alloy_plate>*2,<thermalfoundation:material:103>,<contenttweaker:rose_gold_ingot>*2]);
reactor_core.addGridPowerInput(8);
reactor_core.addEnergyPerTickInput(16384);
reactor_core.addOutput(<bigreactors:reactorcasingcores>);
reactor_core.build();

# 模式扫描机
val pattern_scanner = RecipeBuilder.newBuilder("pattern_scanner","assembly_machine_mini",600);
pattern_scanner.addItemInputs([<ic2:resource:13>,<threng:material:14>*2,<environmentaltech:kyronite_crystal>*8,<ic2:crafting:4>*3,<contenttweaker:tomori_controller>]);
pattern_scanner.addGridPowerInput(256);
pattern_scanner.addEnergyPerTickInput(32768);
pattern_scanner.addFluidInput(<liquid:ic2uu_matter>*500);
pattern_scanner.addOutput(<ic2:te:64>);
pattern_scanner.build();

# 模式存储机
val pattern_storage = RecipeBuilder.newBuilder("pattern_storage","assembly_machine_mini",600);
pattern_storage.addItemInputs([<ic2:resource:13>,<enderio:item_capacitor_vivid>*2,<contenttweaker:ender_core>*2,<ic2:crafting:4>*3]);
pattern_storage.addGridPowerInput(256);
pattern_storage.addEnergyPerTickInput(32768);
pattern_storage.addFluidInput(<liquid:enderium>*4608);
pattern_storage.addOutput(<ic2:te:62>);
pattern_storage.build();

//三级结构方块
RecipeBuilder.newBuilder("structure_block3","assembly_machine_mini",200)
    .addItemInputs([<environmentaltech:structure_frame_2>,<ore:plateOsmium>*2,<environmentaltech:kyronite_crystal>*4,<contenttweaker:middle_intergrowth_dust>*2])
    .addFluidInput(<liquid:palladium_fluid> * 576)
    .addGridPowerInput(32)
    .addEnergyPerTickInput(65536)
    .addOutput(<environmentaltech:structure_frame_3>)
    .build();
