///submit_production_request(requesting_object, priority, []resources_consumed, []resources_consumed_quantity, []resources_produced, []resources_produced_quantity)
requesting_object = argument[0];
priority = argument[1];
resources_consumed = argument[2];
resources_consumed_quantity = argument[3];
resources_produced = argument[4];
resources_produced_quantity = argument[5];

request = ds_map_create();
request[? priority_slots.requesting_object] = requesting_object;
request[? priority_slots.resources_consumed] = resources_consumed;
request[? priority_slots.resources_consumed_quantity] = resources_consumed_quantity;
request[? priority_slots.resources_produced] = resources_produced;
request[? priority_slots.resources_produced_quantity] = resources_produced_quantity;
ds_priority_add(obj_data.production_queue, request, priority);
//show_debug_message("Submitting requests for " + requesting_object.name);
if (resources_consumed[0] == resource_types.food)
{
    show_debug_message(requesting_object.name + " requests " + string(resources_consumed_quantity[0]) + " food")
}
    else if (resources_consumed[0] == resource_types.water)
{
    show_debug_message(requesting_object.name + " requests " + string(resources_consumed_quantity[0]) + " water")
}
else if (resources_consumed[0] == resource_types.oxygen)
{
    show_debug_message(requesting_object.name + " requests " + string(resources_consumed_quantity[0]) + " oxygen")
}
//show_debug_message("Just added " + string(request)+ " with priority " + string(priority));
