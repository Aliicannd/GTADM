
stock CreateTextDraws()
{


	TdMedicHeart[0] = TextDrawCreate(542.000000, 31.000000, "_");
	TextDrawBackgroundColor(TdMedicHeart[0], 255);
	TextDrawFont(TdMedicHeart[0], 1);
	TextDrawLetterSize(TdMedicHeart[0], 0.500000, 3.499999);
	TextDrawColor(TdMedicHeart[0], -1);
	TextDrawSetOutline(TdMedicHeart[0], 0);
	TextDrawSetProportional(TdMedicHeart[0], 1);
	TextDrawSetShadow(TdMedicHeart[0], 1);
	TextDrawUseBox(TdMedicHeart[0], 1);
	TextDrawBoxColor(TdMedicHeart[0], 255);
	TextDrawTextSize(TdMedicHeart[0], 498.000000, 81.000000);
	TextDrawSetSelectable(TdMedicHeart[0], 0);

	TdMedicHeart[1] = TextDrawCreate(496.000000, 7.000000, "Health");
	TextDrawBackgroundColor(TdMedicHeart[1], 0);
	TextDrawFont(TdMedicHeart[1], 5);
	TextDrawLetterSize(TdMedicHeart[1], 0.500000, 1.000000);
	TextDrawColor(TdMedicHeart[1], -1);
	TextDrawSetOutline(TdMedicHeart[1], 0);
	TextDrawSetProportional(TdMedicHeart[1], 1);
	TextDrawSetShadow(TdMedicHeart[1], 1);
	TextDrawUseBox(TdMedicHeart[1], 1);
	TextDrawBoxColor(TdMedicHeart[1], 0);
	TextDrawTextSize(TdMedicHeart[1], 48.000000, 67.000000);
	TextDrawSetPreviewModel(TdMedicHeart[1], 1240);
	TextDrawSetPreviewRot(TdMedicHeart[1], 0.000000, 0.000000, 0.000000, 1.000000);
	TextDrawSetSelectable(TdMedicHeart[1], 0);


	TDTerrorist[0] = TextDrawCreate( 542.000000, 30.000000, "_");
	TextDrawBackgroundColor( TDTerrorist[0], 255);
	TextDrawFont( TDTerrorist[0], 1);
	TextDrawLetterSize( TDTerrorist[0], 0.500000, 4.399);
	TextDrawColor( TDTerrorist[0], -1);
	TextDrawSetOutline( TDTerrorist[0], 0);
	TextDrawSetProportional( TDTerrorist[0], 1);
	TextDrawSetShadow( TDTerrorist[0], 1);
	TextDrawUseBox( TDTerrorist[0], 1);
	TextDrawBoxColor( TDTerrorist[0], 255);
	TextDrawTextSize( TDTerrorist[0], 498.000000, 81.000000);
	TextDrawSetSelectable( TDTerrorist[0], 0);

	TDTerrorist[1] = TextDrawCreate( 496.000000, 16.000000, "Health");
	TextDrawBackgroundColor( TDTerrorist[1], 0);
	TextDrawFont( TDTerrorist[1], 5);
	TextDrawLetterSize( TDTerrorist[1], 0.500000, 1.000000);
	TextDrawColor( TDTerrorist[1], -1);
	TextDrawSetOutline( TDTerrorist[1], 0);
	TextDrawSetProportional( TDTerrorist[1], 1);
	TextDrawSetShadow( TDTerrorist[1], 1);
	TextDrawUseBox( TDTerrorist[1], 1);
	TextDrawBoxColor( TDTerrorist[1], 0);
	TextDrawTextSize( TDTerrorist[1], 48.000000, 67.000000);
	TextDrawSetPreviewModel( TDTerrorist[1], 1654);
	TextDrawSetPreviewRot( TDTerrorist[1], 190.000000, 30.000000, 40.000000, 1.000000);
	TextDrawSetSelectable( TDTerrorist[1], 0);


	ExportTD[0] = TextDrawCreate(219.000000, 322.000000, "_");
	TextDrawBackgroundColor(ExportTD[0], 255);
	TextDrawFont(ExportTD[0], 1);
	TextDrawLetterSize(ExportTD[0], 0.509998, 8.999999);
	TextDrawColor(ExportTD[0], -1);
	TextDrawSetOutline(ExportTD[0], 0);
	TextDrawSetProportional(ExportTD[0], 1);
	TextDrawSetShadow(ExportTD[0], 1);
	TextDrawUseBox(ExportTD[0], 1);
	TextDrawBoxColor(ExportTD[0], 100);
	TextDrawTextSize(ExportTD[0], 453.000000, 0.000000);
	TextDrawSetSelectable(ExportTD[0], 0);

	ExportTD[1] = TextDrawCreate(336.000000, 316.000000, "~l~Export");
	TextDrawAlignment(ExportTD[1], 2);
	TextDrawBackgroundColor(ExportTD[1], -236);
	TextDrawFont(ExportTD[1], 3);
	TextDrawLetterSize(ExportTD[1], 0.500000, 1.000000);
	TextDrawColor(ExportTD[1], 7584511);
	TextDrawSetOutline(ExportTD[1], 1);
	TextDrawSetProportional(ExportTD[1], 1);
	TextDrawUseBox(ExportTD[1], 1);
	TextDrawBoxColor(ExportTD[1], 0);
	TextDrawTextSize(ExportTD[1], 0.000000, 200.000000);
	TextDrawSetSelectable(ExportTD[1], 0);

	ExportTD[2] = TextDrawCreate(230.000000, 343.000000, "Car1");
	TextDrawBackgroundColor(ExportTD[2], 50);
	TextDrawFont(ExportTD[2], 5);
	TextDrawLetterSize(ExportTD[2], 0.500000, 6.000000);
	TextDrawColor(ExportTD[2], -1);
	TextDrawSetOutline(ExportTD[2], 1);
	TextDrawSetProportional(ExportTD[2], 1);
	TextDrawUseBox(ExportTD[2], 1);
	TextDrawBoxColor(ExportTD[2], 0);
	TextDrawTextSize(ExportTD[2], 48.000000, 58.000000);
	TextDrawSetPreviewModel(ExportTD[2], 411);
	TextDrawSetPreviewRot(ExportTD[2], -16.000000, 0.000000, -55.000000, 1.000000);
	TextDrawSetSelectable(ExportTD[2], 0);

	ExportTD[3] = TextDrawCreate(284.000000, 343.000000, "Car2");
	TextDrawBackgroundColor(ExportTD[3], 50);
	TextDrawFont(ExportTD[3], 5);
	TextDrawLetterSize(ExportTD[3], 0.500000, 6.000000);
	TextDrawColor(ExportTD[3], -1);
	TextDrawSetOutline(ExportTD[3], 1);
	TextDrawSetProportional(ExportTD[3], 1);
	TextDrawUseBox(ExportTD[3], 1);
	TextDrawBoxColor(ExportTD[3], 0);
	TextDrawTextSize(ExportTD[3], 48.000000, 58.000000);
	TextDrawSetPreviewModel(ExportTD[3], 522);
	TextDrawSetPreviewRot(ExportTD[3], -16.000000, 0.000000, -55.000000, 1.000000);
	TextDrawSetSelectable(ExportTD[3], 0);

	ExportTD[4] = TextDrawCreate(337.000000, 343.000000, "Car3");
	TextDrawBackgroundColor(ExportTD[4], 50);
	TextDrawFont(ExportTD[4], 5);
	TextDrawLetterSize(ExportTD[4], 0.500000, 6.000000);
	TextDrawColor(ExportTD[4], -1);
	TextDrawSetOutline(ExportTD[4], 1);
	TextDrawSetProportional(ExportTD[4], 1);
	TextDrawUseBox(ExportTD[4], 1);
	TextDrawBoxColor(ExportTD[4], 0);
	TextDrawTextSize(ExportTD[4], 48.000000, 58.000000);
	TextDrawSetPreviewModel(ExportTD[4], 400);
	TextDrawSetPreviewRot(ExportTD[4], -16.000000, 0.000000, -55.000000, 1.000000);
	TextDrawSetSelectable(ExportTD[4], 0);

	ExportTD[5] = TextDrawCreate(394.000000, 343.000000, "Car4");
	TextDrawBackgroundColor(ExportTD[5], 50);
	TextDrawFont(ExportTD[5], 5);
	TextDrawLetterSize(ExportTD[5], 0.500000, 6.000000);
	TextDrawColor(ExportTD[5], -1);
	TextDrawSetOutline(ExportTD[5], 1);
	TextDrawSetProportional(ExportTD[5], 1);
	TextDrawUseBox(ExportTD[5], 1);
	TextDrawBoxColor(ExportTD[5], 0);
	TextDrawTextSize(ExportTD[5], 48.000000, 58.000000);
	TextDrawSetPreviewModel(ExportTD[5], 512);
	TextDrawSetPreviewRot(ExportTD[5], -16.000000, 0.000000, -55.000000, 1.000000);
	TextDrawSetSelectable(ExportTD[5], 0);

	ExportTD[6] = TextDrawCreate(256.000000, 331.000000, "The following vehicles are wanted!");
	TextDrawBackgroundColor(ExportTD[6], 255);
	TextDrawFont(ExportTD[6], 2);
	TextDrawLetterSize(ExportTD[6], 0.200000, 0.799998);
	TextDrawColor(ExportTD[6], 7274495);
	TextDrawSetOutline(ExportTD[6], 1);
	TextDrawSetProportional(ExportTD[6], 1);
	TextDrawSetSelectable(ExportTD[6], 0);

	ExportTD[7] = TextDrawCreate(255.000000, 367.000000, "~r~Loading...");
	TextDrawAlignment(ExportTD[7], 2);
	TextDrawBackgroundColor(ExportTD[7], 255);
	TextDrawFont(ExportTD[7], 2);
	TextDrawLetterSize(ExportTD[7], 0.199999, 1.100000);
	TextDrawColor(ExportTD[7], 7274495);
	TextDrawSetOutline(ExportTD[7], 0);
	TextDrawSetProportional(ExportTD[7], 1);
	TextDrawSetShadow(ExportTD[7], 0);
	TextDrawSetSelectable(ExportTD[7], 0);

	ExportTD[8] = TextDrawCreate(308.000000, 367.000000, "~r~Loading...");
	TextDrawAlignment(ExportTD[8], 2);
	TextDrawBackgroundColor(ExportTD[8], 255);
	TextDrawFont(ExportTD[8], 2);
	TextDrawLetterSize(ExportTD[8], 0.199999, 1.100000);
	TextDrawColor(ExportTD[8], 7274495);
	TextDrawSetOutline(ExportTD[8], 0);
	TextDrawSetProportional(ExportTD[8], 1);
	TextDrawSetShadow(ExportTD[8], 0);
	TextDrawSetSelectable(ExportTD[8], 0);

	ExportTD[9] = TextDrawCreate(363.000000, 367.000000, "~r~Loading...");
	TextDrawAlignment(ExportTD[9], 2);
	TextDrawBackgroundColor(ExportTD[9], 255);
	TextDrawFont(ExportTD[9], 2);
	TextDrawLetterSize(ExportTD[9], 0.199999, 1.100000);
	TextDrawColor(ExportTD[9], 7274495);
	TextDrawSetOutline(ExportTD[9], 0);
	TextDrawSetProportional(ExportTD[9], 1);
	TextDrawSetShadow(ExportTD[9], 0);
	TextDrawSetSelectable(ExportTD[9], 0);

	ExportTD[10] = TextDrawCreate(419.000000, 367.000000, "~r~Loading...");
	TextDrawAlignment(ExportTD[10], 2);
	TextDrawBackgroundColor(ExportTD[10], 255);
	TextDrawFont(ExportTD[10], 2);
	TextDrawLetterSize(ExportTD[10], 0.199999, 1.100000);
	TextDrawColor(ExportTD[10], 7274495);
	TextDrawSetOutline(ExportTD[10], 0);
	TextDrawSetProportional(ExportTD[10], 1);
	TextDrawSetShadow(ExportTD[10], 0);
	TextDrawSetSelectable(ExportTD[10], 0);

	afkTD = TextDrawCreate(215.000000, 341.000000, "Press ~y~Y~w~ to get back into the game");
	TextDrawBackgroundColor(afkTD, 255);
	TextDrawFont(afkTD, 1);
	TextDrawLetterSize(afkTD, 0.409999, 1.000000);
	TextDrawColor(afkTD, -1);
	TextDrawSetOutline(afkTD, 1);
	TextDrawSetProportional(afkTD, 1);
	TextDrawSetSelectable(afkTD, 0);

	TimeTD = TextDrawCreate(550.000000, 20.000000, "00:00");
	TextDrawBackgroundColor(TimeTD, 255);
	TextDrawFont(TimeTD, 3);
	TextDrawLetterSize(TimeTD, 0.5299,1.6);
	TextDrawColor(TimeTD, -1);
	TextDrawSetOutline(TimeTD, 2);
	TextDrawSetProportional(TimeTD, 1);
	TextDrawSetSelectable(TimeTD, 0);

	cTD[3] = TextDrawCreate(243.000000,107.000000,"  Use ~r~arrow keys ~w~to select,~n~use ~r~shift or space ~w~to confirm.");
	TextDrawUseBox(cTD[3],1);
	TextDrawBoxColor(cTD[3],0x00000033);
	TextDrawTextSize(cTD[3],398.000000,-1.000000);
	TextDrawAlignment(cTD[3],0);
	TextDrawBackgroundColor(cTD[3],0x000000ff);
	TextDrawFont(cTD[3],1);
	TextDrawLetterSize(cTD[3],0.299999,1.000000);
	TextDrawColor(cTD[3],0xffffffff);
	TextDrawSetOutline(cTD[3],1);
	TextDrawSetProportional(cTD[3],1);
	TextDrawSetShadow(cTD[3],1);

	cTD[2] = TextDrawCreate(410.000000,298.000000,"Choose a character.");
	TextDrawAlignment(cTD[2],0);
	TextDrawBackgroundColor(cTD[2],0x000000ff);
	TextDrawFont(cTD[2],0);
	TextDrawLetterSize(cTD[2],0.899999,2.200000);
	TextDrawColor(cTD[2],0xffffffff);
	TextDrawSetOutline(cTD[2],1);
	TextDrawSetProportional(cTD[2],1);
	TextDrawSetShadow(cTD[2],1);

	cTD[0] = TextDrawCreate(0.000000,-1.000000,"_");
	TextDrawUseBox(cTD[0],1);
	TextDrawBoxColor(cTD[0],0x000000ff);
	TextDrawTextSize(cTD[0],653.000000,0.000000);
	TextDrawAlignment(cTD[0],0);
	TextDrawBackgroundColor(cTD[0],0x000000ff);
	TextDrawFont(cTD[0],3);
	TextDrawLetterSize(cTD[0],1.100000,11.700012);
	TextDrawColor(cTD[0],0xffffffff);
	TextDrawSetOutline(cTD[0],1);
	TextDrawSetProportional(cTD[0],1);
	TextDrawSetShadow(cTD[0],1);

	cTD[1] = TextDrawCreate(-1.000000,341.000000,"_");
	TextDrawUseBox(cTD[1],1);
	TextDrawBoxColor(cTD[1],0x000000ff);
	TextDrawTextSize(cTD[1],668.000000,0.000000);
	TextDrawAlignment(cTD[1],0);
	TextDrawBackgroundColor(cTD[1],0x000000ff);
	TextDrawFont(cTD[1],3);
	TextDrawLetterSize(cTD[1],1.000000,12.400005);
	TextDrawColor(cTD[1],0xffffffff);
	TextDrawSetOutline(cTD[1],1);
	TextDrawSetProportional(cTD[1],1);
	TextDrawSetShadow(cTD[1],1);
/*
	IntroTD[0] = TextDrawCreate(496.000000, 73.000000, "_");
	TextDrawBackgroundColor(IntroTD[0], 255);
	TextDrawFont(IntroTD[0], 1);
	TextDrawLetterSize(IntroTD[0], 0.600000, 2.099999);
	TextDrawColor(IntroTD[0], 5373951);
	TextDrawSetOutline(IntroTD[0], 1);
	TextDrawSetProportional(IntroTD[0], 1);
	TextDrawUseBox(IntroTD[0], 1);
	TextDrawBoxColor(IntroTD[0], 5373951);
	TextDrawTextSize(IntroTD[0], 151.000000, 1.000000);
	TextDrawSetSelectable(IntroTD[0], 0);
*/
	IntroTD[0] = TextDrawCreate(157.000000, 73.000000, "_");
	TextDrawBackgroundColor(IntroTD[0], 255);
	TextDrawFont(IntroTD[0], 3);
	TextDrawLetterSize(IntroTD[0], 0.600000, 2.099999);
	TextDrawColor(IntroTD[0], 5373951);
	TextDrawSetOutline(IntroTD[0], 1);
	TextDrawSetProportional(IntroTD[0], 1);
	TextDrawUseBox(IntroTD[0], 1);
	TextDrawBoxColor(IntroTD[0], 5373951);
	TextDrawTextSize(IntroTD[0], 489.000000, 12.000000);
	TextDrawSetSelectable(IntroTD[0], 0);

	IntroTD[1] = TextDrawCreate(157.000000, 97.000000, "_");
	TextDrawBackgroundColor(IntroTD[1], 255);
	TextDrawFont(IntroTD[1], 3);
	TextDrawLetterSize(IntroTD[1], 0.600000, 5.499997);
	TextDrawColor(IntroTD[1], 8126463);
	TextDrawSetOutline(IntroTD[1], 1);
	TextDrawSetProportional(IntroTD[1], 1);
	TextDrawUseBox(IntroTD[1], 1);
	TextDrawBoxColor(IntroTD[1], 150);
	TextDrawTextSize(IntroTD[1], 489.000000, 12.000000);
	TextDrawSetSelectable(IntroTD[1], 0);

	IntroTD[2] = TextDrawCreate(159.000000, 73.000000, "Grand Theft Auto Deathmatch 2.0");
	TextDrawBackgroundColor(IntroTD[2], 255);
	TextDrawFont(IntroTD[2], 2);
	TextDrawLetterSize(IntroTD[2], 0.420000, 2.000000);
	TextDrawColor(IntroTD[2], 5373951);
	TextDrawSetOutline(IntroTD[2], 1);
	TextDrawSetProportional(IntroTD[2], 1);
	TextDrawSetSelectable(IntroTD[2], 0);

	IntroTD[3] = TextDrawCreate(318.000000, 105.000000, "~w~Welcome to ~r~GTADM~n~~w~Your account is not registered in our database~n~~n~~y~Please enter a valid password to get started");
	TextDrawAlignment(IntroTD[3], 2);
	TextDrawBackgroundColor(IntroTD[3], 255);
	TextDrawFont(IntroTD[3], 2);
	TextDrawLetterSize(IntroTD[3], 0.180000, 1.199998);
	TextDrawColor(IntroTD[3], 8126463);
	TextDrawSetOutline(IntroTD[3], 1);
	TextDrawSetProportional(IntroTD[3], 1);
	TextDrawSetSelectable(IntroTD[3], 0);

	IntroTD[19] = TextDrawCreate(318.000000, 105.000000, "~w~Welcome back to ~r~GTADM~n~~w~Your account is ~g~registered in our database~n~~n~~y~Please enter your password to login");
	TextDrawAlignment(IntroTD[19], 2);
	TextDrawBackgroundColor(IntroTD[19], 255);
	TextDrawFont(IntroTD[19], 2);
	TextDrawLetterSize(IntroTD[19], 0.180000, 1.199998);
	TextDrawColor(IntroTD[19], 8126463);
	TextDrawSetOutline(IntroTD[19], 1);
	TextDrawSetProportional(IntroTD[19], 1);
	TextDrawSetSelectable(IntroTD[19], 0);

	IntroTD[21] = TextDrawCreate(318.000000, 105.000000, "~w~Enter a new name to start off a ~g~new account~w~!");
	TextDrawAlignment(IntroTD[21], 2);
	TextDrawBackgroundColor(IntroTD[19], 255);
	TextDrawFont(IntroTD[21], 2);
	TextDrawLetterSize(IntroTD[21], 0.180000, 1.199998);
	TextDrawColor(IntroTD[21], 8126463);
	TextDrawSetOutline(IntroTD[21], 1);
	TextDrawSetProportional(IntroTD[21], 1);
	TextDrawSetSelectable(IntroTD[21], 0);


	IntroTD[20] = TextDrawCreate(318.000000, 105.000000, "~w~Select your ~y~job!");
	TextDrawAlignment(IntroTD[20], 2);
	TextDrawBackgroundColor(IntroTD[20], 255);
	TextDrawFont(IntroTD[20], 2);
	TextDrawLetterSize(IntroTD[20], 0.180000, 1.199998);
	TextDrawColor(IntroTD[20], 8126463);
	TextDrawSetOutline(IntroTD[20], 1);
	TextDrawSetProportional(IntroTD[20], 1);
	TextDrawSetSelectable(IntroTD[20], 0);

	IntroTD[4] = TextDrawCreate(496.000000, 157.000000, "_");
	TextDrawBackgroundColor(IntroTD[4], 255);
	TextDrawFont(IntroTD[4], 1);
	TextDrawLetterSize(IntroTD[4], 0.500000, 20.000000);
	TextDrawColor(IntroTD[4], -1);
	TextDrawSetOutline(IntroTD[4], 0);
	TextDrawSetProportional(IntroTD[4], 1);
	TextDrawSetShadow(IntroTD[4], 1);
	TextDrawUseBox(IntroTD[4], 1);
	TextDrawBoxColor(IntroTD[4], 150);
	TextDrawTextSize(IntroTD[4], 151.000000, 1.000000);
	TextDrawSetSelectable(IntroTD[4], 0);

	IntroTD[5] = TextDrawCreate(160.000000, 180.000000, "Civilian");
	TextDrawBackgroundColor(IntroTD[5], 0);
	TextDrawFont(IntroTD[5], 5);
	TextDrawLetterSize(IntroTD[5], 0.500000, 3.000000);
	TextDrawColor(IntroTD[5], -1);
	TextDrawSetOutline(IntroTD[5], 0);
	TextDrawSetProportional(IntroTD[5], 1);
	TextDrawSetShadow(IntroTD[5], 1);
	TextDrawUseBox(IntroTD[5], 1);
	TextDrawBoxColor(IntroTD[5], 0);
	TextDrawTextSize(IntroTD[5], 60.000000, 60.000000);
	TextDrawSetPreviewModel(IntroTD[5],JobSkins[0]);
	TextDrawSetPreviewRot(IntroTD[5], 0.0, 0.0, 0.0, 1.0);
	TextDrawSetSelectable(IntroTD[5], 1);

	IntroTD[6] = TextDrawCreate(223.000000, 180.000000, "Cop");
	TextDrawBackgroundColor(IntroTD[6], 0);
	TextDrawFont(IntroTD[6], 5);
	TextDrawLetterSize(IntroTD[6], 0.500000, 3.000000);
	TextDrawColor(IntroTD[6], -1);
	TextDrawSetOutline(IntroTD[6], 0);
	TextDrawSetProportional(IntroTD[6], 1);
	TextDrawSetShadow(IntroTD[6], 1);
	TextDrawUseBox(IntroTD[6], 1);
	TextDrawBoxColor(IntroTD[6], 0);
	TextDrawTextSize(IntroTD[6], 60.000000, 60.000000);
	TextDrawSetPreviewModel(IntroTD[6],JobSkins[1]);
	TextDrawSetPreviewRot(IntroTD[6], 0.0, 0.0, 0.0, 1.0);
	TextDrawSetSelectable(IntroTD[6], 1);

	IntroTD[7] = TextDrawCreate(291.000000, 180.000000, "Terrorist");
	TextDrawBackgroundColor(IntroTD[7], 0);
	TextDrawFont(IntroTD[7], 5);
	TextDrawLetterSize(IntroTD[7], 0.500000, 3.000000);
	TextDrawColor(IntroTD[7], -1);
	TextDrawSetOutline(IntroTD[7], 0);
	TextDrawSetProportional(IntroTD[7], 1);
	TextDrawSetShadow(IntroTD[7], 1);
	TextDrawUseBox(IntroTD[7], 1);
	TextDrawBoxColor(IntroTD[7], 0);
	TextDrawTextSize(IntroTD[7], 60.000000, 60.000000);
	TextDrawSetPreviewModel(IntroTD[7],JobSkins[2]);
	TextDrawSetPreviewRot(IntroTD[7], 0.0, 0.0, 0.0, 1.0);
	TextDrawSetSelectable(IntroTD[7], 1);

	IntroTD[8] = TextDrawCreate(419.000000, 180.000000, "Dealer");
	TextDrawBackgroundColor(IntroTD[8], 0);
	TextDrawFont(IntroTD[8], 5);
	TextDrawLetterSize(IntroTD[8], 0.500000, 3.000000);
	TextDrawColor(IntroTD[8], -1);
	TextDrawSetOutline(IntroTD[8], 0);
	TextDrawSetProportional(IntroTD[8], 1);
	TextDrawSetShadow(IntroTD[8], 1);
	TextDrawUseBox(IntroTD[8], 1);
	TextDrawBoxColor(IntroTD[8], 0);
	TextDrawTextSize(IntroTD[8], 60.000000, 60.000000);
	TextDrawSetPreviewModel(IntroTD[8],JobSkins[3]);
	TextDrawSetPreviewRot(IntroTD[8], 0.0, 0.0, 0.0, 1.0);
	TextDrawSetSelectable(IntroTD[8], 1);

	IntroTD[9] = TextDrawCreate(359.000000, 180.000000, "Medic");
	TextDrawBackgroundColor(IntroTD[9], 0);
	TextDrawFont(IntroTD[9], 5);
	TextDrawLetterSize(IntroTD[9], 0.500000, 3.000000);
	TextDrawColor(IntroTD[9], -1);
	TextDrawSetOutline(IntroTD[9], 0);
	TextDrawSetProportional(IntroTD[9], 1);
	TextDrawSetShadow(IntroTD[9], 1);
	TextDrawUseBox(IntroTD[9], 1);
	TextDrawBoxColor(IntroTD[9], 0);
	TextDrawTextSize(IntroTD[9], 60.000000, 60.000000);
	TextDrawSetPreviewModel(IntroTD[9],JobSkins[4]);
	TextDrawSetPreviewRot(IntroTD[9], 0.0, 0.0, 0.0, 1.0);
	TextDrawSetSelectable(IntroTD[9], 1);

	IntroTD[10] = TextDrawCreate(257.000000, 253.000000, "Mechanic");
	TextDrawBackgroundColor(IntroTD[10], 0);
	TextDrawFont(IntroTD[10], 5);
	TextDrawLetterSize(IntroTD[10], 0.500000, 3.000000);
	TextDrawColor(IntroTD[10], -1);
	TextDrawSetOutline(IntroTD[10], 0);
	TextDrawSetProportional(IntroTD[10], 1);
	TextDrawSetShadow(IntroTD[10], 1);
	TextDrawUseBox(IntroTD[10], 1);
	TextDrawBoxColor(IntroTD[10], 0);
	TextDrawTextSize(IntroTD[10], 60.000000, 60.000000);
	TextDrawSetPreviewModel(IntroTD[10],JobSkins[5]);
	TextDrawSetPreviewRot(IntroTD[10], 0.0, 0.0, 0.0, 1.0);
	TextDrawSetSelectable(IntroTD[10], 1);

	IntroTD[11] = TextDrawCreate(320.000000, 253.000000, "Hitman");
	TextDrawBackgroundColor(IntroTD[11], 0);
	TextDrawFont(IntroTD[11], 5);
	TextDrawLetterSize(IntroTD[11], 0.500000, 3.000000);
	TextDrawColor(IntroTD[11], -1);
	TextDrawSetOutline(IntroTD[11], 0);
	TextDrawSetProportional(IntroTD[11], 1);
	TextDrawSetShadow(IntroTD[11], 1);
	TextDrawUseBox(IntroTD[11], 1);
	TextDrawBoxColor(IntroTD[11], 0);
	TextDrawTextSize(IntroTD[11], 60.000000, 60.000000);
	TextDrawSetPreviewModel(IntroTD[11],JobSkins[6]);
	TextDrawSetPreviewRot(IntroTD[11], 0.0, 0.0, 0.0, 1.0);
	TextDrawSetSelectable(IntroTD[11], 1);

	IntroTD[12] = TextDrawCreate(179.000000, 240.000000, "~l~Civilian");
	TextDrawBackgroundColor(IntroTD[12], -206);
	TextDrawFont(IntroTD[12], 1);
	TextDrawLetterSize(IntroTD[12], 0.200000, 0.999999);
	TextDrawColor(IntroTD[12], -1);
	TextDrawSetOutline(IntroTD[12], 1);
	TextDrawSetProportional(IntroTD[12], 1);

	IntroTD[13] = TextDrawCreate(248.000000, 240.000000, "~l~Cop");
	TextDrawBackgroundColor(IntroTD[13], -206);
	TextDrawFont(IntroTD[13], 1);
	TextDrawLetterSize(IntroTD[13], 0.200000, 0.999999);
	TextDrawColor(IntroTD[13], -1);
	TextDrawSetOutline(IntroTD[13], 1);
	TextDrawSetProportional(IntroTD[13], 1);

	IntroTD[14] = TextDrawCreate(307.000000, 240.000000, "~l~Terrorist");
	TextDrawBackgroundColor(IntroTD[14], -206);
	TextDrawFont(IntroTD[14], 1);
	TextDrawLetterSize(IntroTD[14], 0.200000, 0.999999);
	TextDrawColor(IntroTD[14], -1);
	TextDrawSetOutline(IntroTD[14], 1);
	TextDrawSetProportional(IntroTD[14], 1);

	IntroTD[15] = TextDrawCreate(380.000000, 240.000000, "~l~Medic");
	TextDrawBackgroundColor(IntroTD[15], -206);
	TextDrawFont(IntroTD[15], 1);
	TextDrawLetterSize(IntroTD[15], 0.200000, 0.999999);
	TextDrawColor(IntroTD[15], -1);
	TextDrawSetOutline(IntroTD[15], 1);
	TextDrawSetProportional(IntroTD[15], 1);

	IntroTD[16] = TextDrawCreate(440.000000, 240.000000, "~l~Dealer");
	TextDrawBackgroundColor(IntroTD[16], -206);
	TextDrawFont(IntroTD[16], 1);
	TextDrawLetterSize(IntroTD[16], 0.200000, 0.999999);
	TextDrawColor(IntroTD[16], -1);
	TextDrawSetOutline(IntroTD[16], 1);
	TextDrawSetProportional(IntroTD[16], 1);

	IntroTD[17] = TextDrawCreate(269.000000, 310.000000, "~l~Mechanic");
	TextDrawBackgroundColor(IntroTD[17], -206);
	TextDrawFont(IntroTD[17], 1);
	TextDrawLetterSize(IntroTD[17], 0.200000, 0.999999);
	TextDrawColor(IntroTD[17], -1);
	TextDrawSetOutline(IntroTD[17], 1);
	TextDrawSetProportional(IntroTD[17], 1);

	IntroTD[18] = TextDrawCreate(341.000000, 310.000000, "~l~Hitman");
	TextDrawBackgroundColor(IntroTD[18], -206);
	TextDrawFont(IntroTD[18], 1);
	TextDrawLetterSize(IntroTD[18], 0.200000, 0.999999);
	TextDrawColor(IntroTD[18], -1);
	TextDrawSetOutline(IntroTD[18], 1);
	TextDrawSetProportional(IntroTD[18], 1);

	ScreenTXD[0] = TextDrawCreate( 520.000000, 428.000000, "~l~Grand Theft Auto Deathmatch");
	TextDrawBackgroundColor( ScreenTXD[0], -236);
	TextDrawFont( ScreenTXD[0], 1);
	TextDrawLetterSize( ScreenTXD[0], 0.210000, 1.000000);
	TextDrawColor( ScreenTXD[0], -1);
	TextDrawSetOutline( ScreenTXD[0], 1);
	TextDrawSetProportional( ScreenTXD[0], 1);
	TextDrawSetSelectable( ScreenTXD[0], 0);

	ScreenTXD[1] = TextDrawCreate( 535.000000, 437.000000, "  www.gta-dm.com");
	TextDrawBackgroundColor( ScreenTXD[1], 20);
	TextDrawFont( ScreenTXD[1], 1);
	TextDrawLetterSize( ScreenTXD[1], 0.210000, 1.000000);
	TextDrawColor( ScreenTXD[1], -1);
	TextDrawSetOutline( ScreenTXD[1], 1);
	TextDrawSetProportional( ScreenTXD[1], 1);
	TextDrawSetSelectable( ScreenTXD[1], 0);

	ScreenTXD[2] = TextDrawCreate( 323.000000, 410.000000, " has teleported to San Fierro! ~y~(/SF)");
	TextDrawAlignment( ScreenTXD[2], 2);
	TextDrawBackgroundColor( ScreenTXD[2], 99);
	TextDrawFont( ScreenTXD[2], 1);
	TextDrawLetterSize( ScreenTXD[2], 0.170000, 1.000000);
	TextDrawColor( ScreenTXD[2], 785580031);
	TextDrawSetOutline( ScreenTXD[2], 1);
	TextDrawSetProportional( ScreenTXD[2], 1);
	TextDrawSetSelectable( ScreenTXD[2], 0);

	ScreenTXD[3] = TextDrawCreate( 323.000000, 423.000000, "Gay_Lord_Neonz has joined the server! ~p~(2/50)");
	TextDrawAlignment( ScreenTXD[3], 2);
	TextDrawBackgroundColor( ScreenTXD[3], 99);
	TextDrawFont( ScreenTXD[3], 1);
	TextDrawLetterSize( ScreenTXD[3], 0.170000, 1.000000);
	TextDrawColor( ScreenTXD[3], 785580031);
	TextDrawSetOutline( ScreenTXD[3], 1);
	TextDrawSetProportional( ScreenTXD[3], 1);
	TextDrawSetSelectable( ScreenTXD[3], 0);

	ScreenTXD[4] = TextDrawCreate( 323.000000, 436.000000, "LMS- LMS will start in 30 Minutes ~y~(/LMS) (5 players)");
	TextDrawAlignment( ScreenTXD[4], 2);
	TextDrawBackgroundColor( ScreenTXD[4], 99);
	TextDrawFont( ScreenTXD[4], 1);
	TextDrawLetterSize( ScreenTXD[4], 0.170000, 1.000000);
	TextDrawColor( ScreenTXD[4], 785580031);
	TextDrawSetOutline( ScreenTXD[4], 1);
	TextDrawSetProportional( ScreenTXD[4], 1);
	TextDrawSetSelectable( ScreenTXD[4], 0);

	ScreenTXD[5] = TextDrawCreate( 323.000000, 397.000000, "LMS- LMS will start in 30 Minutes ~y~(/LMS) (5 players)");
	TextDrawAlignment( ScreenTXD[5], 2);
	TextDrawBackgroundColor( ScreenTXD[5], 99);
	TextDrawFont( ScreenTXD[5], 1);
	TextDrawLetterSize( ScreenTXD[5], 0.170000, 1.000000);
	TextDrawColor( ScreenTXD[5], 785580031);
	TextDrawSetOutline( ScreenTXD[5], 1);
	TextDrawSetProportional( ScreenTXD[5], 1);
	TextDrawSetSelectable( ScreenTXD[5], 0);

	blackTD = TextDrawCreate(-20.000000,2.000000,"|");
	TextDrawUseBox(blackTD,1);
	TextDrawBoxColor(blackTD,0x000000ff);
	TextDrawTextSize(blackTD,660.000000,22.000000);
	TextDrawAlignment(blackTD,0);
	TextDrawBackgroundColor(blackTD,0x000000ff);
	TextDrawFont(blackTD,3);
	TextDrawLetterSize(blackTD,1.000000,52.200000);
	TextDrawColor(blackTD,0x000000ff);
	TextDrawSetOutline(blackTD,1);
	TextDrawSetProportional(blackTD,1);
	TextDrawSetShadow(blackTD,1);

	blackTD2 = TextDrawCreate(171.000000, 200.000000, "~r~GTADM ~y~Tutorial");
	TextDrawBackgroundColor(blackTD2, 255);
	TextDrawFont(blackTD2, 2);
	TextDrawLetterSize(blackTD2, 0.909999, 3.399999);
	TextDrawColor(blackTD2, -1);
	TextDrawSetOutline(blackTD2, 1);
	TextDrawSetProportional(blackTD2, 1);
	TextDrawSetSelectable(blackTD2, 0);

}

stock CreatePlayerTextDraws(playerid)
{
    InfoTextdraw[playerid] = CreatePlayerTextDraw(playerid,16.000000, 123.0000000, "_");

	MoneyPlus[playerid] = CreatePlayerTextDraw(playerid, 524.000000, 97.000000, "~y~10000~w~$+");
	PlayerTextDrawAlignment(playerid, MoneyPlus[playerid], 3);
	PlayerTextDrawBackgroundColor(playerid, MoneyPlus[playerid], 255);
	PlayerTextDrawFont(playerid, MoneyPlus[playerid], 2);
	PlayerTextDrawLetterSize(playerid, MoneyPlus[playerid], 0.240000, 1.000000);
	PlayerTextDrawColor(playerid, MoneyPlus[playerid], -1);
	PlayerTextDrawSetOutline(playerid, MoneyPlus[playerid], 1);
	PlayerTextDrawSetProportional(playerid, MoneyPlus[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, MoneyPlus[playerid], 0);

	Speedo[playerid][0] = CreatePlayerTextDraw(playerid, 88.000000, 430.000000, "lllllllllllllllllll");
	PlayerTextDrawBackgroundColor(playerid, Speedo[playerid][0], 255);
	PlayerTextDrawFont(playerid, Speedo[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, Speedo[playerid][0], 0.270000, 1.799999);
	PlayerTextDrawColor(playerid, Speedo[playerid][0], -56);
	PlayerTextDrawSetOutline(playerid, Speedo[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, Speedo[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, Speedo[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, Speedo[playerid][0], 0);

	Speedo[playerid][1] = CreatePlayerTextDraw(playerid, 89.000000, 434.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, Speedo[playerid][1], 255);
	PlayerTextDrawFont(playerid, Speedo[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, Speedo[playerid][1], 0.280000, 1.100000);
	PlayerTextDrawColor(playerid, Speedo[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, Speedo[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, Speedo[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, Speedo[playerid][1], 1);
	PlayerTextDrawUseBox(playerid, Speedo[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, Speedo[playerid][1], 255);
	PlayerTextDrawTextSize(playerid, Speedo[playerid][1], 135.000000, -5.000000);
	PlayerTextDrawSetSelectable(playerid, Speedo[playerid][1], 0);

	Speedo[playerid][2] = CreatePlayerTextDraw(playerid, 139.000000, 436.000000, "~y~0 ~w~KM/H");
	PlayerTextDrawBackgroundColor(playerid, Speedo[playerid][2], 255);
	PlayerTextDrawFont(playerid, Speedo[playerid][2], 2);
	PlayerTextDrawLetterSize(playerid, Speedo[playerid][2], 0.150000, 0.999998);
	PlayerTextDrawColor(playerid, Speedo[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, Speedo[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, Speedo[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, Speedo[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, Speedo[playerid][2], 0);

	Speedo[playerid][3] = CreatePlayerTextDraw(playerid, 93.000000, 426.000000, "Speed-o-meter");
	PlayerTextDrawBackgroundColor(playerid, Speedo[playerid][3], 255);
	PlayerTextDrawFont(playerid, Speedo[playerid][3], 2);
	PlayerTextDrawLetterSize(playerid, Speedo[playerid][3], 0.119999, 0.799998);
	PlayerTextDrawColor(playerid, Speedo[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, Speedo[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, Speedo[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, Speedo[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, Speedo[playerid][3], 0);

	ZoneTD[playerid] = CreatePlayerTextDraw(playerid, 87.000000, 332.800000, "\"Masters of GTADM\"");
	PlayerTextDrawAlignment(playerid, ZoneTD[playerid], 2);
	PlayerTextDrawBackgroundColor(playerid, ZoneTD[playerid], 150);
	PlayerTextDrawFont(playerid, ZoneTD[playerid], 1);
	PlayerTextDrawLetterSize(playerid, ZoneTD[playerid], 0.220000, 1.010000);
	PlayerTextDrawColor(playerid, ZoneTD[playerid], -1);
	PlayerTextDrawSetOutline(playerid, ZoneTD[playerid], 1);
	PlayerTextDrawSetProportional(playerid, ZoneTD[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, ZoneTD[playerid], 0);

	pRRTD[playerid][0] = CreatePlayerTextDraw(playerid, 172.000000, 144.000000, "~r~Race ~w~001");
	PlayerTextDrawBackgroundColor(playerid, pRRTD[playerid][0], -236);
	PlayerTextDrawFont(playerid, pRRTD[playerid][0], 2);
	PlayerTextDrawLetterSize(playerid, pRRTD[playerid][0], 0.340000, 1.500000);
	PlayerTextDrawColor(playerid, pRRTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, pRRTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, pRRTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, pRRTD[playerid][0], 0);

	pRRTD[playerid][1] = CreatePlayerTextDraw(playerid, 147.000000, 134.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, pRRTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, pRRTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, pRRTD[playerid][1], 0.500000, 28.000000);
	PlayerTextDrawColor(playerid, pRRTD[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, pRRTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, pRRTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, pRRTD[playerid][1], 1);
	PlayerTextDrawUseBox(playerid, pRRTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, pRRTD[playerid][1], 200);
	PlayerTextDrawTextSize(playerid, pRRTD[playerid][1], 521.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, pRRTD[playerid][1], 0);

	pRRTD[playerid][2] = CreatePlayerTextDraw(playerid,270.0, 135.0, "samaps:map");
	PlayerTextDrawFont(playerid,pRRTD[playerid][2], 4);
	PlayerTextDrawTextSize(playerid,pRRTD[playerid][2], 250.0, 250.0);

	pRRTD[playerid][3] = CreatePlayerTextDraw(playerid, 146.000000, 379.000000, "-");
	PlayerTextDrawBackgroundColor(playerid, pRRTD[playerid][3], -236);
	PlayerTextDrawFont(playerid, pRRTD[playerid][3], 2);
	PlayerTextDrawLetterSize(playerid, pRRTD[playerid][3], 10.000000, 0.700000);
	PlayerTextDrawColor(playerid, pRRTD[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, pRRTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, pRRTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, pRRTD[playerid][3], 0);

	pRRTD[playerid][4] = CreatePlayerTextDraw(playerid, 157.000000, 176.000000, "~l~Checkpoints:  ~w~15~n~~n~~l~Distance:  ~w~150KM~n~~n~~l~Created by:  ~w~RoNz");
	PlayerTextDrawBackgroundColor(playerid, pRRTD[playerid][4], -236);
	PlayerTextDrawFont(playerid, pRRTD[playerid][4], 2);
	PlayerTextDrawLetterSize(playerid, pRRTD[playerid][4], 0.160000, 0.900000);//0.200000, 1.100000);
	PlayerTextDrawColor(playerid, pRRTD[playerid][4], -1);
	PlayerTextDrawSetOutline(playerid, pRRTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, pRRTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, pRRTD[playerid][4], 0);

	pRRTD[playerid][5] = CreatePlayerTextDraw(playerid, 146.000000, 158.000000, "-");
	PlayerTextDrawBackgroundColor(playerid, pRRTD[playerid][5], -236);
	PlayerTextDrawFont(playerid, pRRTD[playerid][5], 2);
	PlayerTextDrawLetterSize(playerid, pRRTD[playerid][5], 10.000000, 0.700000);
	PlayerTextDrawColor(playerid, pRRTD[playerid][5], -1);
	PlayerTextDrawSetOutline(playerid, pRRTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, pRRTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, pRRTD[playerid][5], 0);

	SpecTD[playerid][0] = CreatePlayerTextDraw(playerid, 10.000000, 232.000000, "Name:~n~Health:~n~Armour:~n~FPS:~n~Ping:~n~Vehicle:~n~Vehicle HP:~n~Ammo:~n~Packet Loss:~n~Speed:");
	PlayerTextDrawBackgroundColor(playerid, SpecTD[playerid][0], 200);
	PlayerTextDrawFont(playerid, SpecTD[playerid][0], 2);
	PlayerTextDrawLetterSize(playerid, SpecTD[playerid][0], 0.230000, 1.000000);
	PlayerTextDrawColor(playerid, SpecTD[playerid][0], -136);
	PlayerTextDrawSetOutline(playerid, SpecTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, SpecTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, SpecTD[playerid][0], 0);

	SpecTD[playerid][1] = CreatePlayerTextDraw(playerid, 90.000000, 232.000000, "~r~KID(5)~n~100.0~n~100.0~n~100~n~50~n~Infernus~n~1000~n~700~n~50%~n~17KM/H");
	PlayerTextDrawBackgroundColor(playerid, SpecTD[playerid][1], 200);
	PlayerTextDrawFont(playerid, SpecTD[playerid][1], 2);
	PlayerTextDrawLetterSize(playerid, SpecTD[playerid][1], 0.230000, 1.000000);
	PlayerTextDrawColor(playerid, SpecTD[playerid][1], 200);
	PlayerTextDrawSetOutline(playerid, SpecTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, SpecTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, SpecTD[playerid][1], 0);

	SpecTD[playerid][2] = CreatePlayerTextDraw(playerid, 67.000000, 328.000000, "~y~Press ~k~~PED_DUCK~ and F to switch player ~n~Press ~k~~SNEAK_ABOUT~ to exit");
	PlayerTextDrawAlignment(playerid, SpecTD[playerid][2], 2);
	PlayerTextDrawBackgroundColor(playerid, SpecTD[playerid][2], 200);
	PlayerTextDrawFont(playerid, SpecTD[playerid][2], 2);
	PlayerTextDrawLetterSize(playerid, SpecTD[playerid][2], 0.130000, 0.899999);
	PlayerTextDrawColor(playerid, SpecTD[playerid][2], -16776961);
	PlayerTextDrawSetOutline(playerid, SpecTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, SpecTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, SpecTD[playerid][2], 0);


	StatsTD[playerid][0] = CreatePlayerTextDraw(playerid, 162.000000, 120.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, StatsTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, StatsTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, StatsTD[playerid][0], 0.480000, 21.800003);
	PlayerTextDrawColor(playerid, StatsTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, StatsTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, StatsTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, StatsTD[playerid][0], 1);
	PlayerTextDrawUseBox(playerid, StatsTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, StatsTD[playerid][0], 150);
	PlayerTextDrawTextSize(playerid, StatsTD[playerid][0], 516.000000, 40.000000);
	PlayerTextDrawSetSelectable(playerid, StatsTD[playerid][0], 0);

	StatsTD[playerid][1] = CreatePlayerTextDraw(playerid, 162.000000, 120.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, StatsTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, StatsTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, StatsTD[playerid][1], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid, StatsTD[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, StatsTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, StatsTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, StatsTD[playerid][1], 1);
	PlayerTextDrawUseBox(playerid, StatsTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, StatsTD[playerid][1], 150);
	PlayerTextDrawTextSize(playerid, StatsTD[playerid][1], 516.000000, -60.000000);
	PlayerTextDrawSetSelectable(playerid, StatsTD[playerid][1], 0);

	StatsTD[playerid][2] = CreatePlayerTextDraw(playerid, 110.000000, 134.000000, "skin");
	PlayerTextDrawAlignment(playerid, StatsTD[playerid][2], 2);
	PlayerTextDrawBackgroundColor(playerid, StatsTD[playerid][2], 0);
	PlayerTextDrawFont(playerid, StatsTD[playerid][2], 5);
	PlayerTextDrawLetterSize(playerid, StatsTD[playerid][2], 0.360000, 1.200000);
	PlayerTextDrawColor(playerid, StatsTD[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, StatsTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, StatsTD[playerid][2], 1);
	PlayerTextDrawUseBox(playerid, StatsTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, StatsTD[playerid][2], 0);
	PlayerTextDrawTextSize(playerid, StatsTD[playerid][2], 169.000000, 132.000000);
	PlayerTextDrawSetPreviewModel(playerid, StatsTD[playerid][2], 166);
	PlayerTextDrawSetPreviewRot(playerid, StatsTD[playerid][2], 0.000000, 0.000000, 20.000000, 1.000000);
	PlayerTextDrawSetSelectable(playerid, StatsTD[playerid][2], 0);

	StatsTD[playerid][3] = CreatePlayerTextDraw(playerid, 229.000000, 147.000000, "~l~Name:~w~ Fucker(0)~n~~n~~l~Score:~w~ 5000~n~~n~~l~Bank:~w~ $50000000");
	PlayerTextDrawBackgroundColor(playerid, StatsTD[playerid][3], -236);
	PlayerTextDrawFont(playerid, StatsTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, StatsTD[playerid][3], 0.250000, 1.000000);
	PlayerTextDrawColor(playerid, StatsTD[playerid][3], 255);
	PlayerTextDrawSetOutline(playerid, StatsTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, StatsTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, StatsTD[playerid][3], 0);

	StatsTD[playerid][4] = CreatePlayerTextDraw(playerid, 229.000000, 201.000000, "~l~VIP Points:~w~ 15~n~~n~~l~House:~w~ HouseName(0)");
	PlayerTextDrawBackgroundColor(playerid, StatsTD[playerid][4], -236);
	PlayerTextDrawFont(playerid, StatsTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, StatsTD[playerid][4], 0.250000, 1.000000);
	PlayerTextDrawColor(playerid, StatsTD[playerid][4], 255);
	PlayerTextDrawSetOutline(playerid, StatsTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, StatsTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, StatsTD[playerid][4], 0);

	StatsTD[playerid][5] = CreatePlayerTextDraw(playerid, 364.000000, 147.000000, "~l~Gang: ~w~NoShit~n~~n~~l~Kills: ~w~10~n~~n~~l~Deaths: ~w~0~n~~n~~l~Ratio: ~w~0~n~~n~~l~LMS wins: ~w~0");
	PlayerTextDrawBackgroundColor(playerid, StatsTD[playerid][5], -236);
	PlayerTextDrawFont(playerid, StatsTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, StatsTD[playerid][5], 0.250000, 1.000000);
	PlayerTextDrawColor(playerid, StatsTD[playerid][5], 255);
	PlayerTextDrawSetOutline(playerid, StatsTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, StatsTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, StatsTD[playerid][5], 0);

	StatsTD[playerid][6] = CreatePlayerTextDraw(playerid, 364.000000, 236.000000, "~l~Duels won: ~w~5~n~~n~~l~Races won: ~w~5~n~~n~~l~Vehicles Exported: ~w~5");
	PlayerTextDrawBackgroundColor(playerid, StatsTD[playerid][6], -236);
	PlayerTextDrawFont(playerid, StatsTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, StatsTD[playerid][6], 0.250000, 1.000000);
	PlayerTextDrawColor(playerid, StatsTD[playerid][6], 255);
	PlayerTextDrawSetOutline(playerid, StatsTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, StatsTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, StatsTD[playerid][6], 0);


	Car_LocationTD[playerid] = CreatePlayerTextDraw(playerid, 632.000000, 386.000000, "~y~Bullet");
	PlayerTextDrawAlignment(playerid, Car_LocationTD[playerid], 3);
	PlayerTextDrawBackgroundColor(playerid, Car_LocationTD[playerid], 255);
	PlayerTextDrawFont(playerid, Car_LocationTD[playerid], 3);
	PlayerTextDrawLetterSize(playerid, Car_LocationTD[playerid], 0.539999, 1.300000);
	PlayerTextDrawColor(playerid, Car_LocationTD[playerid], -1);
	PlayerTextDrawSetOutline(playerid, Car_LocationTD[playerid], 1);
	PlayerTextDrawSetProportional(playerid, Car_LocationTD[playerid], 1);
	PlayerTextDrawSetSelectable(playerid, Car_LocationTD[playerid], 0);

	pScreenTXD[playerid][0] = CreatePlayerTextDraw(playerid, 6.000000, 412.000000, "fps: 120");
	PlayerTextDrawBackgroundColor(playerid, pScreenTXD[playerid][0], 255);
	PlayerTextDrawFont(playerid, pScreenTXD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, pScreenTXD[playerid][0], 0.190000, 0.899999);
	PlayerTextDrawColor(playerid, pScreenTXD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, pScreenTXD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, pScreenTXD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, pScreenTXD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, pScreenTXD[playerid][0], 0);

	pScreenTXD[playerid][1] = CreatePlayerTextDraw(playerid, 6.000000, 421.000000, "Ping: 120");
	PlayerTextDrawBackgroundColor(playerid, pScreenTXD[playerid][1], 255);
	PlayerTextDrawFont(playerid, pScreenTXD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, pScreenTXD[playerid][1], 0.190000, 0.899999);
	PlayerTextDrawColor(playerid, pScreenTXD[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, pScreenTXD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, pScreenTXD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, pScreenTXD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, pScreenTXD[playerid][1], 0);

	pScreenTXD[playerid][2] = CreatePlayerTextDraw(playerid, 15.000000, 435.000000, "~P~Score: 20");
	PlayerTextDrawBackgroundColor(playerid, pScreenTXD[playerid][2], 255);
	PlayerTextDrawFont(playerid, pScreenTXD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, pScreenTXD[playerid][2], 0.190000, 0.899999);
	PlayerTextDrawColor(playerid, pScreenTXD[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, pScreenTXD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, pScreenTXD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, pScreenTXD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, pScreenTXD[playerid][2], 0);

	pScreenTXD[playerid][3] = CreatePlayerTextDraw(playerid, 4.000000, 434.000000, "hud:radar_race");
	PlayerTextDrawBackgroundColor(playerid, pScreenTXD[playerid][3], 0);
	PlayerTextDrawFont(playerid, pScreenTXD[playerid][3], 4);
	PlayerTextDrawLetterSize(playerid, pScreenTXD[playerid][3], -0.009999, -1.100000);
	PlayerTextDrawColor(playerid, pScreenTXD[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, pScreenTXD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, pScreenTXD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, pScreenTXD[playerid][3], 1);
	PlayerTextDrawUseBox(playerid, pScreenTXD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, pScreenTXD[playerid][3], 255);
	PlayerTextDrawTextSize(playerid, pScreenTXD[playerid][3], 10.000000, 10.000000);
	PlayerTextDrawSetSelectable(playerid, pScreenTXD[playerid][3], 0);


/*
	tGWTD2[playerid]  = CreatePlayerTextDraw(playerid,8.000000, 331.000000, "~r~One of your turfs is under attack ~y~(00:50)");
	PlayerTextDrawBackgroundColor(playerid,tGWTD2[playerid] , 255);
	PlayerTextDrawFont(playerid,tGWTD2[playerid] , 1);
	PlayerTextDrawLetterSize(playerid,tGWTD2[playerid] , 0.190000, 0.699999);
	PlayerTextDrawColor(playerid,tGWTD2[playerid] , -1);
	PlayerTextDrawSetOutline(playerid,tGWTD2[playerid] , 1);
	PlayerTextDrawSetProportional(playerid,tGWTD2[playerid] , 1);
	PlayerTextDrawSetSelectable(playerid,tGWTD2[playerid] , 0);
*/

	BankTD[playerid][0] = CreatePlayerTextDraw(playerid,130.000000, 132.000000, "_");
	PlayerTextDrawBackgroundColor(playerid,BankTD[playerid][0], 255);
	PlayerTextDrawFont(playerid,BankTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid,BankTD[playerid][0], 0.500000, 15.000000);
	PlayerTextDrawColor(playerid,BankTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid,BankTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid,BankTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid,BankTD[playerid][0], 1);
	PlayerTextDrawUseBox(playerid,BankTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid,BankTD[playerid][0], 150);
	PlayerTextDrawTextSize(playerid,BankTD[playerid][0], 490.000000, -40.000000);
	PlayerTextDrawSetSelectable(playerid,BankTD[playerid][0], 0);

	BankTD[playerid][1] = CreatePlayerTextDraw(playerid,215.000000, 140.000000, "Automated teller machine - ATM");
	PlayerTextDrawBackgroundColor(playerid,BankTD[playerid][1], 50);
	PlayerTextDrawFont(playerid,BankTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid,BankTD[playerid][1], 0.349999, 1.699998);
	PlayerTextDrawColor(playerid,BankTD[playerid][1], 4837887);
	PlayerTextDrawSetOutline(playerid,BankTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid,BankTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,BankTD[playerid][1], 0);

	BankTD[playerid][2] = CreatePlayerTextDraw(playerid,313.000000, 252.000000, "Bank Balance: $0000000");
	PlayerTextDrawBackgroundColor(playerid,BankTD[playerid][2], 150);
	PlayerTextDrawAlignment(playerid,BankTD[playerid][2],2);
	PlayerTextDrawFont(playerid,BankTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid,BankTD[playerid][2], 0.200000, 0.899999);
	PlayerTextDrawColor(playerid,BankTD[playerid][2], 5703679);
	PlayerTextDrawSetOutline(playerid,BankTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid,BankTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid,BankTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid,BankTD[playerid][2], 0);

	BankTD[playerid][3] = CreatePlayerTextDraw(playerid,274.000000, 198.000000, "~>~ Withdraw ~<~");
	PlayerTextDrawBackgroundColor(playerid,BankTD[playerid][3], 255);
	PlayerTextDrawFont(playerid,BankTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid,BankTD[playerid][3], 0.270000, 1.099998);
	PlayerTextDrawColor(playerid,BankTD[playerid][3], -436207488);
	PlayerTextDrawSetOutline(playerid,BankTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid,BankTD[playerid][3], 1);
	PlayerTextDrawUseBox(playerid,BankTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid,BankTD[playerid][3], 20);
	PlayerTextDrawTextSize(playerid,BankTD[playerid][3], 348.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,BankTD[playerid][3], 1);

	BankTD[playerid][4] = CreatePlayerTextDraw(playerid,274.000000, 176.000000, " ~>~ Deposit ~<~");
	PlayerTextDrawBackgroundColor(playerid,BankTD[playerid][4], 255);
	PlayerTextDrawFont(playerid,BankTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid,BankTD[playerid][4], 0.270000, 1.099998);
	PlayerTextDrawColor(playerid,BankTD[playerid][4], -436207488);
	PlayerTextDrawSetOutline(playerid,BankTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid,BankTD[playerid][4], 1);
	PlayerTextDrawUseBox(playerid,BankTD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid,BankTD[playerid][4], 20);
	PlayerTextDrawTextSize(playerid,BankTD[playerid][4], 348.000000, 15.000000);
	PlayerTextDrawSetSelectable(playerid,BankTD[playerid][4], 1);

	BankTD[playerid][5] = CreatePlayerTextDraw(playerid,181.000000, 134.000000, "1274");
	PlayerTextDrawAlignment(playerid,BankTD[playerid][5], 2);
	PlayerTextDrawBackgroundColor(playerid,BankTD[playerid][5], 0);
	PlayerTextDrawFont(playerid,BankTD[playerid][5], 5);
	PlayerTextDrawLetterSize(playerid,BankTD[playerid][5], 0.340000, 1.299998);
	PlayerTextDrawColor(playerid,BankTD[playerid][5], -1);
	PlayerTextDrawSetOutline(playerid,BankTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid,BankTD[playerid][5], 1);
	PlayerTextDrawUseBox(playerid,BankTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid,BankTD[playerid][5], 0);
	PlayerTextDrawTextSize(playerid,BankTD[playerid][5], 30.000000, 30.000000);
	PlayerTextDrawSetSelectable(playerid,BankTD[playerid][5], 0);
	PlayerTextDrawSetPreviewModel(playerid,BankTD[playerid][5], 1274);
	PlayerTextDrawSetPreviewRot(playerid,BankTD[playerid][5], 0.0,0.0,180.0);

    screenfade[playerid] = CreatePlayerTextDraw(playerid,0.0, 0.0, "_");
	PlayerTextDrawFont(playerid,screenfade[playerid], 1);
	PlayerTextDrawLetterSize(playerid,screenfade[playerid], 0.0, 50.0);
	PlayerTextDrawUseBox(playerid,screenfade[playerid], true);
	PlayerTextDrawColor(playerid,screenfade[playerid], 0);
	PlayerTextDrawBoxColor(playerid,screenfade[playerid], 0);

 ////////////////

	pMinigameTD[playerid][0] = CreatePlayerTextDraw(playerid, 567.000000, 305.000000, "~n~_~n~_~n~_~n~_~n~_~n~_");
	PlayerTextDrawAlignment(playerid, pMinigameTD[playerid][0], 2);
	PlayerTextDrawBackgroundColor(playerid, pMinigameTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, pMinigameTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, pMinigameTD[playerid][0], 0.239999, 0.800000);
	PlayerTextDrawColor(playerid, pMinigameTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, pMinigameTD[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, pMinigameTD[playerid][0], 1);
	PlayerTextDrawUseBox(playerid, pMinigameTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, pMinigameTD[playerid][0], 255);
	PlayerTextDrawTextSize(playerid, pMinigameTD[playerid][0], 10.000000, 105.000000);
	PlayerTextDrawSetSelectable(playerid, pMinigameTD[playerid][0], 0);

	pMinigameTD[playerid][1] = CreatePlayerTextDraw(playerid, 568.000000, 299.000000, "~p~Deathmatch");
	PlayerTextDrawAlignment(playerid, pMinigameTD[playerid][1], 2);
	PlayerTextDrawBackgroundColor(playerid, pMinigameTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, pMinigameTD[playerid][1], 2);
	PlayerTextDrawLetterSize(playerid, pMinigameTD[playerid][1], 0.200000, 1.000000);
	PlayerTextDrawColor(playerid, pMinigameTD[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, pMinigameTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, pMinigameTD[playerid][1], 1);
	PlayerTextDrawUseBox(playerid, pMinigameTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, pMinigameTD[playerid][1], 0);
	PlayerTextDrawTextSize(playerid, pMinigameTD[playerid][1], 0.000000, 105.000000);
	PlayerTextDrawSetSelectable(playerid, pMinigameTD[playerid][1], 0);

	pMinigameTD[playerid][2] = CreatePlayerTextDraw(playerid, 568.000000, 304.000000, "-");
	PlayerTextDrawAlignment(playerid, pMinigameTD[playerid][2], 2);
	PlayerTextDrawBackgroundColor(playerid, pMinigameTD[playerid][2], 255);
	PlayerTextDrawFont(playerid, pMinigameTD[playerid][2], 2);
	PlayerTextDrawLetterSize(playerid, pMinigameTD[playerid][2], 9.000000, 1.000000);
	PlayerTextDrawColor(playerid, pMinigameTD[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, pMinigameTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid, pMinigameTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, pMinigameTD[playerid][2], 1);
	PlayerTextDrawUseBox(playerid, pMinigameTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, pMinigameTD[playerid][2], 0);
	PlayerTextDrawTextSize(playerid, pMinigameTD[playerid][2], 0.000000, 105.000000);
	PlayerTextDrawSetSelectable(playerid, pMinigameTD[playerid][2], 0);

	pMinigameTD[playerid][3] = CreatePlayerTextDraw(playerid, 526.000000, 314.000000, "~r~Kills: ~w~0~n~~g~Deaths: ~w~0~n~~y~Serial Kills: ~w~0~n~~p~Ratio: ~w~0");
	PlayerTextDrawBackgroundColor(playerid, pMinigameTD[playerid][3], 20);
	PlayerTextDrawFont(playerid, pMinigameTD[playerid][3], 2);
	PlayerTextDrawLetterSize(playerid, pMinigameTD[playerid][3], 0.170000, 0.999999);
	PlayerTextDrawColor(playerid, pMinigameTD[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, pMinigameTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, pMinigameTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, pMinigameTD[playerid][3], 0);
///////////////

	BanTD[playerid][0] = CreatePlayerTextDraw(playerid, 144.000000, 260.000000, "~r~You have been BANNED");
	PlayerTextDrawBackgroundColor(playerid, BanTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, BanTD[playerid][0], 2);
	PlayerTextDrawLetterSize(playerid, BanTD[playerid][0], 0.700000, 3.000000);
	PlayerTextDrawColor(playerid, BanTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, BanTD[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, BanTD[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, BanTD[playerid][0], 0);

	BanTD[playerid][1] = CreatePlayerTextDraw(playerid, 315.000000, 290.000000, "~y~Reason:~w~ Minigun~n~~y~Admin:~w~ Jonny~n~~n~~y~5/06/2014");
	PlayerTextDrawAlignment(playerid, BanTD[playerid][1], 2);
	PlayerTextDrawBackgroundColor(playerid, BanTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, BanTD[playerid][1], 2);
	PlayerTextDrawLetterSize(playerid, BanTD[playerid][1], 0.280000, 1.499999);
	PlayerTextDrawColor(playerid, BanTD[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, BanTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, BanTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, BanTD[playerid][1], 0);


	TopGangs[playerid][0] = CreatePlayerTextDraw(playerid, 202.000000, 120.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, TopGangs[playerid][0], 255);
	PlayerTextDrawFont(playerid, TopGangs[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, TopGangs[playerid][0], 0.200000, 1.000000);
	PlayerTextDrawColor(playerid, TopGangs[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, TopGangs[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, TopGangs[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TopGangs[playerid][0], 1);
	PlayerTextDrawUseBox(playerid, TopGangs[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, TopGangs[playerid][0], 150);
	PlayerTextDrawTextSize(playerid, TopGangs[playerid][0], 415.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, TopGangs[playerid][0], 0);

	TopGangs[playerid][1] = CreatePlayerTextDraw(playerid, 202.000000, 120.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, TopGangs[playerid][1], 255);
	PlayerTextDrawFont(playerid, TopGangs[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, TopGangs[playerid][1], 0.200000, 22.7);
	PlayerTextDrawColor(playerid, TopGangs[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, TopGangs[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, TopGangs[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TopGangs[playerid][1], 1);
	PlayerTextDrawUseBox(playerid, TopGangs[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, TopGangs[playerid][1], 50);
	PlayerTextDrawTextSize(playerid, TopGangs[playerid][1], 415.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, TopGangs[playerid][1], 0);

	TopGangs[playerid][2] = CreatePlayerTextDraw(playerid, 207.000000, 120.000000, "~y~Top Gangs           Points             Members        Turfs");
	PlayerTextDrawBackgroundColor(playerid, TopGangs[playerid][2], 150);
	PlayerTextDrawFont(playerid, TopGangs[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, TopGangs[playerid][2], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, TopGangs[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, TopGangs[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TopGangs[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, TopGangs[playerid][2], 0);

	TopGangs[playerid][3] = CreatePlayerTextDraw(playerid, 211.000000, 140.000000, "~p~Kids Gang");
	PlayerTextDrawAlignment(playerid, TopGangs[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, TopGangs[playerid][3], 150);
	PlayerTextDrawFont(playerid, TopGangs[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, TopGangs[playerid][3], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, TopGangs[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, TopGangs[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TopGangs[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, TopGangs[playerid][3], 0);

	TopGangs[playerid][4] = CreatePlayerTextDraw(playerid, 275.000000, 140.000000, "500");
	PlayerTextDrawAlignment(playerid, TopGangs[playerid][4], 2);
	PlayerTextDrawBackgroundColor(playerid, TopGangs[playerid][4], 150);
	PlayerTextDrawFont(playerid, TopGangs[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, TopGangs[playerid][4], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, TopGangs[playerid][4], -1);
	PlayerTextDrawSetOutline(playerid, TopGangs[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, TopGangs[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, TopGangs[playerid][4], 0);

	TopGangs[playerid][5] = CreatePlayerTextDraw(playerid, 333.000000, 140.000000, "Mmbers");
	PlayerTextDrawAlignment(playerid, TopGangs[playerid][5], 2);
	PlayerTextDrawBackgroundColor(playerid, TopGangs[playerid][5], 150);
	PlayerTextDrawFont(playerid, TopGangs[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, TopGangs[playerid][5], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, TopGangs[playerid][5], -1);
	PlayerTextDrawSetOutline(playerid, TopGangs[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, TopGangs[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, TopGangs[playerid][5], 0);

	TopGangs[playerid][6] = CreatePlayerTextDraw(playerid, 376.000000, 140.000000, "Turfs");
	PlayerTextDrawAlignment(playerid, TopGangs[playerid][6], 2);
	PlayerTextDrawBackgroundColor(playerid, TopGangs[playerid][6], 150);
	PlayerTextDrawFont(playerid, TopGangs[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, TopGangs[playerid][6], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, TopGangs[playerid][6], -1);
	PlayerTextDrawSetOutline(playerid, TopGangs[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, TopGangs[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, TopGangs[playerid][6], 0);

	pGangInfoTD[playerid][0] = CreatePlayerTextDraw(playerid, 202.000000, 120.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, pGangInfoTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, pGangInfoTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, pGangInfoTD[playerid][0], 0.3499, 22.7);
	PlayerTextDrawColor(playerid, pGangInfoTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, pGangInfoTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, pGangInfoTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, pGangInfoTD[playerid][0], 1);
	PlayerTextDrawUseBox(playerid, pGangInfoTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, pGangInfoTD[playerid][0], 100);
	PlayerTextDrawTextSize(playerid, pGangInfoTD[playerid][0], 415.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, pGangInfoTD[playerid][0], 0);

	pGangInfoTD[playerid][1] = CreatePlayerTextDraw(playerid, 202.000000, 120.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, pGangInfoTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, pGangInfoTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, pGangInfoTD[playerid][1], 0.3499, 0.899999);
	PlayerTextDrawColor(playerid, pGangInfoTD[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, pGangInfoTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, pGangInfoTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, pGangInfoTD[playerid][1], 1);
	PlayerTextDrawUseBox(playerid, pGangInfoTD[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, pGangInfoTD[playerid][1], 150);
	PlayerTextDrawTextSize(playerid, pGangInfoTD[playerid][1], 415.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid, pGangInfoTD[playerid][1], 0);

	pGangInfoTD[playerid][2] = CreatePlayerTextDraw(playerid, 286.000000, 120.000000, "Gang Info");
	PlayerTextDrawBackgroundColor(playerid, pGangInfoTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, pGangInfoTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, pGangInfoTD[playerid][2], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, pGangInfoTD[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, pGangInfoTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, pGangInfoTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, pGangInfoTD[playerid][2], 0);

	pGangInfoTD[playerid][3] = CreatePlayerTextDraw(playerid, 209.000000, 136.000000, "~y~Name:~w~ The_Name(id)~n~~n~~y~Turfs:~w~ 500~n~~n~~y~Points: ~w~5");
	PlayerTextDrawBackgroundColor(playerid, pGangInfoTD[playerid][3], 150);
	PlayerTextDrawFont(playerid, pGangInfoTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, pGangInfoTD[playerid][3], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, pGangInfoTD[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, pGangInfoTD[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, pGangInfoTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid, pGangInfoTD[playerid][3], 0);

	pGangInfoTD[playerid][4] = CreatePlayerTextDraw(playerid, 209.000000, 185.000000, "~p~Members (30): ~w~~n~~n~Member1~n~~n~Member1~n~~n~Member1~n~~n~Member1~n~~n~Member1~n~~n~Member1~n~~n~Member1");
	PlayerTextDrawBackgroundColor(playerid, pGangInfoTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, pGangInfoTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, pGangInfoTD[playerid][4], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, pGangInfoTD[playerid][4], -1);
	PlayerTextDrawSetOutline(playerid, pGangInfoTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, pGangInfoTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, pGangInfoTD[playerid][4], 0);

	pGangInfoTD[playerid][5] = CreatePlayerTextDraw(playerid, 260.000000, 185.000000, "~n~~n~Member2~n~~n~Member2~n~~n~Member2~n~~n~Member2~n~~n~Member2~n~~n~Member2~n~~n~Member2");
	PlayerTextDrawBackgroundColor(playerid, pGangInfoTD[playerid][5], 150);
	PlayerTextDrawFont(playerid, pGangInfoTD[playerid][5], 1);
	PlayerTextDrawLetterSize(playerid, pGangInfoTD[playerid][5], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, pGangInfoTD[playerid][5], -1);
	PlayerTextDrawSetOutline(playerid, pGangInfoTD[playerid][5], 1);
	PlayerTextDrawSetProportional(playerid, pGangInfoTD[playerid][5], 1);
	PlayerTextDrawSetSelectable(playerid, pGangInfoTD[playerid][5], 0);

	pGangInfoTD[playerid][6] = CreatePlayerTextDraw(playerid, 312.000000, 185.000000, "~n~~n~Member3~n~~n~Member3~n~~n~Member3~n~~n~Member3~n~~n~Member3~n~~n~Member3~n~~n~Member3");
	PlayerTextDrawBackgroundColor(playerid, pGangInfoTD[playerid][6], 150);
	PlayerTextDrawFont(playerid, pGangInfoTD[playerid][6], 1);
	PlayerTextDrawLetterSize(playerid, pGangInfoTD[playerid][6], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid, pGangInfoTD[playerid][6], -1);
	PlayerTextDrawSetOutline(playerid, pGangInfoTD[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, pGangInfoTD[playerid][6], 1);
	PlayerTextDrawSetSelectable(playerid, pGangInfoTD[playerid][6], 0);

	TutTD[playerid][0]= CreatePlayerTextDraw(playerid, 670.000000, 0.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, TutTD[playerid][0], 255);
	PlayerTextDrawFont(playerid, TutTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid, TutTD[playerid][0], 0.500000, 1.800000);
	PlayerTextDrawColor(playerid, TutTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid, TutTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid, TutTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TutTD[playerid][0], 1);
	PlayerTextDrawUseBox(playerid, TutTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, TutTD[playerid][0], 255);
	PlayerTextDrawTextSize(playerid, TutTD[playerid][0], -20.000000, -10.000000);
	PlayerTextDrawSetSelectable(playerid, TutTD[playerid][0], 0);

	TutTD[playerid][2] = CreatePlayerTextDraw(playerid, 322.000000, 357.000000, "~y~Ammunation");
	PlayerTextDrawAlignment(playerid, TutTD[playerid][2], 2);
	PlayerTextDrawBackgroundColor(playerid, TutTD[playerid][2], 150);
	PlayerTextDrawFont(playerid, TutTD[playerid][2], 1);
	PlayerTextDrawLetterSize(playerid, TutTD[playerid][2], 0.340000, 1.100000);
	PlayerTextDrawColor(playerid, TutTD[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid, TutTD[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TutTD[playerid][2], 1);
	PlayerTextDrawSetSelectable(playerid, TutTD[playerid][2], 0);

	TutTD[playerid][3] = CreatePlayerTextDraw(playerid, 670.000000, 426.000000, "_");
	PlayerTextDrawBackgroundColor(playerid, TutTD[playerid][3], 255);
	PlayerTextDrawFont(playerid, TutTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid, TutTD[playerid][3], 0.500000, 3.800000);
	PlayerTextDrawColor(playerid, TutTD[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid, TutTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid, TutTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, TutTD[playerid][3], 1);
	PlayerTextDrawUseBox(playerid, TutTD[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, TutTD[playerid][3], 255);
	PlayerTextDrawTextSize(playerid, TutTD[playerid][3], -20.000000, -10.000000);
	PlayerTextDrawSetSelectable(playerid, TutTD[playerid][3], 0);

	TutTD[playerid][4] = CreatePlayerTextDraw(playerid, 326.000000, 365.000000, "-");
	PlayerTextDrawAlignment(playerid, TutTD[playerid][4], 2);
	PlayerTextDrawBackgroundColor(playerid, TutTD[playerid][4], 150);
	PlayerTextDrawFont(playerid, TutTD[playerid][4], 1);
	PlayerTextDrawLetterSize(playerid, TutTD[playerid][4], 10.000000, 0.500000);
	PlayerTextDrawColor(playerid, TutTD[playerid][4], -1);
	PlayerTextDrawSetOutline(playerid, TutTD[playerid][4], 1);
	PlayerTextDrawSetProportional(playerid, TutTD[playerid][4], 1);
	PlayerTextDrawSetSelectable(playerid, TutTD[playerid][4], 0);

	TutTD[playerid][1] = CreatePlayerTextDraw(playerid, 331.000000, 371.000000, "_");
	PlayerTextDrawAlignment(playerid, TutTD[playerid][1], 2);
	PlayerTextDrawBackgroundColor(playerid, TutTD[playerid][1], 255);
	PlayerTextDrawFont(playerid, TutTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid, TutTD[playerid][1], 0.220000, 0.899999);
	PlayerTextDrawColor(playerid, TutTD[playerid][1], -1);
	PlayerTextDrawSetOutline(playerid, TutTD[playerid][1], 0);
	PlayerTextDrawSetProportional(playerid, TutTD[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TutTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid, TutTD[playerid][1], 0);

}

stock CreateCarsTD(playerid)
{

	pCarsTD[playerid][0] = CreatePlayerTextDraw(playerid,70.000000, 120.000000, "_");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][0], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][0], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][0], 0.700000, 23.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][0], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][0], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][0], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][0], 255);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][0], 553.000000, 0.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][0], 0);

	pCarsTD[playerid][1] = CreatePlayerTextDraw(playerid,255.000000, 129.000000, "~l~GTADM - Car Dealer");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][1], -236);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][1], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][1], 0.350000, 1.300000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][1], 5046271);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][1], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][1], 0);

	pCarsTD[playerid][2] = CreatePlayerTextDraw(playerid,89.000000, 133.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][2], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][2], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][2], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][2], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][2], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][2], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][2], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][2], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][2], 1);

	pCarsTD[playerid][4] = CreatePlayerTextDraw(playerid,159.000000, 133.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][4], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][4], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][4], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][4], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][4], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][4], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][4], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][4], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][4], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][4], 1);

	pCarsTD[playerid][5] = CreatePlayerTextDraw(playerid,229.000000, 133.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][5], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][5], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][5], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][5], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][5], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][5], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][5], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][5], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][5], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][5], 1);

	pCarsTD[playerid][6] = CreatePlayerTextDraw(playerid,303.000000, 133.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][6], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][6], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][6], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][6], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][6], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][6], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][6], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][6], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][6], 1);

	pCarsTD[playerid][7] = CreatePlayerTextDraw(playerid,383.000000, 133.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][7], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][7], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][7], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][7], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][7], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][7], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][7], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][7], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][7], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][7], 1);

	pCarsTD[playerid][9] = CreatePlayerTextDraw(playerid,460.000000, 133.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][9], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][9], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][9], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][9], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][9], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][9], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][9], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][9], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][9], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][9], 1);

	pCarsTD[playerid][10] = CreatePlayerTextDraw(playerid,85.000000, 195.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][10], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][10], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][10], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][10], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][10], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][10], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][10], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][10], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][10], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][10], 1);

	pCarsTD[playerid][11] = CreatePlayerTextDraw(playerid,155.000000, 195.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][11], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][11], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][11], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][11], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][11], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][11], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][11], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][11], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][11], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][11], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][11], 1);

	pCarsTD[playerid][12] = CreatePlayerTextDraw(playerid,226.000000, 195.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][12], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][12], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][12], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][12], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][12], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][12], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][12], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][12], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][12], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][12], 1);

	pCarsTD[playerid][13] = CreatePlayerTextDraw(playerid,301.000000, 195.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][13], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][13], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][13], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][13], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][13], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][13], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][13], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][13], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][13], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][13], 1);

	pCarsTD[playerid][14] = CreatePlayerTextDraw(playerid,382.000000, 195.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][14], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][14], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][14], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][14], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][14], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][14], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][14], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][14], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][14], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][14], 1);

	pCarsTD[playerid][15] = CreatePlayerTextDraw(playerid,462.000000, 195.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][15], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][15], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][15], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][15], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][15], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][15], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][15], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][15], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][15], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][15], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][15], 1);

	pCarsTD[playerid][16] = CreatePlayerTextDraw(playerid,85.000000, 252.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][16], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][16], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][16], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][16], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][16], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][16], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][16], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][16], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][16], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][16], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][16], 1);

	pCarsTD[playerid][17] = CreatePlayerTextDraw(playerid,155.000000, 252.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][17], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][17], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][17], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][17], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][17], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][17], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][17], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][17], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][17], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][17], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][17], 1);

	pCarsTD[playerid][18] = CreatePlayerTextDraw(playerid,226.000000, 252.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][18], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][18], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][18], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][18], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][18], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][18], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][18], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][18], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][18], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][18], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][18], 1);

	pCarsTD[playerid][19] = CreatePlayerTextDraw(playerid,301.000000, 252.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][19], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][19], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][19], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][19], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][19], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][19], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][19], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][19], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][19], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][19], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][19], 1);

	pCarsTD[playerid][20] = CreatePlayerTextDraw(playerid,381.000000, 252.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][20], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][20], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][20], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][20], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][20], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][20], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][20], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][20], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][20], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][20], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][20], 1);

	pCarsTD[playerid][21] = CreatePlayerTextDraw(playerid,466.000000, 252.000000, "Car 1");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][21], 0);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][21], 5);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][21], 0.500000, 1.000000);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][21], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][21], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][21], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][21], 1);
	PlayerTextDrawUseBox(playerid,pCarsTD[playerid][21], 1);
	PlayerTextDrawBoxColor(playerid,pCarsTD[playerid][21], 0);
	PlayerTextDrawTextSize(playerid,pCarsTD[playerid][21], 70.000000, 70.000000);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][21], 1);


	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][2], 404);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][4], 405);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][5], 410);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][6], 419);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][7], 562);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][9], 424);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][10], 560);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][11], 558);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][12], 559);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][13], 523);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][14], 490);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][15], 480);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][16], 477);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][17], 415);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][18], 451);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][19], 429);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][20], 541);
	PlayerTextDrawSetPreviewModel(playerid, pCarsTD[playerid][21], 411);

	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][2],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][4],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][5],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][6],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][7],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][9],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][10],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][11],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][12],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][13],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][14],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][15],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][16],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][17],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][18],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][19],  -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][20], -16.000000, 0.000000, -55.000000, 1.000000);
	PlayerTextDrawSetPreviewRot(playerid, pCarsTD[playerid][21],  -16.000000, 0.000000, -55.000000, 1.000000);

    
	pCarsTD[playerid][8] = CreatePlayerTextDraw(playerid,416.000000, 166.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][8], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][8], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][8], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][8], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][8], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][8], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][8], 0);

	pCarsTD[playerid][22] = CreatePlayerTextDraw(playerid,496.000000, 166.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][22], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][22], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][22], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][22], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][22], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][22], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][22], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][22], 0);

	pCarsTD[playerid][23] = CreatePlayerTextDraw(playerid,120.000000, 226.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][23], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][23], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][23], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][23], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][23], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][23], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][23], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][23], 0);

	pCarsTD[playerid][24] = CreatePlayerTextDraw(playerid,190.000000, 226.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][24], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][24], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][24], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][24], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][24], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][24], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][24], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][24], 0);

	pCarsTD[playerid][25] = CreatePlayerTextDraw(playerid,260.000000, 226.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][25], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][25], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][25], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][25], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][25], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][25], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][25], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][25], 0);

	pCarsTD[playerid][26] = CreatePlayerTextDraw(playerid,338.000000, 226.000000, "~p~VIP");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][26], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][26], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][26], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][26], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][26], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][26], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][26], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][26], 0);

	pCarsTD[playerid][27] = CreatePlayerTextDraw(playerid,418.000000, 226.000000, "~p~VIP");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][27], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][27], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][27], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][27], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][27], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][27], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][27], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][27], 0);

	pCarsTD[playerid][28] = CreatePlayerTextDraw(playerid,497.000000, 226.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][28], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][28], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][28], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][28], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][28], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][28], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][28], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][28], 0);

	pCarsTD[playerid][29] = CreatePlayerTextDraw(playerid,118.000000, 286.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][29], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][29], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][29], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][29], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][29], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][29], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][29], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][29], 0);

	pCarsTD[playerid][30] = CreatePlayerTextDraw(playerid,188.000000, 286.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][30], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][30], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][30], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][30], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][30], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][30], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][30], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][30], 0);

	pCarsTD[playerid][31] = CreatePlayerTextDraw(playerid,260.000000, 286.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][31], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][31], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][31], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][31], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][31], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][31], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][31], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][31], 0);

	pCarsTD[playerid][32] = CreatePlayerTextDraw(playerid,340.000000, 286.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][32], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][32], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][32], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][32], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][32], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][32], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][32], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][32], 0);

	pCarsTD[playerid][33] = CreatePlayerTextDraw(playerid,420.000000, 286.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][33], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][33], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][33], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][33], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][33], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][33], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][33], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][33], 0);

	pCarsTD[playerid][34] = CreatePlayerTextDraw(playerid,500.000000, 286.000000, "LOCKED");
	PlayerTextDrawAlignment(playerid,pCarsTD[playerid][34], 2);
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][34], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][34], 2);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][34], 0.170000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][34], -16777016);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][34], 1);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][34], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][34], 0);

	pCarsTD[playerid][35] = CreatePlayerTextDraw(playerid,110.000000, 184.000000, "~g~2000$             2000$               20000$                350000$");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][35], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][35], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][35], 0.210000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][35], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][35], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][35], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][35], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][35], 0);

	pCarsTD[playerid][3] = CreatePlayerTextDraw(playerid,402.000000, 184.000000, "~g~750000$                 750000$");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][3], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][3], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][3], 0.210000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][3], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][3], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][3], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][3], 0);

	pCarsTD[playerid][36] = CreatePlayerTextDraw(playerid,110.000000, 245.000000, "~g~900000$           900000$             900000$");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][36], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][36], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][36], 0.210000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][36], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][36], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][36], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][36], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][36], 0);

	pCarsTD[playerid][37] = CreatePlayerTextDraw(playerid,320.000000, 245.000000, "~g~1450000$                1450000$               1600000$");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][37], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][37], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][37], 0.210000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][37], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][37], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][37], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][37], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][37], 0);

	pCarsTD[playerid][38] = CreatePlayerTextDraw(playerid,110.000000, 304.000000, "~g~1600000$          1600000$            1600000$");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][38], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][38], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][38], 0.210000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][38], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][38], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][38], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][38], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][38], 0);

	pCarsTD[playerid][39] = CreatePlayerTextDraw(playerid,320.000000, 304.000000, "~g~200000$              2000000$                 2000000$");
	PlayerTextDrawBackgroundColor(playerid,pCarsTD[playerid][39], 255);
	PlayerTextDrawFont(playerid,pCarsTD[playerid][39], 1);
	PlayerTextDrawLetterSize(playerid,pCarsTD[playerid][39], 0.210000, 0.899999);
	PlayerTextDrawColor(playerid,pCarsTD[playerid][39], -1);
	PlayerTextDrawSetOutline(playerid,pCarsTD[playerid][39], 0);
	PlayerTextDrawSetProportional(playerid,pCarsTD[playerid][39], 1);
	PlayerTextDrawSetShadow(playerid,pCarsTD[playerid][39], 1);
	PlayerTextDrawSetSelectable(playerid,pCarsTD[playerid][39], 0);

	pCarsTD[playerid][40] = CreatePlayerTextDraw(playerid, 502.000000, 334.000000, "~l~More >>");
	PlayerTextDrawBackgroundColor(playerid, pCarsTD[playerid][40], 0);
	PlayerTextDrawFont(playerid, pCarsTD[playerid][40], 2);
	PlayerTextDrawLetterSize(playerid, pCarsTD[playerid][40], 0.259999, 1.000000);
	PlayerTextDrawColor(playerid, pCarsTD[playerid][40], -1);
	PlayerTextDrawSetOutline(playerid, pCarsTD[playerid][40], 1);
	PlayerTextDrawSetProportional(playerid, pCarsTD[playerid][40], 1);
	PlayerTextDrawUseBox(playerid, pCarsTD[playerid][40], 1);
	PlayerTextDrawBoxColor(playerid, pCarsTD[playerid][40], -236);
	PlayerTextDrawTextSize(playerid, pCarsTD[playerid][40], 553.000000, 20.000000);
	PlayerTextDrawSetSelectable(playerid, pCarsTD[playerid][40], 1);
}
