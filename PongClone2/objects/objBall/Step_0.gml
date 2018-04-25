/// @description bounce + reset


if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))	//|| is the same as OR
{
	vspeed *= -1;
}

//check if player scored
if (x <= 0) || (x >= 1024) //0 is left 1024 is the right
{
	//which player scored
	if (x >= 1024)
	global.player1_score += 1;
	else
	global.player2_score += 1;


	//check if winning score
	if (global.player1_score = 10) //set to 10 after test
	{
		room_goto(rmP1Win)
	}
	
	if (global.player2_score = 10)//do same here
	{
		room_goto(rmP2Win)
	}
	
}
//This takes care of resetting after the ball goes past the paddle on both sides
if (x <= 0 || x >= room_width)
{
	x = xstart;
	y = ystart;
}