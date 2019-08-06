[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

player switchMove "HubSpectator_stand";
aafleader switchMove "HubSpectator_stand";

aafleader doWatch (position player);
sleep 2;

["TaskEight"] call it_fnc_succeedTask;

player KbAddTopic ["contact","dialogues\contact.bikb","",""];
aafleader KbAddTopic ["contact","dialogues\contact.bikb","",""];

aafleader KbTell [player,"contact","welcome"];
waitUntil {
aafleader KbWasSaid [player,"contact","welcome",3];	//Search in 3 last seconds
};

["TaskNine"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
aafleader switchMove "";
player switchMove "";

_aafgroup = group aafleader;

{
	_x assignAsCargo zamak;
	[_x] orderGetIn true;
} forEach units _aafgroup;

player addEventHandler ["GetInMan", "_h = [] spawn { call compile preProcessFile ""dialogues\inspection.sqf"";}; "];

