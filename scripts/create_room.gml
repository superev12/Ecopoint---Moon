//Code for creating a new room in the world
///create_room(n, m, finished)
    var n = argument0;
    var m = argument1;
    var world_gen = argument2;
    if (!get_space_taken(n, m))
    {
        if (n = median(0,n,31)) and (m = median(0,m,31))
        {
            show_debug_message("Passed empty check");
            if (world_gen)
            {
                object = instance_create(n*64, m*64-12, obj_module_blank_floor);
                set_space_taken(n, m, true);
                set_room_object(n, m, object);
                object.turns_alive = 0;
            }
            else if ((get_space_taken(n-1, m)) or (get_space_taken(n+1, m)) or (get_space_taken(n, m+1)) or (get_space_taken(n, m-1)))
            {
                show_debug_message("Passed adjacent test")
                object = instance_create(n*64, m*64-12, obj_module_blank_floor);
                set_space_taken(n, m, true);
                set_room_object(n, m, object);
                
            } else {
                show_debug_message("Non adjacent");
            }
        }
    }
