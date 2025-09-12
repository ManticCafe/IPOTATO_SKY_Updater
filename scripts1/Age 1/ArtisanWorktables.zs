//导包
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.artisanworktables.builder.RecipeBuilder;

//鹰骨笛
RecipeBuilder.get("basic")
  .setShaped([
    [null, null, <totemic:eagle_drops>],
    [null, <totemic:eagle_drops>, <totemic:eagle_drops:1>],
    [<totemic:eagle_drops>, null, null]])
  .setFluid(<liquid:water> * 750)
  .addOutput(<totemic:eagle_bone_whistle>)
  .addTool(<totemic:totem_whittling_knife>, 1.0)
  .create();

//工程师工作台
RecipeBuilder.get("basic")
  .setShaped([
    [<totemic:buffalo_items>, <totemic:buffalo_items>, <totemic:buffalo_items>],
    [<naturesaura:sky_ingot>, <minecraft:iron_block>, <naturesaura:sky_ingot>],
    [<immersiveengineering:material:1>, null, <immersiveengineering:material:1>]])
  .setFluid(<liquid:lava> * 250)
  .addOutput(<artisanworktables:worktable:6>)
  .create();

//工程师装配台
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <immersiveengineering:blueprint>.withTag({blueprint: "molds"}).withTag({blueprint: "molds"}), null],
    [<immersiveengineering:treated_wood:2>, <immersiveengineering:treated_wood:2>, <immersiveengineering:treated_wood:2>],
    [<immersiveengineering:treated_wood:2>, <artisanworktables:worktable:6>, <immersiveengineering:wooden_decoration>]])
  .setFluid(<liquid:creosote> * 500)
  .addOutput(<immersiveengineering:wooden_device0:2>)
  .addTool(<ore:artisansHammer>, 30.0)
  .create();

//石匠工作台
RecipeBuilder.get("basic")
  .setShaped([
    [<minecraft:stonebrick>, <minecraft:stonebrick>, <minecraft:stonebrick>],
    [<minecraft:stonebrick>, <artisanworktables:worktable:5>, <minecraft:stonebrick>]])
  .addOutput(<artisanworktables:worktable:2>)
  .create();

//剪刀
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:plateSteel>],
    [<ore:plateSteel>, null]])
  .addOutput(<minecraft:shears>)
  .addTool(<ore:artisansHammer>, 10.0)
  .create();

//焦炉砖
RecipeBuilder.get("mason")
  .setShaped([
    [<tconstruct:materials>, <minecraft:sandstone>, <tconstruct:materials>],
    [<minecraft:sandstone>, <appliedenergistics2:material:45>, <minecraft:sandstone>],
    [<tconstruct:materials>, <minecraft:sandstone>, <tconstruct:materials>]])
  .setFluid(<liquid:lava> * 500)
  .addTool(<ore:artisansTrowel>, 50)
  .addOutput(<immersiveengineering:stone_decoration> * 3)
  .create();

//盆栽盆
RecipeBuilder.get("engineer")
  .setShaped([
    [<botania:livingrock>, <naturesaura:sky_ingot>, <botania:livingrock>],
    [<botania:livingrock>, <botania:livingrock>, <botania:livingrock>]])
  .addTool(<ore:artisansFile>, 80)
  .addOutput(<bonsaitrees:bonsaipot>)
  .create();

//基础机械外壳1
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateIron>, null, null, null, <ore:plateIron>],
    [null, <ore:plateIron>, <immersiveengineering:material:27>, <ore:plateIron>, null],
    [null, <botania:manaresource:14>, <immersiveengineering:metal_decoration0:4>, <botania:manaresource:14>, null],
    [null, <ore:plateIron>, <botania:manaresource:14>, <ore:plateIron>, null],
    [<ore:plateIron>, null, null, null, <ore:plateIron>]])
  .addTool(<ore:artisansSpanner>, 15)
  .addTool(<ore:artisansSolderer>, 20)
  .addTool(<ore:artisansFile>, 30)
  .addOutput(<ic2:resource:12> * 2)
  .create();

//基础机械外壳2
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:plateIron>, null, null, null, <ore:plateIron>],
    [null, <ore:plateIron>, <immersiveengineering:material:27>, <ore:plateIron>, null],
    [null, <botania:manaresource:14>, <immersiveengineering:metal_decoration0:5>, <botania:manaresource:14>, null],
    [null, <ore:plateIron>, <botania:manaresource:14>, <ore:plateIron>, null],
    [<ore:plateIron>, null, null, null, <ore:plateIron>]])
  .addTool(<ore:artisansSpanner>, 15)
  .addTool(<ore:artisansSolderer>, 20)
  .addTool(<ore:artisansFile>, 30)
  .addOutput(<ic2:resource:12> * 3)
  .create();

//ic2电路板
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:redstone>, <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte}), <minecraft:redstone>],
    [<minecraft:redstone>, <ic2:crafting>, <immersiveengineering:material:27>, <ic2:crafting>, <minecraft:redstone>],
    [<minecraft:planks>, <minecraft:planks>, <minecraft:planks>, <minecraft:planks>, <minecraft:planks>]])
  .addOutput(<ic2:crafting:1>*2)
  .create();

//牺牲匕首
RecipeBuilder.get("engineer")
  .setShaped([
    [<ic2:crafting:3>, <ic2:crafting:3>, <ic2:crafting:3>],
    [null, <minecraft:gold_ingot>, <ic2:crafting:3>],
    [<minecraft:iron_ingot>, null, <ic2:crafting:3>]])
  .addTool(<thermalfoundation:wrench>, 0)
  .setFluid(<liquid:blood> * 250)
  .addOutput(<bloodmagic:sacrificial_dagger>)
  .create();

//血之祭坛
RecipeBuilder.get("engineer")
  .setShaped([
    [<tconstruct:slime_congealed:3>, null, null, null, <tconstruct:slime_congealed:3>],
    [null, <moreplates:gaia_spirit_plate>, <minecraft:stonebrick>, <moreplates:gaia_spirit_plate>, null],
    [null, <minecraft:stonebrick>, <naturesaura:token_fear>, <minecraft:stonebrick>, null],
    [null, <moreplates:gaia_spirit_plate>, <minecraft:stonebrick>, <moreplates:gaia_spirit_plate>, null],
    [<tconstruct:slime_congealed:3>, null, null, null, <tconstruct:slime_congealed:3>]])
  .addOutput(<bloodmagic:altar>)
  .create();

//铁匠工作台
RecipeBuilder.get("engineer")
  .setShaped([
    [<contenttweaker:solid_steel_machine_casing>, null, null, null, <contenttweaker:solid_steel_machine_casing>],
    [null, <botania:dreamwood:5>, <bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <botania:dreamwood:5>, null],
    [null, <contenttweaker:assembly_core>, <ic2:resource:12>, <contenttweaker:assembly_core>, null],
    [null, <botania:dreamwood:5>, <bloodmagic:slate>, <botania:dreamwood:5>, null],
    [<contenttweaker:solid_steel_machine_casing>, null, null, null, <contenttweaker:solid_steel_machine_casing>]])
  .addOutput(<artisanworktables:worktable:3>)
  .create();

//热力机器框架
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ic2:crafting:3>, <ic2:dust:6>, <ic2:crafting:3>],
    [<ic2:dust:6>, <moreplates:manyullyn_gear>, <ic2:dust:6>],
    [<ic2:crafting:3>, <ic2:dust:6>, <ic2:crafting:3>]])
  .addTool(<ore:artisansSolderer>,20)
  .addOutput(<thermalexpansion:frame>)
  .create();

//金属成型机
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ic2:forge_hammer>, <ore:circuitBasic>, <ic2:cutter>],
    [<thermalfoundation:material:1025>, <ic2:resource:12>, <thermalfoundation:material:1024>],
    [<ic2:crafting:5>, <ic2:crafting:5>, <ic2:crafting:5>]])
  .addOutput(<ic2:te:55>)
  .addTool(<ore:artisansCutters>,50)
  .setFluid(<liquid:lubricant> * 1000)
  .create();

//谐振升级套件
RecipeBuilder.get("mage")
  .setShaped([
    [null, <thermalfoundation:material:167>, null],
    [<thermalfoundation:material:167>, <contenttweaker:potato_core>, <thermalfoundation:material:167>],
    [<bloodmagic:slate:1>, <thermalfoundation:material:167>, <bloodmagic:slate:1>]])
  .setFluid(<liquid:pyrotheum> * 1000)
  .addTool(<ore:artisansHammer>,80)
  .addOutput(<thermalfoundation:upgrade:3> * 2)
  .create();

//合成单元
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<ic2:crafting:3>, <appliedenergistics2:material:22>, <ic2:crafting:3>],
    [<appliedenergistics2:part:16>, <contenttweaker:potato_core>, <appliedenergistics2:part:16>],
    [<ic2:crafting:3>, <appliedenergistics2:material:23>, <ic2:crafting:3>]])
  .setFluid(<liquid:refined_fuel> * 1000)
  .addTool(<ore:artisansLens>,15)
  .addOutput(<appliedenergistics2:crafting_unit>)
  .create();

//设备框架
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<tconstruct:ingots>, <ore:circuitAdvanced>, <tconstruct:ingots>],
    [<ore:blockGlass>, <moreplates:gaia_spirit_gear>,<ore:blockGlass>],
    [<tconstruct:ingots>, <ore:circuitAdvanced>, <tconstruct:ingots>]])
  .setFluid(<liquid:refined_fuel> * 1000)
  .addOutput(<thermalexpansion:frame:64>)
  .addTool(<ore:artisansSpanner>,80)
  .addTool(<ore:artisansCutters>,10)
  .create();

//柴堆
RecipeBuilder.get("mage")
  .setShaped([
    [<botania:livingwood>, <bloodmagic:component:1>, <botania:livingwood>],
    [<ic2:crafting:18>, <contenttweaker:potato_core>, <ic2:crafting:18>],
    [<bloodmagic:blood_rune>, <thermalexpansion:frame:64>, <bloodmagic:blood_rune>]])
  .setFluid(<liquid:ic2biogas> * 1000)
  .addOutput(<roots:pyre>)
  .addTool(<ore:artisansGrimoire>,5)
  .create();

//me控制器(未完成)
RecipeBuilder.get("engineer")
  .setShaped([
    [<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_block>],
    [<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:material:24>, <ic2:crafting:2>, <appliedenergistics2:material:24>, <appliedenergistics2:quartz_vibrant_glass>],
    [<appliedenergistics2:fluix_block>, <ic2:crafting:2>, <ic2:resource:13>, <ic2:crafting:2>, <appliedenergistics2:fluix_block>],
    [<appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:material:24>, <ic2:crafting:2>, <appliedenergistics2:material:24>, <appliedenergistics2:quartz_vibrant_glass>],
    [<appliedenergistics2:quartz_block>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:fluix_block>, <appliedenergistics2:quartz_vibrant_glass>, <appliedenergistics2:quartz_block>]])
  .addTool(<ore:artisansHammer>, 50)
  .addTool(<ore:artisansLens>, 50)
  .addTool(<ore:artisansSolderer>, 50)
  .addOutput(<contenttweaker:me_controller_unfinished> * 3)
  .create();

//光刻机控制器
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:rose_gold_plate>, <contenttweaker:mana_essence>, <contenttweaker:rose_gold_plate>],
    [<ore:circuitElite>, <contenttweaker:smile_block>, <ore:circuitElite>],
    [<contenttweaker:rose_gold_plate>, <contenttweaker:mana_essence>, <contenttweaker:rose_gold_plate>]])
  .setFluid(<liquid:pyrotheum> * 4000)
  .addTool(<ore:artisansLens>, 100)
  .addOutput(<modularmachinery:lithography_machine_controller>)
  .create();

//简易合金炉
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<contenttweaker:cupronickel_plate>, <ic2:crafting:2>, <contenttweaker:cupronickel_plate>],
    [<ic2:te:44>, <enderio:item_material>, <ic2:te:44>],
    [<contenttweaker:cupronickel_plate>, <contenttweaker:motor_mk1>, <contenttweaker:cupronickel_plate>]])
  .setFluid(<liquid:refined_fuel> * 2000)
  .addTool(<ore:artisansSpanner>, 200)
  .addOutput(<enderio:block_simple_alloy_smelter>)
  .create();

//玻璃切割刀
  RecipeBuilder.get("mage")
  .setShaped([
    [null, <thermalfoundation:material:160>, <enderio:block_fused_quartz>],
    [null, <botania:manaresource:3>, <thermalfoundation:material:160>],
    [<enderio:block_fused_quartz>, null, null]])
  .setFluid(<liquid:water> * 1000)
  .addTool(<ore:artisansPunch>, 50)
  .addOutput(<extrautils2:glasscutter>)
  .create();

//工业涂料
RecipeBuilder.get("mage")
  .setShaped([
    [<enderio:item_material:50>, <contenttweaker:fire_essence>, <enderio:item_material:48>],
    [<contenttweaker:fire_essence>, <extrautils2:ingredients>, <contenttweaker:fire_essence>],
    [<enderio:item_material:48>, <contenttweaker:fire_essence>, <enderio:item_material:50>]])
  .addTool(<ore:artisansMortar>, 30)
  .addOutput(<enderio:item_material:51> * 2)
  .create();

//次级血晶粉
RecipeBuilder.get("mage")
  .setShapeless([<contenttweaker:blood_crystal>, <contenttweaker:blood_crystal>])
  .setFluid(<liquid:liquid_enhance_magic> * 10)
  .addTool(<ore:artisansMortar>, 20)
  .addOutput(<contenttweaker:blood_crystal_dust>)
  .create();

//奥席金属
RecipeBuilder.get("jeweler")
  .setShaped([
    [<contenttweaker:rose_gold_dust>, <thermalfoundation:material:102>, <contenttweaker:rose_gold_dust>],
    [<thermalfoundation:material:98>, <thermalfoundation:material:1025>, <thermalfoundation:material:98>],
    [<contenttweaker:rose_gold_dust>, <thermalfoundation:material:102>, <contenttweaker:rose_gold_dust>]])
  .setFluid(<liquid:refined_fuel> * 75)
  .addTool(<ore:artisansMortar>, 10)
  .addTool(<ore:artisansBeaker>, 15)
  .addOutput(<contenttweaker:aoxi_metal> * 2)
  .create();

//流光水晶
RecipeBuilder.get("jeweler")
  .setShaped([
    [<enderio:item_material:52>, <enderio:item_material:36>, <enderio:item_material:52>],
    [<enderio:item_material:35>, <appliedenergistics2:material:1>, <enderio:item_material:35>],
    [<enderio:item_material:52>, <enderio:item_material:36>, <enderio:item_material:52>]])
  .setFluid(<liquid:petrotheum> * 200)
  .addTool(<ore:artisansGemCutter>, 20)
  .addTool(<ore:artisansHammer>, 40)
  .addOutput(<contenttweaker:hikari_gem>)
  .create();

//叶绿晶体
RecipeBuilder.get("jeweler")
  .setShaped([
    [<roots:terra_moss>, <enderio:item_material:48>, <roots:terra_moss>],
    [<contenttweaker:growth_essence>, <environmentaltech:litherite_crystal>, <contenttweaker:growth_essence>],
    [<roots:terra_moss>, <enderio:item_material:48>, <roots:terra_moss>]])
  .setFluid(<liquid:cryotheum> * 200)
  .addTool(<ore:artisansPliers>, 15)
  .addTool(<ore:artisansGemCutter>, 20)
  .addOutput(<contenttweaker:green_gem>)
  .create();

//蓬莱之晶体
RecipeBuilder.get("jeweler")
  .setShaped([
    [<extrautils2:ingredients:3>, <extrautils2:ingredients:3>, <extrautils2:ingredients:3>],
    [<extrautils2:ingredients:3>, <contenttweaker:mysterious_gems>, <extrautils2:ingredients:3>],
    [<extrautils2:ingredients:3>, <extrautils2:ingredients:3>, <extrautils2:ingredients:3>]])
  .addTool(<ore:artisansLens>, 10)
  .addTool(<ore:artisansGemCutter>, 30)
  .addOutput(<contenttweaker:penglai_gem>)
  .create();

# 一级虚空矿物采掘机控制器
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<environmentaltech:litherite>, <ore:circuitElite>, <environmentaltech:litherite>],
    [<environmentaltech:litherite>, <environmentaltech:diode>, <environmentaltech:litherite>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]])
  .setFluid(<liquid:glowstone> * 1500)
  .addTool(<ore:artisansCutters>, 20)
  .addTool(<ore:artisansSolderer>, 150)
  .addOutput(<environmentaltech:void_ore_miner_cont_1>)
  .create();

//研钵
  RecipeBuilder.get("mason")
  .setShaped([
    [<extrautils2:decorativesolid:3>, null, null, null, <extrautils2:decorativesolid:3>],
    [<extrautils2:decorativesolid:3>, null, null, null, <extrautils2:decorativesolid:3>],
    [<extrautils2:decorativesolid:3>, null, null, null, <extrautils2:decorativesolid:3>],
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <contenttweaker:basic_intergrowth_dust>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
    [null, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, null]])
  .setFluid(<liquid:petrotheum> * 3000)
  .addTool(<ore:artisansChisel>, 500)
  .addTool(<ore:artisansTrowel>, 300)
  .addTool(<ore:artisansCarver>, 400)
  .addOutput(<roots:mortar>)
  .create();

# 简易电炉
RecipeBuilder.get("blacksmith")
  .setShaped([
    [<thermalfoundation:material:354>, <contenttweaker:aoxi_processor>, <thermalfoundation:material:354>],
    [<ic2:te:46>, <enderio:item_material>, <ic2:te:46>],
    [<thermalfoundation:material:354>, <contenttweaker:motor_mk1>, <thermalfoundation:material:354>]])
  .addTool(<ore:artisansSpanner>, 200)
  .addOutput(<enderio:block_simple_furnace>)
  .create();

# 仪式石
RecipeBuilder.get("mason")
  .setShaped([
    [<bloodmagic:decorative_brick>, null, <contenttweaker:basic_intergrowth_dust>, null, <bloodmagic:decorative_brick>],
    [null, <extrautils2:decorativesolid:3>, <bloodmagic:slate:3>, <extrautils2:decorativesolid:3>, null],
    [<contenttweaker:basic_intergrowth_dust>, <bloodmagic:slate:3>, <contenttweaker:bedrock_core>, <bloodmagic:slate:3>, <contenttweaker:basic_intergrowth_dust>],
    [null, <extrautils2:decorativesolid:3>, <bloodmagic:slate:3>, <extrautils2:decorativesolid:3>, null],
    [<bloodmagic:decorative_brick>, null, <contenttweaker:penglai_gem>, null, <bloodmagic:decorative_brick>]])
  .setFluid(<liquid:growth> * 1000)
  .addTool(<ore:artisansCarver>, 80)
  .addTool(<ore:artisansGrimoire>, 150)
  .addTool(<ore:artisansLens>, 35)
  .addOutput(<bloodmagic:ritual_stone> * 16)
  .create();

# 机械通风口
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <minecraft:iron_bars>, null],
    [<minecraft:iron_bars>, <modularmachinery:blockcasing:4>, <minecraft:iron_bars>],
    [null, <minecraft:iron_bars>, null]])
  .setFluid(<liquid:lubricant> * 200)
  .addTool(<ore:artisansGroover>, 250)
  .addTool(<ore:artisansDriver>, 20)
  .addOutput(<modularmachinery:blockcasing:1>)
  .create();

# 炼金术桌
RecipeBuilder.get("mage")
  .setShaped([
    [null, <botania:vial:1>, null, <botania:vial>, null],
    [<contenttweaker:middle_intergrowth_dust>, <thermalfoundation:material:1024>, <contenttweaker:mana_essence>, <thermalfoundation:material:1024>, <contenttweaker:middle_intergrowth_dust>],
    [<tconevo:metal_block:5>, <moreplates:end_steel_plate>, <contenttweaker:mystical_source>, <moreplates:end_steel_plate>, <tconevo:metal_block:5>],
    [<tconevo:metal_block:5>, <enderio:block_dark_iron_bars>, <extrautils2:decorativesolid:3>, <enderio:block_dark_iron_bars>, <tconevo:metal_block:5>],
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]])
  .setFluid(<liquid:ender_distillation> * 5000)
  .addTool(<ore:artisansChisel>, 1500)
  .addTool(<ore:artisansGrimoire>, 500)
  .addTool(<ore:artisansBeaker>, 800)
  .addOutput(<bloodmagic:alchemy_table>)
  .create();

# 药剂师工作台
  RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:luna_dust>, null, null, null, <contenttweaker:luna_dust>],
    [<botania:dreamwood:5>, <botania:dreamwood>, <botania:dreamwood:5>, <botania:dreamwood>, <botania:dreamwood:5>],
    [null, <enderio:block_alloy:6>, <enderio:item_material:56>, <enderio:block_alloy:6>, null],
    [null, <enderio:block_alloy:6>, <enderio:item_material:12>, <enderio:block_alloy:6>, null],
    [<contenttweaker:growth_dust>, <tconevo:metal_block:5>, <contenttweaker:blood_crystal_empowered>, <tconevo:metal_block:5>, <contenttweaker:growth_dust>]])
  .setFluid(<liquid:growth> * 2000)
  .addTool(<ore:artisansLens>, 30)
  .addTool(<ore:artisansGrimoire>, 500)
  .addTool(<ore:artisansQuill>, 80)
  .addOutput(<artisanworktables:worktable:9>)
  .create();

# 效率符文
RecipeBuilder.get("mage")
  .setShaped([
    [<extrautils2:decorativesolid:3>, <bloodmagic:slate:1>, <extrautils2:decorativesolid:3>],
    [<contenttweaker:aoxi_metal>, <bloodmagic:blood_rune>, <contenttweaker:aoxi_metal>],
    [<extrautils2:decorativesolid:3>, <bloodmagic:slate:1>, <extrautils2:decorativesolid:3>]])
  .addTool(<ore:artisansGrimoire>, 20)
  .addTool(<ore:artisansChisel>, 75)
  .addOutput(<bloodmagic:blood_rune:2>)
  .create();

# 造石机控制器
RecipeBuilder.get("engineer")
  .setShaped([
    [<thermalfoundation:material:163>, <thermalfoundation:material:160>, <thermalfoundation:material:163>],
    [<thermalfoundation:material:160>, <tconstruct:seared_tank>, <thermalfoundation:material:160>],
    [<thermalfoundation:material:163>, <thermalfoundation:material:160>, <thermalfoundation:material:163>]])
  .setFluid(<liquid:creosote> * 2000)
  .addTool(<ore:artisansGroover>, 30)
  .addOutput(<modularmachinery:stone_machine_controller>)
  .create();

# 聚合粘土
RecipeBuilder.get("chemist")
  .setShaped([
    [<contenttweaker:luna_dust>, <contenttweaker:roots_dust>, null],
    [<contenttweaker:roots_dust>, <contenttweaker:middle_intergrowth_dust>, <contenttweaker:roots_dust>],
    [null, <contenttweaker:roots_dust>, <contenttweaker:growth_dust>]])
  .setFluid(<liquid:xu_demonic_metal> * 288)
  .addOutput(<deepmoblearning:polymer_clay> * 16)
  .create();

//魔法水晶
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <ore:ingotSteel>, null],
    [<botania:manaresource>, <botania:manaresource:2>, <botania:manaresource>],
    [null, <ore:ingotSteel>, null]])
  .addTool(<ore:artisansChisel>, 1)
  .addOutput(<botania:pylon>)
  .create();

//窑砖
RecipeBuilder.get("mason")
  .setShaped([
    [<minecraft:brick>, <minecraft:sandstone>, <minecraft:brick>],
    [<minecraft:sandstone>, <tconstruct:soil>, <minecraft:sandstone>],
    [<minecraft:brick>, <minecraft:sandstone>, <minecraft:brick>]])
  .setFluid(<liquid:creosote> * 250)
  .addTool(<ore:artisansTrowel>, 1)
  .addOutput(<immersiveengineering:stone_decoration:10> * 2)
  .create();

//工程师锤
RecipeBuilder.get("engineer")
  .setShaped([
    [null, <naturesaura:sky_ingot>, <minecraft:iron_block>],
    [<totemic:buffalo_items>, <immersiveengineering:material:1>, <naturesaura:sky_ingot>],
    [<immersiveengineering:material:1>, <totemic:buffalo_items>, null]])
  .addOutput(<immersiveengineering:tool>)
  .create();

//低压线圈
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>],
    [<immersiveengineering:material:20>, <ore:stickWood>, <immersiveengineering:material:20>],
    [<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>]])
  .addOutput(<immersiveengineering:wirecoil>*3)  
  .addTool(<ore:artisansCutters>, 5.0)
  .create();

//中压线圈
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>],
    [<immersiveengineering:material:21>, <minecraft:stick>, <immersiveengineering:material:21>],
    [<immersiveengineering:material:21>, <immersiveengineering:material:21>, <immersiveengineering:material:21>]])
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<immersiveengineering:wirecoil:1>*3)
  .create();

//高压线圈
RecipeBuilder.get("engineer")
  .setShaped([
    [<immersiveengineering:material:23>, <immersiveengineering:material:22>, <immersiveengineering:material:23>],
    [<immersiveengineering:material:22>, <minecraft:stick>, <immersiveengineering:material:22>],
    [<immersiveengineering:material:23>, <immersiveengineering:material:22>, <immersiveengineering:material:23>]])
  .addTool(<ore:artisansCutters>, 5)
  .addOutput(<immersiveengineering:wirecoil:2>*3)
  .create();

//轻型工程块
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotIron>, <immersiveengineering:material:8>, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiveengineering:metal_decoration0:4> * 2)
  .create();

//重型工程块
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotSteel>, <immersiveengineering:material:9>, <ore:ingotSteel>],
    [<minecraft:piston>, <ore:ingotElectrum>, <minecraft:piston>],
    [<ore:ingotSteel>, <immersiveengineering:material:9>, <ore:ingotSteel>]])
  .addTool(<ore:artisansHammer>, 10)
  .addOutput(<immersiveengineering:metal_decoration0:5> * 2)
  .create();

//红石工程块
RecipeBuilder.get("engineer")
  .setShaped([
    [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>],
    [<minecraft:redstone>, <ore:blockCopper>, <minecraft:redstone>],
    [<ore:ingotIron>, <minecraft:redstone>, <ore:ingotIron>]])
  .addTool(<ore:artisansHammer>, 20)
  .addOutput(<immersiveengineering:metal_decoration0:3> * 2)
  .create();

//装配机控制器
RecipeBuilder.get("engineer")
  .setShaped([
    [<modularmachinery:itemmodularium>, <modularmachinery:blockcasing:4>, <modularmachinery:itemmodularium>],
    [<modularmachinery:blockcasing:4>, <immersiveengineering:storage:8>, <modularmachinery:blockcasing:4>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockcasing:4>, <modularmachinery:itemmodularium>]])
  .setFluid(<liquid:lubricant> * 250)
  .addOutput(<modularmachinery:assembly_machine_controller>)
  .create();

//盖亚模拟室控制器
RecipeBuilder.get("engineer")
  .setShaped([
    [<modularmachinery:blockcasing:4>, <extrabotany:material:1>, <immersiveengineering:material:27>, <extrabotany:material:1>, <modularmachinery:blockcasing:4>],
    [<modularmachinery:blockcasing:4>, null, null, null, <modularmachinery:blockcasing:4>],
    [<botania:manaresource:14>, null, null, null, <botania:manaresource:14>],
    [<modularmachinery:blockcasing:4>, <extrautils2:spike_diamond>, <extrautils2:spike_diamond>, <extrautils2:spike_diamond>, <modularmachinery:blockcasing:4>],
    [<modularmachinery:blockcasing:4>, <extrabotany:material:1>, <immersiveengineering:material:27>, <extrabotany:material:1>, <modularmachinery:blockcasing:4>]])
  .setFluid(<liquid:fluidedmana> * 500)
  .addOutput(<modularmachinery:gaia_simulation_room_controller>)
  .create();

//能源接收器
RecipeBuilder.get("engineer")
  .setShaped([
    [<minecraft:quartz>, <ore:plateIron>, <minecraft:quartz_block>, <ore:plateIron>, <minecraft:quartz>],
    [<ore:plateIron>, <appliedenergistics2:material:7>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:7>, <ore:plateIron>],
    [<minecraft:quartz_block>, <appliedenergistics2:quartz_glass>, <ic2:resource:12>, <appliedenergistics2:quartz_glass>, <minecraft:quartz_block>],
    [<ore:plateIron>, <ore:crystalFluix>, <appliedenergistics2:quartz_glass>, <appliedenergistics2:material:7>, <ore:plateIron>],
    [<minecraft:quartz>, <ore:plateIron>, <minecraft:quartz_block>, <ore:plateIron>, <minecraft:quartz>]])
  .addOutput(<appliedenergistics2:energy_acceptor>)
  .create();

//荧石种子
RecipeBuilder.get("mage")
  .setShaped([
    [<mysticalagriculture:nether_seeds>]])
  .setFluid(<liquid:glowstone> * 4000)
  .addTool(<ore:artisansGrimoire>, 1024)
  .addOutput(<mysticalagriculture:glowstone_seeds>)
  .create();