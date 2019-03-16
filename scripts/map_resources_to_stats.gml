///map_resources_to_needs(resource)
resource_in = argument0;

if (resource_in == resource_types.food)
{
    return stats.food;
}
else if (resource_in == resource_types.water)
{
    return stats.water;
}
else if (resource_in == resource_types.oxygen)
{
    return stats.oxygen;
}
