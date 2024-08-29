// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){
	#region //Get player Input
	if(hascontronl)
	{	
		key_left=keyboard_check(vk_left) or keyboard_check(ord("A"));
		key_right=keyboard_check(vk_right) or keyboard_check(ord("D"));
		key_jump=keyboard_check_pressed(vk_space);
		keyAttack=mouse_check_button(mb_right);
		keyQ = keyboard_check_pressed(ord("Q"));
		var move=key_right-key_left;
		hsp = move * walksp;
		vsp= vsp + grv;
		move_lock = false;
		ground = false;
		//Event
		if(keyQ)
		{
		room_speed = original_room_speed * 0.5; // Làm chậm game xuống 50%
		alarm[0] = room_speed * 2; // Đặt alarm để khôi phục tốc độ sau 5 giây
		}
		//Function Nhay
		canjump -= 1;
		if(canjump > 0)&& (key_jump)
		{	
			vsp= -5;
			canjump = 0;
		}

		if(place_meeting(x+hsp,y,oWall))
		{	
			while(!place_meeting(x+sign(hsp),y,oWall))
			{
			 x= x+ sign(hsp);
			}
			hsp = 0;
		}

		x = x + hsp;

		//Kiem tra vi tri san
		if(place_meeting(x,y+vsp,oWall))
		{	
			while(!place_meeting(x,y+sign(vsp),oWall))
			{
			 y= y+ sign(vsp);
			}
			vsp=0;
		}


		y = y + vsp;
	}
	else
	{
		key_left = 0;
		key_right = 0;
		key_jump = 0;
	}
#endregion
//Animation
#region
if(!place_meeting(x,y+1,oWall))
{
		sprite_index = sPlayerF;
		image_speed = 0;
	if(sign(vsp)>0) 
	{	
		image_index = 1} else image_index = 0;
}
else
{
	canjump = 10;
	if (sprite_index = sPlayerF)
	{
		audio_play_sound(snLanding,2,false);
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullet",oDust))
			{
				vsp = 0;
			}
		}
	}
	image_speed = 0.4;
	if (hsp == 0 )
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerM;
	}
}
if (hsp != 0) image_xscale = sign(hsp)*2;
	
if(keyAttack) 
{
	audio_play_sound(Attack,2,false);
	state=PLAYERSTATE.ATTACK_START;
}
#endregion
}