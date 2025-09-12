import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//钢质机壳
RecipeBuilder.newBuilder("steel_machine_hull", "assembly_machine_MK3", 300)
             .addInputs([<ic2:resource:13>,<thermalfoundation:glass:7>*4,<ore:ingotOsmium> *4,<ore:circuitUltimate>])
             .addFluidInput(<liquid:palladium_fluid> *144)
             .addGridPowerInput(32)
             .addEnergyPerTickInput(32768)
             .addItemOutput(<mekanism:basicblock:8>)
             .build();