///set_space_taken(n, m, taken)
    var n = argument[0];
    var m = argument[1];
    var taken = argument[2];
    show_debug_message(string(obj_data.module_grid))
    if !(n = median(0,n,31)) or !(m = median(0,m,31))
    {
        show_error("Referenced space outside of area", false);
    }
    else
    {
        temp = ds_grid_get(obj_data.module_grid, n, m);
        ds_map_replace(temp, data_slots.taken, taken);
        ds_grid_set(obj_data.module_grid, n, m, temp);
    }
