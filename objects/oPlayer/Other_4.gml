/// @description Insert description here
// You can write your code in this editor

//De lai file save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

//Tao file save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_close(file);