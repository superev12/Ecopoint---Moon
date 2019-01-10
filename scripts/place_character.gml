///place_character(n,m,character)
var n = argument[0];
var m = argument[1];
var character = argument[2];

checkpos = true;
bottomrow = false;

//Check each pos for a character
//y
if (m % 64 == median(4, m % 64, 23))
{
    if (instance_position(n, floor(m/64)*64 + 7, obj_character))
    {
        checkpos = false;
        show_debug_message("Character in this position");
    }
    else {
        m = floor(m/64)*64 + 7;
    }
}
else if (m % 64 == median(24, m % 64, 39))
{
    if (instance_position(n, floor(m/64)*64 + 24, obj_character))
    {
        checkpos = false;
        show_debug_message("Character in this position");
    }
    else {
        m = floor(m/64)*64 + 24;
    }
} 
else if (m % 64 == median(40, m % 64, 59))
{
    bottomrow = true;
} 

//x
if (n % 64 == median(4, n % 64, 23)) and bottomrow = false
{
    if (instance_position(floor(n/64)*64 + 7, m, obj_character))
    {
        checkpos = false;
        show_debug_message("Character in this position");
    }
    else {
        n = floor(n/64)*64 + 7
    }
}
else if (n % 64 == median(24, n % 64, 39)) and bottomrow = false
{
    if (instance_position(floor(n/64)*64 + 24, m, obj_character))
    {
        checkpos = false;
        show_debug_message("Character in this position");
    } 
    else {
        n = floor(n/64)*64 + 24
    }
}
else if (n % 64 == median(40, n % 64, 59)) and bottomrow = false
{
    if (instance_position(floor(n/64)*64 + 40, m, obj_character))
    {
        checkpos = false;
        show_debug_message("Character in this position");
    }
    else {
        n = floor(n/64)*64 + 40
    }
}

if (bottomrow = false and checkpos = true)
{
    character.x = n;
    character.y = m;
}
else {
    show_debug_message("Cannot place character");
}
