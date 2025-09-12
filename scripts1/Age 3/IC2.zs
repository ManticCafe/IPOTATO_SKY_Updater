import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.ic2.Compressor;
import mods.ic2.ThermalCentrifuge;
import mods.ic2.BlastFurnace;
import mods.ic2.MetalFormer;

//热能离心机 

//天空精华
mods.ic2.ThermalCentrifuge.addRecipe([<contenttweaker:sky_essence>*2,<botania:manaresource:23>*2], <naturesaura:sky_ingot>,500);

//金叶精华
mods.ic2.ThermalCentrifuge.addRecipe([<contenttweaker:goldleaf_essence>,<minecraft:dye:11>*3], <naturesaura:gold_powder>*8,500);

//生息精华
mods.ic2.ThermalCentrifuge.addRecipe([<contenttweaker:growth_essence>*2,<ic2:dust:15>], <bloodmagic:component:5>,500);

//火之精华
mods.ic2.ThermalCentrifuge.addRecipe([<contenttweaker:fire_essence>*2,<ic2:dust:15>], <bloodmagic:component:1>,500);


//高炉

//标准纯银锭
mods.ic2.BlastFurnace.addRecipe([<contenttweaker:sterling_silver_ingot>], <contenttweaker:sterling_silver_dust>, 2, 2100);

# 金属成型机

//铜线
mods.ic2.MetalFormer.addExtrudingRecipe(<immersiveengineering:material:20>*2,<ore:plateCopper>);

//琥珀金线
mods.ic2.MetalFormer.addExtrudingRecipe(<immersiveengineering:material:21>*2,<ore:plateElectrum>);

//铝线
mods.ic2.MetalFormer.addExtrudingRecipe(<immersiveengineering:material:22>*2,<ore:plateAluminum>);

//钢线
mods.ic2.MetalFormer.addExtrudingRecipe(<immersiveengineering:material:23>*2,<ore:plateSteel>);


# 充能合金板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:energetic_alloy_plate>, <enderio:item_alloy_ingot:1>);

# 脉冲合金板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:vibrant_alloy_plate>,<enderio:item_alloy_ingot:2>);

# 充能银板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:energetic_silver_plate>,<enderio:item_alloy_endergy_ingot:5>);

# 生动合金板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:vivid_alloy_plate>,<enderio:item_alloy_endergy_ingot:6>);

# 晶化合金板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:crystalline_alloy_plate>,<enderio:item_alloy_endergy_ingot:1>);

# 束缚板
mods.ic2.MetalFormer.addRollingRecipe(<tconevo:metal:28>,<tconevo:metal:25>);

# 魂金板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:soularium_plate>,<enderio:item_alloy_ingot:7>);

# 旋律合金板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:melodic_alloy_plate>,<enderio:item_alloy_endergy_ingot:2>);

# 恒星合金板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:stellar_alloy_plate>,<enderio:item_alloy_endergy_ingot:3>);

# 恶魔灌注铁板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:evil_infused_iron_plate>,<extrautils2:ingredients:17>);

//盖亚之魂板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:gaia_spirit_plate>,<botania:manaresource:14>);

//流明板
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:358>,<thermalfoundation:material:166>);

//末影板
mods.ic2.MetalFormer.addRollingRecipe(<thermalfoundation:material:359>,<thermalfoundation:material:167>);

//末影钢板
mods.ic2.MetalFormer.addRollingRecipe(<moreplates:end_steel_plate>,<enderio:item_alloy_ingot:8>);