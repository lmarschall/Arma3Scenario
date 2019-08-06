["TaskEleven"] call it_fnc_succeedTask;

player KbAddTopic ["drive","dialogues\drive.bikb","",""];
medic KbAddTopic ["drive","dialogues\drive.bikb","",""];
autorifler KbAddTopic ["drive","dialogues\drive.bikb","",""];
engineer KbAddTopic ["drive","dialogues\drive.bikb","",""];

medic KbTell [player,"drive","welcome", "VEHICLE"];
waitUntil {
medic KbWasSaid [player,"drive","welcome",3];	//Search in 3 last seconds
};

["TaskTwelve"] call it_fnc_assignTask;

bird enableAI "MOVE";

//bird flyInHeight 5;