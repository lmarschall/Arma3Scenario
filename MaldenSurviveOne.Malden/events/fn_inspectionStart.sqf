["InspectionZamak"] call it_fnc_succeedTask;

["InspectionHandle"] call it_fnc_assignTask;

player KbAddTopic ["inspection","dialogues\inspection.bikb","",""];
aafleader KbAddTopic ["inspection","dialogues\inspection.bikb","",""];

aafleader KbTell [player,"inspection","welcome"];
waitUntil {
aafleader KbWasSaid [player,"inspection","welcome",3];	//Search in 3 last seconds
};

