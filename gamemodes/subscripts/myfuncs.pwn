new Float:TelePos[MAX_PLAYERS][3];
//Hoooks
enum psenum
{
 psmodel[10],
 psbone[10],
 Float:psx[10],
 Float:psy[10],
 Float:psz[10],
 Float:psrx[10],
 Float:psry[10],
 Float:psrz[10],
 Float:pssx[10],
 Float:pssy[10],
 Float:pssz[10],
 psmatcolor1[10],
 psmatcolor2[10]
}
new pSavedA[MAX_PLAYERS][psenum];

//Hook PutPlayerInVehicle

forward call_PutPlayerInVehicle(playerid, vehicleid,seatid);
public call_PutPlayerInVehicle(playerid, vehicleid,seatid)
{
    return PutPlayerInVehicle(playerid, vehicleid,seatid);
}
forward _ALT_PutPlayerInVehicle(playerid, vehicleid,seatid);public _ALT_PutPlayerInVehicle(playerid, vehicleid,seatid)
{
    SetSyncTime (playerid);
    return CallRemoteFunction("call_PutPlayerInVehicle", "iii", playerid,vehicleid,seatid);
}
#define PutPlayerInVehicle _ALT_PutPlayerInVehicle



//Hook SetPlayerAttachedObject
forward call_SetPlayerAttachedObject(playerid, index, modelid, bone, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ, materialcolor1, materialcolor2);
public call_SetPlayerAttachedObject(playerid, index, modelid, bone, Float:fOffsetX, Float:fOffsetY, Float:fOffsetZ, Float:fRotX, Float:fRotY, Float:fRotZ, Float:fScaleX, Float:fScaleY, Float:fScaleZ, materialcolor1, materialcolor2)
{
    return SetPlayerAttachedObject(playerid, index, modelid, bone, fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ, materialcolor1, materialcolor2);
}
_ALT_SetPlayerAttachedObject(playerid, index, modelid, bone, Float:fOffsetX = 0.0, Float:fOffsetY = 0.0, Float:fOffsetZ = 0.0, Float:fRotX = 0.0, Float:fRotY = 0.0, Float:fRotZ = 0.0, Float:fScaleX = 1.0, Float:fScaleY = 1.0, Float:fScaleZ = 1.0, materialcolor1 = 0, materialcolor2 = 0)
{
	pSavedA[playerid][psmodel][index]=modelid;
	pSavedA[playerid][psbone][index]=bone;
	pSavedA[playerid][psx][index]=fOffsetX;
	pSavedA[playerid][psy][index]=fOffsetY;
	pSavedA[playerid][psz][index]=fOffsetZ;
	pSavedA[playerid][psrx][index]=fRotX;
	pSavedA[playerid][psry][index]=fRotY;
	pSavedA[playerid][psrz][index]=fRotZ;
	pSavedA[playerid][pssx][index]=fScaleX;
	pSavedA[playerid][pssy][index]=fScaleY;
	pSavedA[playerid][pssz][index]=fScaleZ;
	pSavedA[playerid][psmatcolor1][index]=materialcolor1;
	pSavedA[playerid][psmatcolor2][index]=materialcolor2;
    return CallRemoteFunction("call_SetPlayerAttachedObject", "iiiifffffffffdd", playerid, index, modelid, bone, fOffsetX, fOffsetY, fOffsetZ, fRotX, fRotY, fRotZ, fScaleX, fScaleY, fScaleZ, materialcolor1, materialcolor2);
}
#define SetPlayerAttachedObject _ALT_SetPlayerAttachedObject

//Hook SetPlayerPos

forward call_SetPlayerPos(playerid, Float: x, Float: y, Float: z);
public call_SetPlayerPos(playerid, Float: x, Float: y, Float: z)
{
    return SetPlayerPos(playerid, x,y,z);
}
forward _ALT_SetPlayerPos(playerid,  Float: x, Float: y, Float: z);public _ALT_SetPlayerPos(playerid, Float: x, Float: y, Float: z)
{
    TelePos[playerid][0]=x;
    TelePos[playerid][1]=y;
    TelePos[playerid][2]=z;
    SetSyncTime (playerid);
    return CallRemoteFunction("call_SetPlayerPos", "ifff", playerid,x,y,z);
}
#define SetPlayerPos _ALT_SetPlayerPos


//Hook SetPlayerPosFindZ
forward call_SetPlayerPosFindZ(playerid, Float: x, Float: y, Float: z);
public call_SetPlayerPosFindZ(playerid, Float: x, Float: y, Float: z)
{
    return SetPlayerPosFindZ(playerid, x,y,z);
}
forward _ALT_SetPlayerPosFindZ(playerid,  Float: x, Float: y, Float: z);public _ALT_SetPlayerPosFindZ(playerid, Float: x, Float: y, Float: z)
{
    TelePos[playerid][0]=x;
    TelePos[playerid][1]=y;
    TelePos[playerid][2]=z;
    SetSyncTime (playerid);
    return CallRemoteFunction("call_SetPlayerPosFindZ", "ifff", playerid,x,y,z);
}
#define SetPlayerPosFindZ _ALT_SetPlayerPosFindZ


//Hook SetVehiclePos
forward call_SetVehiclePos(vehicleid, Float: x, Float: y, Float: z);
public call_SetVehiclePos(vehicleid, Float: x, Float: y, Float: z)
{
	if (vehicleid != INVALID_VEHICLE_ID)
	{
		foreach(new i : Player)
		{
		  if (GetPlayerVehicleID (i) == vehicleid)
		  {
			TelePos[i][0]=x;
			TelePos[i][1]=y;
			TelePos[i][2]=z;
			SetSyncTime (i);
		  }
		}
	}
    return SetVehiclePos(vehicleid, x,y,z);
}
forward _ALT_SetVehiclePos(vehicleid,  Float: x, Float: y, Float: z);public _ALT_SetVehiclePos(vehicleid, Float: x, Float: y, Float: z)
{
    SetSyncTime (vehicleid);
    return CallRemoteFunction("call_SetVehiclePos", "ifff", vehicleid,x,y,z);
}
#define SetVehiclePos _ALT_SetVehiclePos
//


new warned[MAX_PLAYERS];
enum
{
  INVALID_POINT = -1,
  BANK_1,
  BANK_2,
  BANK_3,
  BANK_4,
  BANK_5,
  BANK_6,
  BANK_7
}
static Float:Banks[][] =
{
  { -828.0267,1503.6108,19.7586 },
  { -185.9201,1039.6997,19.5938 },
  { 1832.1588,-1843.1906,13.5781 },
  { -1896.4723,486.9743,35.1719 },
  { 2165.4414,2009.1182,10.8203 },
  { -1555.4460,-2752.8757,48.5391 },
  { 1464.7112,-1010.6835,26.8438 }
};

GetClosestPoint(Float:x, Float:y, Float:z, &Float:d = 0.0)
{
  new
    c = INVALID_POINT,
    Float:x2,
    Float:y2,
    Float:z2,
    Float:d2 = 70000.0
  ;
  for (new p = 0; p < sizeof Banks; p ++)
  {
    x2 = x - Banks[p][0];
    x2 *= x2;
    y2 = y - Banks[p][1];
    y2 *= y2;
    z2 = z - Banks[p][2];
    z2 *= z2;
    d = floatsqroot(x2 + y2 + z2);
    if (d < d2)
    {
      d2 = d;
      c = p;
    }
  }
  d = d2;
  return c;
}

GetPlayerClosestBank(playerid)
{
  new
    Float:x,
    Float:y,
    Float:z
  ;
  GetPlayerPos(playerid, x, y, z);
  return GetClosestPoint(x, y, z);
}
//
new PlayerColors[] = {
0xFF8C13AA,0xC715FFAA,0x20B2AAAA,0xDC143CAA,0x6495EDAA,0xf0e68cAA,0x778899AA,0xFF1493AA,0xF4A460AA,
0xEE82EEAA,0xFFD720AA,0x8b4513AA,0x4949A0AA,0x148b8bAA,0x14ff7fAA,0x556b2fAA,0x0FD9FAAA,0x10DC29AA,
0x534081AA,0x0495CDAA,0xEF6CE8AA,0xBD34DAAA,0x247C1BAA,0x0C8E5DAA,0x635B03AA,0xCB7ED3AA,0x65ADEBAA,
0x5C1ACCAA,0xF2F853AA,0x11F891AA,0x7B39AAAA,0x53EB10AA,0x54137DAA,0x275222AA,0xF09F5BAA,0x3D0A4FAA,
0x22F767AA,0xD63034AA,0x9A6980AA,0xDFB935AA,0x3793FAAA,0x90239DAA,0xE9AB2FAA,0xAF2FF3AA,0x057F94AA,
0xB98519AA,0x388EEAAA,0x028151AA,0xA55043AA,0x0DE018AA,0x93AB1CAA,0x95BAF0AA,0x369976AA,0x18F71FAA,
0x4B8987AA,0x491B9EAA,0x829DC7AA,0xBCE635AA,0xCEA6DFAA,0x20D4ADAA,0x2D74FDAA,0x3C1C0DAA,0x12D6D4AA,
0x48C000AA,0x2A51E2AA,0xE3AC12AA,0xFC42A8AA,0x2FC827AA,0x1A30BFAA,0xB740C2AA,0x42ACF5AA,0x2FD9DEAA,
0xFAFB71AA,0x05D1CDAA,0xC471BDAA,0x94436EAA,0xC1F7ECAA,0xCE79EEAA,0xBD1EF2AA,0x93B7E4AA,0x3214AAAA,
0x184D3BAA,0xAE4B99AA,0x7E49D7AA,0x4C436EAA,0xFA24CCAA,0xCE76BEAA,0xA04E0AAA,0x9F945CAA,0xDCDE3DAA,
0x10C9C5AA,0x70524DAA,0x0BE472AA,0x8A2CD7AA,0x6152C2AA,0xCF72A9AA,0xE59338AA,0xEEDC2DAA,0xD8C762AA,
0xD8C762AA,0xFF8C13AA,0xC715FFAA,0x20B2AAAA,0xDC143CAA,0x6495EDAA,0xf0e68cAA,0x778899AA,0xFF1493AA,
0xF4A460AA,0xEE82EEAA,0xFFD720AA,0x8b4513AA,0x4949A0AA,0x148b8bAA,0x14ff7fAA,0x556b2fAA,0x0FD9FAAA,
0x10DC29AA,0x534081AA,0x0495CDAA,0xEF6CE8AA,0xBD34DAAA,0x247C1BAA,0x0C8E5DAA,0x635B03AA,0xCB7ED3AA,
0x65ADEBAA,0x5C1ACCAA,0xF2F853AA,0x11F891AA,0x7B39AAAA,0x53EB10AA,0x54137DAA,0x275222AA,0xF09F5BAA,
0x3D0A4FAA,0x22F767AA,0xD63034AA,0x9A6980AA,0xDFB935AA,0x3793FAAA,0x90239DAA,0xE9AB2FAA,0xAF2FF3AA,
0x057F94AA,0xB98519AA,0x388EEAAA,0x028151AA,0xA55043AA,0x0DE018AA,0x93AB1CAA,0x95BAF0AA,0x369976AA,
0x18F71FAA,0x4B8987AA,0x491B9EAA,0x829DC7AA,0xBCE635AA,0xCEA6DFAA,0x20D4ADAA,0x2D74FDAA,0x3C1C0DAA,
0x12D6D4AA,0x48C000AA,0x2A51E2AA,0xE3AC12AA,0xFC42A8AA,0x2FC827AA,0x1A30BFAA,0xB740C2AA,0x42ACF5AA,
0x2FD9DEAA,0xFAFB71AA,0x05D1CDAA,0xC471BDAA,0x94436EAA,0xC1F7ECAA,0xCE79EEAA,0xBD1EF2AA,0x93B7E4AA,
0x3214AAAA,0x184D3BAA,0xAE4B99AA,0x7E49D7AA,0x4C436EAA,0xFA24CCAA,0xCE76BEAA,0xA04E0AAA,0x9F945CAA,
0xDCDE3DAA,0x10C9C5AA,0x70524DAA,0x0BE472AA,0x8A2CD7AA,0x6152C2AA,0xCF72A9AA,0xE59338AA,0xEEDC2DAA,
0xD8C762AA,0xD8C762AA,0xA2FF00AA,0xFFA600AA,0xFF00AEAA,0xBF00FFAA,0xFF0000AA,0x333333AA,0xE3AE9DAA,
0x115099AA,0x89FACDAA,0x717856AA,0xFFFF00AA
};


new CarColHex[256] = {
0x000000FF, 0xF5F5F5FF, 0x2A77A1FF, 0x840410FF, 0x263739FF, 0x86446EFF, 0xD78E10FF, 0x4C75B7FF, 0xBDBEC6FF, 0x5E7072FF,
0x46597AFF, 0x656A79FF, 0x5D7E8DFF, 0x58595AFF, 0xD6DAD6FF, 0x9CA1A3FF, 0x335F3FFF, 0x730E1AFF, 0x7B0A2AFF, 0x9F9D94FF,
0x3B4E78FF, 0x732E3EFF, 0x691E3BFF, 0x96918CFF, 0x515459FF, 0x3F3E45FF, 0xA5A9A7FF, 0x635C5AFF, 0x3D4A68FF, 0x979592FF,
0x421F21FF, 0x5F272BFF, 0x8494ABFF, 0x767B7CFF, 0x646464FF, 0x5A5752FF, 0x252527FF, 0x2D3A35FF, 0x93A396FF, 0x6D7A88FF,
0x221918FF, 0x6F675FFF, 0x7C1C2AFF, 0x5F0A15FF, 0x193826FF, 0x5D1B20FF, 0x9D9872FF, 0x7A7560FF, 0x989586FF, 0xADB0B0FF,
0x848988FF, 0x304F45FF, 0x4D6268FF, 0x162248FF, 0x272F4BFF, 0x7D6256FF, 0x9EA4ABFF, 0x9C8D71FF, 0x6D1822FF, 0x4E6881FF,
0x9C9C98FF, 0x917347FF, 0x661C26FF, 0x949D9FFF, 0xA4A7A5FF, 0x8E8C46FF, 0x341A1EFF, 0x6A7A8CFF, 0xAAAD8EFF, 0xAB988FFF,
0x851F2EFF, 0x6F8297FF, 0x585853FF, 0x9AA790FF, 0x601A23FF, 0x20202CFF, 0xA4A096FF, 0xAA9D84FF, 0x78222BFF, 0x0E316DFF,
0x722A3FFF, 0x7B715EFF, 0x741D28FF, 0x1E2E32FF, 0x4D322FFF, 0x7C1B44FF, 0x2E5B20FF, 0x395A83FF, 0x6D2837FF, 0xA7A28FFF,
0xAFB1B1FF, 0x364155FF, 0x6D6C6EFF, 0x0F6A89FF, 0x204B6BFF, 0x2B3E57FF, 0x9B9F9DFF, 0x6C8495FF, 0x4D8495FF, 0xAE9B7FFF,
0x406C8FFF, 0x1F253BFF, 0xAB9276FF, 0x134573FF, 0x96816CFF, 0x64686AFF, 0x105082FF, 0xA19983FF, 0x385694FF, 0x525661FF,
0x7F6956FF, 0x8C929AFF, 0x596E87FF, 0x473532FF, 0x44624FFF, 0x730A27FF, 0x223457FF, 0x640D1BFF, 0xA3ADC6FF, 0x695853FF,
0x9B8B80FF, 0x620B1CFF, 0x5B5D5EFF, 0x624428FF, 0x731827FF, 0x1B376DFF, 0xEC6AAEFF, 0x000000FF,
0x177517FF, 0x210606FF, 0x125478FF, 0x452A0DFF, 0x571E1EFF, 0x010701FF, 0x25225AFF, 0x2C89AAFF, 0x8A4DBDFF, 0x35963AFF,
0xB7B7B7FF, 0x464C8DFF, 0x84888CFF, 0x817867FF, 0x817A26FF, 0x6A506FFF, 0x583E6FFF, 0x8CB972FF, 0x824F78FF, 0x6D276AFF,
0x1E1D13FF, 0x1E1306FF, 0x1F2518FF, 0x2C4531FF, 0x1E4C99FF, 0x2E5F43FF, 0x1E9948FF, 0x1E9999FF, 0x999976FF, 0x7C8499FF,
0x992E1EFF, 0x2C1E08FF, 0x142407FF, 0x993E4DFF, 0x1E4C99FF, 0x198181FF, 0x1A292AFF, 0x16616FFF, 0x1B6687FF, 0x6C3F99FF,
0x481A0EFF, 0x7A7399FF, 0x746D99FF, 0x53387EFF, 0x222407FF, 0x3E190CFF, 0x46210EFF, 0x991E1EFF, 0x8D4C8DFF, 0x805B80FF,
0x7B3E7EFF, 0x3C1737FF, 0x733517FF, 0x781818FF, 0x83341AFF, 0x8E2F1CFF, 0x7E3E53FF, 0x7C6D7CFF, 0x020C02FF, 0x072407FF,
0x163012FF, 0x16301BFF, 0x642B4FFF, 0x368452FF, 0x999590FF, 0x818D96FF, 0x99991EFF, 0x7F994CFF, 0x839292FF, 0x788222FF,
0x2B3C99FF, 0x3A3A0BFF, 0x8A794EFF, 0x0E1F49FF, 0x15371CFF, 0x15273AFF, 0x375775FF, 0x060820FF, 0x071326FF, 0x20394BFF,
0x2C5089FF, 0x15426CFF, 0x103250FF, 0x241663FF, 0x692015FF, 0x8C8D94FF, 0x516013FF, 0x090F02FF, 0x8C573AFF, 0x52888EFF,
0x995C52FF, 0x99581EFF, 0x993A63FF, 0x998F4EFF, 0x99311EFF, 0x0D1842FF, 0x521E1EFF, 0x42420DFF, 0x4C991EFF, 0x082A1DFF,
0x96821DFF, 0x197F19FF, 0x3B141FFF, 0x745217FF, 0x893F8DFF, 0x7E1A6CFF, 0x0B370BFF, 0x27450DFF, 0x071F24FF, 0x784573FF,
0x8A653AFF, 0x732617FF, 0x319490FF, 0x56941DFF, 0x59163DFF, 0x1B8A2FFF, 0x38160BFF, 0x041804FF, 0x355D8EFF, 0x2E3F5BFF,
0x561A28FF, 0x4E0E27FF, 0x706C67FF, 0x3B3E42FF, 0x2E2D33FF, 0x7B7E7DFF, 0x4A4442FF, 0x28344EFF
};
/*
new PlayerColors2[] = {
0xFF8C13FF,0xC715FFFF,0x20B2AAFF,0xDC143CFF,0x6495EDFF,0xf0e68cFF,0x778899FF,0xFF1493FF,0xF4A460FF,
0xEE82EEFF,0xFFD720FF,0x8b4513FF,0x4949A0FF,0x148b8bFF,0x14ff7fFF,0x556b2fFF,0x0FD9FAFF,0x10DC29FF,
0x534081FF,0x0495CDFF,0xEF6CE8FF,0xBD34DAFF,0x247C1BFF,0x0C8E5DFF,0x635B03FF,0xCB7ED3FF,0x65ADEBFF,
0x5C1ACCFF,0xF2F853FF,0x11F891FF,0x7B39AAFF,0x53EB10FF,0x54137DFF,0x275222FF,0xF09F5BFF,0x3D0A4FFF,
0x22F767FF,0xD63034FF,0x9A6980FF,0xDFB935FF,0x3793FAFF,0x90239DFF,0xE9AB2FFF,0xAF2FF3FF,0x057F94FF,
0xB98519FF,0x388EEAFF,0x028151FF,0xA55043FF,0x0DE018FF,0x93AB1CFF,0x95BAF0FF,0x369976FF,0x18F71FFF,
0x4B8987FF,0x491B9EFF,0x829DC7FF,0xBCE635FF,0xCEA6DFFF,0x20D4ADFF,0x2D74FDFF,0x3C1C0DFF,0x12D6D4FF,
0x48C000FF,0x2A51E2FF,0xE3AC12FF,0xFC42A8FF,0x2FC827FF,0x1A30BFFF,0xB740C2FF,0x42ACF5FF,0x2FD9DEFF,
0xFAFB71FF,0x05D1CDFF,0xC471BDFF,0x94436EFF,0xC1F7ECFF,0xCE79EEFF,0xBD1EF2FF,0x93B7E4FF,0x3214AAFF,
0x184D3BFF,0xAE4B99FF,0x7E49D7FF,0x4C436EFF,0xFA24CCFF,0xCE76BEFF,0xA04E0AFF,0x9F945CFF,0xDCDE3DFF,
0x10C9C5FF,0x70524DFF,0x0BE472FF,0x8A2CD7FF,0x6152C2FF,0xCF72A9FF,0xE59338FF,0xEEDC2DFF,0xD8C762FF,
0xD8C762FF,0xFF8C13FF,0xC715FFFF,0x20B2AAFF,0xDC143CFF,0x6495EDFF,0xf0e68cFF,0x778899FF,0xFF1493FF,
0xF4A460FF,0xEE82EEFF,0xFFD720FF,0x8b4513FF,0x4949A0FF,0x148b8bFF,0x14ff7fFF,0x556b2fFF,0x0FD9FAFF,
0x10DC29FF,0x534081FF,0x0495CDFF,0xEF6CE8FF,0xBD34DAFF,0x247C1BFF,0x0C8E5DFF,0x635B03FF,0xCB7ED3FF,
0x65ADEBFF,0x5C1ACCFF,0xF2F853FF,0x11F891FF,0x7B39AAFF,0x53EB10FF,0x54137DFF,0x275222FF,0xF09F5BFF,
0x3D0A4FFF,0x22F767FF,0xD63034FF,0x9A6980FF,0xDFB935FF,0x3793FAFF,0x90239DFF,0xE9AB2FFF,0xAF2FF3FF,
0x057F94FF,0xB98519FF,0x388EEAFF,0x028151FF,0xA55043FF,0x0DE018FF,0x93AB1CFF,0x95BAF0FF,0x369976FF,
0x18F71FFF,0x4B8987FF,0x491B9EFF,0x829DC7FF,0xBCE635FF,0xCEA6DFFF,0x20D4ADFF,0x2D74FDFF,0x3C1C0DFF,
0x12D6D4FF,0x48C000FF,0x2A51E2FF,0xE3AC12FF,0xFC42A8FF,0x2FC827FF,0x1A30BFFF,0xB740C2FF,0x42ACF5FF,
0x2FD9DEFF,0xFAFB71FF,0x05D1CDFF,0xC471BDFF,0x94436EFF,0xC1F7ECFF,0xCE79EEFF,0xBD1EF2FF,0x93B7E4FF,
0x3214AAFF,0x184D3BFF,0xAE4B99FF,0x7E49D7FF,0x4C436EFF,0xFA24CCFF,0xCE76BEFF,0xA04E0AFF,0x9F945CFF,
0xDCDE3DFF,0x10C9C5FF,0x70524DFF,0x0BE472FF,0x8A2CD7FF,0x6152C2FF,0xCF72A9FF,0xE59338FF,0xEEDC2DFF,
0xD8C762FF,0xD8C762FF,0xA2FF00FF,0xFFA600FF,0xFF00AEFF,0xBF00FFFF,0xFF0000FF,0x333333FF,0x0022FFFF,
0x115099FF,0x89FACD3FF,0x717856FF,0x44FF00FF
};*/

new PlayerColors_[][10] = {
"FF8C13","C715FF","20B2AA","DC143C","6495ED","f0e68c","778899","FF1493","F4A460",
"EE82EE","FFD720","8b4513","4949A0","148b8b","14ff7f","556b2f","0FD9FA","10DC29",
"534081","0495CD","EF6CE8","BD34DA","247C1B","0C8E5D","635B03","CB7ED3","65ADEB",
"5C1ACC","F2F853","11F891","7B39AA","53EB10","54137D","275222","F09F5B","3D0A4F",
"22F767","D63034","9A6980","DFB935","3793FA","90239D","E9AB2F","AF2FF3","057F94",
"B98519","388EEA","028151","A55043","0DE018","93AB1C","95BAF0","369976","18F71F",
"4B8987","491B9E","829DC7","BCE635","CEA6DF","20D4AD","2D74FD","3C1C0D","12D6D4",
"48C000","2A51E2","E3AC12","FC42A8","2FC827","1A30BF","B740C2","42ACF5","2FD9DE",
"FAFB71","05D1CD","C471BD","94436E","C1F7EC","CE79EE","BD1EF2","93B7E4","3214AA",
"184D3B","AE4B99","7E49D7","4C436E","FA24CC","CE76BE","A04E0A","9F945C","DCDE3D",
"10C9C5","70524D","0BE472","8A2CD7","6152C2","CF72A9","E59338","EEDC2D","D8C762",
"D8C762","FF8C13","C715FF","20B2AA","DC143C","6495ED","f0e68c","778899","FF1493",
"F4A460","EE82EE","FFD720","8b4513","4949A0","148b8b","14ff7f","556b2f","0FD9FA",
"10DC29","534081","0495CD","EF6CE8","BD34DA","247C1B","0C8E5D","635B03","CB7ED3",
"65ADEB","5C1ACC","F2F853","11F891","7B39AA","53EB10","54137D","275222","F09F5B",
"3D0A4F","22F767","D63034","9A6980","DFB935","3793FA","90239D","E9AB2F","AF2FF3",
"057F94","B98519","388EEA","028151","A55043","0DE018","93AB1C","95BAF0","369976",
"18F71F","4B8987","491B9E","829DC7","BCE635","CEA6DF","20D4AD","2D74FD","3C1C0D",
"12D6D4","48C000","2A51E2","E3AC12","FC42A8","2FC827","1A30BF","B740C2","42ACF5",
"2FD9DE","FAFB71","05D1CD","C471BD","94436E","C1F7EC","CE79EE","BD1EF2","93B7E4",
"3214AA","184D3B","AE4B99","7E49D7","4C436E","FA24CC","CE76BE","A04E0A","9F945C",
"DCDE3D","10C9C5","70524D","0BE472","8A2CD7","6152C2","CF72A9","E59338","EEDC2D",
"D8C762","D8C762","A2FF00","FFA600","FF00AE","BF00FF","FF0000","333333","E3AE9D",
"115099","89FACD","717856","FFFF00"
};


//==============================================================================
//Vehicle Names

enum evInfo
{
	vName[32],
 	vPrice,
	vMaxSpeed
}

new vInfo[][evInfo]=
{
	{"Landstalker", 36000, 140},
	{"Bravura", 35000, 131},
	{"Buffalo", 89000, 166},
	{"Linerunner", 110000, 98},
	{"Pereniel", 15000, 118},
	{"Sentinel", 24000, 146},
	{"Dumper", 57000, 98},
	{"Firetruck", 230000, 132},
	{"Trashmaster", 180000, 89},
	{"Stretch", 320000, 140},
	{"Manana", 13000, 115},
	{"Infernus", 765000, 197},
	{"Voodoo", 17500, 150},
	{"Pony", 21000, 98},
	{"Mule", 35500, 94},
	{"Cheetah", 265000, 171},
	{"Ambulance", 70000, 137},
	{"Leviathan", 7220000, 399},
	{"Moonbeam", 20000, 103},
	{"Esperanto", 20000, 133},
	{"Taxi", 29500, 129},
	{"Washington", 43500, 137},
	{"Bobcat", 15000, 124},
	{"Mr Whoopee", 25000, 88},
	{"BF Injection", 18000, 120},
	{"Hunter", 16500000, 399},
	{"Premier", 45000, 154},
	{"Enforcer", 120000, 147},
	{"Securicar", 350000, 139},
	{"Banshee", 320000, 179},
	{"Predator", 100000, 399},
	{"Bus", 100000, 116},
	{"Rhino", 500000, 84},
	{"Barracks", 135000, 98},
	{"Hotknife", 90000, 148},
	{"Trailer", 10000, 0},
	{"Previon", 10000, 133},
	{"Coach", 100000, 140},
	{"Cabbie", 35000, 127},
	{"Stallion", 23000, 150},
	{"Rumpo", 25000, 121},
	{"RC Bandit", 5000, 67},
	{"Romero", 50000, 124},
	{"Packer", 120000, 112},
	{"Monster Truck A", 240000, 98},
	{"Admiral", 45000, 146},
	{"Squalo", 100000, 399},
	{"Seasparrow", 4165000, 399},
	{"Pizzaboy", 10000, 162},
	{"Tram", 25000, 399},
	{"Trailer", 10000, 399},
	{"Turismo", 465500, 172},
	{"Speeder", 100000, 399},
	{"Reefer", 50000, 399},
	{"Tropic", 50000, 399},
	{"Flatbed", 50000, 140},
	{"Yankee", 50000, 94},
	{"Caddy", 5000, 84},
	{"Solair", 15000, 140},
	{"Berkley's RC Van", 25000, 121},
	{"Skimmer", 3210000, 399},
	{"PCJ-600", 110000, 180},
	{"Faggio", 2000, 155},
	{"Freeway", 5000, 180},
	{"RC Baron", 5000, 399},
	{"RC Raider", 5000, 399},
	{"Glendale", 11000, 131},
	{"Oceanic", 11000, 125},
	{"Sanchez", 11000, 164},
	{"Sparrow", 3900000, 399},
	{"Patriot", 80500, 139},
	{"Quad", 12500, 98},
	{"Coastguard", 100000, 399},
	{"Dinghy", 100000, 399},
	{"Hermes", 35000, 133},
	{"Sabre", 27500, 154},
	{"Rustler", 5130000, 399},
	{"ZR-350", 190500, 166},
	{"Walton", 15000, 105},
	{"Regina", 15000, 124},
	{"Comet", 210000, 164},
	{"BMX", 500, 86},
	{"Burrito", 25000, 139},
	{"Camper", 23500, 109},
	{"Marquis", 100000, 399},
	{"Baggage", 10000, 88},
	{"Dozer", 15000, 56},
	{"Maverick", 6150000, 399},
	{"News Chopper", 4450000, 399},
	{"Rancher", 46000, 124},
	{"FBI Rancher", 70000, 139},
	{"Virgo", 35000, 132},
	{"Greenwood", 17500, 125},
	{"Jetmax", 100000, 399},
	{"Hotring Racer A", 120000, 191},
	{"Sandking", 96000, 157},
	{"Blista Compact", 15000, 145},
	{"Police Maverick", 11800000, 399},
	{"Boxville", 25000, 96},
	{"Benson", 25000, 109},
	{"Mesa", 25000, 125},
	{"RC Goblin", 5000, 399},
	{"Hotring Racer B", 120000, 191},
	{"Hotring Racer C", 120000, 191},
	{"Bloodring Banger", 120000, 154},
	{"Rancher", 65000, 124},
	{"Super GT", 385000, 159},
	{"Elegant", 70000, 148},
	{"Journey", 15000, 96},
	{"Bike", 500, 93},
	{"Mountain Bike", 600, 117},
	{"Beagle", 4000000, 399},
	{"Cropdust", 3875000, 399},
	{"Stunt", 8975000, 399},
	{"Tanker", 150000, 107},
	{"Road Train", 255000, 126},
	{"Nebula", 16000, 140},
	{"Majestic", 21500, 140},
	{"Buccaneer", 33000, 146},
	{"Shamal", 17600000, 399},
	{"Hydra", 25950000, 399},
	{"FCR-900", 145000, 190},
	{"NRG-500", 227500, 200},
	{"HPV1000", 14500, 172},
	{"Cement Truck", 100000, 116},
	{"Tow Truck", 65000, 143},
	{"Fortune", 28000, 140},
	{"Cadrona", 28000, 133},
	{"FBI Truck", 64500, 157},
	{"Willard", 35000, 133},
	{"Forklift", 10000, 54},
	{"Tractor", 10000, 62},
	{"Combine", 560000, 98},
	{"Feltzer", 49000, 148},
	{"Remington", 52500, 150},
	{"Slamvan", 43000, 140},
	{"Blade", 39500, 154},
	{"Freight", 100000, 399},
	{"Streak", 100000, 399},
	{"Vortex", 2900000, 89},
	{"Vincent", 45000, 136},
	{"Bullet", 495000, 180},
	{"Clover", 25000, 146},
	{"Sadler", 25000, 134},
	{"Firetruck", 100000, 132},
	{"Hustler", 37000, 131},
	{"Intruder", 40000, 133},
	{"Primo", 32000, 127},
	{"Cargobob", 9250000, 399},
	{"Tampa", 30000, 136},
	{"Sunrise", 29500, 128},
	{"Merit", 44000, 140},
	{"Utility", 46000, 108},
	{"Nevada", 15175000, 399},
	{"Yosemite", 56000, 128},
	{"Windsor", 47000, 141},
	{"Monster Truck B", 160000, 98},
	{"Monster Truck C", 160000, 98},
	{"Uranus", 42000, 139},
	{"Jester", 58500, 158},
	{"Sultan", 69000, 150},
	{"Stratum", 55500, 137},
	{"Elegy", 110000, 158},
	{"Raindance", 7225000, 399},
	{"RC Tiger", 5000, 79},
	{"Flash", 39500, 146},
	{"Tahoma", 24000, 142},
	{"Savanna", 29000, 154},
	{"Bandito", 13000, 130},
	{"Freight", 100000, 399},
	{"Trailer", 10000, 399},
	{"Kart", 10000, 83},
	{"Mower", 10000, 54},
	{"Duneride", 415000, 98},
	{"Sweeper", 10000, 53},
	{"Broadway", 23000, 140},
	{"Tornado", 23000, 140},
	{"AT-400", 32275000, 399},
	{"DFT-30", 65000, 116},
	{"Huntley", 59500, 140},
	{"Stafford", 95500, 136},
	{"BF-400", 76500, 170},
	{"Newsvan", 25000, 121},
	{"Tug", 25000, 76},
	{"Trailer", 10000, 399},
	{"Emperor", 33500, 136},
	{"Wayfarer", 14000, 175},
	{"Euros", 75500, 147},
	{"Hotdog", 25000, 96},
	{"Club", 19500, 145},
	{"Trailer", 10000, 399},
	{"Trailer", 10000, 399},
	{"Andromada", 45995000, 399},
	{"Dodo", 1200000, 399},
	{"RC Cam", 5000, 54},
	{"Launch", 100000, 399},
	{"Police Car (LSPD)", 60000, 156},
	{"Police Car (SFPD)", 60000, 156},
	{"Police Car (LVPD)", 60000, 156},
	{"Ranger", 53000, 140},
	{"Picador", 21500, 134},
	{"S.W.A.T.", 625000, 98},
	{"Alpha", 139500, 150},
	{"Phoenix", 86500, 152},
	{"Glendale Shit", 15000, 131},
	{"Sadler  Shit", 15000, 134},
	{"Luggage Trailer A", 1000, 399},
	{"Luggage Trailer B", 1000, 399},
	{"Stair Trailer", 1000, 399},
	{"Boxville", 25000, 96},
	{"Farm Plow", 1000, 399},
	{"Utility Trailer", 1000, 399}
};


//Vehicle Mods Saving

new tuned;
new spoiler[20][0] = {
	{1000},{1001},{1002},{1003},{1014},{1015},{1016},{1023},{1058},{1060},{1049},
	{1050},{1138},{1139},{1146},{1147},{1158},{1162},{1163},{1164}
};

new nitro[3][0] = {
   {1008},{1009},{1010}
};

new fbumper[23][0] = {
    {1117},{1152},{1153},{1155},{1157},{1160},{1165},{1167},{1169},{1170},{1171},
    {1172},{1173},{1174},{1175},{1179},{1181},{1182},{1185},{1188},{1189},{1192},
    {1193}
};

new rbumper[22][0] = {
    {1140},{1141},{1148},{1149},{1150},{1151},{1154},{1156},{1159},{1161},{1166},
    {1168},{1176},{1177},{1178},{1180},{1183},{1184},{1186},{1187},{1190},{1191}
};

new exhaust[28][0] = {
    {1018},{1019},{1020},{1021},{1022},{1028},{1029},{1037},{1043},{1044},{1045},
    {1046},{1059},{1064},{1065},{1066},{1089},{1092},{1104},{1105},{1113},{1114},
	{1126},{1127},{1129},{1132},{1135},{1136}
};

new bventr[2][0] = {
    {1142},{1144}
};

new bventl[2][0] = {
    {1143},{1145}
};

new bscoop[4][0] = {
	{1004},{1005},{1011},{1012}
};

new rscoop[17][0] = {
    {1006},{1032},{1033},{1035},{1038},{1053},{1054},{1055},{1061},{1067},{1068},
    {1088},{1091},{1103},{1128},{1130},{1131}
};

new lskirt[21][0] = {
    {1007},{1026},{1031},{1036},{1039},{1042},{1047},{1048},{1056},{1057},{1069},
    {1070},{1090},{1093},{1106},{1108},{1118},{1119},{1133},{1122},{1134}
};

new rskirt[21][0] = {
    {1017},{1027},{1030},{1040},{1041},{1051},{1052},{1062},{1063},{1071},{1072},
	{1094},{1095},{1099},{1101},{1102},{1107},{1120},{1121},{1124},{1137}
};

new hydraulics[1][0] = {
    {1087}
};

new rbase[1][0] = {
    {1086}
};

new rbbars[4][0] = {
    {1109},{1110},{1123},{1125}
};

new fbbars[2][0] = {
    {1115},{1116}
};

new wheels[17][0] = {
    {1025},{1073},{1074},{1075},{1076},{1077},{1078},{1079},{1080},{1081},{1082},
    {1083},{1084},{1085},{1096},{1097},{1098}
};

new lights[2][0] = {
	{1013},{1024}
};



stock SetPlayerFacingObject(playerid,Float:x,Float:y)
{
	new Float:px,Float:py,Float:pz;
  	GetPlayerPos(playerid,px,py,pz);
  	SetPlayerFacingAngle(playerid,(atan2((y - py), (x - px)) + 270.0));
}

stock Float: GetXYInFrontOfPlayer(playerid, &Float:q, &Float:w, Float:distance)
{
    new Float:a;
    GetPlayerPos(playerid, q, w, a);
    if (GetPlayerState(playerid) == PLAYER_STATE_DRIVER) GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
    else GetPlayerFacingAngle(playerid, a);
    q += (distance * floatsin(-a, degrees));
    w += (distance * floatcos(-a, degrees));
    return a;
}

stock GetXYInLeftOfPlayer(playerid, &Float:x, &Float:y, Float:distance)
{
	new Float:a;
	GetPlayerPos(playerid, x, y, a);

	if(GetPlayerVehicleID(playerid)) { GetVehicleZAngle(GetPlayerVehicleID(playerid), a); } else { GetPlayerFacingAngle(playerid, a); }

	x += (distance * floatsin(-a +270, degrees));
	y += (distance * floatcos(-a +270, degrees));
}

stock GetXYInLeftOfPoint(Float:inx,Float:iny,Float:ina, &Float:x, &Float:y, Float:distance)
{
	x=inx,y=iny;
	x += (distance * floatsin(-ina +270, degrees));
	y += (distance * floatcos(-ina +270, degrees));
}

stock GetXYBehindPlayer(playerid, &Float:x, &Float:y, Float:distance)
{
    new Float:a;

    GetPlayerPos(playerid, x, y, a);
    GetPlayerFacingAngle(playerid, a);
    if (IsPlayerInAnyVehicle(playerid)) GetVehicleZAngle(GetPlayerVehicleID(playerid), a);
    x -= (distance * floatsin(-a, degrees));
    y -= (distance * floatcos(-a, degrees));
}


stock TextDrawSetStringEX(Text:text, string[])
{
  if(_:text != INVALID_TEXT_DRAW)
  {
     if (string[0] == '\0' || string[0] == '\1' && string[1] == '\0')
     {
            TextDrawSetString(text, " ");
     }
     else
     {
            TextDrawSetString(text, string);
     }
  }
  return 1;
}
stock PlayerTextDrawSetStringEX(playerid,PlayerText:text, string[])
{
  if(_:text != INVALID_TEXT_DRAW)
  {
     if (string[0] == '\0' || string[0] == '\1' && string[1] == '\0')
     {
            PlayerTextDrawSetString(playerid,text, " ");
     }
     else
     {
            PlayerTextDrawSetString(playerid,text, string);
     }
  }
  return 1;
}


stock IsPlayerInRangeOfPlayer(playerid, id, Float:range)
{
	new Float:x,Float:y,Float:z;
	GetPlayerPos(id,x,y,z);
	if(IsPlayerInRangeOfPoint(playerid,range,x,y,z)) return 1;
	return 0;                     /*                */
}



stock IsPlayerInArea(playerid, Float:MinX, Float:MinY, Float:MaxX, Float:MaxY)
{
                new Float:X, Float:Y, Float:Z;
                GetPlayerPos(playerid, X, Y, Z);
                if(X >= MinX && X <= MaxX && Y >= MinY && Y <= MaxY) {
                        return 1;
                }
                return 0;
}
stock stringContainsIP(const szStr[])
{
	if(strlen(szStr) < 8) return 0;
	new
        iDots,
        i
    ;
    while(szStr[i] != EOS)
    {
        if('0' <= szStr[i] <= '9')
        {
            do
            {
                if(szStr[i] == '.')
                    iDots++;

                i++;
            }
            while(('0' <= szStr[i] <= '9') || szStr[i] == '.' || szStr[i] == ':');
        }
        if(iDots > 2)
            return 1;
        else
            iDots = 0;

        i++;
    }
    return 0;
}




stock SplitIp (ipstring [])
{
	new
		j,
		bytes [4],
		word;

	for (new i = 0, len = strlen (ipstring); i < len; ++i)
	{
	    if (j > 3)
	        return 0xFFFFFFFF;

		if (ipstring [i] == ' ')
		    continue;

		if (ipstring [i] == '*')
		    bytes [j] = 0xFF;
		else if (ipstring [i] == '.')
		{
		    ++j;
		}
		else if ('0' <= ipstring [i] <= '9')
		{
		    bytes [j] = 10 * bytes [j] + ipstring [i] - '0';
		    if (bytes [j] > 0xFF || bytes [j] < 0)
		        return 0xFFFFFFFF;
		}
		else
		    return 0xFFFFFFFF;
	}

	if (j != 3)
	    return 0xFFFFFFFF;

	BytesToWord (bytes [0], bytes [1], bytes [2], bytes [3], word);
	return word;
}
stock BytesToWord (byte0, byte1, byte2, byte3, &word, mode = 0)
{
	switch (mode)
	{
	    case 0:
	    {
	        new bytes [4 char]; // 4 char = 1
			bytes {0} = byte0;
			bytes {1} = byte1;
			bytes {2} = byte2;
			bytes {3} = byte3;
			word = bytes [0];
	    }

	    default:
     	{
	        word = byte3; // & 0xFF;
	        word |= (byte2 << 8); // & 0xFF00;
	        word |= (byte1 << 16); // & 0xFF0000;
	        word |= (byte0 << 24); // & 0xFF000000;
	    }
	}
}

stock str_replace( const search[], const replacement[],string[], bool:ignorecase = true, pos = 0, limit = -1, maxlength = sizeof(string)) {
    // No need to do anything if the limit is 0.
    if (limit == 0)
        return 0;

    new
             sublen = strlen(search),
             replen = strlen(replacement),
        bool:packed = ispacked(string),
             maxlen = maxlength,
             len = strlen(string),
             count = 0
    ;


    // "maxlen" holds the max string length (not to be confused with "maxlength", which holds the max. array size).
    // Since packed strings hold 4 characters per array slot, we multiply "maxlen" by 4.
    if (packed)
        maxlen *= 4;

    // If the length of the substring is 0, we have nothing to look for..
    if (!sublen)
        return 0;

    // In this line we both assign the return value from "strfind" to "pos" then check if it's -1.
    while (-1 != (pos = strfind(string, search, ignorecase, pos))) {
        // Delete the string we found
        strdel(string, pos, pos + sublen);

        len -= sublen;

        // If there's anything to put as replacement, insert it. Make sure there's enough room first.
        if (replen && len + replen < maxlen) {
            strins(string, replacement, pos, maxlength);

            pos += replen;
            len += replen;
        }

        // Is there a limit of number of replacements, if so, did we break it?
        if (limit != -1 && ++count >= limit)
            break;
    }

    return count;
}
new legalmods[48][22] = {
    {400, 1024,1021,1020,1019,1018,1013,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {401, 1145,1144,1143,1142,1020,1019,1017,1013,1007,1006,1005,1004,1003,1001,0000,0000,0000,0000},
    {404, 1021,1020,1019,1017,1016,1013,1007,1002,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {405, 1023,1021,1020,1019,1018,1014,1001,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {410, 1024,1023,1021,1020,1019,1017,1013,1007,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000},
    {415, 1023,1019,1018,1017,1007,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {418, 1021,1020,1016,1006,1002,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {420, 1021,1019,1005,1004,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {421, 1023,1021,1020,1019,1018,1016,1014,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {422, 1021,1020,1019,1017,1013,1007,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {426, 1021,1019,1006,1005,1004,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {436, 1022,1021,1020,1019,1017,1013,1007,1006,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000},
    {439, 1145,1144,1143,1142,1023,1017,1013,1007,1003,1001,0000,0000,0000,0000,0000,0000,0000,0000},
    {477, 1021,1020,1019,1018,1017,1007,1006,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {478, 1024,1022,1021,1020,1013,1012,1005,1004,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {489, 1024,1020,1019,1018,1016,1013,1006,1005,1004,1002,1000,0000,0000,0000,0000,0000,0000,0000},
    {491, 1145,1144,1143,1142,1023,1021,1020,1019,1018,1017,1014,1007,1003,0000,0000,0000,0000,0000},
    {492, 1016,1006,1005,1004,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {496, 1143,1142,1023,1020,1019,1017,1011,1007,1006,1003,1002,1001,0000,0000,0000,0000,0000,0000},
    {500, 1024,1021,1020,1019,1013,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {516, 1021,1020,1019,1018,1017,1016,1015,1007,1004,1002,1000,0000,0000,0000,0000,0000,0000,0000},
    {517, 1145,1144,1143,1142,1023,1020,1019,1018,1017,1016,1007,1003,1002,0000,0000,0000,0000,0000},
    {518, 1145,1144,1143,1142,1023,1020,1018,1017,1013,1007,1006,1005,1003,1001,0000,0000,0000,0000},
    {527, 1021,1020,1018,1017,1015,1014,1007,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {529, 1023,1020,1019,1018,1017,1012,1011,1007,1006,1003,1001,0000,0000,0000,0000,0000,0000,0000},
    {534, 1185,1180,1179,1178,1127,1126,1125,1124,1123,1122,1106,1101,1100,0000,0000,0000,0000,0000},
    {535, 1121,1120,1119,1118,1117,1116,1115,1114,1113,1110,1109,0000,0000,0000,0000,0000,0000,0000},
    {536, 1184,1183,1182,1181,1128,1108,1107,1105,1104,1103,0000,0000,0000,0000,0000,0000,0000,0000},
    {540, 1145,1144,1143,1142,1024,1023,1020,1019,1018,1017,1007,1006,1004,1001,0000,0000,0000,0000},
    {542, 1145,1144,1021,1020,1019,1018,1015,1014,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {546, 1145,1144,1143,1142,1024,1023,1019,1018,1017,1007,1006,1004,1002,1001,0000,0000,0000,0000},
    {547, 1143,1142,1021,1020,1019,1018,1016,1003,1000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {549, 1145,1144,1143,1142,1023,1020,1019,1018,1017,1012,1011,1007,1003,1001,0000,0000,0000,0000},
    {550, 1145,1144,1143,1142,1023,1020,1019,1018,1006,1005,1004,1003,1001,0000,0000,0000,0000,0000},
    {551, 1023,1021,1020,1019,1018,1016,1006,1005,1003,1002,0000,0000,0000,0000,0000,0000,0000,0000},
    {558, 1168,1167,1166,1165,1164,1163,1095,1094,1093,1092,1091,1090,1089,1088,0000,0000,0000,0000},
    {559, 1173,1162,1161,1160,1159,1158,1072,1071,1070,1069,1068,1067,1066,1065,0000,0000,0000,0000},
    {560, 1170,1169,1141,1140,1139,1138,1033,1032,1031,1030,1029,1028,1027,1026,0000,0000,0000,0000},
    {561, 1157,1156,1155,1154,1064,1063,1062,1061,1060,1059,1058,1057,1056,1055,1031,1030,1027,1026},
    {562, 1172,1171,1149,1148,1147,1146,1041,1040,1039,1038,1037,1036,1035,1034,0000,0000,0000,0000},
    {565, 1153,1152,1151,1150,1054,1053,1052,1051,1050,1049,1048,1047,1046,1045,0000,0000,0000,0000},
    {567, 1189,1188,1187,1186,1133,1132,1131,1130,1129,1102,0000,0000,0000,0000,0000,0000,0000,0000},
    {575, 1177,1176,1175,1174,1099,1044,1043,1042,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {576, 1193,1192,1191,1190,1137,1136,1135,1134,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {580, 1023,1020,1018,1017,1007,1006,1001,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {589, 1145,1144,1024,1020,1018,1017,1016,1013,1007,1006,1005,1004,1000,0000,0000,0000,0000,0000},
    {600, 1022,1020,1018,1017,1013,1007,1006,1005,1004,0000,0000,0000,0000,0000,0000,0000,0000,0000},
    {603, 1145,1144,1143,1142,1024,1023,1020,1019,1018,1017,1007,1006,1001,0000,0000,0000,0000,0000}
};


iswheelmodel(modelid)
{
	new wheelmodels[17] = {1025,1073,1074,1075,1076,1077,1078,1079,1080,1081,1082,1083,1084,1085,1096,1097,1098};
	for(new wm; wm < sizeof(wheelmodels); wm++)
	{
	    if (modelid == wheelmodels[wm]) return true;
	}
	return false;
}

IllegalCarNitroIde(carmodel) {
new illegalvehs[29] = { 581, 523, 462, 521, 463, 522, 461, 448, 468, 586, 509, 481, 510, 472, 473, 493, 595, 484, 430, 453, 452, 446, 454, 590, 569, 537, 538, 570, 449 };
for(new iv; iv < sizeof(illegalvehs); iv++) {
    if (carmodel == illegalvehs[iv])
        return true;
}
return false;
}

stock islegalcarmod(vehicleide, componentid) {
new modok = false;
if ( (iswheelmodel(componentid)) || (componentid == 1086) || (componentid == 1087) || ((componentid >= 1008) && (componentid <= 1010))) {
    new nosblocker = IllegalCarNitroIde(vehicleide);
    if (!nosblocker)
        modok = true;
} else {
    for(new lm; lm < sizeof(legalmods); lm++) {
        if (legalmods[lm][0] == vehicleide) {
            for(new J = 1; J < 22; J++) {
                if (legalmods[lm][J] == componentid)
                    modok = true;
            }
        }
    }
}
return modok;
}
/*
stock Float:GetVehicleSpeed(vehicleid,UseMPH = 0)
{
	new Float:speed_x,Float:speed_y,Float:speed_z,Float:temp_speed;
	GetVehicleVelocity(vehicleid,speed_x,speed_y,speed_z);
	if(UseMPH == 0)
	{
//	    temp_speed = floatsqroot(((speed_x*speed_x)+(speed_y*speed_y))+(speed_z*speed_z))*136.666667;
	    temp_speed = floatsqroot((speed_x*speed_x)+(speed_y*speed_y))*136.666667;
	}
	else
	{
//	    temp_speed = floatsqroot(((speed_x*speed_x)+(speed_y*speed_y))+(speed_z*speed_z))*85.4166672;
	    temp_speed = floatsqroot((speed_x*speed_x)+(speed_y*speed_y))*85.4166672;
	}
	floatround(temp_speed,floatround_round);
	return temp_speed;
}*/

stock isNumeric(const string[])
{
  new length=strlen(string);
  if (length==0) return false;
  for (new i = 0; i < length; i++)
    {
      if (
            (string[i] > '9' || string[i] < '0' && string[i]!='-' && string[i]!='+') // Not a number,'+' or '-'
             || (string[i]=='-' && i!=0)                                             // A '-' but not at first.
             || (string[i]=='+' && i!=0)                                             // A '+' but not at first.
         ) return false;
    }
  if (length==1 && (string[0]=='-' || string[0]=='+')) return false;
  return true;
}


stock GetVehicleMaxSpeed (vehicleid)
{
	new modelid = GetVehicleModel (vehicleid) - 400;

	if (modelid >= 0 && modelid < sizeof (vInfo))
	    return vInfo[modelid][vMaxSpeed];
	return 9999;
}

stock urlencode(string[]) {
        new ret[0xff];
        ret[0] = 0;
        new i = 0;
        new p = 0;
        new s = 0;
        while (string[i] != 0) {
                if  (
                (string[i] >= 'A' && string[i] <='Z')
                || (string[i] >= 'a' && string[i] <='z')
                || (string[i] >= '0' && string[i] <='9')
                || (string[i] == '-')
                || (string[i] == '_')
                || (string[i] == '.')
                ) {
                        ret[p] = string[i];
                } else {
                        //
                        ret[p] = '%';
                        p++;
                        s = (string[i] % 16); //
                        ret[p+1] = (s>9) ? (55+s) : (48+s); // 64 - 9 = 55
                        s = floatround((string[i] - s)/16);
                        ret[p] = (s>9) ? (55+s) : (48+s); // 64 - 9 = 55
                        p++;
                }
                p++;
                i++;
        }
        return ret;
}

stock Float:GetDistanceBetweenPoints(Float:rx1,Float:ry1,Float:rz1,Float:rx2,Float:ry2,Float:rz2)
{
    return floatadd(floatadd(floatsqroot(floatpower(floatsub(rx1,rx2),2)),floatsqroot(floatpower(floatsub(ry1,ry2),2))),floatsqroot(floatpower(floatsub(rz1,rz2),2)));
}
stock crossp(Float:v1x, Float:v1y, Float:v1z, Float:v2x, Float:v2y, Float:v2z, &Float:output)
{
	new
		Float:c1 = (v1y * v2z) - (v1z * v2y),
		Float:c2 = (v1z * v2x) - (v1x * v2z),
        Float:c3 = (v1x * v2y) - (v1y * v2x);
    output = floatsqroot ((c1 * c1) + (c2 * c2) + (c3 * c3));
    return 0;
}

stock TrollArmed(vehicleid)
{
          new Float:x,Float:y,Float:z,Float:a;
		  GetVehicleVelocity(vehicleid,x,y,z);
		  GetVehicleZAngle(vehicleid,a);
		  SetVehicleZAngle(vehicleid,a+180.0);
		  SetVehicleVelocity(vehicleid,(-x),(-y),(-z));
}
