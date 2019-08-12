["InvestigationLanding"] call it_fnc_succeedTask;

3 fadeMusic 0;
3 fadeSound 1;

["AAF Military Base", "Le Port"] call it_fnc_showInfoText;

/* player KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
medic KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
autorifler KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
engineer KbAddTopic ["investigation","dialogues\investigation.bikb","",""];

medic KbTell [player,"investigation","welcome", "GROUP"];
waitUntil {
medic KbWasSaid [player,"investigation","welcome",3];	//Search in 3 last seconds
}; */

["InvestigationSearch"] call it_fnc_assignTask;