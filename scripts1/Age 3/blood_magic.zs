import mods.bloodmagic.BloodAltar;
import mods.bloodmagic.TartaricForge;
import mods.bloodmagic.AlchemyArray;
import mods.bloodmagic.AlchemyTable;

# remove
mods.bloodmagic.AlchemyArray.removeRecipe(<bloodmagic:component:18>, <bloodmagic:slate:3>);


//献祭刀
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:dagger_of_sacrifice>, <thermalfoundation:wrench>, 0, 3000,15,5);

//虚弱气血宝珠
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <extrabotany:material:1>, 0, 2000,10,1);

//学徒气血宝珠
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),<ic2:crafting:1>, 1, 5000,15,5);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}),<mekanism:controlcircuit>, 1, 5000,15,5);

//法师工作台
mods.bloodmagic.BloodAltar.addRecipe(<artisanworktables:worktable:7>, <bloodmagic:monster_soul>, 1, 12000,20,2);

//空白石版
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, <ic2:crafting:3>, 0, 1500,10,1);

//凝血
mods.bloodmagic.BloodAltar.addRecipe(<tconstruct:edible:3>, <minecraft:rotten_flesh>, 0, 400,8,1);

//平庸的血之晶
mods.bloodmagic.BloodAltar.addRecipe(<contenttweaker:blood_crystal>, <contenttweaker:red_ingot>, 1, 2000,20,2);

//炽焱粉
//mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
mods.bloodmagic.TartaricForge.addRecipe(<thermalfoundation:material:1024>*2,[<minecraft:blaze_powder>, <botania:manaresource:23>, <naturesaura:gold_powder>, <minecraft:redstone>], 20,5);
//凛冰粉
mods.bloodmagic.TartaricForge.addRecipe(<thermalfoundation:material:1025>*2, [<thermalfoundation:material:2049>,<botania:manaresource:23>,<naturesaura:gold_powder>,<minecraft:glowstone_dust>],20,5);
//地岩粉
mods.bloodmagic.TartaricForge.addRecipe(<thermalfoundation:material:1027>*2,[<thermalfoundation:material:2053>, <contenttweaker:blood_crystal_dust>,<thermalfoundation:material:1024>,<thermalfoundation:material:1025>], 512,8); # 暂定

//血之粉末
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:blood_cryotheum>, [<botania:manaresource:23>,<tconstruct:edible:3>,<bloodmagic:component:32>,<contenttweaker:fire_essence>],40,12);

//血之晶
mods.bloodmagic.TartaricForge.addRecipe(<contenttweaker:blood_crystal_up>, [<contenttweaker:blood_crystal_dust>,<thermalfoundation:material:1024>,<thermalfoundation:material:1025>,<thermalfoundation:material:102>],100,15);

//黑曜石种子
mods.bloodmagic.TartaricForge.addRecipe(<mysticalagriculture:obsidian_seeds>, [<mysticalagriculture:water_seeds>,<mysticalagriculture:fire_seeds>], 50, 20);

//Age 4
# 瓶装黑暗
mods.bloodmagic.BloodAltar.addRecipe(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}),

     <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}), 2, 2500,25,5
    );

# 法师气血宝珠
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}),

     <extrautils2:ingredients:5>, 2, 30000,40,5
    );

# 焦黑石英
mods.bloodmagic.BloodAltar.addRecipe(<actuallyadditions:item_misc:5>,

     <botania:quartz:5>, 3, 4444,18,2
    );

# 焦黑石英
mods.bloodmagic.BloodAltar.addRecipe(<actuallyadditions:item_misc:5>,

     <minecraft:quartz>, 4, 3000,30,0
    );

# 木麒麟
mods.bloodmagic.BloodAltar.addRecipe(<roots:pereskia>,

     <totemic:cedar_sapling>, 3, 32768,30,0
    );

# 萤月之叶
mods.bloodmagic.BloodAltar.addRecipe(<roots:moonglow_leaf>,

     <naturesaura:gold_leaf>, 3, 32768,30,0
    );

# 露海棠
mods.bloodmagic.BloodAltar.addRecipe(<roots:dewgonia>,

     <botania:manaresource:5>, 3, 32768,30,0
    );

# [导师]气血宝珠
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}),

     <extrautils2:simpledecorative:2>, 3, 50000,55,5
    );

# [贤者]气血宝珠
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}),

     <draconicevolution:draconic_core>, 4, 114514,80,5
    );


# 有机黑色染料
mods.bloodmagic.AlchemyArray.addRecipe(
    <enderio:item_material:50>, 
    <contenttweaker:red_alloy_dust>, 
    <thermalfoundation:material:833>
    );

# 珠宝商工作台
mods.bloodmagic.AlchemyArray.addRecipe(
    <artisanworktables:worktable:4>, 
    <bloodmagic:component:8>,
    <enderio:item_material>
    );

# 研杵
mods.bloodmagic.AlchemyArray.addRecipe(
    <roots:pestle>, 
    <bloodmagic:bound_shovel>,
    <roots:terra_moss>
    );

# 法师工作站
mods.bloodmagic.AlchemyArray.addRecipe(
    <artisanworktables:workstation:7>, 
    <artisanworktables:worktable:7>,
    <contenttweaker:ender_core>
    );

# GP输入仓
mods.bloodmagic.AlchemyArray.addRecipe(
    <modularmachinery:blockgridproviderinput>, 
    <modularmachinery:blockcasing>,
    <contenttweaker:green_gem>
    );

# GP输出仓
mods.bloodmagic.AlchemyArray.addRecipe(
    <modularmachinery:blockgridprovideroutput>, 
    <modularmachinery:blockcasing>,
    <contenttweaker:ender_core>
    );

//红石种子
mods.bloodmagic.AlchemyArray.addRecipe(
    <mysticalagriculture:redstone_seeds>, 
    <mysticalagriculture:nether_seeds>,
    <extrautils2:ingredients>
    );
# 束缚试剂
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:component:8>,[<extrautils2:ingredients>,<contenttweaker:blood_crystal>,<enderio:item_material:50>,<contenttweaker:mana_essence>], 500,75);

# [较大]地狱魂石
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:soul_gem:3>,    [<bloodmagic:soul_gem:2>,<bloodmagic:slate:3>,<bloodmagic:blood_shard>,<contenttweaker:penglai_gem>], 1000,250);

# 炼金术桌
# mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);

# 地之粉末
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:growth_dust>, [<roots:stalicripe>,<roots:dewgonia>,<roots:cloud_berry>,<contenttweaker:basic_intergrowth_dust>,<contenttweaker:growth_essence>,<roots:terra_moss>], 450, 100, 2);

# 月之粉末
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:luna_dust>, [<roots:pereskia>,<roots:moonglow_leaf>,<roots:infernal_bulb>,<contenttweaker:basic_intergrowth_dust>,<contenttweaker:sky_essence>,<extrautils2:ingredients:3>], 450, 100, 2);

//血之晶
mods.bloodmagic.AlchemyTable.addRecipe(<contenttweaker:blood_crystal_up>, [<minecraft:redstone>,<appliedenergistics2:material>], 75, 10, 2);

//流明精华
//mods.bloodmagic.AlchemyTable.addRecipe(<extendedcrafting:material:7>, [<minecraft:glowstone_dust>,], 90, 60, 2);
