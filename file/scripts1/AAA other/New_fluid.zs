#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.Color;

function newfluid(register as string, color as string, density as int, viscosity as int, light as int){
    val newf = VanillaFactory.createFluid(register,Color.fromHex(color));
    newf.material = <blockmaterial:lava>;
    newf.density = density;
    newf.viscosity = viscosity;
    newf.luminosity = light;
    newf.register();
}
# newfluid(注册名,颜色,种类,密度,粘性);

//光刻胶
val Photoresist = VanillaFactory.createFluid("Photoresist",Color.fromHex("F0E68C"));
Photoresist.material = <blockmaterial:water>;
Photoresist.viscosity = 6500;
Photoresist.register();

//增强液态魔力
val liquid_Enhance_magic = VanillaFactory.createFluid("liquid_Enhance_magic",Color.fromHex("E1B1DB"));
liquid_Enhance_magic.material = <blockmaterial:water>;
liquid_Enhance_magic.viscosity = 1500;
liquid_Enhance_magic.luminosity = 800;
liquid_Enhance_magic.density = 800;
liquid_Enhance_magic.rarity = "EPIC";
liquid_Enhance_magic.register();

//橡胶
val rubber = VanillaFactory.createFluid("rubber",Color.fromHex("121212"));
rubber.material = <blockmaterial:water>;
rubber.viscosity = 3000;
rubber.density = 2000;
rubber.register();

//蕴含神秘的极度不稳定红石
val extremeredliquid = VanillaFactory.createFluid("extremeredliquid",Color.fromHex("FFE1EB"));
extremeredliquid.density = -2000;
extremeredliquid.material = <blockmaterial:water>;
extremeredliquid.viscosity = 1;
extremeredliquid.register();

# 液态大地精华
newfluid("growth","43644B",3000,500,200);

//酸性液态魔力
VanillaFactory.createFluid("Acidic_liquid_magic",Color.fromHex("CDBE70"))
              .register();

//魔力废液
VanillaFactory.createFluid("Mana_waste",Color.fromHex("4682B4"))
              .register();

//铂系金属浸出液
VanillaFactory.createFluid("Platinum_based_metal_leaching_solution",Color.fromHex("FFF8DC"))
              .register();

//浓缩铂系浸出液
VanillaFactory.createFluid("Platinum_based_metal_leaching_solution2",Color.fromHex("FFE4B5"))
              .register();

//富钯含杂金属浸出液
VanillaFactory.createFluid("Palladium_rich_tramp_metal_leaching_solution",Color.fromHex("FF9224"))
              .register();

//富铂含杂金属浸出液
VanillaFactory.createFluid("Platinum_rich_tramp_metal_leaching_solution",Color.fromHex("46A3FF"))
              .register();

//纯净富钯浸出液
VanillaFactory.createFluid("Palladium_rich_tramp_metal_leaching_solution2",Color.fromHex("FF9224"))
              .register();

//纯净富铂浸出液
VanillaFactory.createFluid("Platinum_rich_tramp_metal_leaching_solution2",Color.fromHex("46A3FF"))
              .register();