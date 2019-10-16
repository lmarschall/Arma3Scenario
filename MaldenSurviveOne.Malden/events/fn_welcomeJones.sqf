[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

// sergeant_jones switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

sergeant_jones doWatch (getPosVisual player);
sleep 2;

["WelcomeJones"] call it_fnc_succeedTask;

player KbAddTopic ["welcome_jones","dialogues\welcome_jones.bikb","",""];
sergeant_jones KbAddTopic ["welcome_jones","dialogues\welcome_jones.bikb","",""];

player KbTell [sergeant_jones,"welcome_jones","welcomejonesone"];
waitUntil {
player KbWasSaid [sergeant_jones,"welcome_jones","welcomejonesone",3];	//Search in 3 last seconds
};

sergeant_jones KbTell [player,"welcome_jones","welcomejonestwo"];
waitUntil {
sergeant_jones KbWasSaid [player,"welcome_jones","welcomejonestwo",3];	//Search in 3 last seconds
};

player KbTell [sergeant_jones,"welcome_jones","welcomejonesthree"];
waitUntil {
player KbWasSaid [sergeant_jones,"welcome_jones","welcomejonesthree",3];	//Search in 3 last seconds
};

["WelcomeBrown"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
sergeant_jones switchMove "";
player switchMove "";