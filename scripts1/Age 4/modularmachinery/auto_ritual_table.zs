import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

# 炼金术配方
function peifang (reg as string, input as IItemStack[], output as IItemStack){
    val peifang = RecipeBuilder.newBuilder(reg,"auto_ritual_table",100);
    peifang.addItemInputs(input);
    peifang.addLifeEssenceInput(20, true);
    peifang.addOutput(output);
    peifang.build();
}

peifang("auto1",[<bloodmagic:component:8>,<minecraft:diamond_sword>],<bloodmagic:bound_sword>);
peifang("auto2",[<bloodmagic:component:8>,<minecraft:diamond_axe>],<bloodmagic:bound_axe>);
peifang("auto3",[<bloodmagic:component:8>,<minecraft:diamond_pickaxe>],<bloodmagic:bound_pickaxe>);
peifang("auto4",[<bloodmagic:component:8>,<minecraft:diamond_shovel>],<bloodmagic:bound_shovel>);
peifang("auto5",[<bloodmagic:component:8>,<minecraft:iron_helmet>],<bloodmagic:living_armour_helmet>);
peifang("auto6",[<bloodmagic:component:8>,<minecraft:iron_chestplate>],<bloodmagic:living_armour_chest>);
peifang("auto7",[<bloodmagic:component:8>,<minecraft:iron_leggings>],<bloodmagic:living_armour_leggings>);
peifang("auto8",[<bloodmagic:component:8>,<minecraft:iron_boots>],<bloodmagic:living_armour_boots>);
peifang("auto9",[<artisanworktables:worktable:7>,<contenttweaker:ender_core>],<artisanworktables:workstation:7>);
peifang("auto10",[<bloodmagic:bound_shovel>,<roots:terra_moss>],<roots:pestle>);
peifang("auto11",[<modularmachinery:blockcasing>,<contenttweaker:ender_core>],<modularmachinery:blockgridprovideroutput>);
peifang("auto12",[<bloodmagic:component:8>,<enderio:item_material>],<artisanworktables:worktable:4>);
peifang("auto13",[<contenttweaker:red_alloy_dust>,<thermalfoundation:material:833>],<enderio:item_material:50>);
peifang("auto14",[<modularmachinery:blockcasing>,<contenttweaker:green_gem>],<modularmachinery:blockgridproviderinput>);
peifang("auto15",[<mysticalagriculture:nether_seeds>,<extrautils2:ingredients>],<mysticalagriculture:redstone_seeds>);

# 奶龙核心
val mashirocore = RecipeBuilder.newBuilder("rmashirocore","auto_ritual_table",160);
mashirocore.addItemInputs([<contenttweaker:smile_block>,<contenttweaker:roots_dust>,<ore:listAllmushroom>*64]);
mashirocore.addManaInput(52000);
mashirocore.addOutput(<contenttweaker:mashiro_block>);
mashirocore.build();

# 工业涂料 Tier2
val eiodye = RecipeBuilder.newBuilder("eiodye","auto_ritual_table",160);
eiodye.addItemInputs([<enderio:item_material:48>*4,<enderio:item_material:50>*4,<enderio:item_material:49>*4]);
eiodye.addManaInput(8848);
eiodye.addLifeEssenceInput(8,true);
eiodye.addRecipeTooltip("§a工业涂料简化配方(原配方来自法师工作台)");
eiodye.addRecipeTooltip("§6      -由魔法森林的七色人偶师提供");
eiodye.addOutput(<enderio:item_material:51>*2);
eiodye.build();

//活化水晶
val huohua = RecipeBuilder.newBuilder("huohua","auto_ritual_table",600);
huohua.addItemInputs([<contenttweaker:penglai_gem>,<contenttweaker:grow_gem>,<contenttweaker:blood_crystal_empowered>,<contenttweaker:mystical_source>]);
huohua.addManaInput(1000000);
huohua.addLifeEssenceInput(10,true);
huohua.addOutput(<mysticalagriculture:crafting:5>);
huohua.build();