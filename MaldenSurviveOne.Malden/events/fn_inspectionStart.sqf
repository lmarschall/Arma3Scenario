["InspectionZamak"] call it_fnc_succeedTask;

["InspectionHandle"] call it_fnc_assignTask;

player KbAddTopic ["inspection","dialogues\inspection.bikb","",""];
aafleader KbAddTopic ["inspection","dialogues\inspection.bikb","",""];

aafleader KbTell [player,"inspection","welcome"];
waitUntil {
aafleader KbWasSaid [player,"inspection","welcome",3];	//Search in 3 last seconds
};

sleep 20;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

skipTime 1;
zamak setPos getMarkerPos "marker_zamak_skip_drive";
group zamak setCurrentWaypoint [group zamak, 3];

[1, "BLACK", 5, 1] call BIS_fnc_fadeEffect;