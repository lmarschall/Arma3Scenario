
player switchMove "HubSpectator_stand";

captain_smith lookAt (getPosVisual player);
sleep 1;

captain_smith switchMove "HubBriefing_talkAround";

[0,0,false] spawn BIS_fnc_cinemaBorder;

["WelcomeSmith"] call it_fnc_succeedTask;

player KbAddTopic ["welcome","dialogues\welcome.bikb","",""];
captain_smith KbAddTopic ["welcome","dialogues\welcome.bikb","",""];

captain_smith KbTell [player, "welcome", "welcome", "DIRECT"];
waitUntil {
captain_smith KbWasSaid [player, "welcome", "welcome", 3];	//Search in 3 last seconds
};

["WelcomeJohnson"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
captain_smith switchMove "";
player switchMove "";