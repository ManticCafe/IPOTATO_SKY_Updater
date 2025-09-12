import mods.ic2.Macerator;
import mods.thermalexpansion.Pulverizer;
import mods.mekanism.crusher;
import mods.extrautils2.Crusher;
import mods.enderio.SagMill;
import crafttweaker.item.IItemStack;
/* example
grinding(<minecraft:log> 输入
            ,<minecraft:planks> 输出
); */



function grinding (input as IItemStack, output as IItemStack){
    crusher.addRecipe(input,output);
    Macerator.addRecipe(output,input);
    Pulverizer.addRecipe(output,input, 2048);
    Crusher.add(output, input);
    SagMill.addRecipe([output], [100], input);
}

//标准纯银粉
grinding(<contenttweaker:sterling_silver_ingot>
            ,<contenttweaker:sterling_silver_dust>
);

//白铜粉
grinding(<contenttweaker:cupronickel_ingot>
            ,<contenttweaker:cupronickel_dust>
);

//硅岩粉
grinding(<contenttweaker:naquadah_ingot>,<contenttweaker:naquadah_dust>);

//玫瑰金粉
grinding(<contenttweaker:rose_gold_ingot>,<contenttweaker:rose_gold_dust>);

//红色合金粉
grinding(<contenttweaker:red_ingot>,<contenttweaker:red_alloy_dust>);

//耐酸铝粉
grinding(<contenttweaker:alumite_ingot>,<contenttweaker:alumite_dust>);

//粉碎原生锇
grinding(<exnihilocreatio:item_ore_native platinum:1>,<contenttweaker:native_platinum_dust>*2);

//硅粉
grinding(<appliedenergistics2:material:5>,<contenttweaker:silica_fume>);

//束缚金属粉
grinding(<tconevo:metal:25>,<tconevo:metal:26>);

//铂粉
grinding(<contenttweaker:platinum_crystals>,<thermalfoundation:material:70>);

//钯粉
grinding(<contenttweaker:palladium_crystals>,<taiga:palladium_dust>);