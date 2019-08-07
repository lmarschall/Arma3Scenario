// Add first task to player

["WelcomeParent"] call it_fnc_createTask;
["WelcomeSmith"] call it_fnc_assignTask;

/*
_output =
[
	[_tDate,""],
	[_tTime,"font='PuristaMedium'"],["","<br/>"]
];

_output = _output + [[localize "STR_OSD_Sewers",""],["","<br/>"]];

_output = _output + [[localize "STR_OSD_Location",""],["","<br/>"]];

_handle = [_output,safezoneX - 0.01,safeZoneY + (1 - 0.125) * safeZoneH,true,"<t align='right' size='1.0' font='PuristaLight'>%1</t>"] spawn BIS_fnc_typeText2;
*/
//["Resist_C.ogv", "STR_AT_Intro_Quote"] call BIS_fnc_quotations;

player switchCamera "external";

/*
[
	["Hello there"],
	safeZoneX, safeZoneH / 2,
	true,
	"<t font='PuristaBold'>%1</t>",
	[],
	{ false },
	true
] spawn BIS_fnc_typeText2;*/ // WAY TO GO

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
		["CAMP ROGAIN, ", "align = 'center' shadow = '1' size = '0.7' font='PuristaBold'"],
		["RESUPPLY POINT", "align = 'center' shadow = '1' size = '0.7'", "#aaaaaa"],
		["","<br/>"], // line break
		["10 MINUTES LATER...","align = 'center' shadow = '1' size = '1.0'"]
	]
] spawn BIS_fnc_typeText2;*/

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