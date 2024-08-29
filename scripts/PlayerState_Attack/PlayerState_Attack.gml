// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Attack(){
   // Giữ nguyên tốc độ dọc và áp dụng trọng lực
    vsp = 0;
	hsp = 0;
//Start attack
if (sprite_index != sPlayerA)
{
	sprite_index = sPlayerA
	image_speed = 1;
	image_index = 0;
	ds_list_clear(hba);
}

//Hitbox & check 
mask_index = sPlayerAHB;
var hban = ds_list_create();
var hits = instance_place_list(x,y,oEnemy,hban,false);
if(hits > 0)
{	
	for(var i = 0; i<hits;i++)
	{
		//if not hits by this attack
		var hitID =hban [| i];
		if(ds_list_find_index(hba,hitID)==-1)
		{
			ds_list_add(hba,hitID);
			with(hitID)
			{
				EnemyHit(2);
			}
		}
	}
}
ds_list_destroy(hban);
var bullet = instance_place(x, y,oEBullet);
if (bullet != noone && state == PLAYERSTATE.ATTACK_START) {
    with (bullet) {
		audio_play_sound(defect,1,false);
        instance_destroy();
    }
}
mask_index = sPlayerIdle;

if(animation_end())
{
	sprite_index = sPlayerIdle;
	state = PLAYERSTATE.FREE;
}

}