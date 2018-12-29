///get_space_taken(n, m)
    var n = argument0;
    var m = argument1;
    if !(n = median(0,n,31)) or !(m = median(0,m,31))
    {
        show_error("Referenced space outside of area", false);
    }
    else
    {
        var temp = ds_grid_get(module_grid, n, m)
        return temp[data_slots.taken];
    }
