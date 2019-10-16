[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

// sergeant_brown switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

sergeant_brown doWatch (getPosVisual player);
sleep 2;

["WelcomeBrown"] call it_fnc_succeedTask;

player KbAddTopic ["welcome_brown","dialogues\welcome_brown.bikb","",""];
sergeant_brown KbAddTopic ["welcome_brown","dialogues\welcome_brown.bikb","",""];

player KbTell [sergeant_brown,"welcome_brown","welcomebrownone"];
waitUntil {
player KbWasSaid [sergeant_brown,"welcome_brown","welcomebrownone",3];	//Search in 3 last seconds
};

sergeant_brown KbTell [player,"welcome_brown","welcomebrowntwo"];
waitUntil {
sergeant_brown KbWasSaid [player,"welcome_brown","welcomebrowntwo",3];	//Search in 3 last seconds
};

player KbTell [sergeant_brown,"welcome_brown","welcomebrownthree"];
waitUntil {
player KbWasSaid [sergeant_brown,"welcome_brown","welcomebrownthree",3];	//Search in 3 last seconds
};

sergeant_brown KbTell [player,"welcome_brown","welcomebrownfour"];
waitUntil {
sergeant_brown KbWasSaid [player,"welcome_brown","welcomebrownfour",3];	//Search in 3 last seconds
};

["WelcomeWilliams"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
sergeant_brown switchMove "";
player switchMove "";