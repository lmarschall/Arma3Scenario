["InspectionZamak"] call it_fnc_succeedTask;

["InspectionHandle"] call it_fnc_assignTask;

_group = group convoyzamak;

// units group convoyzamak doMove getMarkerPos "marker_inspection_aid";

_group setCurrentWaypoint [_group, 2];

player KbAddTopic ["inspection","dialogues\inspection.bikb","",""];
aafleader KbAddTopic ["inspection","dialogues\inspection.bikb","",""];

aafleader KbTell [player,"inspection","welcome"];
waitUntil {
aafleader KbWasSaid [player,"inspection","welcome",3];	//Search in 3 last seconds
};

sleep 30;

// deleteGroup _group;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

skipTime 1;

convoyzamak setPos getMarkerPos "marker_convoy_skip_drive_chapoi";

// units _group doMove getMarkerPos "marker_inspection_aid";

_group setCurrentWaypoint [_group, 4];

[1, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

_aafunits orderGetIn false;