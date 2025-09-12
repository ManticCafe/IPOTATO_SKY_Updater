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

Deploying(
    <contenttweaker:mana_circuit>, 
    "contenttweaker:me_controller_unfinished", 
    0, 
    <appliedenergistics2:controller>, 
    0, 
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
    JEI.createJei("Deploying_jei", "手持物品右键")
        .setModid("Deploying")
        .setIcon(<contenttweaker:tt59>) 
        .setBackground(IJeiUtils.createBackground(150, 50))
        .addRecipeCatalyst(<botania:cosmetic:30>) 
        .addSlot(IJeiUtils.createItemSlot("输入方块", 56, 15, true))
        .addSlot(IJeiUtils.createItemSlot("输入物品", 16, 15, true))
        .addSlot(IJeiUtils.createItemSlot("输出方块", 120, 15, false))
        .addElement(IJeiUtils.createArrowElement(84, 16, 0))
        .addElement(IJeiUtils.createFontInfoElement("右击", 38, 20,  0x000000))
        .addElement(IJeiUtils.createFontInfoElement("请拿催化剂右键被转化的方块", 16, 40, 0x52575B))
    .register();

    JEI.createJeiRecipe("Deploying_jei")
        .addInput(itemUtils.getItem(inputBlock, inputBlock_meta))
        .addInput(inputItem)
        .addOutput(outputBlock)
    .build();
}