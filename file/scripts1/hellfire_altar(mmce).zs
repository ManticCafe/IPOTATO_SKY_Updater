// #ikwid

// import crafttweaker.item.IItemStack;
// import crafttweaker.liquid.ILiquidStack;
// import crafttweaker.item.IIngredient;
// import crafttweaker.data.IData;
// import crafttweaker.world.IWorld;

// import mods.zenutils.ICatenationBuilder;
// import crafttweaker.util.Math;
// import native.java.util.Random;

// import mods.modularmachinery.MMEvents;
// import mods.modularmachinery.FactoryRecipeThread;
// import mods.modularmachinery.FactoryRecipeTickEvent;
// import mods.modularmachinery.FactoryRecipeFinishEvent;
// import mods.modularmachinery.RecipeCheckEvent;
// import mods.modularmachinery.ControllerGUIRenderEvent;
// import mods.modularmachinery.IMachineController;
// import mods.modularmachinery.RecipeModifierBuilder;
// import mods.modularmachinery.ActiveMachineRecipe;
// import mods.modularmachinery.RecipePrimer;
// import mods.modularmachinery.RecipeBuilder;
// import mods.modularmachinery.RecipeAdapterBuilder;
// import mods.modularmachinery.MachineModifier;
// import mods.modularmachinery.MachineStructureFormedEvent;
// import mods.modularmachinery.RecipeTickEvent;
// import mods.modularmachinery.Sync;

// //机器线程
// MachineModifier.setMaxThreads("hellfire_altar",0);
// MachineModifier.addCoreThread("hellfire_altar",FactoryRecipeThread.createCoreThread("意志输入").addRecipe("SoulsInput"));
// MachineModifier.addCoreThread("hellfire_altar",FactoryRecipeThread.createCoreThread("狱火合成"));

// //最大灵魂量
// val MaxSouls = 100000000 as long;
// //灵魂输入速度
// val SoulsInput = 256 as long;

// //机器GUI显示
// MMEvents.onControllerGUIRender("hellfire_altar", function(event as ControllerGUIRenderEvent) {
//     val ctrl = event.controller;
//     val data = ctrl.customData;
//     val dData = D(data);
//     val souls = dData.getLong("souls",0);
//     var info as string[] = [];
//     info +="§4<<<<<<<<狱火祭坛灵魂监视器>>>>>>>>";
//     info +="§4灵魂含量:" + "§c"~souls;
//     event.extraInfo = info;
// });


// //灵魂输入
// RecipeBuilder.newBuilder("SoulsInput","hellfire_altar",1)
//             .addItemInput(<bloodmagic:monster_soul:*>)
//             .setNBTChecker(function(ctrl as IMachineController, item as IItemStack) {
//         val souls = item.tag.getDouble(souls, 0);
//         val data = ctrl.customData;
//         data.asMap()["souls"] = souls;
//         ctrl.customData = data;
//         return true;
// })
//             .addPreCheckHandler(function(event as RecipeCheckEvent){
//                 val data = event.controller.customData;
//                 var dData = D(data);
//                 var souls = dData.getLong("souls",0);
//                 if(souls  > MaxSouls){
//                 event.setFailed("灵魂数量已达上限！");
//             }
// })
//             .addFactoryFinishHandler(function(event as FactoryRecipeFinishEvent){
//             val data = event.controller.customData;
//             var dData = D(data);
//             val map = data.asMap();
//             var souls = dData.getLong("Souls",0);
//             map["souls"] = SoulsInput + souls;
//         event.controller.customData = data;
// })
//             .setThreadName("意志输入")
//             .build();
