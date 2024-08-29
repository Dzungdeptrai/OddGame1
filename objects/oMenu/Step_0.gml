/// @description Control Menu
// You can write your code in this editor
#macro SAVEFILE "save.sav"

//Item 
menu_x +=(menu_x_target - menu_x) / menu_speed;

//Keyboards Control
if(menu_control)
{
	if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")))
	{
		menu_cursor++;
		if(menu_cursor >= menu_item) menu_cursor = 0; //quay lai vi tri cu
	}
	if(keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")))
	{
		menu_cursor--;
		if(menu_cursor < 0) menu_cursor = menu_item -1; //quay lai vi tri cu
	}
	if (keyboard_check_pressed(vk_enter))
	{
		menu_x_target = gui_w +200;
		menu_cmt = menu_cursor;
		//sfx
		audio_play_sound(snDeath,2,false);
		ScreenShake(5,25);
		menu_control =false;
	}
	
	var mouse_y_guid = device_mouse_y_to_gui(0);
	if ( mouse_y_guid < menu_y) && (mouse_y_guid > menu_top)
	{
		menu_cursor = ( menu_y - mouse_y_guid) div (menu_itemh * 1.5)
		
		if (mouse_check_button(mb_left))
		{
		menu_x_target = gui_w +200;
		menu_cmt = menu_cursor;
		//sfx
		audio_play_sound(snDeath,2,false);
		ScreenShake(5,25);
		menu_control =false;
		}
	}
		
}

if ( menu_x >gui_w+150) && (menu_cmt !=-1)
{
	switch (menu_cmt)
	{
		case 2: SildeTrans(TRANS_MODE.NEXT); break;
		case 1: 
			{
				if(!file_exists(SAVEFILE))
				{
					SildeTrans(TRANS_MODE.NEXT);
				}
				else
				{
						var file = file_text_open_read(SAVEFILE);
						var target = file_text_read_real(file);
						file_text_close(file);
						SildeTrans(TRANS_MODE.GOTO,target);
				}
			}
			break;
		case 0: game_end(); break;
	}
}