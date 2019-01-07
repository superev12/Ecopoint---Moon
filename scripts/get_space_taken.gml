///get_space_taken(n, m)
    var n = argument0;
    var m = argument1;
    show_debug_message(string(n) + ", " + string(m))
    if !(n = median(0,n,31)) or !(m = median(0,m,31))
    {
        return false;
    }
    else
    {
        var temp = ds_grid_get(global.module_grid, n, m);
        return ds_map_find_value(temp, data_slots.taken);
    }
