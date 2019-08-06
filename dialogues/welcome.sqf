[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

officerone switchMove "HubBriefing_talkAround";
player switchMove "HubSpectator_stand";

officerone doWatch (position player);
sleep 2;

["TaskOne"] call it_fnc_succeedTask;

player KbAddTopic ["welcome","dialogues\welcome.bikb","",""];
officerone KbAddTopic ["welcome","dialogues\welcome.bikb","",""];

officerone KbTell [player, "welcome", "welcome", "DIRECT"];
waitUntil {
officerone KbWasSaid [player, "welcome", "welcome", 3];	//Search in 3 last seconds
};

["TaskTwo"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
officerone switchMove "";
player switchMove "";