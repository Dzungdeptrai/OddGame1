/// @description kich co Bien va setup mode
// You can write your code in this editor
w = display_get_gui_width();
h = display_get_gui_height();
nua_h = h * 0.5;
nua_w = w * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
//Setup mode
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;
