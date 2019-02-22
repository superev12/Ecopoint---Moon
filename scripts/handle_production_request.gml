///handle_production_request()
temp = ds_priority_delete_min(obj_data.production_queue);
requesting_object = temp[? priority_slots.requesting_object];
resources_consumed = temp[? priority_slots.resources_consumed]
resources_consumed_quantity = temp[? priority_slots.resources_consumed_quantity];
resources_produced = temp[? priority_slots.resources_produced]
resources_produced_quantity = temp[? priority_slots.resources_produced_quantity];

var resources_wasted;
resources_wasted[0] = 0;
var resources_wasted_quantity;
resources_wasted_quantity[0] = 0;
var resources_wasted_counter = 0;

var success = true;

enough_resources = true;
for (i=0; i < array_length_1d(resources_consumed); i++)
{
    resource_requested = resources_consumed[i];
    if (obj_main.resources[resource_requested] < resources_consumed_quantity[i])
    {
        enough_resources = false;
    }
}
enough_space = true;
for (i=0; i < array_length_1d(resources_produced); i++)
{
    resource_pending = resources_produced[i];
    if (obj_main.resources[resource_pending] + resources_produced_quantity[i] > obj_main.resource_cap[resource_pending])
    {
        enough_space = false;
        resources_wasted[resources_wasted_counter] = resources_produced[i]
        resources_wasted_quantity[resources_wasted_counter] = obj_main.resources[resource_pending] + resources_produced_quantity[i] - obj_main.resource_cap[resource_pending];
        resources_wasted_counter++;
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
        if (obj_main.resources[resource_produced] + resources_produced_quantity[i] > obj_main.resource_cap[resource_produced])
        {
            obj_main.resources[resource_produced] = obj_main.resource_cap[resource_produced];
        }
        else
        {
            obj_main.resources[resource_produced] += resources_produced_quantity[i];
        }
    }   
}
else
{
    success = false;
    
}

//Returns 2d array of resources lost



return_lost[0] = resources_wasted;
return_lost[1] = resources_wasted_quantity;

return_array[0] = requesting_object;
return_array[1] = success;
return_array[2] = return_lost;

return return_array;
