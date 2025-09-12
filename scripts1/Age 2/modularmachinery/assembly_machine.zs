import mods.modularmachinery.RecipeModifierBuilder;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import mods.modularmachinery.IngredientArrayBuilder;
import mods.modularmachinery.RecipeAdapterBuilder;

val ie_circuit_board = RecipeBuilder.newBuilder("ie_circuit_board","assembly_machine",60);
ie_circuit_board.addItemInputs([<ore:plankWood>,<ore:dustHOPGraphite>,<ore:wireCopper> * 4,<immersiveengineering:material:26>]);
ie_circuit_board.addEnergyPerTickInput(100);
ie_circuit_board.addItemOutput(<immersiveengineering:material:27>);
ie_circuit_board.build();

val vacuum_tube = RecipeBuilder.newBuilder("vacuum_tube","assembly_machine",30);
vacuum_tube.addItemInputs([<ore:blockGlass>,<ore:dustRedstone>,<ore:wireCopper>,<ore:plateNickel>]);
vacuum_tube.addEnergyPerTickInput(100);
vacuum_tube.addItemOutput(<immersiveengineering:material:26> * 4);
vacuum_tube.build();

val graphite_electrode = RecipeBuilder.newBuilder("graphite_electrode","assembly_machine",10);
graphite_electrode.addItemInputs(<immersiveengineering:material:19>,<immersiveengineering:material:19>);
graphite_electrode.addEnergyPerTickInput(50);
graphite_electrode.addItemOutput(<immersiveengineering:graphite_electrode>);
graphite_electrode.build();

val internal_combustion_engine_factory_controller = RecipeBuilder.newBuilder("internal_combustion_engine_factory_controller","assembly_machine",400);
internal_combustion_engine_factory_controller.addItemInputs([<ore:gearTerrasteel>,<ore:blockSteel>*4,<ore:gearManasteel>*4,<modularmachinery:blockcasing>*4]);
internal_combustion_engine_factory_controller.addFluidInput(<liquid:lubricant> * 2500);
internal_combustion_engine_factory_controller.addEnergyPerTickInput(1024);
internal_combustion_engine_factory_controller.addItemOutput(<modularmachinery:internal_combustion_engine_factory_controller>);
internal_combustion_engine_factory_controller.build();

val workshop6 = RecipeBuilder.newBuilder("workshop6","assembly_machine",600);
workshop6.addItemInputs([<artisanworktables:worktable:6>,<immersiveengineering:material:27>*2,<extrabotany:material:1>*4,<botania:manaresource:5>]);
workshop6.addEnergyPerTickInput(1024);
workshop6.addFluidInput(<liquid:fluidedmana>*1000);
workshop6.addItemOutput(<artisanworktables:workshop:6>);
workshop6.build();

val arc_furnace_controller = RecipeBuilder.newBuilder("arc_furnace_controller","assembly_machine",600);
arc_furnace_controller.addItemInputs([<immersiveengineering:material:27>*4,<modularmachinery:blockcasing>,<modularmachinery:itemmodularium>*4]);
arc_furnace_controller.addEnergyPerTickInput(1024);
arc_furnace_controller.addItemOutput(<modularmachinery:arc_furnace_controller>);
arc_furnace_controller.build();