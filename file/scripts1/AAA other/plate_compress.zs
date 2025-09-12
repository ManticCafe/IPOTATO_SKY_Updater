import crafttweaker.item.IItemStack;
import mods.ic2.MetalFormer;
import mods.thermalexpansion.Compactor;
import mods.immersiveengineering.MetalPress;
import mods.ic2.Compressor;

function plate (input as IItemStack, output as IItemStack) {

    mods.ic2.MetalFormer.addRollingRecipe(output,input);
    mods.thermalexpansion.Compactor.addPressRecipe(output,input,4000);
    mods.immersiveengineering.MetalPress.addRecipe(output,input,<immersiveengineering:mold>, 4000,1);

}

function compress (input as IItemStack, output as IItemStack) {

    mods.ic2.Compressor.addRecipe(output,input);
    mods.thermalexpansion.Compactor.addPressRecipe(output,input,4000);

}

//白铜板
plate(<contenttweaker:cupronickel_ingot>,<contenttweaker:cupronickel_plate>);

//标准纯银板
plate(<contenttweaker:sterling_silver_ingot>,<contenttweaker:sterling_silver_plate>);

//玫瑰金板
plate(<contenttweaker:rose_gold_ingot>,<contenttweaker:rose_gold_plate>);

//铀锭
compress(<ic2:nuclear:2>*9,<ic2:ingot:8>);

//耐酸铝板
plate(<contenttweaker:alumite_ingot>,<contenttweaker:alumite_plate>);

