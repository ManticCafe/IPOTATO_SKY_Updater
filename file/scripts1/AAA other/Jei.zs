import mods.jei.JEI;
import crafttweaker.item.IItemStack;
import mods.randomtweaker.jei.IJeiPanel;
import mods.randomtweaker.jei.IJeiUtils;
import mods.randomtweaker.jei.IJeiRecipe;

val BanItem  = [
    <mekanism:transmitter:3>,
    <botania:specialflower>.withTag({type: "orechid"}),
    <mekanism:transmitter:3>.withTag({tier: 3}),
    <mekanism:transmitter:3>.withTag({tier: 2}),
    <mekanism:transmitter:3>.withTag({tier: 1}),
    <botania:floatingspecialflower>.withTag({type: "orechid"}),
    <exnihilocreatio:item_ore_yellorium:1>,
    <exnihilocreatio:item_ore_yellorium>,
    <mekanism:transmitter:1>.withTag({tier: 0}),
    <mekanism:transmitter:1>.withTag({tier: 1}),
    <mekanism:transmitter:1>.withTag({tier: 2}),
    <mekanism:transmitter:1>.withTag({tier: 3}),
    <randomthings:enderletter>,
    <enderio:block_simple_sag_mill>,
    <exnihilocreatio:item_ore_osmium:2>,
    <exnihilocreatio:item_ore_osmium:3>,
    <excompressum:bait>,
    <excompressum:bait:1>,
    <excompressum:bait:2>,
    <excompressum:bait:3>,
    <excompressum:bait:4>,
    <excompressum:bait:5>,
    <excompressum:bait:6>,
    <excompressum:bait:7>,
    <excompressum:bait:8>,
    <excompressum:bait:9>,
    <excompressum:bait:10>,
    <excompressum:bait:11>,
    <excompressum:bait:12>,
    <thermalexpansion:satchel>,
    <thermalexpansion:satchel:2>,
    <thermalexpansion:satchel:1>,
    <thermalexpansion:satchel:3>,
    <thermalexpansion:satchel:4>,
    <thermalexpansion:satchel:100>,
    <appliedenergistics2:spatial_pylon>,
    <appliedenergistics2:spatial_io_port>,
    <appliedenergistics2:material:32>,
    <appliedenergistics2:material:33>,
    <appliedenergistics2:material:34>,
    <appliedenergistics2:spatial_storage_cell_2_cubed>,
    <appliedenergistics2:spatial_storage_cell_16_cubed>,
    <appliedenergistics2:spatial_storage_cell_128_cubed>,
    <ic2:te:36>,
    <ic2:te:60>,
    <ic2:te:57>,
    <appliedenergistics2:portable_cell>,
    <appliedenergistics2:matter_cannon>,
    <appliedenergistics2:part:320>,
    <appliedenergistics2:part:300>,
    <extracells:part.base:6>,
    <appliedenergistics2:part:321>,
    <extracells:part.base:5>,
    <appliedenergistics2:part:302>,
    <appliedenergistics2:part:301>,
    <appliedenergistics2:entropy_manipulator>,
    <appliedenergistics2:charged_staff>,
    <botania:laputashard>,<botania:laputashard:1>,<botania:laputashard:2>,<botania:laputashard:3>,<botania:laputashard:4>,<botania:laputashard:5>,<botania:laputashard:6>,<botania:laputashard:7>,<botania:laputashard:8>,<botania:laputashard:9>,<botania:laputashard:10>,<botania:laputashard:11>,<botania:laputashard:12>,<botania:laputashard:13>,<botania:laputashard:14>,<botania:laputashard:15>,<botania:laputashard:16>,<botania:laputashard:17>,<botania:laputashard:18>,<botania:laputashard:19>,
    <botania:blackholetalisman>,
    <botania:lens:16>,
    <botania:managun>,
    <botania:floatingspecialflower>.withTag({type: "rannuncarpus"}),
    <botania:floatingspecialflower>.withTag({type: "rannuncarpusChibi"}),
    <appliedenergistics2:io_port>,
    <extrautils2:crafter>,
    <extrautils2:terraformer:9>,
    <extrautils2:terraformer:8>,
    <extrautils2:terraformer:7>,
    <extrautils2:terraformer:6>,
    <tconstruct:throwball:1>,
    <botania:manabomb>,
    <ftbquests:screen>,
    <thermalexpansion:cache>,
    <extrautils2:terraformer>,
    <ic2:dynamite>,
    <ic2:dynamite_sticky>,
    <botania:enderhand>,
    <ic2:te:89>,
    <ic2:te:88>,
    <ic2:te:82>,
    //<extrautils2:quarry>,
    //<extrautils2:quarryproxy>,
    <ic2:mining_laser>,
    <extrautils2:terraformer:1>,
    <extrautils2:terraformer:2>,
    <extrautils2:terraformer:4>,
    <extrautils2:terraformer:3>,
    <extrautils2:terraformer:5>,
    <excompressum:compressed_block:4>,
    // <modularmachinery:stone_machine_controller>,
    <modularrouters:module:3>,
    <modularrouters:module:4>,
    <modularrouters:module:10>,
    <modularrouters:module:11>,
    <modularrouters:module:13>,
    <super_solar_panels:crafting:12>,
    <super_solar_panels:crafting:14>,
    <enderio:block_painter>,
    <randomthings:playerinterface>,
    <actuallyadditions:block_player_interface>,
    <mekanism:robit>,
    <actuallyadditions:block_empowerer>,
    <actuallyadditions:item_spawner_changer>,
    <actuallyadditions:block_display_stand>,
    <actuallyadditions:block_miner>,
    <actuallyadditions:item_bag>,
    <actuallyadditions:item_void_bag>,
    <actuallyadditions:item_player_probe>,
    <industrialforegoing:block_placer>,
    <openblocks:block_placer>,
    <actuallyadditions:block_furnace_solar>,
    <mekanismgenerators:generator>,
    <extrautils2:angelring:1>,
    <extrautils2:angelring:2>,
    <extrautils2:angelring:3>,
    <extrautils2:angelring:4>,
    <extrautils2:angelring:5>,
    <extrabotany:natureorb>,
    <extrabotany:rewardbag943>.withTag({weight: 171})

] as IItemStack[];


for i in BanItem{
    JEI.hide(i);
    recipes.remove(i);
    furnace.remove(i);
    mods.jei.JEI.addDescription(i,"§4物品已被禁用或弃用");
    i.addTooltip("§4物品已被禁用或弃用");
}
//复制机JEI
function uujei(input as IItemStack, uufluid as string){
    JEI.createJei("Replicator", "UU复制")
        .setModid("IndustrialCraft 2")
        .setIcon(<ic2:misc_resource:3>) 
        .setBackground(IJeiUtils.createBackground(150, 50))
        .addRecipeCatalyst(<ic2:te:63>) 
        .addSlot(IJeiUtils.createItemSlot("输入物品", 65, 10, true))
        .addElement(IJeiUtils.createFontInfoElement("所需", 40, 40, 0x52575B))
        .addElement(IJeiUtils.createFontInfoElement("UU物质液体", 90, 40, 0x52575B))
        .register();    

    JEI.createJeiRecipe("Replicator")
        .addElement(IJeiUtils.createFontInfoElement(uufluid + "MB", 65, 40, 0xFF00FF))
        .addInput(input)
        .addOutput(input)
        .build();
}

uujei(<mysticalagriculture:crafting:5>,"0.2");
/*uujei(<thermalfoundation:material:160>,"0.7486");
uujei(<thermalfoundation:material:128>,"0.7673");
uujei(<thermalfoundation:material:131>,"4.803");
uujei(<ic2:nuclear:10>,"964.8");
uujei(<ic2:nuclear>,"33.13");*/

//删除锇矿石碎片
JEI.hide(<contenttweaker:upgrade_type>);
JEI.hide(<exnihilocreatio:item_ore_osmium>);
//删除锇矿石碎块
JEI.hide(<exnihilocreatio:item_ore_osmium:1>);
//删除锇矿
JEI.hide(<mekanism:oreblock>);
//删除铂原矿
JEI.hide(<thermalfoundation:ore:6>);
//删除钯原矿
JEI.hide(<taiga:palladium_ore>);
//删除铱锇碎块碎片
JEI.hide(<thermalfoundation:ore:7>);
JEI.hide(<exnihilocreatio:item_ore_osmium>);
JEI.hide(<exnihilocreatio:item_ore_osmium:1>);
//other
JEI.hide(<randomthings:itemcollector>);
JEI.hide(<randomthings:advanceditemcollector>);
JEI.hide(<naturesaura:ender_crate>);
JEI.hide(<modularmachinery:stone_machine_controller>);
JEI.hide(<exnihilocreatio:item_seed_rubber>);

JEI.hide(<extendedae:infinity_cell>.withTag({r: {Craft: 0, Cnt: 1, id: "minecraft:cobblestone", Count: 1, Damage: 0, Req: 0}, t: "i"}));
//tooltips
JEI.addDescription(<taiga:palladium_ore>,"已被禁用,请从铂系处理中获取");
JEI.addDescription(<contenttweaker:low_ticket>,"击杀僵尸、蜘蛛、骷髅、苦力怕有1%概率掉落,击杀末影人有5%概率掉落。");
JEI.addDescription(<modularmachinery:stone_machine_controller>,"已弃用");
JEI.addDescription(<extrautils2:angelring>,"§a连续签到15天可在菜单中用游戏币兑换");
JEI.addDescription(<modularmachinery:stone_machine_1_controller>,"放下后默认产出4个圆石，但与平常的造石机不同的是，他可以在添加升级后在机器内部进行二次加工。他可以像工业先锋mod的造石加工机一样，放入升级后可执行烧制、粉碎操作。");
JEI.addDescription(<modularmachinery:stone_machine_1_controller>,"例如，升级总线放入粉碎升级1个后，会进行粉碎操作，此时输出会变成砂砾，放入两个粉碎升级后，会输出沙子。如果输出的物品可熔炼，放入熔炼升级会执行一次熔炼操作，此时输出的物品会变成熔炼后的，比如沙子会变成玻璃。如果输出的物品不可被熔炼，则输出物品不变（熔炼升级无效）");
JEI.addDescription(<modularmachinery:particle_collider_factory_controller>,"==============粒子对撞机==============\n消耗RF对粒子进行加速\n最大能量存储：536870912\nRF输入效率：8192RF/tick \n冷却液最大输入效率：16384mb/tick \n热冷却液最大输出效率：16384mb/tick \n最低温度：-273K \n预警温度：18446744073709K \n最大温度：27670116110563K \n最大粒子速度：74948114m/s \n========================================\n当温度超过预警温度的125%时，配方成功率将随\n温度提高降低,热冷却液产出将随温度提高而提高\n默认配方成功率：75% 最大配方成功率：100% \n最低成功率：25% 最大热冷却液产出：150%\n========================================\n可用冷却液：\n水：产出蒸汽（产出比例1:1）\n极寒之凛冰：产出无\nIC2冷却液：产出热冷却液（产出比例1:1）\nUU物质：产出超态UU物质(产出比例1:3)\n========================================\n可用升级：\n稳定升级：增加配方成功率\n冷却升级：增加每mb冷却液冷却能力\n超频升级：增加配方速度，但增加热量\n速度升级：增加粒子加速速度，但是增加耗电\n超导升级：增加RF传输速度\n散热升级：增加冷却液与热冷却液传输的速度\n========================================");

//name
<actuallyadditions:block_misc:9>.displayName = "铱制外壳";