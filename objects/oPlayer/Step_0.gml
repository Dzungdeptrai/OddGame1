/// @description Insert description here
// You can write your code in this editor
key_left=keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right=keyboard_check(vk_right) or keyboard_check(ord("D"));
key_jump=keyboard_check_pressed(vk_space);
keyAttack=mouse_check_button(mb_right);


switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free();break;
	case PLAYERSTATE.ATTACK_START: PlayerState_Attack(); break;
	case PLAYERSTATE.COMBO: PlayerState_Combo(); break;
}
