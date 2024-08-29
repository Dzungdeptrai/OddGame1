/// @description Insert description here
// You can write your code in this editor
normal_speed = 4; // Tốc độ bình thường
vsp=0;
grv=0.1;
walksp = 4;
hsp=walksp;
hascontronl = true;
state = PLAYERSTATE.FREE;
hba = ds_list_create();
original_room_speed = room_speed; // Lưu tốc độ phòng gốc
canjump = 0;
enum PLAYERSTATE
{
	FREE,
	ATTACK_START,
	COMBO
}