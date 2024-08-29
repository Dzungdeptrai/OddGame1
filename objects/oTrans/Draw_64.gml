/// @description ve chuyen canh bang 2 black bars
// You can write your code in this editor

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_black);
	draw_rectangle(0,0,w,percent*h,false);
	draw_rectangle(0,w,h,h-(percent*w),false);
}
//draw_set_color(c_white);
//draw_text(50,50,string(percent));