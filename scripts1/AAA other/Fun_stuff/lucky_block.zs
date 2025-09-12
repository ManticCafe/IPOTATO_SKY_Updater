#loader crafttweaker reloadable

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Block;
import mods.contenttweaker.SoundType;
import crafttweaker.item.IItemStack;
import mods.contenttweaker.DropHandler;
import mods.contenttweaker.ItemList;
import crafttweaker.item.WeightedItemStack;
import mods.contenttweaker.VanillaFactory.createDirectionalBlock;
import mods.contenttweaker.IBlockAction;
import crafttweaker.event.PlayerBreakSpeedEvent;
import crafttweaker.world.IWorld;
import crafttweaker.entity.IEntity;
import crafttweaker.util.Position3f;
import mods.contenttweaker.BlockPos;
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.util.IRandom;
import crafttweaker.util.Math;
import crafttweaker.event.EntityTravelToDimensionEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.world.IBlockPos;
import native.net.minecraftforge.common.util.EnumHelper;

events.onBlockBreak(function(event as BlockBreakEvent) {
    val position = event.position;
    val block = event.block;
    val blockstate = event.blockState;
    val playername = event.player.name;
    var player = event.player;
    val world = event.world;
    // if(world.remote) return;
    if(!event.isPlayer) return;
    if (player.creative) return;
    if(!isNull(block) && block.definition.id == "contenttweaker:lucky_block") {
        if (event.world.random.Chance(15)) {
            player.sendMessage("嘻嘻"); 
            if (event.world.random.Chance(50)){
                var i = 0;
                while (i < 16) {
                    val pos = event.position.getOffset(up, 1);
                    world.spawnEntity(<minecraft:emerald>.createEntityItem(world, 0.5f + pos.x, 0.1f + pos.y, 0.5f + pos.z));
                    world.spawnEntity(<minecraft:diamond>.createEntityItem(world, 0.5f + pos.x, 0.1f + pos.y, 0.5f + pos.z));
                    world.spawnEntity(<minecraft:gold_ingot>.createEntityItem(world, 0.5f + pos.x, 0.1f + pos.y, 0.5f + pos.z));
                    world.spawnEntity(<minecraft:iron_ingot>.createEntityItem(world, 0.5f + pos.x, 0.1f + pos.y, 0.5f + pos.z));
                    world.spawnEntity(<minecraft:dye:4>.createEntityItem(world, 0.5f + pos.x, 0.1f + pos.y, 0.5f + pos.z));
                i +=1;
                }
            } else {
                var i = 0;
                while (i < 4) {
                    val pos = event.position.getOffset(up, 1);
                    world.spawnEntity(<contenttweaker:lucky_block>.createEntityItem(world, 0.5f + pos.x, 0.1f + pos.y, 0.5f + pos.z));
                    i +=1;
                }
            }
        } else {
            player.sendMessage("不嘻嘻"); 
                if (event.world.random.Chance(50)) {
                    //水牢
                    server.commandManager.executeCommandSilent(server,"fill " + (player.x - 1) + " " + (player.y - 1) + " " + (player.z - 1) + " " + (player.x + 1) + " " + (player.y + 2) + " " + (player.z + 1) + " minecraft:obsidian");
                    server.commandManager.executeCommandSilent(server,"fill " + player.x + " " + player.y + " " + player.z + " " + player.x + " " + (player.y + 1) + " " + player.z + " minecraft:water");
                    server.commandManager.executeCommandSilent(server,"fill " + (player.x + 1) + " " + (player.y + 1) + " " + player.z + " " + (player.x + 1) + " " + (player.y + 1) + " " + player.z + " minecraft:glass");
                    server.commandManager.executeCommandSilent(server,"fill " + (player.x - 1) + " " + (player.y + 1) + " " + player.z + " " + (player.x - 1) + " " + (player.y + 1) + " " + player.z + " minecraft:glass");
                    server.commandManager.executeCommandSilent(server,"fill " + player.x + " " + (player.y + 1) + " " + (player.z + 1) + " " + player.x + " " + (player.y + 1) + " " + (player.z + 1) + " minecraft:glass");
                    server.commandManager.executeCommandSilent(server,"fill " + player.x + " " + (player.y + 1) + " " + (player.z - 1) + " " + player.x + " " + (player.y + 1) + " " + (player.z - 1) + " minecraft:glass");

                } else {
                    //铁砧
                    server.commandManager.executeCommandSilent(server,"fill " + (player.x - 1) + " " + (player.y - 1) + " " + (player.z - 1) + " " + (player.x + 1) + " " + (player.y - 1) + " " + (player.z + 1) + " minecraft:stonebrick");
                    server.commandManager.executeCommandSilent(server,"fill " + (player.x - 1) + " " + player.y + " " + (player.z - 1) + " " + (player.x + 1) + " " + (player.y + 2) + " " + (player.z + 1) + " minecraft:iron_bars");
                    server.commandManager.executeCommandSilent(server,"fill " + player.x + " " + player.y + " " + player.z + " " + player.x + " " + (player.y + 12) + " " + player.z + " minecraft:air");
                    server.commandManager.executeCommandSilent(server,"fill " + player.x + " " + (player.y + 12) + " " + player.z + " " + player.x + " " + (player.y + 14) + " " + player.z + " minecraft:anvil");
                } 
        }
    }    
});

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var block1 = event.block;
    var world1 = event.world;
    if (!event.isPlayer) return;
    if (world1.remote) return;
    if (!isNull(block1) && block1.definition.id == "contenttweaker:lucky_block") {
        event.dropChance = 0;
        return;
    }
});