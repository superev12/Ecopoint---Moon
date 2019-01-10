///count_characters_in_room(n, m)
//Counts the number of characters in the room given a coordinate
var n = argument0;
var m = argument1;
var count = 0;

if (instance_position(n*64 + 16, m*64 + 16, obj_character))
{
   count +=1
}
if (instance_position(n*64 + 32, m*64 + 16, obj_character))
{
    count +=1
}
if (instance_position(n*64 + 48, m*64 + 16, obj_character))
{
    count +=1
}
if (instance_position(n*64 + 16, m*64 + 32, obj_character))
{
    count +=1
}
if (instance_position(n*64 + 32, m*64 + 32, obj_character))
{
    count +=1
}
if (instance_position(n*64 + 48, m*64 + 32, obj_character))
{
    count +=1
}

return count
