#priority 114

import crafttweaker.world.IWorld;
import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.world.IBlockPos;
import crafttweaker.data.IData;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityMob;
import crafttweaker.util.IAxisAlignedBB;
import crafttweaker.util.Math;
import crafttweaker.event.WorldTickEvent;
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.event.ExplosionDetonateEvent;
import crafttweaker.event.IExplosionEvent;
import crafttweaker.event.EntityStruckByLightningEvent;
import mods.zenutils.event.EntityItemDeathEvent;
import mods.zenutils.DataUpdateOperation.MERGE;
import mods.inworldcrafting.ExplosionCrafting;
import crafttweaker.command.ICommandManager;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.BlockPlaceEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.command.ICommandSender;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.BlockNeighborNotifyEvent;
import crafttweaker.event.IBlockEvent;
import mods.jei.JEI;
import mods.randomtweaker.jei.IJeiPanel;
import mods.randomtweaker.jei.IJeiUtils;
import mods.randomtweaker.jei.IJeiRecipe;

mods.inworldcrafting.FluidToItem.transform(<randomthings:naturecore>,<liquid:fluidedmana>,[<botania:livingwood>,<ore:treeSapling> * 4,<ore:treeLeaves>*4,<botania:manaresource:2>]);

//压印模板 Standard_stencil_stencil
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<appliedenergistics2:material:19>,<contenttweaker:standard_stencil_stencil>, 25);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<appliedenergistics2:material:15>,<contenttweaker:standard_stencil_stencil>, 25);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<appliedenergistics2:material:13>,<contenttweaker:standard_stencil_stencil>, 25);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<appliedenergistics2:material:14>,<contenttweaker:standard_stencil_stencil>, 25);
mods.inworldcrafting.ExplosionCrafting.explodeItemRecipe(<contenttweaker:biotype_press>,<contenttweaker:standard_stencil_stencil>, 25);

//金黄石英
mods.inworldcrafting.FluidToItem.transform(<botania:quartztypesunny> * 48,<liquid:water>,[<minecraft:quartz_block> * 48,<botania:manaresource:23> * 16,<contenttweaker:goldleaf_essence> * 2,<contenttweaker:growth_essence> * 2]);

mods.inworldcrafting.FluidToItem.transform(<botania:quartztypesunny>,<liquid:liquid_sunshine>,[<minecraft:quartz_block>]);

mods.inworldcrafting.FluidToItem.transform(<botania:quartz:6>,<liquid:liquid_sunshine>,[<minecraft:quartz>]);

//光刻胶
mods.inworldcrafting.FluidToFluid.transform(
<liquid:photoresist>, <liquid:water>, [<ore:slimeball>*4]);

//橡胶流体
//mods.inworldcrafting.FluidToFluid.transform(<liquid:rubber>, <liquid:water>, [<contenttweaker:raw_rubber_pulp>*16,<thermalfoundation:material:771>] , true);

//极度不稳定红石水晶
mods.inworldcrafting.FluidToItem.transform(<contenttweaker:extreme_unstable_redcrystal>, <liquid:redstone>, [<thermalfoundation:material:102>*16,<contenttweaker:blood_crystal_up>], false);

# 云莓
mods.inworldcrafting.FluidToItem.transform(<roots:cloud_berry>,<liquid:liquid_sunshine>,[<botania:overgrowthseed>,<contenttweaker:basic_intergrowth_dust>,<enderio:item_material:48>]);

# 石笋
mods.inworldcrafting.FluidToItem.transform(<roots:stalicripe>,<liquid:fire_water>,[<botania:overgrowthseed>,<contenttweaker:basic_intergrowth_dust>,<enderio:item_material:50>]);

//花肥
mods.inworldcrafting.FluidToItem.transform(<botania:fertilizer>,<liquid:water>,[<minecraft:dye:15> * 2,<naturesaura:gold_powder>]);