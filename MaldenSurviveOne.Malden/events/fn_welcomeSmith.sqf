[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

captain_smith switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

captain_smith doWatch (position player);
sleep 2;

["WelcomeSmith"] call it_fnc_succeedTask;

player KbAddTopic ["welcome","dialogues\welcome.bikb","",""];
captain_smith KbAddTopic ["welcome","dialogues\welcome.bikb","",""];

captain_smith KbTell [player, "welcome", "welcome", "DIRECT"];
waitUntil {
captain_smith KbWasSaid [player, "welcome", "welcome", 3];	//Search in 3 last seconds
};

["WelcomeJohnson"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
captain_smith switchMove "";
player switchMove "";