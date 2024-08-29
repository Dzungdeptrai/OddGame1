/// @description GUI/Menu Setup
// You can write your code in this editor

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
gui_margin =32;

menu_x = gui_w +200; //+[input] tao hieu ung
menu_y = gui_h - gui_margin;
menu_x_target = gui_w - gui_margin;
menu_speed =25; // gia tri cang thap toc do load cang nhanh
menu_font = fMenu;
menu_itemh = font_get_size(fMenu);
menu_cmt = -1;//0=quit,1=start,2= continue, -1 = khong lam gi
menu_control = true;
//Lua chon
menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";


menu_item = array_length_1d(menu); //So luong dong text
menu_top =  menu_y - ((menu_itemh * 1.5) * menu_item );
menu_cursor = 2;