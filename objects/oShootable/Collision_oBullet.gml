/// @description Insert description here
// You can write your code in this editor

/// This goes in pShootable collision event with oBullet
with(oBullet)
	{
	other.hp--;
	other.flash=3;
	hitFrom=direction;
	instance_destroy();
	}