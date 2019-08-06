//bird disableAI "MOVE";
bird flyInHeight 5;

waitUntil 
{ 
	_heightASL = (getPosASL bird ) select 2;
	_heightASL <= 7;
};

["TaskTwelve"] call it_fnc_succeedTask;

/*
player KbAddTopic ["drive","dialogues\drive.bikb","",""];
medic KbAddTopic ["drive","dialogues\drive.bikb","",""];
autorifler KbAddTopic ["drive","dialogues\drive.bikb","",""];
engineer KbAddTopic ["drive","dialogues\drive.bikb","",""];

medic KbTell [player,"drive","welcome", "VEHICLE"];
waitUntil {
medic KbWasSaid [player,"drive","welcome",3];	//Search in 3 last seconds
};*/

["TaskThirteen"] call it_fnc_assignTask;

waitUntil 
{ 
	_cargo = assignedCargo bird;
	(count _cargo) == 0;
};

bird enableAI "MOVE";