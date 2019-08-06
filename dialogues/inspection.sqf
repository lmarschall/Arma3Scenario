["TaskNine"] call it_fnc_succeedTask;

["TaskTen"] call it_fnc_assignTask;

zamak enableAI "MOVE";

player KbAddTopic ["inspection","dialogues\inspection.bikb","",""];
aafleader KbAddTopic ["inspection","dialogues\inspection.bikb","",""];

aafleader KbTell [player,"inspection","welcome"];
waitUntil {
aafleader KbWasSaid [player,"inspection","welcome",3];	//Search in 3 last seconds
};

