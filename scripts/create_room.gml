//Code for creating a new room in the world
///create_room(n, m)
    var n = argument0;
    var m = argument1;
    if (!get_space_taken(n, m))
    {
        show_debug_message("Passed empty check");
        
        var temp = ds_grid_get(obj_data.module_grid, n-1, m);
        show_debug_message(string(ds_map_find_value(temp,data_slots.taken)));
        var temp = ds_grid_get(obj_data.module_grid, n+1, m);
        show_debug_message(string(ds_map_find_value(temp,data_slots.taken)));
        var temp = ds_grid_get(obj_data.module_grid, n, m-1);
        show_debug_message(string(ds_map_find_value(temp,data_slots.taken)));
        var temp = ds_grid_get(obj_data.module_grid, n, m+1);
        show_debug_message(string(ds_map_find_value(temp,data_slots.taken)));
        
        
        if ((get_space_taken(n-1, m)) or (get_space_taken(n+1, m)) or (get_space_taken(n, m+1)) or (get_space_taken(n, m-1)))
        {
            show_debug_message("Passed adjacent test")
            object = instance_create(floor(mouse_x/64)*64, floor(mouse_y/64)*64-12, obj_module_blank_floor);
            set_space_taken(n, m, true);
            set_room_object(n, m, object);
        } else {
            show_debug_message("Non adjacent");
        }
    }
