/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x ;
y = oPlayer.y - 20;

delay = delay - 1;
recoil = max(0,recoil -1);
image_angle = point_direction(x,y,mouse_x,mouse_y);
if (mouse_check_button(mb_left)) && (delay<0)
{
 delay = 5;
 recoil = 5;
 ScreenShake(2,10);
 //Sfx
 audio_play_sound(snShoot,0.1,false);
 with (instance_create_layer(x,y,"Bullet",oBullet))
 {
	spd = 21;
	direction = other.image_angle + random_range(-3,3);
	image_angle = direction;	
 }
 
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);
if(image_angle > 90 && image_angle < 270)
{
image_yscale = -1;
}
else
{
image_yscale = 1;
}