0 cutText ["","BLACK FADED"];
0 cutFadeOut 9999999;

[0,0,false] spawn BIS_fnc_cinemaBorder;
//disableUserInput true;

player switchCamera "external";

player moveInCargo huron;

0 fadeMusic 0.6;
0 fadeSound 0.2;
playMusic "Intro";

sleep 10;

0 cutText ["","BLACK IN",5];

sleep 10;

player KbAddTopic ["welcome","dialogues\welcome.bikb","",""];
//captain_smith KbAddTopic ["welcome","dialogues\welcome.bikb","",""];

player KbTell [player, "welcome", "welcome", "VEHICLE"];
waitUntil {
player KbWasSaid [player, "welcome", "welcome", 3];	//Search in 3 last seconds
};

waitUntil 
{
	_countCrew = count fullCrew huron;
	_countCrew == 2;
};

[1,1,false] spawn BIS_fnc_cinemaBorder;

["Nato Camp Hope", "Malden"] call it_fnc_showInfoText;

3 fadeMusic 0;
3 fadeSound 1;

["WelcomeParent"] call it_fnc_createTask;
["WelcomeSmith"] call it_fnc_assignTask;

/* major_williams switchMove "HubBriefing_talkAround";
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

["WelcomeBed"] call it_fnc_assignTask; */

/* [1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
major_williams switchMove "";
player switchMove ""; */