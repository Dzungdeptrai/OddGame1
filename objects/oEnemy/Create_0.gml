/// @description Insert description here
// You can write your code in this editor

if (wp)
{
	mygun = instance_create_layer(x,y,"Gun",oEGun);
	with (mygun)
	{
		owner = other.id;
	}
}
else mygun = noone;
enum ENEMYSTATE
{
	FREE,
	HIT,
	DEAD
}