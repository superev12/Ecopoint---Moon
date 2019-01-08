//Code for creating a new room in the world
///create_room(n, m)
    var n = argument0;
    var m = argument1;
    if (!get_space_taken(n, m))
    {
        if (n = median(0,n,31)) and (m = median(0,m,31))
        {
            show_debug_message("Passed empty check");
            
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
    }
