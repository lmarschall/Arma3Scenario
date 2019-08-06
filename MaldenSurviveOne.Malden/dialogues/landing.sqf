["TaskTwelve"] call it_fnc_succeedTask;

player KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
medic KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
autorifler KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
engineer KbAddTopic ["investigation","dialogues\investigation.bikb","",""];

medic KbTell [player,"investigation","welcome", "GROUP"];
waitUntil {
medic KbWasSaid [player,"investigation","welcome",3];	//Search in 3 last seconds
};

["TaskThirteen"] call it_fnc_assignTask;

