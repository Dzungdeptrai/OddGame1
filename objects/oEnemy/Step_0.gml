	/// @description Insert description here
// You can write your code in this editor

vsp= vsp + grv;
//Chua di toi vuc
if ( grounded ) && (hlm) && (!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;
}

if(place_meeting(x+hsp,y,oWall))
{	
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	 x= x+ sign(hsp);
	}
	hsp= -hsp;
}

x = x + hsp;


if(place_meeting(x,y+vsp,oWall))
{	
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
	 y= y+ sign(vsp);
	}
	vsp=0;
}


y = y + vsp;



//Animation
if(!place_meeting(x,y+1,oWall))
{
		grounded = false;
		sprite_index = sEF;
		image_speed = 0;
	if(sign(vsp)>0) 
	{	
		image_index = 1
	}
		else image_index = 0;
}
else
{
	grounded = true;
	image_speed = 0.4;
	if (hsp == 0 )
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEM;
	}
}

if (hsp != 0) image_xscale = sign(hsp)*2*size;
image_yscale = size*2;
