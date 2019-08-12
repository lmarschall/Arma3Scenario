["InspectionHunter"] call it_fnc_succeedTask;

["InspectionDrive"] call it_fnc_assignTask;

(driver hunter) commandMove getMarkerPos "marker_hunter_drive";

sleep 5;

player KbAddTopic ["drive","dialogues\drive.bikb","",""];
sergeant_jones KbAddTopic ["drive","dialogues\drive.bikb","",""];
sergeant_davis KbAddTopic ["drive","dialogues\drive.bikb","",""];
sergeant_brown KbAddTopic ["drive","dialogues\drive.bikb","",""];

sergeant_jones KbTell [player,"drive","welcome", "VEHICLE"];
waitUntil {
sergeant_jones KbWasSaid [player,"drive","welcome",3];	//Search in 3 last seconds
};

sleep 5;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

skipTime 1;
hunter setPos getMarkerPos "marker_hunter_skip_drive";

[1, "BLACK", 5, 1] call BIS_fnc_fadeEffect;