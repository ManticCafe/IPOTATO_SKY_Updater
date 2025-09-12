//circuit_assembly
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//高级电路板
val circuit1 = RecipeBuilder.newBuilder("circuit","circuit_assembly",60);
circuit1.addItemInputs([<ore:circuitBasic>,<ore:plateSilicon>*3,<appliedenergistics2:part:140>*2,<appliedenergistics2:material:10>,<appliedenergistics2:material:23>,<appliedenergistics2:material:24>,<appliedenergistics2:material:22>]);
circuit1.addEnergyPerTickInput(8192);
circuit1.addFluidInput(<liquid:rubber> * 288);
circuit1.addItemOutput(<ic2:crafting:2>*3);
circuit1.build();

//魔力电路板
val mana_circuit = RecipeBuilder.newBuilder("mana_circuit","circuit_assembly",300);
mana_circuit.addItemInputs([<ore:itemInsulatedGlassCable>*2,<contenttweaker:manaup_dust>*2,<contenttweaker:sterling_silver_plate>*2,<contenttweaker:red_alloy_dust>*8,<appliedenergistics2:material:22>*2]);
mana_circuit.addFluidInput(<liquid:rubber> * 288);
mana_circuit.addEnergyPerTickInput(1024);
mana_circuit.addOutput(<contenttweaker:mana_circuit>);
mana_circuit.build();

# 二极管
val diode = RecipeBuilder.newBuilder("diode","circuit_assembly",300);
diode.addInputs([<tconstruct:clear_glass>*5,<ore:itemSilicon>*2,<ore:dustAluminum>*4]);
diode.addFluidInput(<liquid:redstone>* 200);
diode.addEnergyPerTickInput(1024);
diode.addOutput(<environmentaltech:diode>);
diode.build();

//运算电路板
val calpro = RecipeBuilder.newBuilder("calpro","circuit_assembly",30);
calpro.addInput(<appliedenergistics2:material:13>).setChance(0);
calpro.addInput(<appliedenergistics2:material:10>);
calpro.addEnergyPerTickInput(400);
calpro.addOutput(<appliedenergistics2:material:16>);
calpro.build();

//逻辑电路板
val logpro = RecipeBuilder.newBuilder("logpro","circuit_assembly",30);
logpro.addInput(<appliedenergistics2:material:15>).setChance(0);
logpro.addInput(<minecraft:gold_ingot>);
logpro.addEnergyPerTickInput(400);
logpro.addOutput(<appliedenergistics2:material:18>);
logpro.build();

//工程电路板
val engpro = RecipeBuilder.newBuilder("engpro","circuit_assembly",30);
engpro.addInput(<appliedenergistics2:material:14>).setChance(0);
engpro.addInput(<ore:gemDiamond>);
engpro.addEnergyPerTickInput(400);
engpro.addOutput(<appliedenergistics2:material:17>);
engpro.build();

//蕴含魔力的逻辑电路板
val manaengpro = RecipeBuilder.newBuilder("manaengpro","circuit_assembly",30);
manaengpro.addInput(<appliedenergistics2:material:15>).setChance(0);
manaengpro.addInput(<contenttweaker:extreme_unstable_redcrystal>);
manaengpro.addEnergyPerTickInput(2048);
manaengpro.addOutput(<contenttweaker:extremeredkrystal_circuit>);
manaengpro.build();

//硅板
val silicon = RecipeBuilder.newBuilder("silico","circuit_assembly",30);
silicon.addInput(<appliedenergistics2:material:19>).setChance(0);
silicon.addInput(<ore:itemSilicon>);
silicon.addEnergyPerTickInput(400);
silicon.addOutput(<appliedenergistics2:material:20>);
silicon.build();

//生物电路板
RecipeBuilder.newBuilder("biology_circuit_1","circuit_assembly",200)
             .addItemInputs(<ore:itemInsulatedGlassCable> *2,<ore:nuggetPlatinum> *4,<contenttweaker:petri_dish_1>,<contenttweaker:biological_circuit_substrates>,<ic2:crafting:4>*2)
             .addFluidInput(<liquid:biocrude> *144)
             .addEnergyPerTickInput(32768)
             .addItemOutput(<contenttweaker:biology_circuit_1>)
             .build();

//LD 存储矩阵驱动器
val ecold = RecipeBuilder.newBuilder("ecold","circuit_assembly",300);
ecold.addItemInputs([<appliedenergistics2:drive>,<ecoaeextension:estorage_casing>*2,<threng:material:6>,<appliedenergistics2:part:16>*4]);
ecold.addEnergyPerTickInput(4096);
ecold.addOutput(<ecoaeextension:estorage_cell_drive>);
ecold.build();

//LR ME矩阵通讯接口
val ecolr = RecipeBuilder.newBuilder("ecolr","circuit_assembly",300);
ecolr.addItemInputs([<appliedenergistics2:security_station>,<ecoaeextension:estorage_casing>*4,<contenttweaker:aoxi_processor>*2,<appliedenergistics2:memory_card>]);
ecolr.addEnergyPerTickInput(4096);
ecolr.addFluidInput(<liquid:redstone>*2400);
ecolr.addOutput(<ecoaeextension:estorage_me_channel>);
ecolr.build();

//光谱电路板
val gpcir = RecipeBuilder.newBuilder("gpcir","circuit_assembly",200);
gpcir.addItemInputs([<contenttweaker:biology_circuit>,<ic2:crafting:4>*3,<extendedcrafting:material:14>*2,<super_solar_panels:crafting:11>*4]);
gpcir.addEnergyPerTickInput(65536);
gpcir.addOutput(<super_solar_panels:crafting:15>);
gpcir.addFluidInput(<liquid:astralsorcery.liquidstarlight>*2000);
gpcir.build();
