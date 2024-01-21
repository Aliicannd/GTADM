new Iterator:Drifter<MAX_PLAYERS>;
new pDrift[MAX_PLAYERS];
new NoDrift[MAX_PLAYERS];
new CantDrift[MAX_PLAYERS];
new CantDriftTick[MAX_PLAYERS];
new pKMH[MAX_PLAYERS];
new Float:driftpos[MAX_PLAYERS][3];
enum Float:dadapos
{
Float:DriftsX,
Float:DriftsY,
Float:DriftsZ
};
new Float:DriftSavedPos[MAX_PLAYERS][dadapos];

Float:ReturnPlayerAngle(playerid)
{
        new Float:Ang;
        if(IsPlayerInAnyVehicle(playerid))GetVehicleZAngle(GetPlayerVehicleID(playerid), Ang); else GetPlayerFacingAngle(playerid, Ang);
        return Ang;
}
Float: GetPlayerTheoreticAngle(i)
{
    new Float:sin;
    new Float:dis;
    new Float:angle2;
    new Float:x,Float:y,Float:z;
    new Float:tmp3;
    new Float:tmp4;
    new Float:MindAngle;
    if(IsPlayerConnected(i)) {
        GetPlayerPos(i,x,y,z);
        dis = floatsqroot(floatpower(floatabs(floatsub(x,driftpos[i][0])),2)+floatpower(floatabs(floatsub(y,driftpos[i][1])),2));
        if(IsPlayerInAnyVehicle(i))GetVehicleZAngle(GetPlayerVehicleID(i), angle2); else GetPlayerFacingAngle(i, angle2);
        if(x>driftpos[i][0]) {
            tmp3=x-driftpos[i][0];
        }
        else {
            tmp3=driftpos[i][0]-x;
        }
        if(y>driftpos[i][1]) {
            tmp4=y-driftpos[i][1];
        }
        else {
            tmp4=driftpos[i][1]-y;
        }
        if(driftpos[i][1]>y && driftpos[i][0]>x) {        //1
            sin = asin(tmp3/dis);
            MindAngle = floatsub(floatsub(floatadd(sin, 90), floatmul(sin, 2)), -90.0);
        }
        if(driftpos[i][1]<y && driftpos[i][0]>x) {        //2
            sin = asin(tmp3/dis);
            MindAngle = floatsub(floatadd(sin, 180), 180.0);
        }
        if(driftpos[i][1]<y && driftpos[i][0]<x) {        //3
            sin = acos(tmp4/dis);
            MindAngle = floatsub(floatadd(sin, 360), floatmul(sin, 2));
        }
        if(driftpos[i][1]>y && driftpos[i][0]<x) {        //4
            sin = asin(tmp3/dis);
            MindAngle = floatadd(sin, 180);
        }
    }
    if(MindAngle == 0.0) return angle2;
	else return MindAngle;
}

stock DriftUpdate(playerid)
{
	  if(CantDrift[playerid] == 0)
	  {
//		new str[128];
	    new Float:Angle1, Float:Angle2;
	    new Float:Z;
	    new Float:X;
	    new Float:Y;
        GetPlayerPos(playerid, X, Y, Z);
        Angle1 = ReturnPlayerAngle(playerid);
        Angle2 = GetPlayerTheoreticAngle(playerid);
		new DriftNow;
        if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && floatabs(floatsub(Angle1, Angle2)) > 15 && floatabs(floatsub(Angle1, Angle2)) < 90 && pKMH[playerid] > 30)
		{
			if(pDrift[playerid] == 0) OnPlayerDriftStart(playerid);
   		   // SendClientMessage(playerid,-1,"called3");
//   		    DriftNow= floatval( floatabs(floatsub(Angle1, Angle2)) * 3 * (((pKMH[playerid]/12)*0.1) )/10;
   		    DriftNow= floatval( floatabs(floatsub(Angle1, Angle2)) * 3 * ((pKMH[playerid]/12)*0.1) )/10;
   		    pDrift[playerid] +=DriftNow;
        }
        if(DriftNow > 0)
		{
//			format(str,sizeof(str),"Drift %d",pDrift[playerid]);
//			SendClientMessage(playerid,-1,str);
			OnPlayerDriftUpdate(playerid,pDrift[playerid]);
			NoDrift[playerid]=0;
        }
        else
        {
            NoDrift[playerid]++;
            if(NoDrift[playerid] >= 105 && pDrift[playerid]>0)
            {

				EndDrift(playerid,0);
            }
        }
        DriftSavedPos[ playerid ][ DriftsX ] = X;
        DriftSavedPos[ playerid ][ DriftsY ] = Y;
        DriftSavedPos[ playerid ][ DriftsZ ] = Z;

	  }
	  else
	  {
		  if((tickcount() - CantDriftTick[playerid] ) < 4000 ) CantDrift[playerid]=0;
	  }
      return 1;

}
stock EndDrift(playerid,type)
{
    	OnPlayerDriftEnd(playerid,pDrift[playerid],type);
		NoDrift[playerid]=0;
		pDrift[playerid]=0;
		CantDrift[playerid] =1;
		CantDriftTick[playerid]=tickcount();
}
stock AngleUpdate(playerid)
{
	    new Float:x, Float:y, Float:z;
	    if(IsPlayerInAnyVehicle(playerid)) GetVehiclePos(GetPlayerVehicleID(playerid), x, y, z);
		else GetPlayerPos(playerid, x, y, z);
	    driftpos[playerid][0] = x;
	    driftpos[playerid][1] = y;
	    driftpos[playerid][2] = z;
	    return 1;

}
stock floatval(Float:val) {new str[256];format(str, 256, "%.0f", val);return strval(str); }
