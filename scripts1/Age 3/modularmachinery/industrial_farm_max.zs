import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//树脂
val resin = RecipeBuilder.newBuilder("resin", "industrial_farm_max",40);
resin.addItemInput(<ic2:rubber_wood> * 32).setChance(0);
resin.addItemInput(<contenttweaker:growth_essence>*16).setChance(0);
resin.addEnergyPerTickInput(150);
resin.addFluidInput(<liquid:water> * 3000);
resin.addOutput(<ic2:misc_resource:4>*2);
resin.build();

//工业大麻
val hemp = RecipeBuilder.newBuilder("hemp", "industrial_farm_max",60);
hemp.addItemInput(<immersiveengineering:seed> * 16).setChance(0);
hemp.addItemInput(<contenttweaker:growth_essence> * 16).setChance(0);
hemp.addEnergyPerTickInput(200);
hemp.addFluidInput(<liquid:water> * 3000);
hemp.addOutput(<immersiveengineering:material:4>*8);
hemp.build();

//金叶
val goldleaf = RecipeBuilder.newBuilder("goldleaf", "industrial_farm_max",80);
goldleaf.addItemInput(<naturesaura:gold_fiber>*32).setChance(0);
goldleaf.addItemInput(<randomthings:naturecore>).setChance(0);
goldleaf.addItemInput(<contenttweaker:growth_essence>*16).setChance(0);
goldleaf.addEnergyPerTickInput(200);
goldleaf.addFluidInput(<liquid:water> * 2000);
goldleaf.addOutput(<naturesaura:gold_leaf>*4);
goldleaf.build();

//橡胶种子
val rubberseed = RecipeBuilder.newBuilder("rubberseed", "industrial_farm_max",200);
rubberseed.addItemInputs([<immersiveengineering:seed>,<ic2:misc_resource:4>]);
rubberseed.addFluidInput(<liquid:water> * 2000);
rubberseed.addOutput(<immersiveengineering:material:4>*2);
rubberseed.addOutput(<mysticalagriculture:rubber_seeds>).setChance(0.08);
rubberseed.addEnergyPerTickInput(2048);
rubberseed.build();