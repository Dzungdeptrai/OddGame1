x = owner.x;
y = owner.y+10;
image_xscale = abs (owner.image_xscale) * 0.4;
image_yscale = abs (owner.image_yscale) * 0.4;

if(instance_exists(oPlayer))
{
	if(oPlayer.x <y) image_yscale -=image_yscale;
	if(point_distance(oPlayer.x,oPlayer.y,x,y) <600)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if( countdown <= 0)
		{
			if (!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
			{
				countdown = cdr;
				//Event Bullet
				audio_play_sound(snShoot,0.1,false);
				 with (instance_create_layer(x,y,"Bullet",oEBullet))
				 {
					spd = 10;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;	
				 }
			}
		}
	if(image_angle > 90 && image_angle < 270)
	{
		image_yscale = -1;
	}
	else
	{
		image_yscale = 1;
	}	
	}
}