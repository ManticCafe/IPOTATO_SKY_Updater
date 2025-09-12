import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//酸性液态魔力
RecipeBuilder.newBuilder("Acidic_liquid_magic","Chemical_reactors",20)
             .addFluidInput(<liquid:fluidedmana> * 1000)
             .addItemInput(<ore:dustSulfur> *2)
             .addEnergyPerTickInput(2048)
             .addFluidOutput(<liquid:acidic_liquid_magic> * 2000)
             .build();

//铂系浸出液与铂矿渣
RecipeBuilder.newBuilder("platinum_based_metal_leaching_solution","Chemical_reactors",40)
             .addItemInput(<exnihilocreatio:item_ore_native platinum:2> * 6)
             .addFluidInput(<liquid:acidic_liquid_magic> * 1000)
             .addFluidOutput(<liquid:mana_waste> * 500)
             .addEnergyPerTickInput(4096)
             .addItemOutput(<contenttweaker:platinum_group_metal_residues> *3)
             .addFluidOutput(<liquid:platinum_based_metal_leaching_solution> *3000)
             .build();

//魔力废液回收
RecipeBuilder.newBuilder("acidic_liquid_magic","Chemical_reactors",40)
             .addFluidInput(<liquid:mana_waste> * 1000)
             .addItemInput(<contenttweaker:blood_crystal_up>).setChance(0)
             .addItemInput(<ore:dustSulfur>)
             .addEnergyPerTickInput(4096)
             .addFluidOutput(<liquid:acidic_liquid_magic> * 750)
             .build();

//锇粉
RecipeBuilder.newBuilder("OS","Chemical_reactors",40)
             .addItemInput(<contenttweaker:oso4>)
             .addFluidInput(<liquid:ic2hydrogen> * 4000)
             .addFluidOutput(<liquid:water> * 4000)
             .addEnergyPerTickInput(4096)
             .addItemOutput(<mekanism:dust:2>)
             .build();

//三氧化二铱
RecipeBuilder.newBuilder("Ir2O3","Chemical_reactors",40)
             .addItemInput(<contenttweaker:iridium_rich_metal_slag> *2)
             .addFluidInput(<liquid:ic2oxygen> *3000)
             .addEnergyPerTickInput(4096)
             .addItemOutput(<contenttweaker:ir2o3>)
             .build();

//含杂铂 钯浸出液
RecipeBuilder.newBuilder("metal_leaching_solution","Chemical_reactors",40)
             .addItemInput(<contenttweaker:blood_crystal_empowered>).setChance(0)
             .addFluidInput(<liquid:platinum_based_metal_leaching_solution2> * 1000)
             .addFluidOutput(<liquid:palladium_rich_tramp_metal_leaching_solution>*500)
             .addFluidOutput(<liquid:platinum_rich_tramp_metal_leaching_solution>*500)
             .addEnergyPerTickInput(4096)
             .build();

//钯结晶
RecipeBuilder.newBuilder("palladium_crystals","Chemical_reactors",40)
             .addFluidInput(<liquid:growth>*1).setChance(0)
             .addFluidInput(<liquid:palladium_rich_tramp_metal_leaching_solution2> *144)
             .addEnergyPerTickInput(4096)
             .addItemOutput(<contenttweaker:palladium_crystals>)
             .addItemOutput(<contenttweaker:palladium_crystals>).setChance(0.5)
             .build();

//铂结晶
RecipeBuilder.newBuilder("platinum_crystals","Chemical_reactors",40)
             .addFluidInput(<liquid:growth> *1).setChance(0)
             .addFluidInput(<liquid:platinum_rich_tramp_metal_leaching_solution2> * 144)
             .addEnergyPerTickInput(4096)
             .addItemOutput(<contenttweaker:platinum_crystals>)
             .addItemOutput(<contenttweaker:platinum_crystals>).setChance(0.5)
             .build();

//光刻胶
RecipeBuilder.newBuilder("guangkejiao","Chemical_reactors",40)
             .addFluidInput(<liquid:water> * 2000)
             .addItemInput(<ore:slimeball> *4)
             .addEnergyPerTickInput(8192)
             .addFluidOutput(<liquid:photoresist> * 2000)
             .build();

# 黄铀锭
RecipeBuilder.newBuilder("yellow_uranium_ingot","Chemical_reactors",20)
             .addItemInput(<ic2:ingot:8>)
             .addFluidInput(<liquid:xu_enchanted_metal> * 288)
             .addEnergyPerTickInput(8192)
             .addItemOutput(<bigreactors:ingotyellorium>)
             .build();

//细菌培养皿
RecipeBuilder.newBuilder("contenttweaker:petri_dish_1","Chemical_reactors",1200)
             .addInput(<contenttweaker:petri_dish> *16)
             .addItemInput(<ic2:crafting:20>*16)
             .addFluidInput(<liquid:biocrude>*1000)
             .addEnergyPerTickInput(16384)
             .addItemOutput(<contenttweaker:petri_dish_1> * 16)
             .build();