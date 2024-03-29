#include <irc>

// Name that everyone will see
#define BOT_1_NICKNAME "Bot1"
// Name that will only be visible in a whois
#define BOT_1_REALNAME "SA-MP Bot1"
// Name that will be in front of the hostname (username@hostname)
#define BOT_1_USERNAME "bot1"

#define BOT_2_NICKNAME "Bot2"
#define BOT_2_REALNAME "SA-MP Bot2"
#define BOT_2_USERNAME "bot2"


#define BOT_3_NICKNAME "Bot3"
#define BOT_3_REALNAME "SA-MP Bot3"
#define BOT_3_USERNAME "bot3"


#define IRC_SERVER "irc.foco.co"
#define IRC_PORT (6667)
#define IRC_CHANNEL "#GTADM"
#define IRC_CHANNEL2 "#nXs-Clan"
#define IRC_CHANNEL3 "#GTADM.Admins"

// Maximum number of bots in the filterscript
#define MAX_BOTS (3)

#define PLUGIN_VERSION "1.4.3"
new IRCoff[MAX_PLAYERS];
new botIDs[MAX_BOTS], groupID;

/*
	When the filterscript is loaded, two bots will connect and a group will be
	created for them.
*/

stock IIRC_OnGameModeInit()
{
	// Connect the first bot
	botIDs[0] = IRC_Connect(IRC_SERVER, IRC_PORT, BOT_1_NICKNAME, BOT_1_REALNAME, BOT_1_USERNAME);
	// Set the connect delay for the first bot to 20 seconds
	IRC_SetIntData(botIDs[0], E_IRC_CONNECT_DELAY, 20);
	// Connect the second bot
	botIDs[1] = IRC_Connect(IRC_SERVER, IRC_PORT, BOT_2_NICKNAME, BOT_2_REALNAME, BOT_2_USERNAME);
	// Set the connect delay for the second bot to 30 seconds
	IRC_SetIntData(botIDs[1], E_IRC_CONNECT_DELAY, 30);

	botIDs[2] = IRC_Connect(IRC_SERVER, IRC_PORT, BOT_3_NICKNAME, BOT_3_REALNAME, BOT_3_USERNAME);
	// Set the connect delay for the second bot to 30 seconds
	IRC_SetIntData(botIDs[2], E_IRC_CONNECT_DELAY, 40);
	// Create a group (the bots will be added to it upon connect)
	groupID = IRC_CreateGroup();
	return 1;
}

/*
	When the filterscript is unloaded, the bots will disconnect, and the group
	will be destroyed.
*/

stock IRC_OnFilterScriptExit()
{
	// Disconnect the first bot
	IRC_Quit(botIDs[0], "Filterscript exiting");
	// Disconnect the second bot
	IRC_Quit(botIDs[1], "Filterscript exiting");
	IRC_Quit(botIDs[2], "Filterscript exiting");
	// Destroy the group
	IRC_DestroyGroup(groupID);
	return 1;
}

/*
	The standard SA-MP callbacks are below. We will echo a few of them to the
	IRC channel.
*/
stock IRC_OnAdminLogin(playerid,type)
{
	new joinMsg[128],name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, sizeof(name));
	if(type == 1)
	{
		format(joinMsg, sizeof(joinMsg), "02[%d] 03*** %s has logged in to Admin.", playerid, name);
		IRC_GroupSay(groupID, IRC_CHANNEL3, joinMsg);

	}
	else if(type == 2)
	{
	
		format(joinMsg, sizeof(joinMsg), "02[%d] 03*** %s has logged in to RCON.", playerid, name);
		IRC_GroupSay(groupID, IRC_CHANNEL3, joinMsg);
	}
	return 1;

}
stock IRC_OnPlayerConnect(playerid)
{
	new joinMsg[128], name[MAX_PLAYER_NAME];
	GetPlayerName(playerid, name, sizeof(name));
	format(joinMsg, sizeof(joinMsg), "02[%d] 03*** %s has joined the server.", playerid, name);
	IRC_GroupSay(groupID, IRC_CHANNEL, joinMsg);
	IRC_GroupSay(groupID, IRC_CHANNEL3, joinMsg);
	return 1;
}

stock IRC_OnPlayerDisconnect(playerid, reason)
{
	new leaveMsg[128], name[MAX_PLAYER_NAME], reasonMsg[8];
	switch(reason)
	{
		case 0: reasonMsg = "Timeout";
		case 1: reasonMsg = "Leaving";
		case 2: reasonMsg = "Kicked";
	}
	GetPlayerName(playerid, name, sizeof(name));
	format(leaveMsg, sizeof(leaveMsg), "02[%d] 03*** %s has left the server. (%s)", playerid, name, reasonMsg);
	IRC_GroupSay(groupID, IRC_CHANNEL, leaveMsg);
	IRC_GroupSay(groupID, IRC_CHANNEL3, leaveMsg);
	return 1;
}

stock IRC_OnPlayerDeath(playerid, killerid, reason)
{
	new msg[128], killerName[MAX_PLAYER_NAME], reasonMsg[32], playerName[MAX_PLAYER_NAME];
	GetPlayerName(killerid, killerName, sizeof(killerName));
	GetPlayerName(playerid, playerName, sizeof(playerName));
	if (killerid != INVALID_PLAYER_ID)
	{
		switch (reason)
		{
			case 0: reasonMsg = "Unarmed";
			case 1: reasonMsg = "Brass Knuckles";
			case 2: reasonMsg = "Golf Club";
			case 3: reasonMsg = "Night Stick";
			case 4: reasonMsg = "Knife";
			case 5: reasonMsg = "Baseball Bat";
			case 6: reasonMsg = "Shovel";
			case 7: reasonMsg = "Pool Cue";
			case 8: reasonMsg = "Katana";
			case 9: reasonMsg = "Chainsaw";
			case 10: reasonMsg = "Dildo";
			case 11: reasonMsg = "Dildo";
			case 12: reasonMsg = "Vibrator";
			case 13: reasonMsg = "Vibrator";
			case 14: reasonMsg = "Flowers";
			case 15: reasonMsg = "Cane";
			case 22: reasonMsg = "Pistol";
			case 23: reasonMsg = "Silenced Pistol";
			case 24: reasonMsg = "Desert Eagle";
			case 25: reasonMsg = "Shotgun";
			case 26: reasonMsg = "Sawn-off Shotgun";
			case 27: reasonMsg = "Combat Shotgun";
			case 28: reasonMsg = "MAC-10";
			case 29: reasonMsg = "MP5";
			case 30: reasonMsg = "AK-47";
			case 31: reasonMsg = "M4";
			case 32: reasonMsg = "TEC-9";
			case 33: reasonMsg = "Country Rifle";
			case 34: reasonMsg = "Sniper Rifle";
			case 37: reasonMsg = "Fire";
			case 38: reasonMsg = "Minigun";
			case 41: reasonMsg = "Spray Can";
			case 42: reasonMsg = "Fire Extinguisher";
			case 49: reasonMsg = "Vehicle Collision";
			case 50: reasonMsg = "Vehicle Collision";
			case 51: reasonMsg = "Explosion";
			default: reasonMsg = "Unknown";
		}
		format(msg, sizeof(msg), "04*** %s killed %s. (%s)", killerName, playerName, reasonMsg);
	}
	else
	{
		switch (reason)
		{
			case 53: format(msg, sizeof(msg), "04*** %s died. (Drowned)", playerName);
			case 54: format(msg, sizeof(msg), "04*** %s died. (Collision)", playerName);
			default: format(msg, sizeof(msg), "04*** %s died.", playerName);
		}
	}
	IRC_GroupSay(groupID, IRC_CHANNEL, msg);
	IRC_GroupSay(groupID, IRC_CHANNEL3, msg);
	return 1;
}

stock IRC_OnPlayerText(playerid, text[])
{
	new name[MAX_PLAYER_NAME], ircMsg[256];
	GetPlayerName(playerid, name, sizeof(name));
	format(ircMsg, sizeof(ircMsg), "02[%d] 07%s: %s", playerid, name, text);
    IRC_GroupSay(groupID, IRC_CHANNEL, ircMsg);
	return 1;
}

stock IRC_OnAdminText(playerid, text[])
{
	new name[MAX_PLAYER_NAME], ircMsg[256];
	GetPlayerName(playerid, name, sizeof(name));
	format(ircMsg, sizeof(ircMsg), "02[%d] 07%s: -AdminChat- %s", playerid, name, text);
	IRC_GroupSay(groupID, IRC_CHANNEL3, ircMsg);
	return 1;
}
stock IRC_OnGangText(playerid, text[])
{
	new name[MAX_PLAYER_NAME], ircMsg[256];
	GetPlayerName(playerid, name, sizeof(name));
	format(ircMsg, sizeof(ircMsg), "02[%d] 07%s: -GangChat- %s", playerid, name, text);
	IRC_GroupSay(groupID, IRC_CHANNEL3, ircMsg);
	return 1;
}
stock IRC_OnVehText(playerid, text[])
{
	new name[MAX_PLAYER_NAME], ircMsg[256];
	GetPlayerName(playerid, name, sizeof(name));
	format(ircMsg, sizeof(ircMsg), "02[%d] 07%s: -VehicleChat- %s", playerid, name, text);
	IRC_GroupSay(groupID, IRC_CHANNEL3, ircMsg);
	return 1;
}
stock IRC_On5Text(playerid, text[])
{
	new name[MAX_PLAYER_NAME], ircMsg[256];
	GetPlayerName(playerid, name, sizeof(name));
	format(ircMsg, sizeof(ircMsg), "02[%d] 07%s: -Lvl5+Chat- %s", playerid, name, text);
	IRC_GroupSay(groupID, IRC_CHANNEL3, ircMsg);
	return 1;
}
stock IRC_OnRconText(playerid, text[])
{
	new name[MAX_PLAYER_NAME], ircMsg[256];
	GetPlayerName(playerid, name, sizeof(name));
	format(ircMsg, sizeof(ircMsg), "02[%d] 07%s: -RconChat- %s", playerid, name, text);
	IRC_GroupSay(groupID, IRC_CHANNEL3, ircMsg);
	return 1;
}
stock IRC_OnPhoneText(playerid, text[])
{
	new name[MAX_PLAYER_NAME], ircMsg[256];
	GetPlayerName(playerid, name, sizeof(name));
	format(ircMsg, sizeof(ircMsg), "02[%d] 07%s: -PhoneChat- %s", playerid, name, text);
	IRC_GroupSay(groupID, IRC_CHANNEL3, ircMsg);
	return 1;
}
stock IRC_OnJonnyText(text[])
{
	new ircMsg[256];
	format(ircMsg, sizeof(ircMsg), "02[1337] 07Jonny: %s", text);
	IRC_GroupSay(groupID, IRC_CHANNEL, ircMsg);
	return 1;
}

stock IRC_OnPlayerCommand(text[])
{
     IRC_GroupSay(groupID, IRC_CHANNEL3, text);
}
stock IRC_OnPlayerPM(text[])
{
     IRC_GroupSay(groupID, IRC_CHANNEL3, text);
}

/*
	The IRC callbacks are below. Many of these are simply derived from parsed
	raw messages received from the IRC server. They can be used to inform the
	bot of new activity in any of the channels it has joined.
*/

/*
	This callback is executed whenever a bot successfully connects to an IRC
	server.
*/

public IRC_OnConnect(botid, ip[], port)
{
	printf("*** IRC_OnConnect: Bot ID %d connected to %s:%d", botid, ip, port);
	// Join the channel
	IRC_JoinChannel(botid, IRC_CHANNEL);
	IRC_JoinChannel(botid, IRC_CHANNEL2);
	IRC_JoinChannel(botid, IRC_CHANNEL3);
	// Add the bot to the group
	IRC_AddToGroup(groupID, botid);
	return 1;
}

/*
	This callback is executed whenever a current connection is closed. The
	plugin may automatically attempt to reconnect per user settings. IRC_Quit
	may be called at any time to stop the reconnection process.
*/

public IRC_OnDisconnect(botid, ip[], port, reason[])
{
	//printf("*** IRC_OnDisconnect: Bot ID %d disconnected from %s:%d (%s)", botid, ip, port, reason);
	// Remove the bot from the group
	IRC_RemoveFromGroup(groupID, botid);
	return 1;
}

/*
	This callback is executed whenever a connection attempt begins. IRC_Quit may
	be called at any time to stop the reconnection process.
*/

public IRC_OnConnectAttempt(botid, ip[], port)
{
//	printf("*** IRC_OnConnectAttempt: Bot ID %d attempting to connect to %s:%d...", botid, ip, port);
	return 1;
}

/*
	This callback is executed whenever a connection attempt fails. IRC_Quit may
	be called at any time to stop the reconnection process.
*/

public IRC_OnConnectAttemptFail(botid, ip[], port, reason[])
{
//	printf("*** IRC_OnConnectAttemptFail: Bot ID %d failed to connect to %s:%d (%s)", botid, ip, port, reason);
	return 1;
}

/*
	This callback is executed whenever a bot joins a channel.
*/

public IRC_OnJoinChannel(botid, channel[])
{
	printf("*** IRC_OnJoinChannel: Bot ID %d joined channel %s", botid, channel);
	IRC_SendRaw(botid, "ns identify 123456");
	return 1;
}

/*
	This callback is executed whenevever a bot leaves a channel.
*/

public IRC_OnLeaveChannel(botid, channel[], message[])
{
	printf("*** IRC_OnLeaveChannel: Bot ID %d left channel %s (%s)", botid, channel, message);
	return 1;
}

/*
	This callback is executed whenevever a bot is invited to a channel.
*/

public IRC_OnInvitedToChannel(botid, channel[], invitinguser[], invitinghost[])
{
	printf("*** IRC_OnInvitedToChannel: Bot ID %d invited to channel %s by %s (%s)", botid, channel, invitinguser, invitinghost);
	IRC_JoinChannel(botid, channel);
	return 1;
}

/*
	This callback is executed whenevever a bot is kicked from a channel. If the
	bot cannot immediately rejoin the channel (in the event, for example, that
	the bot is kicked and then banned), you might want to set up a timer here
	for rejoin attempts.
*/

public IRC_OnKickedFromChannel(botid, channel[], oppeduser[], oppedhost[], message[])
{
	printf("*** IRC_OnKickedFromChannel: Bot ID %d kicked by %s (%s) from channel %s (%s)", botid, oppeduser, oppedhost, channel, message);
	IRC_JoinChannel(botid, channel);
	return 1;
}

public IRC_OnUserDisconnect(botid, user[], host[], message[])
{
	printf("*** IRC_OnUserDisconnect (Bot ID %d): User %s (%s) disconnected (%s)", botid, user, host, message);
	return 1;
}

public IRC_OnUserJoinChannel(botid, channel[], user[], host[])
{
	printf("*** IRC_OnUserJoinChannel (Bot ID %d): User %s (%s) joined channel %s", botid, user, host, channel);
	return 1;
}

public IRC_OnUserLeaveChannel(botid, channel[], user[], host[], message[])
{
	printf("*** IRC_OnUserLeaveChannel (Bot ID %d): User %s (%s) left channel %s (%s)", botid, user, host, channel, message);
	return 1;
}

public IRC_OnUserKickedFromChannel(botid, channel[], kickeduser[], oppeduser[], oppedhost[], message[])
{
	printf("*** IRC_OnUserKickedFromChannel (Bot ID %d): User %s kicked by %s (%s) from channel %s (%s)", botid, kickeduser, oppeduser, oppedhost, channel, message);
}

public IRC_OnUserNickChange(botid, oldnick[], newnick[], host[])
{
	printf("*** IRC_OnUserNickChange (Bot ID %d): User %s (%s) changed his/her nick to %s", botid, oldnick, host, newnick);
	return 1;
}

public IRC_OnUserSetChannelMode(botid, channel[], user[], host[], mode[])
{
	printf("*** IRC_OnUserSetChannelMode (Bot ID %d): User %s (%s) on %s set mode: %s", botid, user, host, channel, mode);
	return 1;
}

public IRC_OnUserSetChannelTopic(botid, channel[], user[], host[], topic[])
{
	printf("*** IRC_OnUserSetChannelTopic (Bot ID %d): User %s (%s) on %s set topic: %s", botid, user, host, channel, topic);
	return 1;
}
public IRC_OnUserSay(botid, recipient[], user[], host[], message[])
{
  if(strcmp(user,BOT_1_NICKNAME) && strcmp(user,BOT_2_NICKNAME) && strcmp(user,BOT_3_NICKNAME))
  {
   if(!strcmp(recipient,"#GTADM.Admins") && IRC_IsVoice(botid,recipient,user))
   {
	new str[150];
	format(str,sizeof(str),"(IRC Adminchat) > {61855A}%s:{1AFF00} %s",user,message);
	printf("IRC > Admin < %s: %s",user, message);
	// Someone sent the first bot a private message
	foreach(new i : Player) if(IsAdmin(i,1)) SendClientMessage(i,0x1AFF00FF,str);
   }
   else if(!strcmp(recipient,"#GTADM"))
   {
    printf("IRC > %s: %s",user, message);
	foreach(new i : Player)
	{
	  if(IRCoff[i] == 0)
	  {
		new str[150];
		format(str,sizeof(str),"{BFFFB3}> IRC < {61855A}%s: {FFFFFF}%s",user,message);
		
		// Someone sent the first bot a private message
		SendClientMessage(i,-1,str);
	  }
	}
   }
  }
  return 1;
}
public IRC_OnUserNotice(botid, recipient[], user[], host[], message[])
{
/*
	printf("*** IRC_OnUserNotice (Bot ID %d): User %s (%s) sent notice to %s: %s", botid, user, host, recipient, message);
	// Someone sent the second bot a notice (probably a network service)
	if (!strcmp(recipient, BOT_2_NICKNAME))
	{
		IRC_Notice(botid, user, "You sent me a notice!");
	}*/
	return 1;
}

public IRC_OnUserRequestCTCP(botid, user[], host[], message[])
{/*
	printf("*** IRC_OnUserRequestCTCP (Bot ID %d): User %s (%s) sent CTCP request: %s", botid, user, host, message);
	// Someone sent a CTCP VERSION request
	if (!strcmp(message, "VERSION"))
	{
		IRC_ReplyCTCP(botid, user, "VERSION SA-MP IRC Plugin v" #PLUGIN_VERSION "");
	}*/
	return 1;
}

public IRC_OnUserReplyCTCP(botid, user[], host[], message[])
{
//	printf("*** IRC_OnUserReplyCTCP (Bot ID %d): User %s (%s) sent CTCP reply: %s", botid, user, host, message);
	return 1;
}

/*
	This callback is useful for logging, debugging, or catching error messages
	sent by the IRC server.
*/

public IRC_OnReceiveRaw(botid, message[])
{
	new File:file;
	if (!fexist("irc_log.txt"))
	{
		file = fopen("irc_log.txt", io_write);
	}
	else
	{
		file = fopen("irc_log.txt", io_append);
	}
	if (file)
	{
		fwrite(file, message);
		fwrite(file, "\r\n");
		fclose(file);
	}
	return 1;
}

/*
	Some examples of channel commands are here. You can add more very easily;
	their implementation is identical to that of ZeeX's zcmd.
*/

IRCCMD:say(botid, channel[], user[], host[], params[])
{
	// Check if the user has at least voice in the channel
	if (IRC_IsVoice(botid, channel, user))
	{
		// Check if the user entered any text
		if (!isnull(params))
		{
			new msg[128];
			// Echo the formatted message
			format(msg, sizeof(msg), "02*** %s on IRC: %s", user, params);
			IRC_GroupSay(groupID, channel, msg);
			format(msg, sizeof(msg), "*** %s on IRC: %s", user, params);
			SendClientMessageToAll(0x0000FFFF, msg);
		}
	}
	return 1;
}

IRCCMD:kick(botid, channel[], user[], host[], params[])
{
	// Check if the user is at least a halfop in the channel
	if (IRC_IsHalfop(botid, channel, user))
	{
		new playerid, reason[64];
		// Check if the user at least entered a player ID
		if (sscanf(params, "dS(No reason)[64]", playerid, reason))
		{
			return 1;
		}
		// Check if the player is connected
		if (IsPlayerConnected(playerid))
		{
			new msg[128];
            KickEX2(playerid,reason,user);

			format(msg, sizeof(msg), "*** %s has been kicked by %s on IRC. (%s)", pName[playerid], user, reason);
			IRC_GroupSay(groupID, IRC_CHANNEL, msg);
			IRC_GroupSay(groupID, IRC_CHANNEL3, msg);
		}
	}
	return 1;
}

IRCCMD:ban(botid, channel[], user[], host[], params[])
{
	// Check if the user is at least an op in the channel
	// Check if the user is at least a halfop in the channel
	if (IRC_IsHalfop(botid, channel, user))
	{
		new playerid, reason[64];
		// Check if the user at least entered a player ID
		if (sscanf(params, "dS(No reason)[64]", playerid, reason))
		{
			return 1;
		}
		// Check if the player is connected
		if (IsPlayerConnected(playerid))
		{
			new msg[128];
            BanEX3(playerid,reason,user);

			format(msg, sizeof(msg), "*** %s has been banned by %s on IRC. (%s)", pName[playerid], user, reason);
			IRC_GroupSay(groupID, IRC_CHANNEL, msg);
			IRC_GroupSay(groupID, IRC_CHANNEL3, msg);
		}
	}
	return 1;
}

IRCCMD:rcon(botid, channel[], user[], host[], params[])
{
	// Check if the user is at least an op in the channel
	if (IRC_IsOwner(botid, channel, user) && !strcmp(channel,"#GTADM.Admins"))
	{
		// Check if the user entered any text
		if (!isnull(params))
		{
			// Check if the user did not enter any invalid commands
			if (strcmp(params, "exit", true) != 0 && strfind(params, "loadfs irc", true) == -1)
			{
				// Echo the formatted message
				new msg[128];
				format(msg, sizeof(msg), "RCON command %s has been executed.", params);
				IRC_GroupSay(groupID, channel, msg);
				// Send the command
				SendRconCommand(params);
			}
		}
	}
	return 1;
}
