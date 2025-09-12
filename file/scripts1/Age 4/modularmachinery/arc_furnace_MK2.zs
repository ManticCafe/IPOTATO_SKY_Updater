import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

//四氧化锇
     RecipeBuilder.newBuilder("OsO4","arc_furnace_MK2",60)
                  .addItemInput(<contenttweaker:platinum_rich_metal_slag>)
                  .addFluidInput(<liquid:ic2oxygen> * 4000)
                  .addEnergyPerTickInput(4096)
                  .addItemOutput(<contenttweaker:oso4>)
                  .build();

//铱粉
RecipeBuilder.newBuilder("Ir_dust","arc_furnace_MK2",60)
             .addItemInput(<contenttweaker:ir2o3>)
             .addFluidInput(<liquid:ic2hydrogen> * 6)
             .addItemOutput(<thermalfoundation:material:71> * 2)
             .addEnergyPerTickInput(4096)
             .build();