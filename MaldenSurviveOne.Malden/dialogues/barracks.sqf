[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

officertwo switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

officertwo doWatch (position player);
sleep 2;

["TaskTwo"] call it_fnc_succeedTask;

player KbAddTopic ["barracks","dialogues\barracks.bikb","",""];
officertwo KbAddTopic ["barracks","dialogues\barracks.bikb","",""];

officertwo KbTell [player,"barracks","welcome"];
waitUntil {
officertwo KbWasSaid [player,"barracks","welcome",3];	//Search in 3 last seconds
};

["TaskThree"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
officertwo switchMove "";
player switchMove "";