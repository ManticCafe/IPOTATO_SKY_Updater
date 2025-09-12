import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import crafttweaker.world.IWorld;

import mods.zenutils.ICatenationBuilder;
import crafttweaker.util.Math;
import native.java.util.Random;

import mods.modularmachinery.MMEvents;
import mods.modularmachinery.FactoryRecipeThread;
import mods.modularmachinery.FactoryRecipeTickEvent;
import mods.modularmachinery.FactoryRecipeFinishEvent;
import mods.modularmachinery.RecipeCheckEvent;
import mods.modularmachinery.ControllerGUIRenderEvent;
import mods.modularmachinery.IMachineController;
import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.ActiveMachineRecipe;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;
import mods.modularmachinery.MachineModifier;
import mods.modularmachinery.MachineStructureFormedEvent;
import mods.modularmachinery.RecipeTickEvent;
import mods.modularmachinery.Sync;

//圆石
RecipeBuilder.newBuilder("stone1","stone_machine",20)
             .addFluidInput(<liquid:water> * 1000).setChance(0)
             .addFluidInput(<liquid:lava> * 1000).setChance(0)
             .addCatalystInput(<extrautils2:ingredients:6>,["此催化剂可以提高100%产出"],[RecipeModifierBuilder.create("modularmachinery:item", "output", 2, 1, false).build()]).setChance(0)
             .addItemOutput(<minecraft:cobblestone> * 16)
             .build();

//末地石
RecipeBuilder.newBuilder("stone3","stone_machine",20)
             .addFluidInput(<liquid:water> * 1000).setChance(0)
             .addFluidInput(<liquid:lava> * 1000).setChance(0)
             .addItemInput(<minecraft:glowstone_dust>*4).setChance(0)
             .addCatalystInput(<extrautils2:ingredients:6>,["此催化剂可以提高100%产出"],[RecipeModifierBuilder.create("modularmachinery:item", "output", 2, 1, false).build()]).setChance(0)
             .addItemOutput(<minecraft:end_stone> * 16)
             .build();

//下界岩
RecipeBuilder.newBuilder("stone2","stone_machine",20)
             .addFluidInput(<liquid:water> * 1000).setChance(0)
             .addFluidInput(<liquid:lava> * 1000).setChance(0)
             .addItemInput(<minecraft:redstone>*4).setChance(0)
             .setDimension([-1])
             .addCatalystInput(<extrautils2:ingredients:6>,["此催化剂可以提高100%产出"],[RecipeModifierBuilder.create("modularmachinery:item", "output", 2, 1, false).build()]).setChance(0)
             .addItemOutput(<minecraft:netherrack> * 16)
             .build();
