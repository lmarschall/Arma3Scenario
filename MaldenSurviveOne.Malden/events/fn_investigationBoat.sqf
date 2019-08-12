
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

/*
player KbAddTopic ["drive","dialogues\drive.bikb","",""];
medic KbAddTopic ["drive","dialogues\drive.bikb","",""];
autorifler KbAddTopic ["drive","dialogues\drive.bikb","",""];
engineer KbAddTopic ["drive","dialogues\drive.bikb","",""];

medic KbTell [player,"drive","welcome", "VEHICLE"];
waitUntil {
medic KbWasSaid [player,"drive","welcome",3];	//Search in 3 last seconds
};*/

["InvestigationLanding"] call it_fnc_assignTask;