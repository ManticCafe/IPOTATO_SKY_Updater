#reloadable

import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityItem;
import native.net.minecraft.item.Item;
import native.net.minecraft.item.ItemFood;
import native.net.minecraft.item.Item.ToolMaterial;
import native.net.minecraftforge.event.RegistryEvent;
import native.net.minecraft.creativetab.CreativeTabs;
import native.net.minecraftforge.common.util.EnumHelper;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.event.PlayerCloneEvent;

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent) {
    val item as IItemStack = event.item;
    val playername = event.player.name;
    val player = event.player;
    val world = event.world;
    val shit as IItemStack = <contenttweaker:otto>.withTag({display: {Name:""~playername~"的大份"}}).withAmount(32);
    val otto as IItemStack = <contenttweaker:otto_super>.withAmount(1);
    if(event.hand !="MAIN_HAND") return;
    if(event.world.remote) return;
    if (!isNull(item) && item.definition.id == "contenttweaker:ccb") {
        player.attackEntityFrom(<damageSource:ANVIL>, 20.0f);
        event.player.give(shit);
        event.player.give(otto);
        event.player.sendMessage("§c老爷爷,我来给你踩背来喽! ! ! ! !");
        item.mutable().withAmount(item.amount - 1);
        server.commandManager.executeCommandSilent(server, "playsound customnpcs:ccb master "~playername~" "~player.x~" "~player.y~" "~player.z);
        
    }
});