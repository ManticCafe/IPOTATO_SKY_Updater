import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//奥席金属
val aoxi = RecipeBuilder.newBuilder("aoxi","Autoclave",5);
aoxi.addItemInputs([<contenttweaker:rose_gold_dust>*2,<thermalfoundation:material:102>,<thermalfoundation:material:98>]);
aoxi.addFluidInput(<liquid:refined_fuel>*25);
aoxi.addOutput(<contenttweaker:aoxi_metal>);
aoxi.addEnergyPerTickInput(8192);
aoxi.build();

//流光水晶
val liuguang = RecipeBuilder.newBuilder("liuguang","Autoclave",30);
liuguang.addItemInputs([<enderio:item_material:35>*2,<enderio:item_material:36>*2]);
liuguang.addFluidInput(<liquid:petrotheum>*50);
liuguang.addOutput(<contenttweaker:hikari_gem>);
liuguang.addEnergyPerTickInput(8192);
liuguang.build();

//叶绿晶体
val yelv = RecipeBuilder.newBuilder("yelv","Autoclave",20);
yelv.addItemInputs([<roots:terra_moss>*4,<environmentaltech:litherite_crystal>]);
yelv.addFluidInput(<liquid:cryotheum>*50);
yelv.addGridPowerInput(8);
yelv.addEnergyPerTickInput(16384);
yelv.addOutput(<contenttweaker:green_gem>);
yelv.build();