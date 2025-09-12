import crafttweaker.item.IItemStack;
import mods.ItemStages.addItemStage;
import mods.jei.JEI;

//mods
mods.ItemStages.stageModItems("exploitation_stage", "astralsorcery");
mods.ItemStages.stageModItems("exploitation_stage", "industrialforegoing");
mods.ItemStages.stageModItems("exploitation_stage", "draconicevolution");
mods.ItemStages.stageModItems("exploitation_stage", "avaritia");
mods.ItemStages.stageModItems("exploitation_stage", "pneumaticcraft");


//item
mods.ItemStages.removeItemStage(<mekanism:basicblock2>);
mods.ItemStages.removeItemStage(<mekanism:basicblock:14>);
mods.ItemStages.removeItemStage(<mekanism:basicblock:15>);
mods.ItemStages.removeItemStage(<mekanism:ingot:1>);
mods.ItemStages.removeItemStage(<mekanism:otherdust:6>);
mods.ItemStages.removeItemStage(<mekanism:basicblock>);
mods.ItemStages.removeItemStage(<actuallyadditions:block_atomic_reconstructor>);
mods.ItemStages.removeItemStage(<actuallyadditions:item_misc:5>);
mods.ItemStages.removeItemStage(<actuallyadditions:item_dust:7>);
mods.ItemStages.removeItemStage(<actuallyadditions:item_solidified_experience>);
mods.ItemStages.removeItemStage(<actuallyadditions:block_giant_chest>);
mods.ItemStages.removeItemStage(<astralsorcery:itemshiftingstar>.withTag({astralsorcery: {}}));
mods.ItemStages.removeItemStage(<actuallyadditions:item_paxel_crystal_green>);

mods.ItemStages.removeItemStage(<avaritia:infinity_helmet>);
mods.ItemStages.removeItemStage(<avaritia:infinity_chestplate>);
mods.ItemStages.removeItemStage(<avaritia:infinity_pants>);
mods.ItemStages.removeItemStage(<avaritia:infinity_boots>);
mods.ItemStages.removeItemStage(<draconicevolution:draconic_helm>);
mods.ItemStages.removeItemStage(<draconicevolution:draconic_chest>);
mods.ItemStages.removeItemStage(<draconicevolution:draconic_legs>);
mods.ItemStages.removeItemStage(<draconicevolution:draconic_boots>);
mods.ItemStages.removeItemStage(<avaritia:skullfire_sword>);
mods.ItemStages.removeItemStage(<draconicevolution:draconic_staff_of_power>);
mods.ItemStages.removeItemStage(<draconicevolution:draconium_capacitor>);
mods.ItemStages.removeItemStage(<mekanism:atomicdisassembler>);
mods.ItemStages.removeItemStage(<mekanism:energycube>.withTag({tier: 0}));
mods.ItemStages.removeItemStage(<mekanism:energycube>.withTag({tier: 1}));
mods.ItemStages.removeItemStage(<avaritia:cosmic_meatballs>);
mods.ItemStages.removeItemStage(<avaritia:ultimate_stew>);
mods.ItemStages.removeItemStage(<avaritia:neutron_collector>);
mods.ItemStages.removeItemStage(<mekanism:configurator>);
mods.ItemStages.removeItemStage(<mekanism:transmitter>.withTag({tier: 0}));
mods.ItemStages.removeItemStage(<mekanism:transmitter>.withTag({tier: 1}));
mods.ItemStages.removeItemStage(<mekanism:transmitter>.withTag({tier: 2}));
mods.ItemStages.removeItemStage(<mekanism:transmitter>.withTag({tier: 3}));


/*val itemlist_add =[

] as IItemStack[];
for i in itemlist_add{
    mods.jei.JEI.hide(i);
    mods.ItemStages.addItemStage("exploitation_stage",i);
    mods.jei.JEI.addDescription(i,"§4物品尚不开放");
}
*/