//导包
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.naturesaura.AnimalSpawner;
import mods.naturesaura.Altar;
import mods.naturesaura.Offering;
import mods.naturesaura.TreeRitual;
import mods.immersiveengineering.CokeOven;
import mods.artisanworktables.builder.RecipeBuilder;

//鹰羽
mods.naturesaura.Altar.addRecipe("鹰羽",<minecraft:feather>,<totemic:eagle_drops:1>,<naturesaura:conversion_catalyst>,1000,600);

//基础工作台
mods.naturesaura.Altar.addRecipe("基础工作台",<minecraft:crafting_table>,<artisanworktables:worktable:5>,null,500,60);

//烈焰棒
mods.naturesaura.Altar.addRecipe("烈焰棒",<minecraft:prismarine_shard>,<minecraft:blaze_rod>,null,1000,600);

//自然祭坛核心
mods.naturesaura.TreeRitual.addRecipe("自然祭坛核心",<totemic:cedar_sapling>, <naturesaura:nature_altar>, 800,[<naturesaura:token_joy>,<naturesaura:token_joy>,<totemic:buffalo_items:1>,<totemic:wind_chime>,<naturesaura:gold_leaf>,<totemic:cedar_log>,<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"})]);

//快乐勋章
mods.naturesaura.TreeRitual.addRecipe("快乐徽章",<totemic:cedar_sapling>, <naturesaura:token_joy>, 800,[<totemic:cedar_sapling>,<minecraft:torch>,<ore:ingotBronze>,<minecraft:apple>,<naturesaura:gold_leaf>,<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"})]);

//供桌
mods.naturesaura.TreeRitual.addRecipe("供桌",<naturesaura:ancient_sapling>, <naturesaura:offering_table>, 3200,[<totemic:cedar_log>,<naturesaura:gold_brick>,<naturesaura:gold_brick>,<naturesaura:gold_brick>,<naturesaura:token_sorrow>,<naturesaura:token_fear>,<naturesaura:infused_iron>,<naturesaura:infused_iron_block>]);

//嬗变催化器
mods.naturesaura.TreeRitual.addRecipe("嬗变催化剂", <naturesaura:ancient_sapling>, <naturesaura:conversion_catalyst>, 1600,[<totemic:buffalo_items>,<minecraft:brewing_stand>,<naturesaura:infused_stone>,<naturesaura:nature_altar>,<naturesaura:ancient_sapling>,<naturesaura:sky_ingot>,<naturesaura:sky_ingot>]);

//木种子
mods.naturesaura.TreeRitual.addRecipe("木种子",<totemic:cedar_sapling>, <mysticalagriculture:wood_seeds>, 1200,[<minecraft:wheat_seeds>,<mysticalagriculture:crafting:6>,<naturesaura:gold_fiber>,<botania:manaresource:23>]);

//占卜印迹
mods.naturesaura.Offering.addRecipe("占卜印记",<bloodmagic:slate>,1,<naturesaura:calling_spirit>,<bloodmagic:sigil_divination>);

//橡胶树苗
mods.naturesaura.TreeRitual.addRecipe("橡胶树苗",<naturesaura:ancient_sapling>, <ic2:sapling>, 400,[<forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}),<botania:manaresource:23>,<botania:manaresource:14>,<forge:bucketfilled>.withTag({FluidName: "fluidedmana", Amount: 1000})]);

//瓶装阳光
mods.naturesaura.Altar.addRecipe("瓶装阳光",<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"}),<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),null,120,40);

//自然种子
mods.naturesaura.Altar.addRecipe("自然种子",<minecraft:wheat_seeds>,<mysticalagriculture:nature_seeds>,<naturesaura:conversion_catalyst>,1000,240);