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

Deploying(
    <thermalfoundation:upgrade:35>, 
    "artisanworktables:worktable", 
    2, 
    <artisanworktables:workshop:2>, 
    2, 
    true 

);
Deploying(
    <contenttweaker:blood_crystal_empowered>, 
    "artisanworktables:workstation", 
    7, 
    <artisanworktables:workshop:7>, 
    7, 
    true 

);

function Deploying(inputItem as IItemStack, inputBlock as string, inputBlock_meta as int, outputBlock as IItemStack, outputBlock_meta as int, itemExpend as bool){
    events.onPlayerInteractBlock(function(event as PlayerInteractBlockEvent){
        var Deploying_block = event.block;
        var Deploying_item = event.item;
        var Deploying_position = event.position;
        var world0 = event.world;
        var player = event.player;
        if(world0.remote)return;
        if(inputItem.matches(Deploying_item)){
            if(!isNull(Deploying_block) && Deploying_block.definition.id == inputBlock && Deploying_block.meta == inputBlock_meta){
                world0.destroyBlock(Deploying_position, false);
                world0.setBlockState(outputBlock.asBlock().definition.getStateFromMeta(outputBlock_meta), Deploying_position);
                event.player.sendStatusMessage(format.red("§9菌子?菌子!"));
                if(itemExpend != false){
                    Deploying_item.mutable().withAmount(Deploying_item.amount - 1);
                }  
            }
        }
    });
    
    JEI.createJeiRecipe("Deploying_jei")
        .addInput(itemUtils.getItem(inputBlock, inputBlock_meta))
        .addInput(inputItem)
        .addOutput(outputBlock)
    .build();
}