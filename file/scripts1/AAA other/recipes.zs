  //导包
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//图腾刻刀
recipes.addShaped(<totemic:totem_whittling_knife>, [[null, null, <ore:ingotBronze>], [null, <ore:stickWood>, <ore:itemFlint>], [<ore:stickWood>, null, null]]);

//摇响器
recipes.addShaped(<totemic:rattle>, [[<naturesaura:ancient_log>, <naturesaura:infused_iron>, <naturesaura:infused_iron_block>], [null, <totemic:eagle_drops:1>, <naturesaura:infused_iron>], [<naturesaura:ancient_stick>, null, <naturesaura:ancient_log>]]);

//风铃
recipes.addShaped(<totemic:wind_chime>, [[<ore:ingotBronze>, <totemic:cedar_log>, <ore:ingotBronze>], [<ore:stickWood>, <naturesaura:gold_fiber>, <ore:stickWood>], [null, <naturesaura:gold_leaf>, <ore:stickWood>]]);

//工程师剪线钳
recipes.addShapeless(<immersiveengineering:tool:1>,[<minecraft:shears>,<botania:manaresource:23>]);

//打火石
recipes.addShapeless(<minecraft:flint_and_steel>, [
    <ore:itemFlint>, <naturesaura:infused_iron>
]);

//标准纯银粉
recipes.addShapeless(<contenttweaker:sterling_silver_dust> *5, [
    <ore:dustSilver>,<ore:dustSilver>,<ore:dustSilver>,<ore:dustSilver>,<ore:dustCopper>
]);

//白铜粉
recipes.addShapeless(<contenttweaker:cupronickel_dust>*2,[<ore:dustCopper>,<ore:dustNickel>]);

//白铜锭
furnace.addRecipe(<contenttweaker:cupronickel_ingot>,<contenttweaker:cupronickel_dust>,10);

//铱粉
recipes.addShapeless(<thermalfoundation:material:71>,[<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>,<contenttweaker:iridium_mindust>]);

//小撮铱粉
recipes.addShapeless(<contenttweaker:iridium_mindust>*9,[<thermalfoundation:material:71>]);

//铂粒
furnace.addRecipe(<thermalfoundation:material:198>*10,<contenttweaker:native_platinum_dust>,10);

//铱粒
furnace.addRecipe(<contenttweaker:iridium_mindust>,<thermalfoundation:material:199>,3);

//红色合金粉
recipes.addShapeless(<contenttweaker:red_alloy_dust>,[<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<minecraft:redstone>,<ore:dustCopper>]);

//红色合金锭
furnace.addRecipe(<contenttweaker:red_ingot>,<contenttweaker:red_alloy_dust>,10);

# 黑纸
recipes.addShapeless(<enderio:item_material:77>*2,[<minecraft:paper>,<enderio:item_material:50>]);

//铁匠工作站
recipes.addShapeless(<artisanworktables:workstation:3>,[<artisanworktables:worktable:3>,<appliedenergistics2:interface>]);

//铁板
recipes.addShaped(<thermalfoundation:material:32>, [[<exnihilocreatio:hammer_iron>.onlyDamageBetween(0, 0).reuse()], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<thermalfoundation:material:32>, [[<exnihilocreatio:hammer_wood>.onlyDamageBetween(0, 0).reuse()], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<thermalfoundation:material:32>, [[<excompressum:hammer_mana>.onlyDamageBetween(0, 0).reuse()], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<thermalfoundation:material:32>, [[<exnihilocreatio:hammer_diamond>.onlyDamageBetween(0, 0).reuse()], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<thermalfoundation:material:32>, [[<exnihilocreatio:hammer_gold>.onlyDamageBetween(0, 0).reuse()], [<ore:ingotIron>], [<ore:ingotIron>]]);
recipes.addShaped(<thermalfoundation:material:32>, [[<exnihilocreatio:hammer_stone>.onlyDamageBetween(0, 0).reuse()], [<ore:ingotIron>], [<ore:ingotIron>]]);

//硅
furnace.addRecipe(<appliedenergistics2:material:5>,<contenttweaker:silica_fume>,3);

//桶
recipes.addShaped(<minecraft:bucket>, 
[[null, null, null],
[<ore:plateIron>, null,<ore:plateIron>],
[null, <ore:plateIron>,null]
]);

//符文祭坛
recipes.addShaped(<botania:runealtar>, 
[[<totemic:buffalo_items>, <totemic:buffalo_items>, <totemic:buffalo_items>],
[<botania:livingrock>, <botania:quartztypemana>, <botania:livingrock>], 
[<botania:livingrock>, <botania:storage:3>, <botania:livingrock>]
]);

//火花魔力输入仓
recipes.addShaped(<gugu-utils:sparkmanahatch>.withTag({}), 
[[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>],
[<botania:livingrock>, <botania:spark>, <botania:livingrock>], 
[<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]
]);

//火花魔力输出仓
recipes.addShapeless(<gugu-utils:sparkmanahatch:1>.withTag({}),[<gugu-utils:sparkmanahatch>.withTag({})]);

//闪耀纤维
recipes.addShaped(<naturesaura:gold_fiber> * 4, [[<totemic:cedar_leaves>, <minecraft:gold_nugget>, <totemic:cedar_leaves>], [<minecraft:gold_nugget>, <minecraft:tallgrass:1>, <minecraft:gold_nugget>], [<totemic:cedar_leaves>, <minecraft:gold_nugget>, <totemic:cedar_leaves>]]);

//机械外壳
recipes.addShaped(<modularmachinery:blockcasing>, 
[[<ore:ingotInvar>, <modularmachinery:itemmodularium>, <ore:ingotInvar>],
[<modularmachinery:itemmodularium>, <ore:blockRedstone>, <modularmachinery:itemmodularium>], 
[<ore:ingotInvar>, <modularmachinery:itemmodularium>, <ore:ingotInvar>]
]);

//动能发电机
recipes.addShaped(<immersiveengineering:metal_device1:2>, 
[[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
[<minecraft:redstone>, <immersiveengineering:metal_decoration0>, <minecraft:redstone>], 
[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
]);

# 风力发电机
recipes.addShaped(<ic2:te:11>, 
[[<ore:plateIron>, null, <ore:plateIron>],
[<ic2:te:3>,<contenttweaker:motor_mk1>,null],
[<ore:plateIron>, null,<ore:plateIron>]
]);

# 流体/固体装罐机
recipes.addShaped(<ic2:te:42>, 
[[<ore:plateIron>, <ore:circuitBasic>, <ore:plateIron>],
[<minecraft:bucket>,<ic2:resource:12>,<minecraft:bucket>],
[<ore:plateIron>, <contenttweaker:motor_mk1>,<ore:plateIron>]
]);

//漏式盆栽盆
recipes.addShaped(<bonsaitrees:bonsaipot:1>, 
[[null, <bonsaitrees:bonsaipot>, null],
[null, <naturesaura:token_euphoria>,null],
[null, <minecraft:hopper>,null]
]);

//新月锤
recipes.addShaped(<thermalfoundation:wrench>, 
[[<ore:ingotIron>, <ore:circuitBasic>, <ore:ingotIron>],
[null, <ore:gearSteel>, null], 
[null, <ore:ingotIron>, null]
]);

//压缩机
recipes.addShaped(<ic2:te:43>, 
[[<appliedenergistics2:smooth_sky_stone_block>, <ic2:ingot>, <appliedenergistics2:smooth_sky_stone_block>],
[<appliedenergistics2:smooth_sky_stone_block>, <ic2:resource:12>, <appliedenergistics2:smooth_sky_stone_block>], 
[<appliedenergistics2:smooth_sky_stone_block>, <ore:circuitBasic>, <appliedenergistics2:smooth_sky_stone_block>]
]);

//硬化升级套件
recipes.addShaped(<thermalfoundation:upgrade>, 
[[null, <ic2:crafting:3>, null],
[<ic2:crafting:3>, <ore:gearInvar>,<ic2:crafting:3>], 
[<minecraft:redstone>, <ic2:crafting:3>, <minecraft:redstone>]
]);

//IC2马达
recipes.addShaped(<ic2:crafting:6>, 
[[null, <ic2:casing:6>, null],
[<ic2:crafting:5>, <contenttweaker:motor_mk1>, <ic2:crafting:5>], 
[null, <ic2:casing:6>, null]
]);

//装配核心
recipes.addShaped(<contenttweaker:assembly_core> * 3, 
[[null, <contenttweaker:motor_mk1>, null],
[<contenttweaker:robot_arm_mk1>, <contenttweaker:solid_steel_machine_casing>,<contenttweaker:conveyor_module_mk1>], 
[null, <contenttweaker:electric_piston_mk1>, null]
]);

//红石接收线圈
recipes.addShaped(<thermalfoundation:material:513>, 
[[null, null, <ore:ingotElectrum>],
[null, <ic2:dust:6>, null], 
[<ore:ingotElectrum>, null, null]
]);

//强化升级套件
recipes.addShaped(<thermalfoundation:upgrade:1>, 
[[null, <ore:plateSentientMetal>, null],
[<ore:plateSentientMetal>, <ore:gearElectrum>, <ore:plateSentientMetal>], 
[<ic2:glass>, <thermalfoundation:material:1024>,<ic2:glass>]
]);

//me接口
recipes.addShapeless(<appliedenergistics2:interface>,
[<appliedenergistics2:part:440>]);

//面包
recipes.addShapeless(<minecraft:bread>*3,[<ore:listAllgrain>,<ore:listAllgrain>,<ore:listAllgrain>]);

//橡胶
furnace.addRecipe(<ic2:crafting>,<contenttweaker:raw_rubber_pulp>,3);

//中型物品输入仓
recipes.addShaped(<modularmachinery:blockinputbus:2>,[
  [null,<minecraft:hopper>,null],
  [<botania:manaresource:14>,<modularmachinery:blockinputbus:1>,<botania:manaresource:14>],
  [<ore:chest>,<botania:manaresource:14>,<ore:chest>]
]);
//中型物品输出仓
recipes.addShaped(<modularmachinery:blockoutputbus:2>,[
  [<ore:chest>,<botania:manaresource:14>,<ore:chest>],
  [<botania:manaresource:14>,<modularmachinery:blockoutputbus:1>,<botania:manaresource:14>],
  [null,<botania:manaresource:14>,null]
]);
//中型流体输入
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>,[
  [null,<minecraft:hopper>,null],
  [<botania:manaresource:14>,<modularmachinery:blockfluidinputhatch:1>,<botania:manaresource:14>],
  [<minecraft:bucket>,<botania:manaresource:14>,<minecraft:bucket>]
]);
//中型流体输出
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>,[
  [<minecraft:bucket>,<botania:manaresource:14>,<minecraft:bucket>],
  [<botania:manaresource:14>,<modularmachinery:blockfluidoutputhatch:1>,<botania:manaresource:14>],
  [null,<minecraft:hopper>,null]
]);
//中型能源输入
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>,[
  [<botania:manaresource:14>,<minecraft:comparator>,<botania:manaresource:14>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyinputhatch:1>,<minecraft:redstone_block>],
  [<botania:manaresource:14>,<minecraft:redstone_block>,<botania:manaresource:14>]
]);
//中型能源输出
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:2>,[
  [<botania:manaresource:14>,<minecraft:redstone_block>,<botania:manaresource:14>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyoutputhatch:1>,<minecraft:redstone_block>],
  [<botania:manaresource:14>,<minecraft:comparator>,<botania:manaresource:14>]
]);
//强化物品输入仓
recipes.addShaped(<modularmachinery:blockinputbus:3>,[
  [null,<immersiveengineering:material:27>,null],
  [<extrabotany:material:1>,<modularmachinery:blockinputbus:2>,<extrabotany:material:1>],
  [<ore:chest>,<extrabotany:material:1>,<ore:chest>]
]);
//强化物品输出
recipes.addShaped(<modularmachinery:blockoutputbus:3>,[
  [<ore:chest>,<extrabotany:material:1>,<ore:chest>],
  [<extrabotany:material:1>,<modularmachinery:blockoutputbus:2>,<extrabotany:material:1>],
  [null,<immersiveengineering:material:27>,null]
]);
//强化流体输入
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>,[
  [null,<immersiveengineering:material:27>,null],
  [<extrabotany:material:1>,<modularmachinery:blockfluidinputhatch:2>,<extrabotany:material:1>],
  [<minecraft:bucket>,<extrabotany:material:1>,<minecraft:bucket>]
]);
//强化流体输出
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>,[
  [<minecraft:bucket>,<extrabotany:material:1>,<minecraft:bucket>],
  [<extrabotany:material:1>,<modularmachinery:blockfluidoutputhatch:2>,<extrabotany:material:1>],
  [null,<minecraft:hopper>,null]
]);
//强化能源输入
recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>,[
  [<extrabotany:material:1>,<immersiveengineering:material:27>,<extrabotany:material:1>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyinputhatch:2>,<minecraft:redstone_block>],
  [<extrabotany:material:1>,<minecraft:redstone_block>,<extrabotany:blockorichalcos>]
]);
//强化能源输出
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:3>,[
  [<extrabotany:material:1>,<minecraft:redstone_block>,<extrabotany:material:1>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyoutputhatch:2>,<minecraft:redstone_block>],
  [<extrabotany:material:1>,<immersiveengineering:material:27>,<extrabotany:material:1>]
]);
//大型物品输入仓
recipes.addShaped(<modularmachinery:blockinputbus:4>,[
  [null,<contenttweaker:rubber_sheet>,null],
  [<ic2:crafting:3>,<modularmachinery:blockinputbus:3>,<ic2:crafting:3>],
  [<ore:chest>,<ic2:crafting:3>,<ore:chest>]
]);
//大型物品输出仓
recipes.addShaped(<modularmachinery:blockoutputbus:3>,[
  [<ore:chest>,<ic2:crafting:3>,<ore:chest>],
  [<ic2:crafting:3>,<modularmachinery:blockoutputbus:4>,<ic2:crafting:3>],
  [null,<contenttweaker:rubber_sheet>,null]
]);
//大型流体输入仓
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>,[
  [null,<contenttweaker:rubber_sheet>,null],
  [<ic2:crafting:3>,<modularmachinery:blockfluidinputhatch:3>,<ic2:crafting:3>],
  [<minecraft:bucket>,<ic2:crafting:3>,<minecraft:bucket>]
]);
//大型流体输出仓
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>,[
  [<minecraft:bucket>,<ic2:crafting:3>,<minecraft:bucket>],
  [<ic2:crafting:3>,<modularmachinery:blockfluidoutputhatch:3>,<ic2:crafting:3>],
  [null,<contenttweaker:rubber_sheet>,null]
]);
//大型能源输入仓
recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>,[
  [<ic2:crafting:3>,<ore:circuitBasic>,<ic2:crafting:3>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyinputhatch:3>,<ic2:crafting:3>],
  [<ic2:crafting:3>,<minecraft:redstone_block>,<ic2:crafting:3>]
]);
//大型能源输出仓
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:4>,[
   [<ic2:crafting:3>,<minecraft:redstone_block>,<ic2:crafting:3>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyoutputhatch:3>,<ic2:crafting:3>],
  [<ic2:crafting:3>,<ore:circuitBasic>,<ic2:crafting:3>]
]);
//巨型物品输入仓
recipes.addShaped(<modularmachinery:blockinputbus:5>,[
  [<thermalfoundation:material:833>,<ore:circuitAdvanced>,<thermalfoundation:material:833>],
  [<thermalfoundation:material:167>,<modularmachinery:blockinputbus:4>,<thermalfoundation:material:167>],
  [<ironchest:iron_chest:2>,<thermalfoundation:material:167>,<ironchest:iron_chest:2>]
]);
//巨型物品输出仓
recipes.addShaped(<modularmachinery:blockoutputbus:5>,[
    [<ironchest:iron_chest:2>,<thermalfoundation:material:167>,<ironchest:iron_chest:2>],
    [<thermalfoundation:material:167>,<modularmachinery:blockoutputbus:4>,<thermalfoundation:material:167>],
    [<thermalfoundation:material:833>,<ore:circuitAdvanced>,<thermalfoundation:material:833>]
]);
//巨型流体输入仓
recipes.addShaped(<modularmachinery:blockfluidinputhatch:5>,[
  [<thermalfoundation:material:833>,<ore:circuitAdvanced>,<thermalfoundation:material:833>],
  [<thermalfoundation:material:167>,<modularmachinery:blockfluidinputhatch:4>,<thermalfoundation:material:167>],
  [<minecraft:bucket>,<thermalfoundation:material:167>,<minecraft:bucket>]
]);
//巨型流体输出仓
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>,[
  [<minecraft:bucket>,<thermalfoundation:material:167>,<minecraft:bucket>],
  [<thermalfoundation:material:167>,<modularmachinery:blockfluidoutputhatch:4>,<minecraft:bucket>],
  [<thermalfoundation:material:833>,<ore:circuitAdvanced>,<thermalfoundation:material:833>]
]);
//巨型能源输入仓
recipes.addShaped(<modularmachinery:blockenergyinputhatch:5>,[
  [<thermalfoundation:material:833>,<ore:circuitAdvanced>,<thermalfoundation:material:833>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyinputhatch:4>,<minecraft:redstone_block>],
  [<thermalfoundation:material:167>,<minecraft:redstone_block>,<thermalfoundation:material:167>]
]);
//巨型能源输出仓
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:5>,[
  [<thermalfoundation:material:167>,<minecraft:redstone_block>,<thermalfoundation:material:167>],
  [<minecraft:redstone_block>,<modularmachinery:blockfluidoutputhatch:4>,<minecraft:redstone_block>],
  [<thermalfoundation:material:833>,<ore:circuitAdvanced>,<thermalfoundation:material:833>]
]);
//超级物品输入仓
recipes.addShaped(<modularmachinery:blockinputbus:6>,[
  [<contenttweaker:mana_essence>,<ore:circuitElite>,<contenttweaker:mana_essence>],
  [<contenttweaker:mysterious_gems>,<modularmachinery:blockinputbus:5>,<contenttweaker:mysterious_gems>],
  [<ironchest:iron_chest:5>,<contenttweaker:mysterious_gems>,<ironchest:iron_chest:5>]
]);
//超级物品输出仓
recipes.addShaped(<modularmachinery:blockoutputbus:6>,[
  [<ironchest:iron_chest:5>,<contenttweaker:mysterious_gems>,<ironchest:iron_chest:5>],
  [<contenttweaker:mysterious_gems>,<modularmachinery:blockinputbus:5>,<contenttweaker:mysterious_gems>],
  [<contenttweaker:mana_essence>,<ore:circuitElite>,<contenttweaker:mana_essence>]
]);
//超级流体输入仓
recipes.addShaped(<modularmachinery:blockfluidinputhatch:6>,[
  [<contenttweaker:mana_essence>,<ore:circuitElite>,<contenttweaker:mana_essence>],
  [<contenttweaker:mysterious_gems>,<modularmachinery:blockfluidinputhatch:5>,<contenttweaker:mysterious_gems>],
  [<minecraft:bucket>,<contenttweaker:mysterious_gems>,<minecraft:bucket>]
]);
//超级流体输出仓
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6>,[
  [<minecraft:bucket>,<contenttweaker:mysterious_gems>,<minecraft:bucket>],
  [<contenttweaker:mysterious_gems>,<modularmachinery:blockfluidoutputhatch:5>,<contenttweaker:mysterious_gems>],
  [<contenttweaker:mana_essence>,<ore:circuitElite>,<contenttweaker:mana_essence>]
]);
//超级能源输入仓
recipes.addShaped(<modularmachinery:blockenergyinputhatch:6>,[
  [<contenttweaker:mana_essence>,<ore:circuitElite>,<contenttweaker:mana_essence>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyinputhatch:5>,<minecraft:redstone_block>],
  [<contenttweaker:mysterious_gems>,<minecraft:redstone_block>,<contenttweaker:mysterious_gems>]
]);
//超级能源输出仓
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:6>,[
  [<contenttweaker:mysterious_gems>,<minecraft:redstone_block>,<contenttweaker:mysterious_gems>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyoutputhatch:5>,<minecraft:redstone_block>],
  [<contenttweaker:mana_essence>,<ore:circuitElite>,<contenttweaker:mana_essence>]
]);
//真空流体输入仓
recipes.addShaped(<modularmachinery:blockfluidinputhatch:7>,[
  [<extrautils2:ingredients:11>,<contenttweaker:blood_crystal_up>,<extrautils2:ingredients:11>],
  [<extrautils2:ingredients:17>,<modularmachinery:blockfluidinputhatch:6>,<extrautils2:ingredients:17>],
  [<minecraft:bucket>,<extrautils2:ingredients:17>,<minecraft:bucket>]
]);
//真空流体输出仓
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:7>,[
  [<minecraft:bucket>,<extrautils2:ingredients:17>,<minecraft:bucket>],
  [<extrautils2:ingredients:17>,<modularmachinery:blockfluidoutputhatch:6>,<extrautils2:ingredients:17>],
  [<extrautils2:ingredients:11>,<contenttweaker:blood_crystal_up>,<extrautils2:ingredients:11>]
]);
//终极能源输入仓
recipes.addShaped(<modularmachinery:blockenergyinputhatch:7>,[
  [<extrautils2:ingredients:11>,<contenttweaker:blood_crystal_up>,<extrautils2:ingredients:11>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyinputhatch:6>,<minecraft:redstone_block>],
  [<extrautils2:ingredients:17>,<minecraft:redstone_block>,<extrautils2:ingredients:17>]
]);
//终极能源输出仓
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:7>,[
  [<extrautils2:ingredients:17>,<minecraft:redstone_block>,<extrautils2:ingredients:17>],
  [<minecraft:redstone_block>,<modularmachinery:blockenergyoutputhatch:6>,<minecraft:redstone_block>],
  [<extrautils2:ingredients:11>,<contenttweaker:blood_crystal_up>,<extrautils2:ingredients:11>]
]);

//魔力输入仓
recipes.addShaped(<modularmachinery:blockmanaproviderinput>,[
  [<botania:livingrock>,<botania:livingrock>,<botania:livingrock>],
  [<botania:livingrock>,<botania:pool>,<botania:livingrock>],
  [<botania:livingrock>,<botania:livingrock>,<botania:livingrock>]
]);

# 莱泽尔水晶
recipes.addShapeless(<environmentaltech:litherite_crystal>*9,[<environmentaltech:litherite>]);

# 升级总线
recipes.addShapeless(<modularmachinery:blockupgradebus>,[<modularmachinery:blockcasing:4>,<contenttweaker:hikari_gem>,<extrautils2:ingredients>]);

# 大血石砖
recipes.addShapeless(<bloodmagic:decorative_brick>*8,[<extrautils2:decorativesolid:3>*8,<bloodmagic:blood_shard>]);

# 月晶
recipes.addShaped(<contenttweaker:luna_gem>, 
[[<extrautils2:ingredients:3>, <contenttweaker:basic_intergrowth_dust>, <extrautils2:ingredients:3>],
[<contenttweaker:basic_intergrowth_dust>, <extrautils2:ingredients>, <contenttweaker:basic_intergrowth_dust>], 
[<extrautils2:ingredients:3>, <contenttweaker:basic_intergrowth_dust>, <extrautils2:ingredients:3>]
]);

# 大型物品过滤器
recipes.addShaped(<enderio:item_big_item_filter>*4, 
[[<enderio:item_material:77>, <enderio:item_material:77>, <enderio:item_material:77>],
[<enderio:item_material:77>, <contenttweaker:basic_intergrowth_dust>,<enderio:item_material:77>],
[<enderio:item_material:77>, <enderio:item_material:77>,<enderio:item_material:77>]
]);

//自动锤
recipes.addShaped(<excompressum:auto_hammer>,[
  [<naturesaura:infused_iron>,<minecraft:heavy_weighted_pressure_plate>,<naturesaura:infused_iron>],
  [<naturesaura:infused_iron>,<exnihilocreatio:hammer_diamond>,<naturesaura:infused_iron>],
  [<naturesaura:infused_iron>,<minecraft:heavy_weighted_pressure_plate>,<naturesaura:infused_iron>]
]);

//自动压缩机
recipes.addShaped(<excompressum:auto_compressor>,[
  [<ore:workbench>,<minecraft:piston>,<ore:workbench>],
  [<minecraft:piston>,<naturesaura:infused_iron_block>,<minecraft:piston>],
  [<ore:workbench>,<minecraft:piston>,<ore:workbench>]
]);

//自动筛子
recipes.addShaped(<excompressum:auto_sieve>,[
  [<naturesaura:infused_iron_block>,<ore:paneGlass>,<naturesaura:infused_iron_block>],
  [<ore:paneGlass>,<exnihilocreatio:block_sieve>,<ore:paneGlass>],
  [<naturesaura:infused_iron>,<ore:paneGlass>,<naturesaura:infused_iron>]
]);

//魔钢筛子
recipes.addShaped(<excompressum:mana_sieve>,[
  [<botania:storage>,<ore:paneGlass>,<botania:storage>],
  [<ore:paneGlass>,<excompressum:auto_sieve>,<ore:paneGlass>],
  [<botania:manaresource>,<ore:paneGlass>,<botania:manaresource>]
]);

//并行控制器
recipes.addShaped(<modularmachinery:blockparallelcontroller>,[
  [<immersiveengineering:material:27>,<modularmachinery:blockcasing>,<immersiveengineering:material:27>],
  [<modularmachinery:blockcasing>,null,<modularmachinery:blockcasing>],
  [<immersiveengineering:material:27>,<modularmachinery:blockcasing>,<ic2:crafting:1>]
]);

//强化并行控制器
recipes.addShaped(<modularmachinery:blockparallelcontroller:1>,[
  [<modularmachinery:blockparallelcontroller>,<ore:circuitBasic>,<modularmachinery:blockparallelcontroller>],
  [<ore:circuitBasic>,null,<ore:circuitBasic>],
  [<modularmachinery:blockparallelcontroller>,<ore:circuitBasic>,<modularmachinery:blockparallelcontroller>]
]);

//精英并行控制器
recipes.addShaped(<modularmachinery:blockparallelcontroller:2>,[
  [<modularmachinery:blockparallelcontroller:1>,<ore:circuitAdvanced>,<modularmachinery:blockparallelcontroller:1>],
  [<ore:circuitAdvanced>,null,<ore:circuitAdvanced>],
  [<modularmachinery:blockparallelcontroller:1>,<ore:circuitAdvanced>,<modularmachinery:blockparallelcontroller:1>]
]);

//超级并行控制器
recipes.addShaped(<modularmachinery:blockparallelcontroller:3>,[
  [<modularmachinery:blockparallelcontroller:2>,<ore:circuitElite>,<modularmachinery:blockparallelcontroller:2>],
  [<ore:circuitElite>,null,<ore:circuitElite>],
  [<modularmachinery:blockparallelcontroller:2>,<ore:circuitElite>,<modularmachinery:blockparallelcontroller:2>]
]);

//终极并行控制器
recipes.addShaped(<modularmachinery:blockparallelcontroller:4>,[
  [<modularmachinery:blockparallelcontroller:3>,<contenttweaker:biology_circuit>,<modularmachinery:blockparallelcontroller:3>],
  [<contenttweaker:biology_circuit>,null,<contenttweaker:biology_circuit>],
  [<modularmachinery:blockparallelcontroller:3>,<contenttweaker:biology_circuit>,<modularmachinery:blockparallelcontroller:3>]
]);

# 电弧炉工业型控制器
recipes.addShapeless(<modularmachinery:arc_furnace_mk2_controller>,[<modularmachinery:arc_furnace_controller>,<ic2:crafting:2>]);

# 小制造机控制器
recipes.addShaped(<modularmachinery:assembly_machine_mini_controller>,[
  [<enderio:item_material:68>,<enderio:item_material:68>,<enderio:item_material:68>],
  [<enderio:item_material:68>,<contenttweaker:tomori_controller>,<enderio:item_material:68>],
  [<enderio:item_material:68>,<enderio:item_material:68>,<enderio:item_material:68>]
]);

# 炭灰板材机械外壳
recipes.addShaped(<deepmoblearning:machine_casing>,[
  [<deepmoblearning:soot_covered_plate>,<contenttweaker:abyssum_gem>,<deepmoblearning:soot_covered_plate>],
  [<contenttweaker:abyssum_gem>,<enderio:item_material:42>,<contenttweaker:abyssum_gem>],
  [<deepmoblearning:soot_covered_plate>,<contenttweaker:abyssum_gem>,<deepmoblearning:soot_covered_plate>]
]);

//基础通量存储器
recipes.addShaped(<fluxnetworks:fluxstorage>,[
  [<fluxnetworks:fluxblock>,<fluxnetworks:fluxblock>,<fluxnetworks:fluxblock>],
  [<ore:paneGlass>,<immersiveengineering:metal_device0>,<ore:paneGlass>],
  [<fluxnetworks:fluxblock>,<fluxnetworks:fluxblock>,<fluxnetworks:fluxblock>]
]);

//大型通量存储器
recipes.addShaped(<fluxnetworks:herculeanfluxstorage>,[
  [<fluxnetworks:fluxstorage>,<fluxnetworks:fluxstorage>,<fluxnetworks:fluxstorage>],
  [<ore:paneGlass>,<immersiveengineering:metal_device0:1>,<ore:paneGlass>],
  [<fluxnetworks:fluxstorage>,<fluxnetworks:fluxstorage>,<fluxnetworks:fluxstorage>]
]);

//巨型通量存储器
recipes.addShaped(<fluxnetworks:gargantuanfluxstorage>,[
  [<fluxnetworks:herculeanfluxstorage>,<fluxnetworks:herculeanfluxstorage>,<fluxnetworks:herculeanfluxstorage>],
  [<ore:paneGlass>,<immersiveengineering:metal_device0:2>,<ore:paneGlass>],
  [<fluxnetworks:herculeanfluxstorage>,<fluxnetworks:herculeanfluxstorage>,<fluxnetworks:herculeanfluxstorage>]
]);

# 蓝晶锭
recipes.addShapeless(<bigreactors:ingotcyanite>*9,[<bigreactors:blockcyanite>]);

# 蓝钚锭
recipes.addShapeless(<bigreactors:ingotblutonium>*9,[<bigreactors:blockblutonium>]);

recipes.addShaped(<bigreactors:ingotblutonium>,[
  [<bigreactors:ingotcyanite>,<bigreactors:ingotcyanite>,<bigreactors:ingotcyanite>],
  [<bigreactors:ingotcyanite>,null,<bigreactors:ingotcyanite>],
  [<bigreactors:ingotcyanite>,<bigreactors:ingotcyanite>,<bigreactors:ingotcyanite>]
]);

//培养皿
recipes.addShaped(<contenttweaker:petri_dish>,[
  [null,null,null],
  [<ore:blockGlass>,null,<ore:blockGlass],
  [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>]
]);

//乳胶加工机
recipes.addShaped(<industrialforegoing:latex_processing_unit>,[
  [<ore:ingotIridium>,<contenttweaker:biology_circuit>,<ore:ingotIridium>],
  [<ore:blockPalladium>,<mekanism:basicblock:8>,<taiga:palladium_block>],
  [<ore:ingotIridium>,<contenttweaker:electric_piston_mk3>,<ore:ingotIridium>]
]);

//召唤祭坛
recipes.addShaped(<zensummoning:altar>,[
  [<ore:ingotBronze>,<minecraft:redstone>,<ore:ingotBronze>],
  [<minecraft:redstone>,<minecraft:stone_slab>,<minecraft:redstone>],
  [<ore:ingotBronze>,<minecraft:redstone>,<ore:ingotBronze>]
]);

//压缩钩子
recipes.remove(<excompressum:compressed_crook>);
recipes.addShapeless(<excompressum:compressed_crook>,[<exnihilocreatio:crook_wood>,<exnihilocreatio:crook_wood>,<exnihilocreatio:crook_wood>,<exnihilocreatio:crook_wood>]);

//挖掘升级
recipes.addShaped(<extrautils2:ingredients:8>,[
[<minecraft:dye:4>,<minecraft:iron_ingot>,<minecraft:dye:4>],
[<minecraft:iron_ingot>,<minecraft:iron_pickaxe>,<minecraft:iron_ingot>],
[<minecraft:dye:4>,<minecraft:iron_ingot>,<minecraft:dye:4>]]);

recipes.addShapeless(<extrautils2:ingredients:8>,[<contenttweaker:upgrade_base>,<minecraft:iron_pickaxe>]);

//黑铁锭
recipes.addShaped(<extendedcrafting:material>, 
[[<extendedcrafting:material:1>, <extendedcrafting:material:1>, <extendedcrafting:material:1>],
[<extendedcrafting:material:1>, <extendedcrafting:material:1>, <extendedcrafting:material:1>], 
[<extendedcrafting:material:1>, <extendedcrafting:material:1>, <extendedcrafting:material:1>]
]);

recipes.addShapeless(<extendedcrafting:material>*9,[<extendedcrafting:storage>]);

//微型物品输入仓
recipes.addShaped(<modularmachinery:blockinputbus>, 
[[<minecraft:iron_ingot>,<contenttweaker:low_ticket>,<minecraft:iron_ingot>],
[<minecraft:iron_ingot>,<minecraft:hopper>,<minecraft:iron_ingot>],
[<minecraft:iron_ingot>,<minecraft:chest>,<minecraft:iron_ingot>]
]);

//微型物品输出仓
recipes.addShaped(<modularmachinery:blockoutputbus>, 
[[<minecraft:iron_ingot>,<contenttweaker:low_ticket>,<minecraft:iron_ingot>],
[<minecraft:iron_ingot>,<minecraft:chest>,<minecraft:iron_ingot>],
[<minecraft:iron_ingot>,<minecraft:hopper>,<minecraft:iron_ingot>]
]);

//模块化空白升级
recipes.addShaped(<contenttweaker:upgrade_base>, 
[[<minecraft:emerald>,<minecraft:prismarine_shard>,<minecraft:emerald>],
[<minecraft:blaze_powder>,<tconstruct:pattern>,<minecraft:blaze_powder>],
[<minecraft:emerald>,<minecraft:prismarine_shard>,<minecraft:emerald>]
]);

//造石机升级：熔炼
recipes.addShapeless(<contenttweaker:upgrade_melt>,[<contenttweaker:upgrade_base>,<morefurnaces:furnaceblock:2>]);

//造石机升级：粉碎
recipes.addShapeless(<contenttweaker:upgrade_crush>,[<contenttweaker:upgrade_base>,<excompressum:compressed_hammer_diamond>]);

//一级造石机控制器
recipes.addShaped(<modularmachinery:stone_machine_0_controller>,
[[<minecraft:iron_ingot>,<minecraft:redstone>,<minecraft:iron_ingot>],
[<minecraft:lava_bucket>,<extrautils2:compressedcobblestone:1>,<minecraft:water_bucket>],
[<minecraft:iron_ingot>,<minecraft:redstone>,<minecraft:iron_ingot>]]);

//二级造石机控制器
recipes.addShaped(<modularmachinery:stone_machine_1_controller>,
[[<extrautils2:compressedcobblestone:2>,<naturesaura:gold_powder>,<extrautils2:compressedcobblestone:2>],
[<naturesaura:gold_powder>,<modularmachinery:stone_machine_0_controller>,<naturesaura:gold_powder>],
[<extrautils2:compressedcobblestone:2>,<naturesaura:gold_powder>,<extrautils2:compressedcobblestone:2>]]);

//瓶装鬼魂
recipes.addShapeless(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),[<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"}),<minecraft:ghast_tear>,<minecraft:ghast_tear>]);
recipes.addShapeless(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),[<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),<minecraft:ghast_tear>]);

//存储系统结构外壳
recipes.addShaped(<ecoaeextension:estorage_casing>*4,
[[<ore:plateLumium>,<appliedenergistics2:material:36>,<ore:plateLumium>],
[<ore:gearFluix>,<thermalexpansion:frame:64>,<ore:gearFluix>],
[<ore:plateLumium>,<appliedenergistics2:material:36>,<ore:plateLumium>]
]);

//合成系统结构外壳
recipes.addShaped(<ecoaeextension:efabricator_casing>*3,
[[<ore:plateEnderium>,<thermalfoundation:material:833>,<ore:plateEnderium>],
[<thermalfoundation:material:833>,<appliedenergistics2:crafting_unit>,<thermalfoundation:material:833>],
[<ore:plateEnderium>,<thermalfoundation:material:833>,<ore:plateEnderium>]
]);

//计算系统结构外壳
recipes.addShapeless(<ecoaeextension:ecalculator_casing>,[<ic2:resource:12>,<appliedenergistics2:material:52>]);

//存储系统结构散热器
recipes.addShaped(<ecoaeextension:estorage_vent>,
[[null,<ecoaeextension:estorage_casing>,null],
[<ecoaeextension:estorage_casing>,<contenttweaker:motor_mk2>,<ecoaeextension:estorage_casing>],
[null,<ecoaeextension:estorage_casing>,null]
]);

//合成系统结构散热器
recipes.addShaped(<ecoaeextension:efabricator_vent>,
[[null,<ecoaeextension:efabricator_casing>,null],
[<ecoaeextension:efabricator_casing>,<contenttweaker:motor_mk2>,<ecoaeextension:efabricator_casing>],
[null,<ecoaeextension:efabricator_casing>,null]
]);

//基岩粉
recipes.addShaped(<enderio:item_material:20>*3,
[[null,<mysticalagriculture:grains_of_infinity_essence>,null],
[<mysticalagriculture:grains_of_infinity_essence>,<mysticalagriculture:grains_of_infinity_essence>,<mysticalagriculture:grains_of_infinity_essence>],
[null,<mysticalagriculture:grains_of_infinity_essence>,null]
]);

recipes.addShapeless(<enderio:item_material:20>*9,[<enderio:block_infinity>]);

//FR ME矩阵通讯接口
recipes.addShapeless(<ecoaeextension:efabricator_me_channel>,[<ecoaeextension:efabricator_casing>,<extrautils2:ingredients>,<threng:material:14>]);

//模块化升级：稳定
recipes.addShapeless(<contenttweaker:upgrade_stable>,[<contenttweaker:upgrade_base>,<ore:gearSteel>,<forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000})]);

//流明精华
recipes.addShapeless(<extendedcrafting:material:7>*9,[<extendedcrafting:storage:1>]);

//幸运方块
recipes.addShaped(<contenttweaker:lucky_block>,[
  [<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>],
  [<minecraft:gold_ingot>,<ore:chest>,<minecraft:gold_ingot>],
  [<minecraft:gold_ingot>,<minecraft:gold_ingot>,<minecraft:gold_ingot>]
]);

//铱铁合金板
recipes.addShaped(<advanced_solar_panels:crafting:7>,[
  [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>],
  [<ore:plateSteel>,<ic2:misc_resource:1>,<ore:plateSteel>],
  [<ore:plateSteel>,<ore:plateSteel>,<ore:plateSteel>]
]);

//混合太阳能板
recipes.addShapeless(<advanced_solar_panels:machines:3>*8,[<advanced_solar_panels:machines:4>]);

recipes.addShaped(<advanced_solar_panels:machines:3>,[
  [<ic2:crafting:15>,<ore:blockPlatinum>,<ic2:crafting:15>],
  [<ic2:crafting:4>,<advanced_solar_panels:machines:2>,<ic2:crafting:4>],
  [<contenttweaker:mana_circuit>,<advanced_solar_panels:crafting:4>,<contenttweaker:mana_circuit>]
]);

//富集阳光合金
recipes.addShaped(<advanced_solar_panels:crafting:5>,[
  [<extrautils2:ingredients>,<advanced_solar_panels:crafting:4>,<extrautils2:ingredients>],
  [<advanced_solar_panels:crafting:4>,<advanced_solar_panels:crafting:2>,<advanced_solar_panels:crafting:4>],
  [<extrautils2:ingredients>,<advanced_solar_panels:crafting:4>,<extrautils2:ingredients>]
]);

//纳米工具箱
recipes.addShaped(<super_solar_panels:crafting:11>,[
  [<ic2:crafting:15>,<contenttweaker:super_alloy_plate>,<ic2:crafting:15>],
  [<contenttweaker:super_alloy_plate>,<advanced_solar_panels:crafting:8>,<contenttweaker:super_alloy_plate>],
  [<ic2:crafting:15>,<contenttweaker:super_alloy_plate>,<ic2:crafting:15>]
]);

//量子工具箱
recipes.addShaped(<super_solar_panels:crafting:13>,[
  [<ore:plateEndSteel>,<advanced_solar_panels:crafting:5>,<ore:plateEndSteel>],
  [<advanced_solar_panels:crafting:5>,<super_solar_panels:crafting:11>,<advanced_solar_panels:crafting:5>],
  [<ore:plateEndSteel>,<advanced_solar_panels:crafting:5>,<ore:plateEndSteel>]
]);

//量子核心
recipes.addShaped(<advanced_solar_panels:crafting:13>,[
  [<advanced_solar_panels:crafting:5>,<minecraft:nether_star>,<advanced_solar_panels:crafting:5>],
  [<minecraft:nether_star>,<contenttweaker:ender_core>,<minecraft:nether_star>],
  [<advanced_solar_panels:crafting:5>,<minecraft:nether_star>,<advanced_solar_panels:crafting:5>]
]);

//基础合成组件
recipes.addShapeless(<extendedcrafting:material:14>,[<extendedcrafting:material:2>,<extendedcrafting:material:7>,<ic2:misc_resource:1>,<ic2:misc_resource:1>]);

//基础工作台
recipes.addShaped(<extendedcrafting:table_basic>,[
  [<extendedcrafting:material:14>,<extendedcrafting:material:8>,<extendedcrafting:material:14>],
  [<artisanworktables:worktable:2>,<ore:blockIridium>,<artisanworktables:worktable:6>],
  [<extendedcrafting:material:14>,<extendedcrafting:material:2>,<extendedcrafting:material:14>]
]);

//水种子
recipes.addShaped(<mysticalagriculture:water_seeds>,[
  [<minecraft:water_bucket>,<minecraft:water_bucket>,<minecraft:water_bucket>],
  [<minecraft:water_bucket>,<minecraft:wheat_seeds>,<minecraft:water_bucket>],
  [<minecraft:water_bucket>,<minecraft:water_bucket>,<minecraft:water_bucket>]
]);

//石种子
recipes.addShaped(<mysticalagriculture:stone_seeds>,[
  [<extrautils2:compressedcobblestone:4>,<extrautils2:compressedcobblestone:3>,<extrautils2:compressedcobblestone:4>],
  [<extrautils2:compressedcobblestone:3>,<minecraft:wheat_seeds>,<extrautils2:compressedcobblestone:3>],
  [<extrautils2:compressedcobblestone:4>,<extrautils2:compressedcobblestone:3>,<extrautils2:compressedcobblestone:4>]
]);

//下界种子
recipes.addShaped(<mysticalagriculture:nether_seeds>,[
  [<extrautils2:compressednetherrack:2>,<extrautils2:compressednetherrack:1>,<extrautils2:compressednetherrack:2>],
  [<extrautils2:compressednetherrack:1>,<mysticalagriculture:stone_seeds>,<extrautils2:compressednetherrack:1>],
  [<extrautils2:compressednetherrack:2>,<extrautils2:compressednetherrack:1>,<extrautils2:compressednetherrack:2>]
]);

//铁质外壳(铱制外壳)
recipes.addShaped(<actuallyadditions:block_misc:9>,[
  [<advanced_solar_panels:crafting:8>,<extrautils2:ingredients>,<advanced_solar_panels:crafting:8>],
  [<extrautils2:ingredients>,<bigreactors:ingotblutonium>,<extrautils2:ingredients>],
  [<advanced_solar_panels:crafting:8>,<extrautils2:ingredients>,<advanced_solar_panels:crafting:8>]
]);

//共振红石水晶 tier2
recipes.addShapeless(<extrautils2:ingredients>,[<extrautils2:endershard>,<mysticalagriculture:redstone_essence>,<mysticalagriculture:redstone_essence>,<mysticalagriculture:redstone_essence>,<mysticalagriculture:redstone_essence>]);

//高压流体导管
recipes.addShaped(<enderio:item_liquid_conduit:1>*4 ,[
  [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>],
  [<ore:blockGlass>,<enderio:item_alloy_nugget:5>,<ore:blockGlass>],
  [<enderio:item_material:4>,<enderio:item_material:4>,<enderio:item_material:4>]
]);

//镀金票卷
recipes.addShaped(<contenttweaker:mid_ticket>,[
  [<contenttweaker:basic_ticket>,<contenttweaker:basic_ticket>,<contenttweaker:basic_ticket>],
  [<contenttweaker:basic_ticket>,<contenttweaker:basic_ticket>,<contenttweaker:basic_ticket>],
  [<contenttweaker:basic_ticket>,<contenttweaker:basic_ticket>,<contenttweaker:basic_ticket>]
]);

//时代票卷
recipes.addShaped(<contenttweaker:high_ticket>,[
  [<contenttweaker:mid_ticket>,<contenttweaker:mid_ticket>,<contenttweaker:mid_ticket>],
  [<contenttweaker:mid_ticket>,<contenttweaker:mid_ticket>,<contenttweaker:mid_ticket>],
  [<contenttweaker:mid_ticket>,<contenttweaker:mid_ticket>,<contenttweaker:mid_ticket>]
]);

//违禁票卷
recipes.addShaped(<contenttweaker:ult_ticket>,[
  [<contenttweaker:high_ticket>,<contenttweaker:high_ticket>,<contenttweaker:high_ticket>],
  [<contenttweaker:high_ticket>,<contenttweaker:high_ticket>,<contenttweaker:high_ticket>],
  [<contenttweaker:high_ticket>,<contenttweaker:high_ticket>,<contenttweaker:high_ticket>]
]);

//上古票卷
recipes.addShaped(<contenttweaker:ex_ticket>,[
  [<contenttweaker:ult_ticket>,<contenttweaker:ult_ticket>,<contenttweaker:ult_ticket>],
  [<contenttweaker:ult_ticket>,<contenttweaker:ult_ticket>,<contenttweaker:ult_ticket>],
  [<contenttweaker:ult_ticket>,<contenttweaker:ult_ticket>,<contenttweaker:ult_ticket>]
]);

//原子分解机
recipes.addShaped(<mekanism:atomicdisassembler>,[
  [<mekanism:enrichedalloy>,<actuallyadditions:block_atomic_reconstructor>,<mekanism:enrichedalloy>],
  [<mekanism:enrichedalloy>,<mekanism:atomicalloy>,<mekanism:enrichedalloy>],
  [null,<mekanism:ingot>,null]
]);

//数字组装机
recipes.addShaped(<mekanismmultiblockmachine:multiblockmachine:3>,[
  [<super_solar_panels:crafting>,<contenttweaker:robot_arm_mk3>,<super_solar_panels:crafting>],
  [<mekanism:basicblock:8>,<mekanism:energycube>.withTag({tier: 3}),<mekanism:basicblock:8>],
  [<bigreactors:blockludicrite>,<contenttweaker:conveyor_module_mk3>,<bigreactors:blockludicrite>]
]);

//方块破坏器
recipes.addShaped(<actuallyadditions:block_breaker>,[
  [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
  [<ore:cobblestone>,<moreplates:manyullyn_gear>,<botania:manaresource:1>],
  [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]
]);

//方块放置器
recipes.addShaped(<actuallyadditions:block_placer>,[
  [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
  [<ore:cobblestone>,<moreplates:manyullyn_gear>,<botania:manaresource:2>],
  [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>]
]);

//煤炭发电机
recipes.addShaped(<actuallyadditions:block_coal_generator>,[
  [<ore:cobblestone>,<ore:coal>,<ore:cobblestone>],
  [<ore:cobblestone>,<immersiveengineering:metal_decoration0:4>,<ore:cobblestone>],
  [<ore:cobblestone>,<ore:coal>,<ore:cobblestone>]
]);

//原油发电机
recipes.addShaped(<actuallyadditions:block_oil_generator>,[
  [<ore:cobblestone>,<forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}),<ore:cobblestone>],
  [<ore:cobblestone>,<ic2:resource:12>,<ore:cobblestone>],
  [<ore:cobblestone>,<forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}),<ore:cobblestone>]
]);

//热能发电机
recipes.addShaped(<actuallyadditions:block_heat_collector>,[
  [<immersiveengineering:stone_decoration:1>,<minecraft:comparator>,<immersiveengineering:stone_decoration:1>],
  [<immersiveengineering:metal_decoration0>,<immersiveengineering:metal_decoration0:3>,<immersiveengineering:metal_decoration0>],
  [<immersiveengineering:stone_decoration:1>,<immersiveengineering:metal_decoration0>,<immersiveengineering:stone_decoration:1>]
]);

//中继器扳手
recipes.addShapeless(<actuallyadditions:item_laser_wrench>,[<thermalfoundation:wrench>,<botania:manaresource:5>]);

//能量激光中继器
recipes.addShaped(<actuallyadditions:block_laser_relay>*2,[
  [<ore:obsidian>,<minecraft:redstone_block>,<ore:obsidian>],
  [<contenttweaker:low_ticket>,<ic2:crafting:1>,<contenttweaker:low_ticket>],
  [<ore:obsidian>,<minecraft:redstone_block>,<ore:obsidian>]
]);

//热力膨胀机器NBT修复
//熔岩炉
recipes.addShapeless(<thermalexpansion:machine:6>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),[<thermalexpansion:machine:6>]);
//流体转置机
recipes.addShapeless(<thermalexpansion:machine:8>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),[<thermalexpansion:machine:8>]);
//流体精炼机
recipes.addShapeless(<thermalexpansion:machine:7>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 2, 3, 3, 3, 3] as byte[] as byte[], Level: 0 as byte}),[<thermalexpansion:machine:7>]);
//感应炉
recipes.addShapeless(<thermalexpansion:machine:3>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [3, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte}),[<thermalexpansion:machine:3>]);

//光子锭
recipes.addShaped(<extrabotany:material:8>,[
  [null,null,null],
  [<contenttweaker:growth_dust>,<extrautils2:ingredients:12>,<contenttweaker:luna_dust>],
  [null,null,null]
]);