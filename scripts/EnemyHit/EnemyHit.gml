// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyHit(){
	var _damge = argument0;
	hp -= _damge + 50% hp;
	flash=5;
	if(hp>0)
	{
	state=ENEMYSTATE.HIT;
	hitnow = true;
	}
	else
	{
		state = ENEMYSTATE.DEAD;
	}
}