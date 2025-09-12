import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;
import crafttweaker.item.IItemStack;

function hecheng(reg as string, input as IItemStack, output as IItemStack){
    val hecheng = RecipeBuilder.newBuilder(reg,"auto_mortar",40);
    hecheng.addItemInput(input);
    hecheng.addGridPowerInput(8);
    hecheng.addOutput(output);
    hecheng.build();
}
hecheng("hc1",<minecraft:potato>,<roots:flour>);
hecheng("hc2",<minecraft:wheat>,<roots:flour>);
hecheng("hc4",<roots:runestone>,<roots:runic_dust>);
hecheng("hc6",<minecraft:bone>,<minecraft:dye:15>*4);
hecheng("hc7",<roots:cloud_berry>*5,<enderio:item_material:48>*2);
hecheng("hc8",<roots:stalicripe>*5,<enderio:item_material:49>*2);
hecheng("hc9",<minecraft:gravel>,<minecraft:flint>);
hecheng("hc10",<minecraft:magma>,<minecraft:magma_cream>*2);
hecheng("hc11",<minecraft:blaze_rod>,<minecraft:blaze_powder>*5);
hecheng("hc12",<thermalfoundation:material:2048>,<thermalfoundation:material:2049>*5);
hecheng("hc13",<thermalfoundation:material:2050>,<thermalfoundation:material:2051>*5);
hecheng("hc14",<thermalfoundation:material:2052>,<thermalfoundation:material:2053>*5);
hecheng("hc15",<minecraft:carrot>,<minecraft:dye:14>);
hecheng("hc16",<mysticalworld:silk_cocoon>,<mysticalworld:silk_thread>*5);
hecheng("hc17",<minecraft:reeds>,<minecraft:sugar>*2);
hecheng("hc18",<mysticalworld:carapace>,<minecraft:dye:12>);

# 花瓣
val petals = RecipeBuilder.newBuilder("petals","auto_mortar",40);
petals.addInput(<ore:flower>);
petals.addOutput(<roots:petals>*2);
petals.addGridPowerInput(8);
petals.build();

# 线
val xian = RecipeBuilder.newBuilder("xian","auto_mortar",40);
xian.addInput(<ore:wool>);
xian.addOutput(<minecraft:string>*4);
xian.addGridPowerInput(8);
xian.build();

# 铱矿石
val iridium_ore = RecipeBuilder.newBuilder("iridium_ore","auto_mortar",160);
iridium_ore.addItemInput(<thermalfoundation:material:135>*2);
iridium_ore.addItemInput(<extrautils2:ingredients>).setChance(0.2);
iridium_ore.addFluidInput(<liquid:lubricant>*50);
iridium_ore.addGridPowerInput(12);
iridium_ore.addOutput(<ic2:misc_resource:1>);
iridium_ore.build();

# 强化涂料
val reinforced_dye = RecipeBuilder.newBuilder("reinforced_dye","auto_mortar",120);
reinforced_dye.addItemInputs([<enderio:item_material:50>,<contenttweaker:abyssum_gem>,<contenttweaker:roots_dust>,<contenttweaker:aoxi_metal>,<contenttweaker:grow_gem>]);
reinforced_dye.addGridPowerInput(16);
reinforced_dye.addManaInput(500);
reinforced_dye.addOutput(<enderio:item_material:67>);
reinforced_dye.build();

# 元素土
val element_soil = RecipeBuilder.newBuilder("element_soil","auto_mortar",60);
element_soil.addItemInputs([<minecraft:dirt:1>*2,<enderio:item_material:50>,<roots:terra_moss>,<extrautils2:ingredients:3>]);
element_soil.addManaInput(1000);
element_soil.addOutput(<roots:elemental_soil>*5);
element_soil.build();

# 灵魂协调染料
val soul_dye = RecipeBuilder.newBuilder("soul_dye","auto_mortar",120);
soul_dye.addItemInputs([<enderio:item_material:49>,<contenttweaker:basic_intergrowth_dust>,<contenttweaker:luna_gem>,<actuallyadditions:item_dust:7>,<roots:infernal_bulb>]);
soul_dye.addGridPowerInput(16);
soul_dye.addManaInput(500);
soul_dye.addOutput(<enderio:item_material:52>*2);
soul_dye.build();

# 源之粉
val source_dust = RecipeBuilder.newBuilder("source_dust","auto_mortar",40);
source_dust.addItemInputs([<roots:cloud_berry>,<roots:dewgonia>,<roots:stalicripe>,<roots:pereskia>,<roots:moonglow_leaf>]);
source_dust.addManaInput(500);
source_dust.addOutput(<contenttweaker:roots_dust>);
source_dust.build();

