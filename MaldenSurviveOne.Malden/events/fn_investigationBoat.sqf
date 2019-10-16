
["InvestigationMeeting"] call it_fnc_succeedTask;

[sergeant_jones, sergeant_davis, sergeant_brown] joinSilent player;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;
_groupunits = units group player;
reverse _groupunits;
{
	_x moveInAny boat;
} forEach _groupunits;

(driver boat) doMove getMarkerPos "marker_boat_landing";

group player setCombatMode "GREEN";
group player setBehaviour "AWARE";

setDate [2020, 10, 27, 2, 10];

0 fadeMusic 0.6;
0 fadeSound 0.2;
playMusic "Landing";

//sleep 5;
[1, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

player KbAddTopic ["investigation_boat","dialogues\investigation_boat.bikb","",""];
sergeant_davis KbAddTopic ["investigation_boat","dialogues\investigation_boat.bikb","",""];
sergeant_brown KbAddTopic ["investigation_boat","dialogues\investigation_boat.bikb","",""];

sergeant_davis KbTell [player,"investigation_boat","investigationboatone", "VEHICLE"];
waitUntil {
sergeant_davis KbWasSaid [player,"investigation_boat","investigationboatone",3];	//Search in 3 last seconds
};

player KbTell [sergeant_davis,"investigation_boat","investigationboattwo", "VEHICLE"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_boat","investigationboattwo",3];	//Search in 3 last seconds
};

sergeant_brown KbTell [player,"investigation_boat","investigationboatthree", "VEHICLE"];
waitUntil {
sergeant_brown KbWasSaid [player,"investigation_boat","investigationboatthree",3];	//Search in 3 last seconds
};

["InvestigationLanding"] call it_fnc_assignTask;