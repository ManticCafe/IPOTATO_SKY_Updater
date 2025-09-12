//导包
import mods.botania.Lexicon.addBrewPage;
import mods.botania.Lexicon.addCraftingPage;
import mods.botania.Lexicon.addElvenPage;
import mods.botania.Lexicon.addEntityPage;
import mods.botania.Lexicon.addImagePage;
import mods.botania.Lexicon.addLorePage;
import mods.botania.Lexicon.addInfusionPage;
import mods.botania.Lexicon.addAlchemyPage;
import mods.botania.Lexicon.addConjurationPage;
import mods.botania.Lexicon.addPetalPage;
import mods.botania.Lexicon.addRunePage;
import mods.botania.Lexicon.addTextPage;
import mods.botaniatweaks.Agglomeration;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.botania.ManaInfusion;
import mods.botania.Apothecary;

//删除 魔力钢板
mods.botania.ManaInfusion.removeRecipe(<moreplates:manasteel_plate>);

//删除 魔力钢齿轮
mods.botania.ManaInfusion.removeRecipe(<moreplates:manasteel_gear>);

//删除 魔力钢块
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);

//删除 暗影锭
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:5>);

//删除 光子锭
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:8>);

//删除 魔力尘
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:23>);

//删除 魔力珍珠
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:1>);

//删除 魔力钢锭
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);

//魔力钢锭
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <ore:ingotSteel>, 3000);

//魔力钢块
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <ore:blockSteel>, 27000);

//魔力珍珠
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:1>, <minecraft:ender_eye>, 6000);

//魔力尘
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <naturesaura:gold_powder>, 500);

//花肥
mods.botania.ManaInfusion.addInfusion(<botania:fertilizer>, <minecraft:dye:15>, 500);

//泰拉凝聚板
mods.botania.RuneAltar.addRecipe(<botania:terraplate>,[<botania:rune:4>,<botania:rune:5>,
<botania:rune:6>,<botania:rune:7>,<botania:rune:8>,<moreplates:manasteel_plate>, <minecraft:lapis_block>,<botania:storage:3>], 30000);

//删除 奥利哈刚锭
mods.botania.RuneAltar.removeRecipe(<extrabotany:material:1>);

//火花
mods.botania.RuneAltar.addRecipe(<botania:spark> *2,[<ore:manaPearl>,<ore:manaPearl>,<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:gold_nugget>,<minecraft:gold_nugget>,<ore:petalLime>,<ore:petalLime>], 1500);

//删除 泰拉钢锭
Agglomeration.removeRecipe(<botania:manaresource:4>,[<botania:manaresource:2>,<botania:manaresource>,<botania:manaresource:1>]);

//精灵门核心
Agglomeration.addRecipe(<botania:alfheimportal>,[<botania:manaresource:4>,<botania:livingwood>*4,<botania:livingwood:5>*4],15000);

//泰拉钢锭
Agglomeration.addRecipe(<botania:manaresource:4>,
[<botania:manaresource:2>,<botania:manaresource:1>,<botania:manaresource>,<botania:rune:8>],
500000,0x8B8B7A,0x00FF7F,
<minecraft:lapis_block>,<botania:storage>,<botania:quartztypemana>,
null,null,<minecraft:quartz_block>);

Agglomeration.addRecipe(<botania:manaresource:4>,
[<botania:manaresource:2>,<botania:manaresource:1>,<botania:manaresource>],
375000,0x8B8B7A,0x00FF7F,
<botania:storage:3>,<botania:storage>,<botania:storage:1>,
null,null,null);

Agglomeration.addRecipe(<botania:manaresource:4>,
[<botania:manaresource:2>,<botania:manaresource:1>,<botania:manaresource>],
350000,0x8B8B7A,0x00FF7F,
<botania:storage:2>,<botania:storage>,<botania:storage:1>,
null,null,null);

//模块化控制器 魔力灌注机
Agglomeration.addRecipe(<modularmachinery:mana_infusion_controller>,
[<modularmachinery:blockcasing>,<botania:rune:2>,<botania:rune:8>,<botania:rune:1>,<botania:rune>,<botania:rune:8>,<botania:rune:3>,<botania:pool:3>,<modularmachinery:itemmodularium>*4],
400000,0x8B8B7A,0x00FF7F,
<botania:pool:3>,<modularmachinery:blockcasing>,<botania:storage>,
<botania:pool:2>,null,<immersiveengineering:storage:8>);

//模块化控制器 魔力聚合机
Agglomeration.addRecipe(<modularmachinery:mana_aggregator_controller>,
[<modularmachinery:blockcasing:4>,<botania:manaresource:4>*4,<botania:manaresource:5>],
100000,0x8B8B7A,0x00FF7F,
<botania:storage:1>,<botania:storage>,<botania:storage:2>,
null,null,null);

//产魔机控制器
Agglomeration.addRecipe(<modularmachinery:mana_production_controller>,
[<botania:petal>*4,<minecraft:flower_pot>,<botania:manaresource>*4],
5000,0x8B8B7A,0x00FF7F,
<botania:storage:1>,<botania:storage>,<botania:storage:2>,
null,null,null);

//精灵门控制器
Agglomeration.addRecipe(<modularmachinery:elven_gate_controller>,
[<botania:alfheimportal>,<moreplates:gaia_spirit_gear>*4,<botania:pylon:2>*2],50000);

//泥土种子
mods.botania.Apothecary.addRecipe(<mysticalagriculture:dirt_seeds>, [<mysticalagriculture:crafting:6>,<mysticalagriculture:crafting:10>]);

//转化魔力
mods.botania.ManaInfusion.addInfusion(null, <naturesaura:sky_ingot>, -8000);
mods.botania.ManaInfusion.addInfusion(null, <contenttweaker:mana_essence>, -50000);
mods.botania.ManaInfusion.addInfusion(null, <contenttweaker:sky_essence>, -16000);

