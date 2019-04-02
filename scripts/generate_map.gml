///generate_map(rooms_max, rooms_min)
rooms_max = argument0;
rooms_min = argument1;
number_of_rooms = floor(random_range(rooms_max, rooms_min));

show_debug_message("Generating Map...");
create_room(15, 15, true);
possible_locations_x = ds_list_create()
possible_locations_y = ds_list_create()
possible_locations_x[| 0]=15
possible_locations_y[| 0]=16
possible_locations_x[| 1]=15
possible_locations_y[| 1]=14
possible_locations_x[| 2]=16
possible_locations_y[| 2]=15
possible_locations_x[| 3]=14
possible_locations_y[| 3]=15
rooms_placed = 1;
while (rooms_placed <= number_of_rooms)
{
    index = irandom(ds_list_size(possible_locations_x));
    n = possible_locations_x[| index];
    m = possible_locations_y[| index];
    create_room(n, m, true);
    rooms_placed++;
    ds_list_delete(possible_locations_x, index);
    ds_list_delete(possible_locations_y, index);
    if (!get_space_taken(n+1, m))
    {
        ds_list_add(possible_locations_x, n+1);
        ds_list_add(possible_locations_y, m);
    }
    if (!get_space_taken(n-1, m))
    {
        ds_list_add(possible_locations_x, n-1);
        ds_list_add(possible_locations_y, m);
    }
    if (!get_space_taken(n, m+1))
    {
        ds_list_add(possible_locations_x, n);
        ds_list_add(possible_locations_y, m+1);
    }
    if (!get_space_taken(n, m-1))
    {
        ds_list_add(possible_locations_x, n);
        ds_list_add(possible_locations_y, m-1);
    }
    
}

