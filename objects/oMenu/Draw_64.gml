/// @description Draw Menu
// You can write your code in this editor
draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for(var i = 0; i < menu_item; i++) //Ve lua chon
{
	var offsett = 2;
	var txt = menu[i];
	if( menu_cursor == i)
	{
		txt = string_insert(" >", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_black;
	}
	var xx = menu_x;
	var yy= menu_y-(menu_itemh*( i* 1.5));
	draw_set_color(c_red);
	draw_text(xx+offsett,yy,txt);
	draw_text(xx-offsett,yy,txt);
	draw_text(xx,yy+offsett,txt);
	draw_text(xx,yy-offsett,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}