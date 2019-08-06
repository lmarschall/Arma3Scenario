[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

player switchMove "HubSpectator_stand";
aafleader switchMove "HubSpectator_stand";

aafleader doWatch (position player);
sleep 2;

["InspectionOfficer"] call it_fnc_succeedTask;

player KbAddTopic ["contact","dialogues\contact.bikb","",""];
aafleader KbAddTopic ["contact","dialogues\contact.bikb","",""];

aafleader KbTell [player,"contact","welcome"];
waitUntil {
aafleader KbWasSaid [player,"contact","welcome",3];	//Search in 3 last seconds
};

["InspectionZamak"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
aafleader switchMove "";
player switchMove "";

_aafunits = units group aafleader;
{ _x assignAsCargo zamak; } forEach _aafunits;
_aafunits orderGetIn true;