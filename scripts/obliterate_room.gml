///obliterate_room(n, m)
//Called by the main game loop to remove the objects that comprise the room in that location and its data entry
n = argument[0];
m = argument[1];

//Destroy walls and floor objects
instance_destroy(instance_position(n*64, m*64, obj_module_blank_floor));

//Destroy optional doors and walls


data_entry = global.module_grid[# n, m];
data_entry[? data_slots.taken] = false;
data_entry[? data_slots.module] = module_types.none;
data_entry[? data_slots.room_turns_alive] = -1;
data_entry[? data_slots.module_turns_alive] = -1;
data_entry[? data_slots.room_object] = 0;
data_entry[? data_slots.characters_in_room] = 0;
