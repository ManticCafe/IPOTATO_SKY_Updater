
import crafttweaker.formatting.IFormattedText;
import crafttweaker.item.IItemStack;

##priority 1000
<contenttweaker:ipotato>.addTooltip("§a土豆六根之一,土豆的灵魂被分散并封印其中");
<modularmachinery:stone_machine_controller>.addTooltip("§c已弃用");
<contenttweaker:tomori>.addTooltip("§a高松灯也是灯！！！！！");
<contenttweaker:tomori_notebook>.addTooltip("§a唉，木柜子");
<contenttweaker:potato_core>.addTooltip("§a来自异域的土豆");
<contenttweaker:kurata_mashiro>.addTooltip("§a古希腊掌管灵感菇的神");
<contenttweaker:standard_stencil_stencil>.addTooltip("§a太伟大了DJ2");
<contenttweaker:smile_block>.addTooltip("§eHappy！Lucky！Smile！Yeah！");
<contenttweaker:mashiro_block>.addTooltip("§9超级天音波");
<contenttweaker:blood_cryotheum>.addTooltip("§4固化出的粉晶");
<contenttweaker:blood_crystal>.addTooltip("§5魔法产物(?)");
<contenttweaker:blood_crystal_up>.addTooltip("§4深不可测的秘密之结晶");
<contenttweaker:extreme_unstable_redcrystal>.addTooltip("§5科技魔法结合之物");
<contenttweaker:mana_essence>.addTooltip("§a可丢进魔力池转化魔力，产能为暗黑莲花的一半");
<contenttweaker:sky_essence>.addTooltip("§a可丢进魔力池转化魔力，产能为黑莲花的两倍");
<naturesaura:sky_ingot>.addTooltip("§a可丢进魔力池转化魔力，产能同等于黑莲花");
<extrautils2:resonator>.addTooltip("§8深渊之力");
<contenttweaker:penglai_gem>.addTooltip("§9原自永远亭泛滥的产物...");
<contenttweaker:aoxi_metal>.addTooltip("§6在战时经常当做无人机原材料");
<contenttweaker:hikari_gem>.addTooltip("§7已公开蓝图");
<contenttweaker:green_gem>.addTooltip("§2似曾相识的有机化合物...");
<randomthings:timeinabottle>.addTooltip("§e不要管什么原理了,赞美欧姆尼赛亚就完了");
<contenttweaker:roots_dust>.addTooltip("§b根源魔法高能回，来自土豆菌送给大家的情书(本模组最终物品之一)");
<contenttweaker:mystical_source>.addTooltip("§3您§6相§7信§5光§2吗§8？");
<enderio:item_basic_item_filter>.addTooltip("§9已删除，请直接合成§5大型物品过滤器");
<enderio:item_advanced_item_filter>.addTooltip("§9已删除，请直接合成§5大型物品过滤器");
<contenttweaker:luna_gem>.addTooltip("§c传闻由某古典乐之星登上太空传达歌声至月球，所产生的共鸣...");
<contenttweaker:blood_crystal_empowered>.addTooltip("§d要是早就知道桃色魔法少女会堕入黑暗...");
<contenttweaker:abyssum_gem>.addTooltip("§c来一碗煲仔饭吧！");
<contenttweaker:grow_gem>.addTooltip("§2貌似也能多翻垃圾桶找到(?)");
<extrautils2:angelring>.addTooltip("§a签到30天奖励");
<contenttweaker:tomori_controller>.addTooltip("§c§l他还在成人的路上...");
<contenttweaker:yuri_controller>.addTooltip("§d§l开局自动被动勾引附近所有姛");
<contenttweaker:low_ticket>.addTooltip("§1可在商城兑换相应的货币与物品");
<contenttweaker:basic_ticket>.addTooltip("§1可在商城兑换相应的货币与物品");
<contenttweaker:mid_ticket>.addTooltip("§1可在商城兑换相应的货币与物品");
<contenttweaker:high_ticket>.addTooltip("§1可在商城兑换相应的货币与物品");
<contenttweaker:ult_ticket>.addTooltip("§1可在商城兑换相应的货币与物品");
<contenttweaker:ex_ticket>.addTooltip("§1可在商城兑换相应的货币与物品");
<extrautils2:passivegenerator:6>.addTooltip('§1无限GP发电机');
<forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}).addTooltip("§b沉浸的精馏塔也可以获取润滑油，矿辞统一把东西合并了");
<exnihilocreatio:item_seed_rubber>.addTooltip("已弃用，请用森林仪式合成橡胶树树苗");
<exnihilocreatio:item_pebble>.addTooltip("蹲下左键泥土/草方块可获得");
<extrautils2:ingredients:8>.addTooltip("也可用于模块化机械：造石机中当做升级");
<contenttweaker:ccb>.addTooltip("§f手持§9< 大象 >§f右键获得999万§e金币");
<contenttweaker:otto_super>.addTooltip("§fWoW!!");
<contenttweaker:otto>.addTooltip("§fWoW!!");
<contenttweaker:otto_super>.displayName = "§d帅!大份!帅!";
<contenttweaker:lucky_block>.displayName = "§6幸运方块";
<contenttweaker:lucky_block>.addTooltip("§0§m幸运方块 §r §0不幸运方块");
<randomthings:timeinabottle>.addTooltip("§a任务奖励获得");
/*=================================================================通用标准码==========================================================================*/
// DRV
HCS(<contenttweaker:motor_mk1>)
    .setPackageType("DRV")
    .setFeatures("MT")
    .setLevel(6)
    .setCode(1)
    .build();

HCS(<contenttweaker:electric_piston_mk1>)
    .setPackageType("DRV")
    .setFeatures("PN")
    .setLevel(6)
    .setCode(1)
    .build();

HCS(<contenttweaker:conveyor_module_mk1>)
    .setPackageType("DRV")
    .setFeatures("TR")
    .setLevel(6)
    .setCode(1)
    .build();

HCS(<contenttweaker:robot_arm_mk1>)
    .setPackageType("DRV")
    .setFeatures("MA")
    .setLevel(6)
    .setCode(1)
    .build();

HCS(<contenttweaker:robot_arm_mk2>)
    .setPackageType("DRV")
    .setFeatures("MA")
    .setLevel(5)
    .setCode(2)
    .build();

HCS(<contenttweaker:electric_piston_mk2>)
    .setPackageType("DRV")
    .setFeatures("PN")
    .setLevel(5)
    .setCode(2)
    .build();

HCS(<contenttweaker:motor_mk2>)
    .setPackageType("DRV")
    .setFeatures("MT")
    .setLevel(5)
    .setCode(2)
    .build();

HCS(<contenttweaker:conveyor_module_mk2>)
    .setPackageType("DRV")
    .setFeatures("TR")
    .setLevel(5)
    .setCode(2)
    .build();

// UPG
HCS(<contenttweaker:upgrade_base>)
    .setPackageType("UPG")
    .setFeatures("00")
    .setLevel(7)
    .setCode(1)
    .build();
<contenttweaker:upgrade_base>.addTooltip("是所有模块化升级组件的基础部件");

HCS(<contenttweaker:upgrade_crush>)
    .setPackageType("UPG")
    .setFeatures("ST")
    .setLevel(7)
    .setCode(1)
    .setMachineLevel(2)
    .build();

HCS(<contenttweaker:upgrade_melt>)
    .setPackageType("UPG")
    .setFeatures("ST")
    .setLevel(7)
    .setCode(2)
    .setMachineLevel(2)
    .build();

HCS(<contenttweaker:upgrade_type>)
    .setPackageType("UPG")
    .setFeatures("ST")
    .setLevel(7)
    .setCode(3)
    .setMachineLevel(2)
    .build();

HCS(<contenttweaker:upgrade_stable>)
    .setPackageType("UPG")
    .setFeatures("00")
    .setLevel(6)
    .setCode(2)
    .build();
<contenttweaker:upgrade_stable>.addTooltip("可用于所有带有失败概率的机器中");
<contenttweaker:upgrade_stable>.addTooltip("放入升级总线即可降低5%的失败概率");

//PWR(eio电容分类)*/
/*=================================================================机器tooltips==========================================================================*/
/*=================================================================机器tooltips==========================================================================*/
/*=================================================================机器tooltips==========================================================================*/
function mmtooltip(item as IItemStack,chunk as int,controller_y as int,questchapter as int,xyz as string){
    if (chunk == 0){
        item.addTooltip("占地是否大于一个区块：§2否");
    }else{
        item.addTooltip("占地是否大于一个区块：§4是");
    }
    item.addTooltip("模块化整体长/宽/高：" + xyz);
    item.addTooltip("控制器离地高度：" + controller_y);//初入荒芜 古老仪式 魔法仪器 跃迁之前 原子魔法
    if (questchapter == 0){
        item.addTooltip("所在任务章节：初入荒芜" );
    }else if (questchapter == 1){
        item.addTooltip("所在任务章节：古老仪式" );
    }else if (questchapter == 2){
        item.addTooltip("所在任务章节：魔法仪器" );
    }else if (questchapter == 3){
        item.addTooltip("所在任务章节：跃迁之前" );
    }else if (questchapter == 4){
        item.addTooltip("所在任务章节：原子魔法" );
    }else if (questchapter == 5){
        item.addTooltip("所在任务章节：高新技术");
    }
}
mmtooltip(<modularmachinery:mana_liquefies_controller>,0,1,2,"§c5x5x5");
mmtooltip(<modularmachinery:kokoro_core_manufacturing_beta_controller>,0,2,3,"§c5x5x4");
mmtooltip(<modularmachinery:assembly_machine_mk2_controller>,0,1,3,"§c7x3x4");
mmtooltip(<modularmachinery:mana_infusion_controller>,0,1,2,"§c9x9x14");
mmtooltip(<modularmachinery:industrial_farm_max_controller>,0,2,3,"§c9x8x10");
mmtooltip(<modularmachinery:assembly_machine_mk3_controller>,0,3,4,"§c8x5x7");
mmtooltip(<modularmachinery:compressor_machine_controller>,0,2,3,"§c4x3x3");
mmtooltip(<modularmachinery:stone_machine_controller>,0,2,2,"§c3x3x3");
mmtooltip(<modularmachinery:assembly_machine_mini_controller>,0,1,4,"§c7x7x7");
mmtooltip(<modularmachinery:lithography_machine_controller>,0,5,3,"9x9x9");
mmtooltip(<modularmachinery:auto_mortar_controller>,0,2,4,"§c5x5x6");
mmtooltip(<modularmachinery:tree_growth_simulator_controller>,0,2,3,"§c3x3x3");
mmtooltip(<modularmachinery:assembly_machine_controller>,0,1,2,"§c7x3x4");
mmtooltip(<modularmachinery:mana_aggregator_controller>,0,1,2,"§c13x13x9");
mmtooltip(<modularmachinery:mana_production_controller>,0,4,2,"§c3x3x4");
mmtooltip(<modularmachinery:biomass_generators_controller>,0,3,4,"§c22x19x19");
mmtooltip(<modularmachinery:chemical_reactors_controller>,0,2,4,"§c5x5x4");
mmtooltip(<modularmachinery:auto_ritual_table_controller>,0,2,4,"§c5x5x7");
mmtooltip(<modularmachinery:arc_furnace_mk2_controller>,0,2,2,"§c5x5x5");
mmtooltip(<modularmachinery:elven_gate_controller>,0,2,2,"§c9x11x7");
mmtooltip(<modularmachinery:pattern_making_machine_controller>,0,2,3,"§c5x6x5");
mmtooltip(<modularmachinery:arc_furnace_controller>,0,2,2,"§c5x5x5");
mmtooltip(<modularmachinery:circuit_assembly_controller>,0,2,3,"§c5x7x6");
mmtooltip(<modularmachinery:gaia_simulation_room_controller>,0,2,2,"§c7x7x9");
mmtooltip(<modularmachinery:internal_combustion_engine_factory_controller>,0,2,2,"§c5x3x3");
mmtooltip(<modularmachinery:stone_machine_0_controller>,0,1,0,"§c3x3x3");
mmtooltip(<modularmachinery:stone_machine_1_controller>,0,1,1,"§c3x3x3");
mmtooltip(<modularmachinery:autoclave_controller>,0,3,4,"§c5x8x5");
//mmtooltip(<modularmachinery:iridescent_altar_controller>,,,,);
//mmtooltip(<modularmachinery:ritual_forest_controller>,,,,);
//mmtooltip(<modularmachinery:celestial_altar_controller>,,,,);
//mmtooltip(<modularmachinery:nature_altar_controller>,,,,);
mmtooltip(<modularmachinery:particle_collider_factory_controller>,1,3,5,"§c47x7x47");
//mmtooltip(<modularmachinery:starlight_altar_controller>,0,,,);
<modularmachinery:kokoro_core_manufacturing_beta_controller>.addTooltip("§3来自某校的荒废机型，不论是§l§5核心§3还是各种款式的§l§6零件§3，都能一网打尽哦！");
<modularmachinery:lithography_machine_controller>.addTooltip("§5来自您第一个大型构造器！");
<modularmachinery:gaia_simulation_room_controller>.addTooltip("§a明月栞那上门服务");
<modularmachinery:assembly_machine_mk3_controller>.addTooltip("§9时代跃迁,一万个不可能..");
<modularmachinery:internal_combustion_engine_factory_controller>.addShiftTooltip("描述：");
<modularmachinery:internal_combustion_engine_factory_controller>.addShiftTooltip("§e需要长期燃油供给，转速到一定速度后开始发电，发电量为转速的5倍","§b按下潜行键查看描述");
<modularmachinery:internal_combustion_engine_factory_controller>.addShiftTooltip("§e如果不是燃油充足或已实现自动化，不建议使用");
<modularmachinery:stone_machine_1_controller>.addShiftTooltip("描述：","§b按下潜行键查看描述");
<modularmachinery:stone_machine_1_controller>.addShiftTooltip("§e放下后默认产出4个圆石");
<modularmachinery:stone_machine_1_controller>.addShiftTooltip("§e但与平常的造石机不同的是");
<modularmachinery:stone_machine_1_controller>.addShiftTooltip("§e他可以在添加升级后在机器内部进行二次加工");
<modularmachinery:autoclave_controller>.addTooltip("§f似乎虚空产生蒸汽的一台结晶机器...");
<modularmachinery:particle_collider_factory_controller>.addShiftTooltip("描述：","§b按下潜行键查看描述");

<modularmachinery:particle_collider_factory_controller>.addShiftTooltip("§e===================粒子对撞机===================\n消耗RF对粒子进行加速\n最大能量存储：536870912\nRF输入效率：8192RF/tick \n冷却液最大输入效率：16384mb/tick \n热冷却液最大输出效率：16384mb/tick \n最低温度：-273K \n预警温度：18446744073709K \n最大温度：27670116110563K \n最大粒子速度：74948114m/s \n==================================================\n当温度超过预警温度的125%时,配方成功率将随温\n度提高而降低,热冷却液产出将随温度提高而提高\n默认配方成功率：75% 最大配方成功率：100% \n最低成功率：25% 最大热冷却液产出：150%\n==================================================\n可用冷却液：\n水：产出蒸汽（产出比例1:1）\n极寒之凛冰：产出无\nIC2冷却液：产出热冷却液（产出比例1:1）\nUU物质：产出超态UU物质(产出比例1:3)\n==================================================\n可用升级：\n稳定升级：增加配方成功率\n冷却升级：增加每mb冷却液冷却能力\n超频升级：增加配方速度，但增加热量\n速度升级：增加粒子加速速度，但是增加耗电\n超导升级：增加RF传输速度\n散热升级：增加冷却液与热冷却液传输的速度\n==================================================");
/*=================================================================机器类型==========================================================================*/
val st as string ="机器类型：造石机";
<modularmachinery:stone_machine_0_controller>.addTooltip(st);
<modularmachinery:stone_machine_1_controller>.addTooltip(st);

val particle_collider as string = "机器类型：粒子对撞机";
<modularmachinery:particle_collider_factory_controller>.addTooltip(particle_collider);
<modularmachinery:particle_collider_factory_controller>.addTooltip("§b鼠标滚轮操纵信息栏上下移动");
<modularmachinery:particle_collider_factory_controller>.addTooltip("§bShift+鼠标滚轮操纵信息栏左右移动");
