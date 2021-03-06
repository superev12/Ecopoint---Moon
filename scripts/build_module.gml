//Like set space, but doesn't overwrite
///set_space_taken(n, m, module)
    var n = argument[0];
    var m = argument[1];
    var module = argument[2];
    show_debug_message(string(global.module_grid));
    if !(n = median(0,n,31)) or !(m = median(0,m,31))
    {
        show_error("Referenced space outside of area", false);
    }
    else if (get_space_taken(n, m))
    {
        show_debug_message("There is a room here")
        if (get_room_turns_alive(n, m)) > -1
        {
            show_debug_message("The room is old enough")
            if (get_space_module(n, m) == module_types.none)
            {
                show_debug_message("There is not already a module here");
                show_debug_message("Placing module");
                set_space_module(n, m, module);
            }
        }
    }
