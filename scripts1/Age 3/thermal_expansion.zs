import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.InductionSmelter;  
import mods.thermalexpansion.Crucible;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Centrifuge;
import mods.thermalexpansion.Refinery;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.Sawmill;

//流体转置机
//mods.thermalexpansion.Transposer.addExtractRecipe(ILiquidStack output, IItemStack input, int energy, WeightedItemStack itemOut);------提取模式 WeightedItemStack itemOut：物品输出消耗概率
//mods.thermalexpansion.Transposer.addFillRecipe(IItemStack output, IItemStack input, ILiquidStack fluid, int energy);--------装填模式

//原始投网
mods.thermalexpansion.Transposer.addFillRecipe(<bloodmagic:soul_snare>*5, <botania:manaresource:16>,<liquid:fluidedmana> * 250, 512);

//混合魔力水晶
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:mysterious_gems>, <extrabotany:material:1>, <liquid:liquid_enhance_magic> * 250,16000);

//末影之眼
mods.thermalexpansion.Transposer.addFillRecipe(<minecraft:ender_eye>, <minecraft:ender_pearl>, <liquid:lava> * 144,512);

//液态橡胶
mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:rubber>*144,<ic2:crafting>,512);

mods.thermalexpansion.Transposer.addExtractRecipe(<liquid:rubber>*144,<contenttweaker:rubber_sheet>,512);
//制浆生物质
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:816>*3, <ic2:crafting:20>,<liquid:ic2biomass> * 250, 512);

# 莱泽尔水晶
mods.thermalexpansion.Transposer.addFillRecipe(<environmentaltech:litherite_crystal>, <contenttweaker:blood_crystal>, <liquid:experience>*80, 4096);

# 秘之源
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:mystical_source>,<contenttweaker:middle_intergrowth_dust>,<liquid:extremeredliquid>*1000,8192);

# 大地之晶
mods.thermalexpansion.Transposer.addFillRecipe(<contenttweaker:grow_gem>,<contenttweaker:middle_intergrowth_dust>,<liquid:growth>*250,4096);

# 瓶装阳光
mods.thermalexpansion.Transposer.addFillRecipe(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),<minecraft:glass_bottle>,<liquid:liquid_sunshine>*50,2048);

# 瓶装鬼魂
mods.thermalexpansion.Transposer.addFillRecipe(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),<minecraft:glass_bottle>,<liquid:lifeessence>*50,2048);

//流明精华
mods.thermalexpansion.Transposer.addFillRecipe(<extendedcrafting:material:7>, <mysticalagriculture:crafting>, <liquid:xu_enchanted_metal>*288, 2048);

//冰种子
mods.thermalexpansion.Transposer.addFillRecipe(<mysticalagriculture:ice_seeds>, <minecraft:wheat_seeds>, <liquid:cryotheum>*75, 2048);

//火种子
mods.thermalexpansion.Transposer.addFillRecipe(<mysticalagriculture:fire_seeds>, <minecraft:wheat_seeds>, <liquid:pyrotheum>*250, 4096);

//铁种子
mods.thermalexpansion.Transposer.addFillRecipe(<mysticalagriculture:iron_seeds>, <mysticalagriculture:stone_seeds>, <liquid:iron>*5184, 16384);

//感应炉
//mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);

//增强魔法粉
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:manaup_dust>, <botania:manaresource:23>*16, <contenttweaker:blood_cryotheum>, 8192);

# 灵魂机器框架
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_material:53>,<enderio:item_material:66>,<enderio:item_material:52>,4096);

# 强化机器框架
mods.thermalexpansion.InductionSmelter.addRecipe(<enderio:item_material:54>,<enderio:item_material:66>,<enderio:item_material:67>,4096);

//红色合金锭
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:red_ingot>, <minecraft:redstone>*4, <thermalfoundation:material:64>, 4096);
mods.thermalexpansion.InductionSmelter.addRecipe(<contenttweaker:red_ingot>, <minecraft:redstone>*4, <thermalfoundation:material:128>, 4800);

//煤种子
mods.thermalexpansion.InductionSmelter.addRecipe(<mysticalagriculture:coal_seeds>,<mysticalagriculture:stone_seeds>,<ic2:crafting:18>,16384);

# 删除 工业机器框架
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material>,<enderio:item_material:51>);

# 删除 灵魂机器框架
mods.thermalexpansion.InductionSmelter.removeRecipe(<enderio:item_material>,<enderio:item_material:52>);

//熔岩炉
//mods.thermalexpansion.Crucible.addRecipe(ILiquidStack output, IItemStack input, int energy);

//增强液态魔力
mods.thermalexpansion.Crucible.addRecipe(<liquid:liquid_enhance_magic> * 250, <contenttweaker:manaup_dust>, 12121);

//蕴含神秘的极度不稳定红石
mods.thermalexpansion.Crucible.addRecipe(<liquid:extremeredliquid> * 500, <contenttweaker:extreme_unstable_redcrystal>, 16384);


//离心机

//生橡胶浆
mods.thermalexpansion.Centrifuge.addRecipe([(<contenttweaker:raw_rubber_pulp>) % 150, <ic2:crafting:20> % 20], <ic2:misc_resource:4>, <liquid:latex>*50, 4096);

//富铱金属粉,富锇金属粉
mods.thermalexpansion.Centrifuge.addRecipe([<contenttweaker:platinum_rich_metal_slag> % 50,<contenttweaker:iridium_rich_metal_slag> % 50],<contenttweaker:platinum_group_metal_residues>, null,2048);

//铂泥渣处理
mods.thermalexpansion.Centrifuge.addRecipe([<enderio:item_material:25>,<contenttweaker:silica_fume>],<contenttweaker:platinum_sludge>, null,2048);


//流体精炼机

//魔力之息
Refinery.addRecipe(<liquid:mana>*50, <contenttweaker:mana_essence>, <liquid:liquid_enhance_magic>*2000, 16384);

//浓缩铂系浸出液
Refinery.addRecipe(<liquid:platinum_based_metal_leaching_solution2>*1000,<contenttweaker:platinum_sludge>,<liquid:platinum_based_metal_leaching_solution>*1000, 4096);

//压缩机
//mods.thermalexpansion.Compactor.addMintRecipe(IItemStack output, IItemStack input, int energy);

//橡胶板
mods.thermalexpansion.Compactor.addPressRecipe(<contenttweaker:rubber_sheet>,<ic2:crafting>, 1024);

//锯木机
//mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:painting>);

//移除制浆生物质
mods.thermalexpansion.Sawmill.removeRecipe(<harvestcraft:barleyitem>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:pumpkin>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:potato>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:sapling>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:melon_block>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:carrot>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:reeds>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:beetroot>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:cactus>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:waterlily>);
mods.thermalexpansion.Sawmill.removeRecipe(<harvestcraft:oatsitem>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:vine>);
mods.thermalexpansion.Sawmill.removeRecipe(<harvestcraft:ryeitem>);
mods.thermalexpansion.Sawmill.removeRecipe(<minecraft:wheat>);
mods.thermalexpansion.Sawmill.removeRecipe(<actuallyadditions:item_food:16>);
