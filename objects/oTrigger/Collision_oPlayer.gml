/// @description Chuyen toi phong ke tiep
// You can write your code in this editor

with (oPlayer)
{ 
	if (hascontronl)
	{
		hascontronl = false;
		SildeTrans(TRANS_MODE.GOTO,other.target);
	}
}