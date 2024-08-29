/// @description Insert description here
// You can write your code in this editor
if ( hp <= 0)
{
	with(instance_create_layer(x,y,layer,oDeadE))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction) - 2;
		if (hsp != 0) 
		{
		image_xscale = sign(hsp)*-2*other.size;
		}		
		image_yscale = other.size*2;
	}
	
	with (mygun) instance_destroy();
	instance_destroy();
}