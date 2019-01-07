//Returns the number of turns the module has been alive for
///get_module_turns_alive(n, m)
    var n = argument0;
    var m = argument1;
    if !(n = median(0,n,31)) or !(m = median(0,m,31))
    {
        return false;
    }
    else
    {
        var temp = ds_grid_get(global.module_grid, n, m);
        return ds_map_find_value(temp, data_slots.module_turns_alive);
    }
