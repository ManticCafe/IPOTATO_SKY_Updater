import mods.zenutils.ftbq.Quest;
import mods.zenutils.ftbq.QuestCompletedEvent;
import mods.zenutils.ftbq.ObjectCompletedEvent;
import crafttweaker.player.IPlayer;

events.onQuestCompleted(function(ev as QuestCompletedEvent){
    val cmd = server.commandManager;
    for p in ev.notifyPlayers {
        cmd.executeCommandSilent(server, "playsound customnpcs:quest_complete master "+p.name+" "+p.x+" "+p.y+" "+p.z);
    }
});