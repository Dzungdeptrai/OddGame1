/// @description Insert description here
// You can write your code in this editor
hsp = 3;
vsp = -4;
grv = 0.53;
done = 0;
ScreenShake(10,60);
//sfx
audio_play_sound(snDeath,2,false);
image_speed = 0;
image_index = 0; //dam bao nga truoc khi nam :
game_set_speed(30,gamespeed_fps);
with (oCam) follow = other.id;
