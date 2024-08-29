/// @description Insert description here
// You can write your code in this editor
letters +=spd;
text_cur = string_copy(text,1,floor(letters));//floor: lam tron so

draw_set_font(fSize);
if ( h == 0) h = string_height(text);
w = string_width(text_cur);

//Tat Dong Text
if ( letters >= len) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with (oCam) follow = oPlayer;
}
