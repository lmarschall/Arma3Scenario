[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

officerthree switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

officerthree doWatch (position player);
sleep 2;

["TaskThree"] call it_fnc_succeedTask;

player KbAddTopic ["command","dialogues\command.bikb","",""];
officerthree KbAddTopic ["command","dialogues\command.bikb","",""];

officerthree KbTell [player,"command","welcome"];
waitUntil {
officerthree KbWasSaid [player,"command","welcome",3];	//Search in 3 last seconds
};

["TaskFour"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
officerthree switchMove "";
player switchMove "";