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

player KbTell [player, "welcome", "welcome", "GLOBAL"];
waitUntil {
player KbWasSaid [player, "welcome", "welcome", 3];	//Search in 3 last seconds
};

waitUntil 
{
	_countCrew = count fullCrew huron;
	_countCrew == 2;
};

[1,1,false] spawn BIS_fnc_cinemaBorder;

["Nato Camp Hope", "Airport"] call it_fnc_showInfoText;

3 fadeMusic 0;
3 fadeSound 1;

["WelcomeParent"] call it_fnc_createTask;
["WelcomeSmith"] call it_fnc_assignTask;