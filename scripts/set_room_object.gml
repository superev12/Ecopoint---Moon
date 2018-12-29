//Sets the object in the scene that represents this room
///set_room_object(n, m, object);
    var n = argument0;
    var m = argument1;
    var object = argument2;
    if !(n = median(0,n,31)) or !(m = median(0,m,31))
    {
        show_error("Referenced space outside of area", false);
    }
    else
    {
        var temp = ds_grid_get(obj_data.module_grid, n, m)
        ds_map_replace(temp, data_slots.room_object, object);
        ds_grid_set(obj_data.module_grid, n, m, temp);
    }
