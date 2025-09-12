import mods.roots.Pyre;
import mods.roots.Fey;
import mods.roots.Mortar;

# remove
Pyre.removeRecipe(<roots:dewgonia>);
Pyre.removeRecipe(<roots:pereskia>);
Pyre.removeRecipe(<roots:moonglow_leaf>);
Fey.removeRecipe(<roots:component_pouch>);
Fey.removeRecipe(<roots:apothecary_pouch>);
Pyre.removeRecipe(<roots:stalicripe>);
Pyre.removeRecipe(<roots:cloud_berry>);
Pyre.removeRecipe(<roots:infernal_bulb>);
Fey.removeRecipe(<roots:elemental_soil>);

//柴堆合成
/*Pyre.addRecipe(
  string name,          // the name of the recipe being added; if replacing an existing game recipe, ensure the correct name is used
  IItemStack output,    // the output of this recipe
  IIngredient[] inputs, // a list of five ingredients
  int xp                // the amount of xp in levels that is granted after crafting
); */

# 奥术粉灰
Pyre.addRecipe(
  "arcane_ashes",
  <bloodmagic:arcane_ashes> ,
  [<contenttweaker:goldleaf_essence>,<thermalfoundation:material:833>,<thermalfoundation:material:833>,<contenttweaker:manaup_dust>,<contenttweaker:manaup_dust>],
  100
  );

# 有机绿色染料
Pyre.addRecipe(
  "greendust",
  <enderio:item_material:48> * 3,
  [<thermalfoundation:material:833>,<contenttweaker:growth_essence>,<contenttweaker:growth_essence>,<thermalfoundation:material:833>,<thermalfoundation:material:833>],
  50
);

# 元素土
Mortar.addRecipe(
  "roots:elemental_soil",
  <roots:elemental_soil>*5,
  [<minecraft:dirt:1>,<minecraft:dirt:1>,<enderio:item_material:50>,<roots:terra_moss>,<extrautils2:ingredients:3>]
);

# 灵魂协调涂料
Mortar.addRecipe(
  "enderio:item_material:52",
  <enderio:item_material:52>*2,
  [<enderio:item_material:49>,<contenttweaker:basic_intergrowth_dust>,<contenttweaker:luna_gem>,<actuallyadditions:item_dust:7>,<roots:infernal_bulb>]
);

# 源之粉
Mortar.addRecipe(
  "contenttweaker:roots_dust",
  <contenttweaker:roots_dust>*2,
  [<roots:cloud_berry>,<roots:dewgonia>,<roots:stalicripe>,<roots:pereskia>,<roots:moonglow_leaf>]
);

# 强化涂料
Mortar.addRecipe(
  "enderio:item_material:67",
  <enderio:item_material:67>,
  [<enderio:item_material:50>,<contenttweaker:abyssum_gem>,<contenttweaker:roots_dust>,<contenttweaker:aoxi_metal>,<contenttweaker:grow_gem>]
);

# 有机绿色染料
Mortar.addRecipe(
  "enderio:item_material:48",
  <enderio:item_material:48>*2,
  [<roots:cloud_berry>,<roots:cloud_berry>,<roots:cloud_berry>,<roots:cloud_berry>,<roots:cloud_berry>]
);

# 有机棕色染料
Mortar.addRecipe(
  "enderio:item_material:49",
  <enderio:item_material:49>*2,
  [<roots:stalicripe>,<roots:stalicripe>,<roots:stalicripe>,<roots:stalicripe>,<roots:stalicripe>]
);

//僵尸种子
Pyre.addRecipe(
  "mysticalagriculture:zombie_seeds",
  <mysticalagriculture:zombie_seeds>,
  [<minecraft:wheat_seeds>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>]
);