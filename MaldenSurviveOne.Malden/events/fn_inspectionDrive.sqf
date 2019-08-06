["InspectionHunter"] call it_fnc_succeedTask;

player KbAddTopic ["drive","dialogues\drive.bikb","",""];
sergeant_jones KbAddTopic ["drive","dialogues\drive.bikb","",""];
sergeant_davis KbAddTopic ["drive","dialogues\drive.bikb","",""];
sergeant_brown KbAddTopic ["drive","dialogues\drive.bikb","",""];

sergeant_jones KbTell [player,"drive","welcome", "VEHICLE"];
waitUntil {
sergeant_jones KbWasSaid [player,"drive","welcome",3];	//Search in 3 last seconds
};

["InspectionDrive"] call it_fnc_assignTask;