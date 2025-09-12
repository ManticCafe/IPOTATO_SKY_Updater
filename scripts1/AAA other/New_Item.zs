#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.IItemFoodEaten;
import mods.contenttweaker.MutableItemStack;
import mods.contenttweaker.Hand;
import mods.contenttweaker.World;
import mods.contenttweaker.IItemUpdate;
import mods.contenttweaker.Player;
import crafttweaker.player.IPlayer;
import crafttweaker.util.IRandom;
import mods.contenttweaker.IItemDestroySpeed;



val pt ="common";
val gj ="UNCOMMON";
val jy = "rare";
val zj = "EPIC";
val y as bool = true;
val n as bool = false;
val p as string = "pickaxe";
val a as string = "axe";
val s as string = "shovel";
val h as string = "hoe";
val sw = "sword";

//创建工具函数
function newitemtool (input as string,maxdamage as int,maxstacksize as int,rarity as string,toolclass as string,toollevel as int,glowing as bool) {
    val new as Item = VanillaFactory.createItem(input);
    new.maxDamage = maxdamage;
    new.maxStackSize = maxstacksize;
    new.rarity = rarity;
    new.toolClass = toolclass;
    new.toolLevel = toollevel;
    new.glowing = glowing;
    new.register();
}

//创建食物函数
function newitemfood (input as string,healamount as int,saturation as float,maxstacksize as int,rarity as string,alwaysedible as bool,glowing as bool) {
    val new as ItemFood = VanillaFactory.createItemFood(input,healamount);
    new.healAmount = healamount;
    new.saturation = saturation;
    new.maxStackSize = maxstacksize;
    new.rarity = rarity;
    new.alwaysEdible = alwaysedible;
    new.glowing  = glowing;
    new.register();
}

//创建物品函数
function newitem (input as string, maxStackSize as int, rarity as string){
    val new as Item = VanillaFactory.createItem(input);
    new.rarity = rarity;
    new.maxStackSize = maxStackSize;
    new.register();
}
// newitem(注册名,最大堆叠数,品质(pt,gj,jy,zj));

// newitemfood(注册名,回复量(状态栏中实体的鸡腿),饱食度(状态栏中虚形的鸡腿,原版我的世界中为隐藏的),最大堆叠数,品质（同上）,是否总是可以进食(y,n),是否有附魔光效(y,n));

// newitemtool(注册名,最大耐久值(小于0为物品,大于0为工具),最大堆叠数,品质（同上）,工具类型（p:镐子、a:斧子、s:铲子、h:锄头、sw:剑）,工具等级,是否有附魔光效(y,n));

//高松灯
val tomori as Item = VanillaFactory.createItem("tomori");
tomori.maxStackSize = 1;
tomori.rarity = "EPIC";
tomori.register();

//踩踩背
newitem("ccb",1,zj);

//大份
// newitemfood("otto",1,64,pt,y,n);
val otto as ItemFood  = VanillaFactory.createItemFood("otto",1);
otto.healAmount = 1;
otto.saturation = 0;
otto.maxStackSize = 64;
otto.rarity = pt;
otto.alwaysEdible = y;
otto.glowing = n;
otto.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(6000, 1));
    }
};
otto.register();

//超级大份
// newitemfood("otto_super",40,1,zj,y,y);
val otto_super as ItemFood = VanillaFactory.createItemFood("otto_super",40);
otto_super.healAmount = 40;
otto_super.saturation = 40;
otto_super.maxStackSize = 1;
otto_super.rarity = zj;
otto_super.alwaysEdible = y;
otto_super.glowing = y;
otto_super.onItemFoodEaten = function(stack, world, player) {
    if (!world.isRemote()) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(6000, 3));
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(6000, 3));
        player.sendMessage("§bWoW！！！！你感受到了力量！！！\n§e冲刺！！！冲刺！！！冲！冲！冲！");
        server.commandManager.executeCommandSilent(server, "playsound customnpcs:otto_run master @p "~player.x~" "~player.y~" "~player.z);
    }
};
otto_super.register();

//高松灯的笔记本
val tomori_notebook as Item = VanillaFactory.createItem("tomori_notebook");
tomori_notebook.maxStackSize = 1;
tomori_notebook.rarity = "EPIC";
tomori_notebook.register();

//仓田真白
val Kurata_Mashiro as Item = VanillaFactory.createItem("Kurata_Mashiro");
Kurata_Mashiro.maxStackSize = 1;
Kurata_Mashiro.rarity = "EPIC";
Kurata_Mashiro.register();

//仓田真白2
val Kurata_Mashiro2 as Item = VanillaFactory.createItem("Kurata_Mashiro2");
Kurata_Mashiro2.maxStackSize = 1;
Kurata_Mashiro2.rarity = "EPIC";
Kurata_Mashiro2.register();

//土豆
val ipotato as Item = VanillaFactory.createItem("ipotato");
ipotato.maxStackSize = 64;
ipotato.rarity = "EPIC";
ipotato.register();

//钥匙
newitem("key",64,zj);

// 寒酸票券
newitem("low_ticket",64,pt);

// 平庸票券
newitem("basic_ticket",64,pt);

// 镀金票券
newitem("mid_ticket",64,gj);

// 时代票券
newitem("high_ticket",64,jy);

// 违禁票券
newitem("ult_ticket",64,zj);

// 上古票券
newitem("ex_ticket",64,zj);

// 粉碎原生铂
newitem("native_platinum_dust",64,pt);

//铂结晶
newitem("Platinum_crystals",64,pt);

//钯晶体
newitem("Palladium_crystals",64,pt);

//铂系金属残渣
newitem("Platinum_group_metal_residues",64,pt);

// 小撮铱粉
newitem("iridium_mindust",64,pt);

//生橡胶浆
val raw_rubber_pulp as Item = VanillaFactory.createItem("raw_rubber_pulp");
raw_rubber_pulp.register();

// 源之粉
newitem("roots_dust",64,gj);

//次级血晶粉
val blood_crystal_dust as Item = VanillaFactory.createItem("blood_crystal_dust");
blood_crystal_dust.register();

//增强魔法粉
val manaup_dust as Item = VanillaFactory.createItem("manaup_dust");
manaup_dust.maxStackSize = 64;
manaup_dust.rarity = "RARE";
manaup_dust.register();

//基础共价粉
newitem("basic_intergrowth_dust",64,pt);

// 中级供价粉
newitem("middle_intergrowth_dust",64,gj);

//四氧化锇
newitem("OsO4",64,pt);

//铱金属渣
newitem("Ir2O3",64,pt);

// 富铱金属渣
newitem("Iridium_rich_metal_slag",64,pt);

// 富锇金属渣
newitem("Platinum_rich_metal_slag",64,pt);

//硅粉
newitem("Silica_fume",64,pt);

//铂泥渣
newitem("Platinum_sludge",64,pt);

//红色合金粉
val red_alloy_dust as Item = VanillaFactory.createItem("red_alloy_dust");
red_alloy_dust.register();

//白铜粉
val cupronickel_dust as Item = VanillaFactory.createItem("cupronickel_dust");
cupronickel_dust.maxStackSize = 64;
cupronickel_dust.rarity = "common";
cupronickel_dust.register();

//标准纯银粉
val sterling_silver_dust as Item = VanillaFactory.createItem("sterling_silver_dust");
sterling_silver_dust.maxStackSize = 64;
sterling_silver_dust.rarity = "common";
sterling_silver_dust.register();

//硅岩粉
val Naquadah_dust as Item = VanillaFactory.createItem("Naquadah_dust");
Naquadah_dust.register();

//塔兰金属粉
val Taranium_dust as Item = VanillaFactory.createItem("Taranium_dust");
Taranium_dust.register();

//玫瑰金粉
val rose_gold_dust as Item = VanillaFactory.createItem("rose_gold_dust");
rose_gold_dust.register();

//耐酸铝粉
val alumite_dust as Item = VanillaFactory.createItem("alumite_dust");
alumite_dust.register();

// 地之粉末
newitem("growth_dust",64,jy);

// 月之粉末
newitem("luna_dust",64,jy);

//血之粉末
val blood_cryotheum as Item = VanillaFactory.createItem("blood_cryotheum");
blood_cryotheum.maxStackSize = 64;
blood_cryotheum.rarity = "epic";
blood_cryotheum.register();

//天空精华
val sky_essence as Item = VanillaFactory.createItem("sky_essence");
sky_essence.maxStackSize = 64;
sky_essence.rarity = "common";
sky_essence.register();

//生息精华
val growth_essence as Item = VanillaFactory.createItem("growth_essence");
growth_essence.maxStackSize = 64;
growth_essence.rarity = "common";
growth_essence.register();

//金叶源质
val goldleaf_essence as Item = VanillaFactory.createItem("goldleaf_essence");
goldleaf_essence.maxStackSize = 64;
goldleaf_essence.rarity = "common";
goldleaf_essence.register();

//火之源质
val fire_essence as Item = VanillaFactory.createItem("fire_essence");
fire_essence.maxStackSize = 64;
fire_essence.rarity = "common";
fire_essence.register();

//魔力之息
val mana_essence as Item = VanillaFactory.createItem("mana_essence");
mana_essence.rarity = "RARE";
mana_essence.register();

//橡胶片
val rubber_sheet as Item = VanillaFactory.createItem("rubber_sheet");
rubber_sheet.maxStackSize = 64;
rubber_sheet.rarity = "common";
rubber_sheet.register();

//超级合金
newitem("super_alloy_plate",64,gj);

// 高耐度合金
newitem("high_strength_alloy_plate",64,pt);

//白铜板
val cupronickel_plate as Item = VanillaFactory.createItem("cupronickel_plate");
cupronickel_plate.register();

//标准纯银板
val sterling_silver_plate as Item = VanillaFactory.createItem("sterling_silver_plate");
sterling_silver_plate.register();

//硅岩板
val naquadah_plate as Item = VanillaFactory.createItem("naquadah_plate");
naquadah_plate.register();

//塔兰金属板
val taranium_plate as Item = VanillaFactory.createItem("taranium_plate");
taranium_plate.register();

//玫瑰金板
val rose_gold_plate as Item = VanillaFactory.createItem("rose_gold_plate");
rose_gold_plate.register();

//耐酸铝板
val alumite_plate as Item = VanillaFactory.createItem("alumite_plate");
alumite_plate.register();

//平庸的血之晶
val blood_crystal as Item = VanillaFactory.createItem("blood_crystal");
blood_crystal.register();

//血之晶
val blood_crystal_up as Item = VanillaFactory.createItem("blood_crystal_up");
blood_crystal_up.maxStackSize = 16;
blood_crystal_up.rarity = gj;
blood_crystal_up.register();

// 充能血之晶
newitem("blood_crystal_empowered",16,jy);

//蓬莱之晶体
val penglai_gem as Item = VanillaFactory.createItem("penglai_gem");
penglai_gem.rarity = "RARE";
penglai_gem.register();

//极度不稳定红石水晶
val extreme_unstable_redcrystal as Item = VanillaFactory.createItem("extreme_unstable_redcrystal");
extreme_unstable_redcrystal.maxStackSize = 64;
extreme_unstable_redcrystal.rarity = "EPIC";
extreme_unstable_redcrystal.register();

//混合魔力水晶
val mysterious_gems as Item = VanillaFactory.createItem("mysterious_gems");
mysterious_gems.maxStackSize = 64;
mysterious_gems.rarity = "EPIC";
mysterious_gems.register();

// 月晶
newitem("luna_gem",64,pt);

// 秘之源
newitem("mystical_source",64,zj);

//深渊结晶体
newitem("abyssum_gem",64,pt);

//奥席金属
val aoxi_metal as Item = VanillaFactory.createItem("aoxi_metal");
aoxi_metal.rarity = "UNCOMMON";
aoxi_metal.register();

//流光水晶
val hikari_gem as Item = VanillaFactory.createItem("hikari_gem");
hikari_gem.register();

//叶绿晶体
val green_gem as Item = VanillaFactory.createItem("green_gem");
green_gem.rarity = "UNCOMMON";
green_gem.register();

//大地之晶
newitem("grow_gem",64,gj);

//超级合金锭
newitem("super_alloy",64,pt);

// 高耐度合金锭
newitem("high_strength_alloy",64,pt);

//温室合金锭 greemhouse_ingot
val greemhouse_ingot as Item = VanillaFactory.createItem("greemhouse_ingot");
greemhouse_ingot.maxStackSize = 64;
greemhouse_ingot.rarity = "common";
greemhouse_ingot.register();

//红色合金锭
val red_ingot as Item = VanillaFactory.createItem("red_ingot");
red_ingot.maxStackSize = 64;
red_ingot.rarity = "common";
red_ingot.register();

//白铜锭
val cupronickel_ingot as Item = VanillaFactory.createItem("cupronickel_ingot");
cupronickel_ingot.maxStackSize = 64;
cupronickel_ingot.rarity = "common";
cupronickel_ingot.register();

//标准纯银锭
val sterling_silver_ingot as Item = VanillaFactory.createItem("sterling_silver_ingot");
sterling_silver_ingot.maxStackSize = 64;
sterling_silver_ingot.rarity = "common";
sterling_silver_ingot.register();

//硅岩锭
val Naquadah_ingot as Item = VanillaFactory.createItem("Naquadah_ingot");
Naquadah_ingot.register();

//超能硅岩锭
val Naquadah_1_ingot as Item = VanillaFactory.createItem("Naquadah_1_ingot");
Naquadah_1_ingot.register();

//塔兰金属锭
val Taranium_ingot as Item = VanillaFactory.createItem("Taranium_ingot");
Taranium_ingot.register();

//玫瑰金锭
val rose_gold_ingot as Item = VanillaFactory.createItem("rose_gold_ingot");
rose_gold_ingot.register();

//耐酸铝锭
val alumite_ingot as Item = VanillaFactory.createItem("alumite_ingot");
alumite_ingot.rarity = "UNCOMMON";
alumite_ingot.register();

//基础马达
val motor_MK1 as Item = VanillaFactory.createItem("motor_MK1");
motor_MK1.maxStackSize  = 64;
motor_MK1.rarity = "common";
motor_MK1.register();

//进阶马达
val motor_MK2 as Item = VanillaFactory.createItem("motor_MK2");
motor_MK2.maxStackSize = 64;
motor_MK2.register();

//高级马达
val motor_MK3 as Item = VanillaFactory.createItem("motor_MK3");
motor_MK3.maxStackSize = 64;
motor_MK3.register();

//精英马达
val motor_MK4 as Item = VanillaFactory.createItem("motor_MK4");
motor_MK4.maxStackSize = 64;
motor_MK4.register();

//基础机械臂
val robot_arm_MK1 as Item = VanillaFactory.createItem("robot_arm_MK1");
robot_arm_MK1.maxStackSize  = 64;
robot_arm_MK1.rarity = "common";
robot_arm_MK1.register();

//进阶机械臂
val robot_arm_MK2 as Item = VanillaFactory.createItem("robot_arm_MK2");
robot_arm_MK2.maxStackSize = 64;
robot_arm_MK2.register();

//高级机械臂
val robot_arm_MK3 as Item = VanillaFactory.createItem("robot_arm_MK3");
robot_arm_MK3.maxStackSize = 64;
robot_arm_MK3.register();

//精英机械臂
val robot_arm_MK4 as Item = VanillaFactory.createItem("robot_arm_MK4");
robot_arm_MK4.maxStackSize = 64;
robot_arm_MK4.register();

//基础传送带
val conveyor_module_MK1 as Item = VanillaFactory.createItem("conveyor_module_MK1");
conveyor_module_MK1.maxStackSize = 64;
conveyor_module_MK1.rarity = "common";
conveyor_module_MK1.register();

//进阶传送带
val conveyor_module_MK2 as Item = VanillaFactory.createItem("conveyor_module_MK2");
conveyor_module_MK2.maxStackSize = 64;
conveyor_module_MK2.register();

//高级传送带
val conveyor_module_MK3 as Item = VanillaFactory.createItem("conveyor_module_MK3");
conveyor_module_MK3.maxStackSize = 64;
conveyor_module_MK3.register();

//精英传送带
val conveyor_module_MK4 as Item = VanillaFactory.createItem("conveyor_module_MK4");
conveyor_module_MK4.maxStackSize = 64;
conveyor_module_MK4.register();

//基础活塞
val electric_piston_MK1 as Item = VanillaFactory.createItem("electric_piston_MK1");
electric_piston_MK1.maxStackSize = 64;
electric_piston_MK1.rarity = "common";
electric_piston_MK1.register();

//进阶活塞
val electric_piston_MK2 as Item = VanillaFactory.createItem("electric_piston_MK2");
electric_piston_MK2.maxStackSize = 64;
electric_piston_MK2.register();

//高级活塞
val electric_piston_MK3 as Item = VanillaFactory.createItem("electric_piston_MK3");
electric_piston_MK3.maxStackSize = 64;
electric_piston_MK3.register();

//精英活塞
val electric_piston_MK4 as Item = VanillaFactory.createItem("electric_piston_MK4");
electric_piston_MK4.maxStackSize = 64;
electric_piston_MK4.register();

//炸弹之星
val bomb_star as Item = VanillaFactory.createItem("bomb_star");
bomb_star.maxStackSize = 16;
bomb_star.rarity = "epic";
bomb_star.register();

//基岩核心
val bedrock_core as Item = VanillaFactory.createItem("bedrock_core");
bedrock_core.maxStackSize = 8;
bedrock_core.rarity = "UNCOMMON";
bedrock_core.register();

//末影核心
val ender_core as Item = VanillaFactory.createItem("ender_core");
ender_core.maxStackSize = 8;
ender_core.rarity = "UNCOMMON";
ender_core.register();

//未激活的生物电路板
newitem("biology_circuit_1",64,pt);

//魔力电路板
val mana_circuit as Item = VanillaFactory.createItem("mana_circuit");
mana_circuit.maxStackSize = 64;
mana_circuit.rarity = "RARE";
mana_circuit.register();

// 生物电路板
newitem("biology_circuit",64,zj);

//生物电路基板
newitem("Biological_circuit_substrates",64,pt);

//蕴含魔力的逻辑电路板
val extremeredkrystal_circuit as Item = VanillaFactory.createItem("extremeredkrystal_circuit");
extremeredkrystal_circuit.register();

// 奥席电路板
newitem("aoxi_circuit",64,pt);

// 蕴含深渊的电路板
newitem("abyssum_circuit",64,pt);

//蕴含魔力的逻辑处理器
val extremeredkrystal_processor as Item = VanillaFactory.createItem("extremeredkrystal_processor");
extremeredkrystal_processor.rarity = "UNCOMMON";
extremeredkrystal_processor.register();

// 奥席处理器
newitem("aoxi_processor",64,pt);

// 蕴含深渊的处理器
newitem("abyssum_processor",64,pt);

// 意识体灵感菇
newitem("tomori_controller",16,jy);

// 意识体引橘核心
newitem("yuri_controller",16,zj);

//面包奇点
val bread_singularity as Item = VanillaFactory.createItem("bread_singularity");
bread_singularity.maxStackSize = 1;
bread_singularity.rarity = "epic";
bread_singularity.register();

//处理器标准压印模板
val Standard_stencil_stencil as Item = VanillaFactory.createItem("Standard_stencil_stencil");
Standard_stencil_stencil.maxStackSize = 16;
Standard_stencil_stencil.rarity = gj;
Standard_stencil_stencil.register();

// 生物型压印模板
newitem("biotype_press",1,gj);

//培养皿
newitem("Petri_dish",16,pt);

//细菌培养皿
newitem("Petri_dish_1",16,pt);

// 称号
newitem("tt1",1,pt);

// 副本
newitem("tt2",1,pt);

// 公会
newitem("tt3",1,pt);

// 结婚
newitem("tt4",1,pt);

// 市场
newitem("tt5",1,pt);

// 礼包
newitem("tt6",1,pt);

// 商城
newitem("tt7",1,pt);

// 金币
newitem("tt8",64,pt);

// 禁用
newitem("tt9",1,pt);

// 返回
newitem("tt10",1,pt);

// 基础礼包
newitem("tt11",1,pt);

// 中级礼包
newitem("tt14",1,gj);

// 高级礼包
newitem("tt13",1,jy);

// 超级礼包
newitem("tt12",1,zj);

// 主城
newitem("tt15",1,pt);

// 时装
newitem("tt16",1,pt);

// 公告
newitem("tt17",1,pt);

// VIP1
newitem("tt18",1,pt);

// VIP2
newitem("tt19",1,pt);

// VIP3
newitem("tt20",1,pt);

// VIP4
newitem("tt21",1,pt);

// VIP5
newitem("tt22",1,pt);

// 会员
newitem("tt23",1,pt);

// 点券
newitem("tt24",1,pt);

// 下一页
newitem("tt25",1,pt);

// 上一页
newitem("tt26",1,pt);

// 传送
newitem("tt27",1,pt);

// 教程
newitem("tt28",1,pt);

// 翅膀
newitem("tt29",1,pt);

// 铜袋
newitem("tt30",16,pt);

// 银袋
newitem("tt31",16,gj);

// 金袋
newitem("tt32",16,jy);

// 时装碎片
newitem("tt33",64,gj);

// 福袋
newitem("tt34",16,gj);

// 高级时装碎片
newitem("tt35",64,jy);

// 首充卡
newitem("tt36",64,gj);

// 梦幻称号卡
newitem("tt37",16,jy);

// VIP卡
newitem("tt38",16,zj);

// 补签卡
newitem("tt39",16,gj);

// 30min
newitem("tt40",16,gj);

// 60min
newitem("tt41",16,gj);

// 120min
newitem("tt42",16,gj);

// 240min
newitem("tt43",16,gj);

// 480min
newitem("tt44",16,gj);

// 600min
newitem("tt45",16,gj);

// 个人信息
newitem("tt46",64,jy);

// 签到
newitem("tt47",64,jy);

// 当天未签到
newitem("tt48",64,gj);

// 已签到
newitem("tt49",64,pt);

// 漏签
newitem("tt50",64,pt);

// 签到未到达
newitem("tt51",64,pt);

// 上一页
newitem("tt52",1,pt);

// 下一页
newitem("tt53",1,pt);

// 任务
newitem("tt54",1,gj);

// 梦幻四叶草
newitem("tt55",1,zj);

// 封印的魔丸
newitem("tt56",64,pt);

// 冰封的魔丸
newitem("tt57",64,gj);

// 五彩斑斓的魔丸
newitem("tt58",64,jy);

// 宇宙魔丸
newitem("tt59",64,zj);

// 在线奖励界面
newitem("tt60",1,pt);

// LOCK
newitem("tt61",1,jy);

// KOKORO
newitem("tt62",1,jy);

// MASHIRO
newitem("tt63",1,jy);

// HINA
newitem("tt64",1,jy);

// 符咒
newitem("tt65",1,gj);

// 蕴魔符咒
newitem("tt66",1,jy);

// 模块化空白升级
newitem("upgrade_base",64,pt);

// 造石机升级：粉碎
newitem("upgrade_crush",64,gj);

// 造石机升级：熔炼
newitem("upgrade_melt",64,gj);

// 造石机升级：种类
newitem("upgrade_type",64,gj);

// 模块化升级：稳定
newitem("upgrade_stable",64,gj);