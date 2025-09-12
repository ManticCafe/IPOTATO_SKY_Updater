import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;

val log = RecipeBuilder.newBuilder("log","Tree_Growth_Simulator",10);
log.addItemInput(<minecraft:sapling>).setChance(0.5);
log.addFluidInput(<liquid:water> * 250);
log.addManaInput(250);
log.addItemInput(<minecraft:dirt>).setChance(0);
log.addItemOutput(<minecraft:log>*16);
log.addItemOutput(<minecraft:apple>*2).setChance(0.3);
log.addItemOutput(<minecraft:sapling>*2);
log.build();

val ancient_log = RecipeBuilder.newBuilder("huanggu","Tree_Growth_Simulator",10);
ancient_log.addItemInput(<naturesaura:ancient_sapling>).setChance(0.5);
ancient_log.addFluidInput(<liquid:water>*250);
ancient_log.addManaInput(250);
ancient_log.addItemInput(<minecraft:dirt>).setChance(0);
ancient_log.addItemOutput(<naturesaura:ancient_log> * 16);
ancient_log.addItemOutput(<naturesaura:ancient_sapling> * 2);
ancient_log.build();

val spectrelog = RecipeBuilder.newBuilder("tongling","Tree_Growth_Simulator",10);
spectrelog.addItemInput(<randomthings:spectresapling>).setChance(0.5);
spectrelog.addFluidInput(<liquid:water> * 250);
spectrelog.addManaInput(250);
spectrelog.addItemInput(<minecraft:dirt>).setChance(0);
spectrelog.addItemOutput(<randomthings:spectrelog> * 16);
spectrelog.addItemOutput(<randomthings:spectresapling> * 2);
spectrelog.addItemOutput(<randomthings:ingredient:2>* 2).setChance(0.3);
spectrelog.build();

val log3 = RecipeBuilder.newBuilder("conglinmu","Tree_Growth_Simulator",10);
log3.addItemInput(<minecraft:sapling:3>).setChance(0.5);
log3.addFluidInput(<liquid:water> * 250);
log3.addManaInput(250);
log3.addItemInput(<minecraft:dirt>).setChance(0);
log3.addItemOutput(<minecraft:log:3> * 16);
log3.addItemOutput(<minecraft:sapling:3> *2);
log3.addItemOutput(<minecraft:dye:3> *2).setChance(0.3);
log3.build();

val cedar_log = RecipeBuilder.newBuilder("hongbaimu","Tree_Growth_Simulator",10);
cedar_log.addItemInput(<totemic:cedar_sapling>).setChance(0.5);
cedar_log.addFluidInput(<liquid:water> * 250);
cedar_log.addManaInput(250);
cedar_log.addItemInput(<minecraft:dirt>).setChance(0);
cedar_log.addItemOutput(<totemic:cedar_log> * 16);
cedar_log.addItemOutput(<totemic:cedar_sapling> * 2);
cedar_log.build();

val rubber_wood =RecipeBuilder.newBuilder("xiangjiao","Tree_Growth_Simulator",10);
rubber_wood.addItemInput(<ic2:sapling>).setChance(0.5);
rubber_wood.addFluidInput(<liquid:water>*250);
rubber_wood.addManaInput(250);
rubber_wood.addItemInput(<minecraft:dirt>).setChance(0);
rubber_wood.addItemOutput(<ic2:rubber_wood> *16);
rubber_wood.addItemOutput(<ic2:sapling> *2);
rubber_wood.addItemOutput(<ic2:misc_resource:4> *2).setChance(0.2);
rubber_wood.build();

val slime = RecipeBuilder.newBuilder("slime","Tree_Growth_Simulator",10);
slime.addItemInput(<tconstruct:slime_sapling>).setChance(0.5);
slime.addFluidInput(<liquid:water> * 250);
slime.addManaInput(250);
slime.addItemInput(<tconstruct:slime_dirt>).setChance(0);
slime.addItemOutput(<tconstruct:slime_congealed> * 16);
slime.addItemOutput(<tconstruct:slime_sapling> *2);
slime.addItemOutput(<tconstruct:edible:1> *2);
slime.build();

val string1 = RecipeBuilder.newBuilder("string","Tree_Growth_Simulator",10);
string1.addItemInput(<exnihilocreatio:item_material:2>);
string1.addItemInput(<ore:treeSapling>).setChance(0);
string1.addFluidInput(<liquid:water> *250);
string1.addItemOutput(<exnihilocreatio:item_material:2> * 8);
string1.addItemOutput(<minecraft:string> * 32);
string1.addItemOutput(<minecraft:string> * 32).setChance(0.8);
string1.addItemOutput(<minecraft:string>*32).setChance(0.5);
string1.addItemOutput(<minecraft:string>*32).setChance(0.3);
string1.build();

//以下为压缩泥土

val log1 = RecipeBuilder.newBuilder("log1","Tree_Growth_Simulator",1);
log1.addItemInput(<minecraft:sapling>).setChance(0.5);
log1.addFluidInput(<liquid:water> * 250);
log1.addManaInput(250);
log1.addItemInput(<extrautils2:compresseddirt:1>).setChance(0);
log1.addItemOutput(<minecraft:log>*16);
log1.addItemOutput(<minecraft:apple>*2).setChance(0.3);
log1.addItemOutput(<minecraft:sapling>*2);
log1.build();

val ancient_log1 = RecipeBuilder.newBuilder("huanggu1","Tree_Growth_Simulator",1);
ancient_log1.addItemInput(<naturesaura:ancient_sapling>).setChance(0.5);
ancient_log1.addFluidInput(<liquid:water>*250);
ancient_log1.addManaInput(250);
ancient_log1.addItemInput(<extrautils2:compresseddirt:1>).setChance(0);
ancient_log1.addItemOutput(<naturesaura:ancient_log> * 16);
ancient_log1.addItemOutput(<naturesaura:ancient_sapling> * 2);
ancient_log1.build();

val spectrelog1 = RecipeBuilder.newBuilder("tongling1","Tree_Growth_Simulator",1);
spectrelog1.addItemInput(<randomthings:spectresapling>).setChance(0.5);
spectrelog1.addFluidInput(<liquid:water> * 250);
spectrelog1.addManaInput(250);
spectrelog1.addItemInput(<extrautils2:compresseddirt:1>).setChance(0);
spectrelog1.addItemOutput(<randomthings:spectrelog> * 16);
spectrelog1.addItemOutput(<randomthings:spectresapling> * 2);
spectrelog1.addItemOutput(<randomthings:ingredient:2>* 2).setChance(0.3);
spectrelog1.build();

val log31 = RecipeBuilder.newBuilder("conglin1","Tree_Growth_Simulator",1);
log31.addItemInput(<minecraft:sapling:3>).setChance(0.5);
log31.addFluidInput(<liquid:water> * 250);
log31.addManaInput(250);
log31.addItemInput(<extrautils2:compresseddirt:1>).setChance(0);
log31.addItemOutput(<minecraft:log:3> * 16);
log31.addItemOutput(<minecraft:sapling:3> *2);
log31.addItemOutput(<minecraft:dye:3> *2).setChance(0.3);
log31.build();

val cedar_log1 = RecipeBuilder.newBuilder("hongbaimu1","Tree_Growth_Simulator",1);
cedar_log1.addItemInput(<totemic:cedar_sapling>).setChance(0.5);
cedar_log1.addFluidInput(<liquid:water> * 250);
cedar_log1.addManaInput(250);
cedar_log1.addItemInput(<extrautils2:compresseddirt:1>).setChance(0);
cedar_log1.addItemOutput(<totemic:cedar_log> * 16);
cedar_log1.addItemOutput(<totemic:cedar_sapling> * 2);
cedar_log1.build();

val rubber_wood1 =RecipeBuilder.newBuilder("xiangjiao1","Tree_Growth_Simulator",1);
rubber_wood1.addItemInput(<ic2:sapling>).setChance(0.5);
rubber_wood1.addFluidInput(<liquid:water>*250);
rubber_wood1.addManaInput(250);
rubber_wood1.addItemInput(<extrautils2:compresseddirt:1>).setChance(0);
rubber_wood1.addItemOutput(<ic2:rubber_wood> *16);
rubber_wood1.addItemOutput(<ic2:sapling> *2);
rubber_wood1.addItemOutput(<ic2:misc_resource:4> *2).setChance(0.2);
rubber_wood1.build();

val gold = RecipeBuilder.newBuilder("gold","Tree_Growth_Simulator",10);
gold.addItemInput(<naturesaura:gold_fiber>).setChance(0.5);
gold.addItemInput(<ore:treeSapling>).setChance(0);
gold.addFluidInput(<liquid:water> * 250);
gold.addManaInput(250);
gold.addItemInput(<minecraft:dirt>).setChance(0);
gold.addItemOutput(<naturesaura:golden_leaves> * 16).setChance(0.3);
gold.addItemOutput(<naturesaura:gold_fiber> * 2);
gold.build();
