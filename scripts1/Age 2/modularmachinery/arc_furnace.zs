import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val steel_ingot = RecipeBuilder.newBuilder("steel_ingot","arc_furnace",20);
steel_ingot.addItemInputs([<minecraft:iron_ingot>,<ore:dustCoal>]);
steel_ingot.addEnergyPerTickInput(512);
steel_ingot.addItemOutput(<ore:ingotSteel>);
steel_ingot.build();
//钢锭1

val steel_ingot2 = RecipeBuilder.newBuilder("steel_ingot2","arc_furnace",20);
steel_ingot2.addItemInputs([<ore:dustIron>,<ore:dustCoal>]);
steel_ingot2.addEnergyPerTickInput(512);
steel_ingot2.addItemOutput(<ore:ingotSteel>);
steel_ingot2.build();
//钢锭2

val costantan_ingot = RecipeBuilder.newBuilder("costantan_ingot","arc_furnace",10);
costantan_ingot.addItemInputs([<ore:ingotCopper>,<ore:ingotNickel>]);
costantan_ingot.addEnergyPerTickInput(512);
costantan_ingot.addItemOutput(<thermalfoundation:material:164>);
costantan_ingot.build();
//康铜

val electrum_ingot = RecipeBuilder.newBuilder("electrue_ingot","arc_furnace",10);
electrum_ingot.addItemInputs([<ore:ingotGold>,<ore:ingotSilver>]);
electrum_ingot.addEnergyPerTickInput(512);
electrum_ingot.addItemOutput(<thermalfoundation:material:161>);
electrum_ingot.build();
//琥珀金

val invar_ingot = RecipeBuilder.newBuilder("invar_ingot","arc_furnace",10);
invar_ingot.addItemInputs([<ore:ingotIron>,<ore:ingotIron>,<ore:ingotNickel>]);
invar_ingot.addEnergyPerTickInput(512);
invar_ingot.addItemOutput(<thermalfoundation:material:162> *3);
invar_ingot.build();
//因瓦合金

val bronze_ingot = RecipeBuilder.newBuilder("bronze_ingot","arc_furnace",10);
bronze_ingot.addItemInputs([<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotCopper>,<ore:ingotTin>]);
bronze_ingot.addEnergyPerTickInput(512);
bronze_ingot.addItemOutput(<thermalfoundation:material:163> *4);
bronze_ingot.build();
//青铜

val alubrass_ingot = RecipeBuilder.newBuilder("alubrass_ingot","arc_furnace",10);
alubrass_ingot.addItemInputs([<ore:ingotCopper>,<ore:ingotAlubrass>,<ore:ingotAlubrass>,<ore:ingotAlubrass>]);
alubrass_ingot.addEnergyPerTickInput(512);
alubrass_ingot.addItemOutput(<tconstruct:ingots:5>*4);
alubrass_ingot.build();
//铝黄铜

val manyullyn = RecipeBuilder.newBuilder("manyullyn","arc_furnace",10);
manyullyn.addItemInputs([<ore:ingotCobalt>,<ore:ingotArdite>]);
manyullyn.addEnergyPerTickInput(512);
manyullyn.addItemOutput(<tconstruct:ingots:2>);
manyullyn.build();
//玛玉玲

val mmce_ingot = RecipeBuilder.newBuilder("mmec_ingot","arc_furnace",20);
mmce_ingot.addItemInputs([<minecraft:redstone>,<botania:manaresource>,<thermalfoundation:material:162>,<naturesaura:infused_iron_block>,<ore:ingotElectrum>]);
mmce_ingot.addEnergyPerTickInput(256);
mmce_ingot.addItemOutput(<modularmachinery:itemmodularium>*4);
mmce_ingot.build();

//温室合金锭
val greemhouse_ingot = RecipeBuilder.newBuilder("greemhouse_ingot","arc_furnace",30);
greemhouse_ingot.addItemInputs([<ore:ingotGaia>,<ore:ingotInvar>,<ic2:crafting:3>*2]);
greemhouse_ingot.addEnergyPerTickInput(1024);
greemhouse_ingot.addItemOutput(<contenttweaker:greemhouse_ingot>*3);
greemhouse_ingot.build();