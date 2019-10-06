
player switchMove "HubSpectator_stand";

sergeant_davis lookAt (getPosVisual player);
sleep 1;

// sergeant_davis switchMove "HubBriefing_talkAround";

[0,0,false] spawn BIS_fnc_cinemaBorder;

["WelcomeDavis"] call it_fnc_succeedTask;

player KbAddTopic ["welcome_davis","dialogues\welcome_davis.bikb","",""];
sergeant_davis KbAddTopic ["welcome_davis","dialogues\welcome_davis.bikb","",""];

sergeant_davis KbTell [player, "welcome_davis", "welcomedavisone", "DIRECT"];
waitUntil {
sergeant_davis KbWasSaid [player, "welcome_davis", "welcomedavisone", 3];	//Search in 3 last seconds
};

player KbTell [sergeant_davis, "welcome_davis", "welcomedavistwo", "DIRECT"];
waitUntil {
player KbWasSaid [sergeant_davis, "welcome_davis", "welcomedavistwo", 3];	//Search in 3 last seconds
};

sergeant_davis KbTell [player, "welcome_davis", "welcomedavisthree", "DIRECT"];
waitUntil {
sergeant_davis KbWasSaid [player, "welcome_davis", "welcomedavisthree", 3];	//Search in 3 last seconds
};

player KbTell [sergeant_davis, "welcome_davis", "welcomedavisfour", "DIRECT"];
waitUntil {
player KbWasSaid [sergeant_davis, "welcome_davis", "welcomedavisfour", 3];	//Search in 3 last seconds
};

sergeant_davis KbTell [player, "welcome_davis", "welcomedavisfive", "DIRECT"];
waitUntil {
sergeant_davis KbWasSaid [player, "welcome_davis", "welcomedavisfive", 3];	//Search in 3 last seconds
};

["WelcomeJones"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
// sergeant_davis switchMove "";
player switchMove "";