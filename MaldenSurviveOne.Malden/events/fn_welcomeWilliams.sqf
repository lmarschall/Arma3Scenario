[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

commander_williams switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

commander_williams doWatch (visiblePosition player);
sleep 2;

["WelcomeWilliams"] call it_fnc_succeedTask;

player KbAddTopic ["welcome_williams","dialogues\welcome_williams.bikb","",""];
commander_williams KbAddTopic ["welcome_williams","dialogues\welcome_williams.bikb","",""];

player KbTell [commander_williams,"welcome_williams","welcomewilliamsone"];
waitUntil {
player KbWasSaid [commander_williams,"welcome_williams","welcomewilliamsone",3];	//Search in 3 last seconds
};

commander_williams KbTell [player,"welcome_williams","welcomewilliamstwo"];
waitUntil {
commander_williams KbWasSaid [player,"welcome_williams","welcomewilliamstwo",3];	//Search in 3 last seconds
};

player KbTell [commander_williams,"welcome_williams","welcomewilliamsthree"];
waitUntil {
player KbWasSaid [commander_williams,"welcome_williams","welcomewilliamsthree",3];	//Search in 3 last seconds
};

commander_williams KbTell [player,"welcome_williams","welcomewilliamsfour"];
waitUntil {
commander_williams KbWasSaid [player,"welcome_williams","welcomewilliamsfour",3];	//Search in 3 last seconds
};

player KbTell [commander_williams,"welcome_williams","welcomewilliamsfive"];
waitUntil {
player KbWasSaid [commander_williams,"welcome_williams","welcomewilliamsfive",3];	//Search in 3 last seconds
};

commander_williams KbTell [player,"welcome_williams","welcomewilliamssix"];
waitUntil {
commander_williams KbWasSaid [player,"welcome_williams","welcomewilliamssix",3];	//Search in 3 last seconds
};

player KbTell [commander_williams,"welcome_williams","welcomewilliamsseven"];
waitUntil {
player KbWasSaid [commander_williams,"welcome_williams","welcomewilliamsseven",3];	//Search in 3 last seconds
};

["WelcomeBed"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
commander_williams switchMove "";
player switchMove "";