/// @description UpdateCam
// You can write your code in this editor

//Update vi tri
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	if((follow).object_index == oPD)
	{
		x = xTo;
		y = yTo;
	}
}


//update vi tri object
x += (xTo - x) / 25; 
y += (yTo - y) / 25;	

//Gioi han tam nhin trong map 
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);
//Rung man hinh
x += random_range(-shake_remain,+shake_remain);//Tranh viec rung qua man hinh
y += random_range(-shake_remain,+shake_remain);//Tranh vien rung qua man hinh
shake_remain = max(0, shake_remain - ((1 / shake_le) * shake_str));

//update cam view 
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if(layer_exists("Mountain"))
{
	layer_x("Mountain",x/2);//Di chuyen Layer theo Camera
}
if(layer_exists("Tree"))
{
	layer_x("Tree",x/2.5);//Di chuyen Layer theo Camera
}
if(layer_exists("Sky"))
{
	layer_x("Sky",x/2.75);//Di chuyen Layer theo Camera
}

