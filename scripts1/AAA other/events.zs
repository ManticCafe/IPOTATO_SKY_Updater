#loader crafttweaker reloadable

import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.EntityTravelToDimensionEvent;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.PlayerCloneEvent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.world.IWorld;
import crafttweaker.item.IIngredient;
import crafttweaker.world.IBlockPos;
import crafttweaker.event.PlayerItemPickupEvent;
import crafttweaker.event.PortalSpawnEvent;
import crafttweaker.event.IEventCancelable;
import crafttweaker.event.PlayerLeftClickBlockEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import native.java.util.Random;

//玩家死亡重生时向玩家背包里添加腐肉
events.onPlayerClone(function(event as PlayerCloneEvent) {
        if(event.wasDeath == true) {
            val playername = event.player.name;
            val player = event.player;
            val rottenFlesh as IItemStack = <minecraft:rotten_flesh>.withTag({display: {Name: "§c"~playername~"的肉"}}).withAmount(1);
            event.player.give(rottenFlesh);
    }
});



//玩家位于主城（主世界）时给予玩家饱和夜视效果
events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent) {
    val player1 = event.player;
    if(event.to == 0 ) {
        player1.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(99999,255));
        player1.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(99999,255));
   }else if(event.to == 6 ) {
        player1.removePotionEffect(<potion:minecraft:saturation>);
        player1.removePotionEffect(<potion:minecraft:night_vision>);
   }
});

events.onPortalSpawn(function(event as PortalSpawnEvent){if(event.valid == true){event.cancel();}});

//卵石
events.onPlayerLeftClickBlock(function(event as PlayerLeftClickBlockEvent){
    if(event.player.isSneaking == true && <blockstate:minecraft:grass>.matchBlock().matches(event.blockState) || <blockstate:minecraft:dirt>.matchBlock().matches(event.blockState)){
        val world = event.world;
        if(!world.remote){
            val pos = event.position.getOffset(up, 1);
            world.spawnEntity(<exnihilocreatio:item_pebble>.createEntityItem(world, 0.5f + pos.x, 0.1f + pos.y, 0.5f + pos.z));
        }
    }
});

//怪物死亡时有概率掉落寒酸票卷
events.onEntityLivingDeathDrops(function(event as EntityLivingDeathDropsEvent){
    var definition = event.entity.definition;
    val drops = event.drops;
    var world  = event.entity.world;
    if (!isNull(definition) && definition.id == "minecraft:creeper") {
         if (event.entity.world.random.Chance(1)) {
            event.addItem(<contenttweaker:low_ticket>);
        }
    }else if (!isNull(definition) && definition.id == "minecraft:zombie") {
            if (event.entity.world.random.Chance(1)) {
            event.addItem(<contenttweaker:low_ticket>);
        } 
    }else if (!isNull(definition) && definition.id == "minecraft:skeleton") {
            if (event.entity.world.random.Chance(1)) {
            event.addItem(<contenttweaker:low_ticket>);
        } 
    }else if (!isNull(definition) && definition.id == "minecraft:spider") {
            if (event.entity.world.random.Chance(1)) {
            event.addItem(<contenttweaker:low_ticket>);
        } 
    }else if (!isNull(definition) && definition.id == "minecraft:enderman") {
            if (event.entity.world.random.Chance(5)) {
            event.addItem(<contenttweaker:low_ticket>);
        } 
    }
});