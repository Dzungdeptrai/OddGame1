/// @description Insert description here
// You can write your code in this editor
var nua_w = w * 0.5;
//Ve Box
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x-nua_w-border,y-h-(border*2),x+nua_w+border,y,15,15,false);
draw_sprite(sMarker,0,x,y);
draw_set_alpha(1);

//Text
SetText(c_white,fSize,fa_center,fa_top);
draw_text(x,y-h-border,text_cur);