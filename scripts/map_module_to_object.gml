///map_module_to_object(module)
module = argument0;
if (module == module_types.farm)
{
    return obj_module_farm;
}
else if (module == module_types.water_tank)
{
    return obj_module_water_tank;
}
else if (module == module_types.oxygen_tank)
{
    return obj_module_oxygen_tank;
}
else if (module == module_types.food_tank)
{
    return obj_module_food_tank;
}

