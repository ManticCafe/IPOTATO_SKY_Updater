import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.Empowerer;

//生物电路板
AtomicReconstructor.addRecipe(<contenttweaker:biology_circuit>,<contenttweaker:biology_circuit_1>,16384);

//黑铁锭
mods.actuallyadditions.AtomicReconstructor.addRecipe(<extendedcrafting:material>, <extrautils2:ingredients:17>, 8888);

//自然灵气 瓶装xx
mods.actuallyadditions.AtomicReconstructor.addRecipe(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}), <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"}), 1000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}), <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}), 1000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}), <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}), 1000);
mods.actuallyadditions.AtomicReconstructor.addRecipe(<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"}), <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}), 1000);

//魔力电路板 tier2
mods.actuallyadditions.AtomicReconstructor.addRecipe(<contenttweaker:mana_circuit>,<ic2:crafting:2>*2,8192);

//删除充能台合成配方
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_diamatine_gear>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_diamatine_plate>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_emeradic_plate>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_emeradic_gear>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_enori_gear>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_enori_plate>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_palis_plate>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_palis_gear>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_restonia_plate>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_restonia_gear>);
