/// @description bounce + reset


if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))	//|| is the same as OR
{
	vspeed *= -1;
}

//This takes care of resetting after the ball goes past the paddle on both sides
if (x <= 0 || x >= room_width)
{
	x = xstart;
	y = ystart;
}