///handle_production_request()
temp = ds_priority_delete_min(obj_data.production_queue);
requesting_object = temp[? priority_slots.requesting_object];
resources_consumed = temp[? priority_slots.resources_consumed]
resources_consumed_quantity = temp[? priority_slots.resources_consumed_quantity];
resources_produced = temp[? priority_slots.resources_produced]
resources_produced_quantity = temp[? priority_slots.resources_produced_quantity];

enough_resources = true;
for (i=0; i < array_length_1d(resources_consumed); i++)
{
    resource_requested = resources_consumed[i];
    if(obj_main.resources[resource_requested] < resources_consumed_quantity[i])
    {
        enough_resources = false;
    }
}
if (enough_resources)
{
    for (i=0; i < array_length_1d(resources_consumed); i++)
    {
        resource_requested = resources_consumed[i];
        obj_main.resources[resource_requested] -= resources_consumed_quantity[i];
    }
    for (i=0; i < array_length_1d(resources_produced); i++)
    {
        resource_produced = resources_produced[i];
        obj_main.resources[resource_produced] += resources_produced_quantity[i];
    }
}
