[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

major_williams switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

major_williams doWatch (position player);
sleep 2;

["WelcomeWilliams"] call it_fnc_succeedTask;

player KbAddTopic ["command","dialogues\command.bikb","",""];
major_williams KbAddTopic ["command","dialogues\command.bikb","",""];

major_williams KbTell [player,"command","welcome"];
waitUntil {
major_williams KbWasSaid [player,"command","welcome",3];	//Search in 3 last seconds
};

["WelcomeBed"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
major_williams switchMove "";
player switchMove "";