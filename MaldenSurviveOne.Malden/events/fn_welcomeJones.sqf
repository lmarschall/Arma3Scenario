[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

captain_johnson switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

captain_johnson doWatch (position player);
sleep 2;

["WelcomeJohnson"] call it_fnc_succeedTask;

player KbAddTopic ["barracks","dialogues\barracks.bikb","",""];
captain_johnson KbAddTopic ["barracks","dialogues\barracks.bikb","",""];

captain_johnson KbTell [player,"barracks","welcome"];
waitUntil {
captain_johnson KbWasSaid [player,"barracks","welcome",3];	//Search in 3 last seconds
};

["WelcomeWilliams"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
captain_johnson switchMove "";
player switchMove "";