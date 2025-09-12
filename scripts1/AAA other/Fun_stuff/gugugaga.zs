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
    var player = event.player;
    val world = event.world;
    if(event.hand !="MAIN_HAND") return;
    if(event.world.remote) return;
    if (!isNull(item) && item.definition.id == "contenttweaker:tomori") {
        event.player.sendMessage("§b§lgugugaga! ! ! ! !gugugaga! ! ! ! !gugugaga! ! ! ! !");
        server.commandManager.executeCommandSilent(server, "playsound customnpcs:gugugaga master "~playername~" "~player.x~" "~player.y~" "~player.z);
    }
});