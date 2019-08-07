// Add first task to player

["WelcomeParent"] call it_fnc_createTask;
["WelcomeSmith"] call it_fnc_assignTask;

player switchCamera "external";

[ "NATO Camp Hope", str date, "Malden" ] spawn BIS_fnc_infoText;

/*
[
	[
		["Hello there...", nil, 100]
	],
	safezoneW / 4,
	safezoneH / 1.5
] spawn BIS_fnc_typeText;*/

/*
[
	[
		["CAMP ROGAIN,", "<t align = 'center' shadow = '1' size = '0.7' font='PuristaBold'>%1</t>"],
		["RESUPPLY POINT", "<t align = 'center' shadow = '1' size = '0.7'>%1</t><br/>"],
		["10 MINUTES LATER ...", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 15]
	]
] spawn BIS_fnc_typeText;*/

//["InspectionParent"] call it_fnc_createTask;
//["InspectionDrive"] call it_fnc_assignTask;

//player addEventHandler ["GetInMan", "_h = [] spawn { call compile preProcessFile ""dialogues\flight.sqf"";}; "];