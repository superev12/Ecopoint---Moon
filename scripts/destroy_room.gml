///destroy_room(n, m)
n = argument[0];
m = argument[1];
destroy_target = get_room_object(n, m);

//needs to consume 0 of some dummy value
room_destruction_resources_consumed[0] = resource_types.food;
room_destruction_resources_consumed_quantity[0] = 0;
room_destruction_resources_produced[0] = resource_types.food;
room_destruction_resources_produced_quantity[0] = 0;
//Produces resources required to create
submit_production_request(destroy_target, 2, room_destruction_resources_consumed, room_destruction_resources_consumed_quantity, room_destruction_resources_produced, room_destruction_resources_produced_quantity);
room_temp = get_room_object(n, m);
room_temp.turns_alive = -2;  //Marks the room for destruction by the main turn loop

