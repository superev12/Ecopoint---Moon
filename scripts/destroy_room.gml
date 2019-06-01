///destroy_room(n, m)
destroy_target = get_room_object(n, m);

//needs to consume 0 of some dummy value
room_destruction_resources_comsumed[0] = resource_types.food;
room_destruction_resources_comsumed_quantity[0] = 0;
//Produces resources required to create
submit_production_request(destroy_target, 2, )
