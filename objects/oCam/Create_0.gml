/// @description SetupCam
// You can write your code in this editor
cam = view_camera[0];
follow = oPlayer;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;
//Tao do rung khi ban
shake_le = 0; //[input] FPS 1 lan rung lac
shake_str = 0; // Do rung lac, rung lac [input] pixels theo hinh tron
shake_remain = 0; //Thoi gian rung
buff = 0; //Diem chinh de khong rung lac ra ngoai man hinh