#priority 114514
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mod.mekanism.gas.IGasStack;
import crafttweaker.oredict.IOreDictEntry;
import native.mekanism.common.recipe.RecipeHandler;
import native.mekanism.common.integration.crafttweaker.helpers.GasHelper;


//数字组装机 (输入1，输入2,输入3,输入4,输入5,输入6,输入7,输入8,输入9,流体输入,气体输入,物品输出,流体输出,气体输出,耗能,耗时)
global addDigitalAssemblyTableRecipe as function(IItemStack,IItemStack,IItemStack,IItemStack,IItemStack,IItemStack,IItemStack,IItemStack,IItemStack,ILiquidStack,IGasStack,IItemStack,ILiquidStack,IGasStack,double,int)void = function (I1 as IItemStack,I2 as IItemStack,I3 as IItemStack,I4 as IItemStack,I5 as IItemStack,I6 as IItemStack,I7 as IItemStack,I8 as IItemStack,I9 as IItemStack,fluidInput as ILiquidStack,IgasInput as IGasStack,itemOutput as IItemStack,fluidOutput as ILiquidStack,IgasOutput as IGasStack,energy as double,recipe_time as int) as void {
    val gasInput = GasHelper.toGas(IgasInput);
    val gasOutput = GasHelper.toGas(IgasOutput);
    RecipeHandler.addDigitalAssemblyTableRecipe(I1, I2, I3, I4, I5, I6, I7, I8, I9, fluidInput, gasInput,itemOutput, fluidOutput, gasOutput, energy, recipe_time);
};

//环境气体收集器(维度ID,输出气体,概率)
global addAmbientGas as function(int,IGasStack,double)void = function (dimensionID as int,Gas_out as IGasStack,chance as double) as void {
    val outputGas = GasHelper.toGas(Gas_out);
    RecipeHandler.addAmbientGas(dimensionID,outputGas,chance);
};