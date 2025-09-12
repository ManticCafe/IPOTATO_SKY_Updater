import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//1k存储组件
val onek1 = RecipeBuilder.newBuilder("onek1","Lithography_machine",80);
onek1.addInputs([<appliedenergistics2:material:22>*1,<contenttweaker:rose_gold_ingot>*2]);
onek1.addFluidInput(<liquid:extremeredliquid> * 50);
onek1.addEnergyPerTickInput(4096);
onek1.addOutput(<appliedenergistics2:material:35>);
onek1.build();

//4k存储组件
val fourk1 = RecipeBuilder.newBuilder("fourk1","Lithography_machine",120);
fourk1.addInputs([<appliedenergistics2:material:35>*3,<appliedenergistics2:material:23>,<thermalfoundation:material:166>*4]);
fourk1.addFluidInput(<liquid:extremeredliquid> * 125);
fourk1.addEnergyPerTickInput(4096);
fourk1.addOutput(<appliedenergistics2:material:36>);
fourk1.build();

//16k存储组件
val sixteenk = RecipeBuilder.newBuilder("sixteenk","Lithography_machine",160);
sixteenk.addInputs([<appliedenergistics2:material:36>*3,<appliedenergistics2:material:24>,<contenttweaker:sterling_silver_ingot>*2,<thermalfoundation:material:165>*2]);
sixteenk.addFluidInput(<liquid:extremeredliquid> * 250);
sixteenk.addEnergyPerTickInput(4096);
sixteenk.addOutput(<appliedenergistics2:material:37>);
sixteenk.build();

//64k存储组件 
val k64 = RecipeBuilder.newBuilder("k64","Lithography_machine",240);
k64.addInputs([<appliedenergistics2:material:37>*3,<contenttweaker:extremeredkrystal_processor>*2,<ic2:nuclear:1>*2,<ic2:plate:14>*2]);
k64.addFluidInput(<liquid:mana>*100);
k64.addEnergyPerTickInput(4096);
k64.addOutput(<appliedenergistics2:material:38>);
k64.build();

# 1k流体存储组件
val fk1 = RecipeBuilder.newBuilder("fk1","Lithography_machine",60);
fk1.addInputs([<appliedenergistics2:material:22>,<contenttweaker:alumite_dust>*3]);
fk1.addFluidInput(<liquid:extremeredliquid> * 50);
fk1.addEnergyPerTickInput(8192);
fk1.addOutput(<appliedenergistics2:material:54>);
fk1.build();

# 4k流体存储组件
val fk4 = RecipeBuilder.newBuilder("fk4","Lithography_machine",100);
fk4.addInputs([<appliedenergistics2:material:54>*3,<appliedenergistics2:material:23>,<contenttweaker:basic_intergrowth_dust>*2]);
fk4.addFluidInput(<liquid:mana>*25);
fk4.addEnergyPerTickInput(8192);
fk4.addOutput(<appliedenergistics2:material:55>);
fk4.build();

# 16k流体存储组件
val fk16 = RecipeBuilder.newBuilder("fk16","Lithography_machine",160);
fk16.addItemInputs([<appliedenergistics2:material:55>*3,<contenttweaker:extremeredkrystal_processor>,<contenttweaker:hikari_gem>*2]);
fk16.addFluidInput(<liquid:liquid_sunshine>*150);
fk16.addEnergyPerTickInput(12000);
fk16.addOutput(<appliedenergistics2:material:56>);
fk16.build();

# 256k存储组件
val k256 = RecipeBuilder.newBuilder("k256","Lithography_machine",300);
k256.addInputs([<appliedenergistics2:material:38>*3,<contenttweaker:abyssum_processor>*2,<contenttweaker:middle_intergrowth_dust>*4,<contenttweaker:super_alloy_plate>*4]);
k256.addFluidInput(<liquid:growth>*250);
k256.addEnergyPerTickInput(16384);
k256.addOutput(<extracells:storage.component>);
k256.build();

# 64k流体存储组件
val fk64 = RecipeBuilder.newBuilder("fk64","Lithography_machine",240);
fk64.addInputs([<appliedenergistics2:material:56>*3,<contenttweaker:abyssum_processor>*2,<contenttweaker:grow_gem>,<contenttweaker:super_alloy_plate>*4]);
fk64.addFluidInput(<liquid:ender_distillation>*200);
fk64.addEnergyPerTickInput(16384);
fk64.addOutput(<appliedenergistics2:material:57>);
fk64.build();

# 256k流体存储组件
val fk256 = RecipeBuilder.newBuilder("fk256","Lithography_machine",300);
fk256.addInputs([<appliedenergistics2:material:57>*3,<contenttweaker:tomori_controller>*2,<contenttweaker:growth_dust>*4,<moreplates:crystalline_alloy_plate>*4]);
fk256.addFluidInput(<liquid:growth>*750);
fk256.addEnergyPerTickInput(25000);
fk256.addOutput(<extracells:storage.component:8>);
fk256.build();

# 1024k存储组件
val k1024 = RecipeBuilder.newBuilder("k1024","Lithography_machine",400);
k1024.addInputs([<extracells:storage.component>*3,<contenttweaker:yuri_controller>,<contenttweaker:biology_circuit>,<contenttweaker:luna_dust>*4,<moreplates:melodic_alloy_plate>*4]);
k1024.addFluidInput(<liquid:cloud_seed_concentrated>*1000);
k1024.addEnergyPerTickInput(32768);
k1024.addOutput(<extracells:storage.component:1>);
k1024.build();

# 1024k流体存储组件
val fk1024 = RecipeBuilder.newBuilder("fk1024","Lithography_machine",400);
fk1024.addInputs([<extracells:storage.component:8>*3,<contenttweaker:yuri_controller>,<contenttweaker:biology_circuit>,<contenttweaker:mystical_source>*2,<moreplates:stellar_alloy_plate>*4]);
fk1024.addFluidInput(<liquid:liquid_sunshine>*2000);
fk1024.addEnergyPerTickInput(32768);
fk1024.addOutput(<extracells:storage.component:9>);
fk1024.build();

//FD 智能样板总线
val ecofd = RecipeBuilder.newBuilder("ecofd","Lithography_machine",240);
ecofd.addItemInputs([<appliedenergistics2:material:43>*3,<appliedenergistics2:material:23>*8,<contenttweaker:basic_intergrowth_dust>*3,<contenttweaker:mana_circuit>,<enderio:item_material:50>]);
ecofd.addFluidInput(<liquid:redstone>*3000);
ecofd.addEnergyPerTickInput(12121);
ecofd.addOutput(<ecoaeextension:efabricator_pattern_bus>);
ecofd.build();

//物品存储矩阵-LE4
val estorage_cell_item_16m = RecipeBuilder.newBuilder("itemcell_16m","Lithography_machine",240);
estorage_cell_item_16m.addItemInputs([<extracells:storage.component:2> * 2,<ic2:crafting:2> * 3,<ecoaeextension:estorage_casing>]);
estorage_cell_item_16m.addFluidInput(<liquid:redstone> * 1440);
estorage_cell_item_16m.addEnergyPerTickInput(25000);
estorage_cell_item_16m.addItemOutput(<ecoaeextension:estorage_cell_item_16m>.withTag({}));
estorage_cell_item_16m.build();

//流体存储矩阵-LE4
val estorage_cell_fluid_16m = RecipeBuilder.newBuilder("fluidcell_16m","Lithography_machine",240);
estorage_cell_fluid_16m.addItemInputs([<extracells:storage.component:10> * 2,<ic2:crafting:2> * 3,<ecoaeextension:estorage_casing>]);
estorage_cell_fluid_16m.addFluidInput(<liquid:redstone> * 1440);
estorage_cell_fluid_16m.addEnergyPerTickInput(25000);
estorage_cell_fluid_16m.addItemOutput(<ecoaeextension:estorage_cell_fluid_16m>.withTag({}));
estorage_cell_fluid_16m.build();