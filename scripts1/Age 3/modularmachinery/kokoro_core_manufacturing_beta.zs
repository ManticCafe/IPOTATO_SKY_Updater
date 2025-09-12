import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//兰波顿水晶
val lapotron = RecipeBuilder.newBuilder("lapotron", "kokoro_core_manufacturing_beta",500);
lapotron.addInputs([<ore:energyCrystal>,<ore:circuitElite>,<ic2:crafting:2>,<ore:dustLapis>*8]);
lapotron.addFluidInput(<liquid:cryotheum> * 500);
lapotron.addEnergyPerTickInput(1024);
lapotron.addOutput(<ic2:lapotron_crystal>);
lapotron.build();

//土豆核心
val potato_core = RecipeBuilder.newBuilder("potato_core","kokoro_core_manufacturing_beta",450);
potato_core.addInputs([<minecraft:potato>*16,<minecraft:poisonous_potato>*2,<contenttweaker:assembly_core>,<ore:plateSteel>*4,<ic2:dust:6>*4]);
potato_core.addFluidInput(<liquid:lubricant>*100);
potato_core.addEnergyPerTickInput(800);
potato_core.addOutput(<contenttweaker:potato_core>);    
potato_core.build();

//弦卷核心
val kkr_core = RecipeBuilder.newBuilder("kkr_core","kokoro_core_manufacturing_beta",600);
kkr_core.addInputs([<minecraft:gold_block>*16,<contenttweaker:manaup_dust>*2,<contenttweaker:goldleaf_essence>*4,<ic2:dust:6>*2,<contenttweaker:rose_gold_plate>*8]);
kkr_core.addFluidInput(<liquid:lumium> * 500);
kkr_core.addEnergyPerTickInput(800);
kkr_core.addOutput(<contenttweaker:smile_block>);
kkr_core.build();

//运算处理器
val calpro2 = RecipeBuilder.newBuilder("calpro2","kokoro_core_manufacturing_beta",45);
calpro2.addInputs([<appliedenergistics2:material:16>,<appliedenergistics2:material:20>]);
calpro2.addFluidInput(<liquid:redstone>*100);
calpro2.addEnergyPerTickInput(512);
calpro2.addOutput(<appliedenergistics2:material:23>);
calpro2.build();

//逻辑处理器
val logpro2 = RecipeBuilder.newBuilder("logpro2","kokoro_core_manufacturing_beta",45);
logpro2.addInputs([<appliedenergistics2:material:18>,<appliedenergistics2:material:20>]);
logpro2.addFluidInput(<liquid:redstone>*100);
logpro2.addEnergyPerTickInput(512);
logpro2.addOutput(<appliedenergistics2:material:22>);
logpro2.build();

//工程处理器
val engpro2 = RecipeBuilder.newBuilder("engpro2","kokoro_core_manufacturing_beta",45);
engpro2.addInputs([<appliedenergistics2:material:17>,<appliedenergistics2:material:20>]);
engpro2.addFluidInput(<liquid:redstone>*100);
engpro2.addEnergyPerTickInput(512);
engpro2.addOutput(<appliedenergistics2:material:24>);
engpro2.build();

# 蕴含魔力的逻辑处理器
val manalogpro = RecipeBuilder.newBuilder("manalogpro","kokoro_core_manufacturing_beta",90);
manalogpro.addInputs([<contenttweaker:extremeredkrystal_circuit>,<appliedenergistics2:material:20>]);
manalogpro.addFluidInput(<liquid:photoresist>*125);
manalogpro.addEnergyPerTickInput(4096);
manalogpro.addOutput(<contenttweaker:extremeredkrystal_processor>);
manalogpro.build();

# 连接器
val connector = RecipeBuilder.newBuilder("connector","kokoro_core_manufacturing_beta",30);
connector.addInputs([<minecraft:iron_ingot>*3,<ore:itemInsulatedCopperCable>]);
connector.addFluidInput(<liquid:redstone>*200);
connector.addEnergyPerTickInput(2048);
connector.addOutput(<environmentaltech:connector>);
connector.build();

# 强化部件核心
val envicomponent = RecipeBuilder.newBuilder("envicomponent","kokoro_core_manufacturing_beta",60);
envicomponent.addInputs([<ore:dustObsidian>*2,<minecraft:iron_ingot>*4,<ic2:dust:6>*3]);
envicomponent.addFluidInput(<liquid:photoresist>*100);
envicomponent.addEnergyPerTickInput(2048);
envicomponent.addOutput(<valkyrielib:modifier_component>);
envicomponent.build();

# 澄清透镜
val laserlens = RecipeBuilder.newBuilder("elaserlens","kokoro_core_manufacturing_beta",300);
laserlens.addInputs([<extrautils2:decorativeglass>*10,<contenttweaker:red_alloy_dust>*2]);
laserlens.addEnergyPerTickInput(512);
laserlens.addOutput(<environmentaltech:laser_lens>);
laserlens.build();

//LT4 高密度能量元件
val ecolt4 = RecipeBuilder.newBuilder("ecolt4","kokoro_core_manufacturing_beta",240);
ecolt4.addInputs([<ic2:dust:6>*8,<appliedenergistics2:material:47>,<contenttweaker:basic_intergrowth_dust>*3]);
ecolt4.addFluidInput(<liquid:lumium>*1152);
ecolt4.addEnergyPerTickInput(8192);
ecolt4.addOutput(<ecoaeextension:estorage_energy_cell_l4>);
ecolt4.build();

//FT4 并行核心
val ecoft4 = RecipeBuilder.newBuilder("ecoft4","kokoro_core_manufacturing_beta",300);
ecoft4.addItemInputs([<appliedenergistics2:crafting_accelerator>,<contenttweaker:aoxi_processor>*2,<contenttweaker:bedrock_core>]);
ecoft4.addEnergyPerTickInput(8192);
ecoft4.addFluidInput(<liquid:enderium>*1152);
ecoft4.addOutput(<ecoaeextension:efabricator_parallel_proc_l4>);
ecoft4.build();

//FX 工作核心
val ecofx = RecipeBuilder.newBuilder("ecofx","kokoro_core_manufacturing_beta",300);
ecofx.addItemInputs(<appliedenergistics2:material:38>,<contenttweaker:abyssum_processor>*4,<contenttweaker:ender_core>);
ecofx.addEnergyPerTickInput(12121);
ecofx.addOutput(<ecoaeextension:efabricator_worker>);
ecofx.build();

//高级线圈