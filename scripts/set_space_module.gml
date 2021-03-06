///set_space_taken(n, m, module)
    var n = argument[0];
    var m = argument[1];
    var module = argument[2];
    show_debug_message("(" + string(n) + ", " + string(m) + ")")
    //show_debug_message(string(obj_data.module_grid))
    if !(n = median(0,n,31)) or !(m = median(0,m,31))
    {
        show_error("Referenced space outside of area", false);
    }
    else
    {
        temp = ds_grid_get(global.module_grid, n, m);
        show_debug_message("Databaseid: " + string(temp))
        show_debug_message("Taken: " + string(ds_map_find_value(temp, data_slots.taken)));
        show_debug_message("Module: " + string(ds_map_find_value(temp, data_slots.module)));
        show_debug_message("Room object: " + string(ds_map_find_value(temp, data_slots.room_object)));
        ds_map_set(temp, data_slots.module, module);
        ds_map_set(temp, data_slots.module_object, instance_create(n*64, m*64-12, map_module_to_object(module)));
        ds_grid_set(global.module_grid, n, m, temp);
    }
