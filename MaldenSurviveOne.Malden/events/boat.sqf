
["TaskEleven"] call it_fnc_succeedTask;

[medic, autorifler, engineer] joinSilent player;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;
_playergroup = group player;
{
	_x moveInAny boat;
} forEach units _playergroup;

setDate [2030, 2, 25, 8, 0];

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

["TaskTwelve"] call it_fnc_assignTask;