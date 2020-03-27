["InspectionZamak"] call it_fnc_succeedTask;

["InspectionHandle"] call it_fnc_assignTask;

units group convoyzamak doMove getMarkerPos "marker_inspection_aid";

// group convoyzamak setCurrentWaypoint [group convoyzamak, 2];

player KbAddTopic ["inspection","dialogues\inspection.bikb","",""];
aafleader KbAddTopic ["inspection","dialogues\inspection.bikb","",""];

aafleader KbTell [player,"inspection","welcome"];
waitUntil {
aafleader KbWasSaid [player,"inspection","welcome",3];	//Search in 3 last seconds
};

sleep 20;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

skipTime 1;

// convoystart setPos getMarkerPos "marker_convoystart_skip_drive";
convoyzamak setPos getMarkerPos "marker_convoyzamak_skip_drive";
// convoyend setPos getMarkerPos "marker_convoyend_skip_drive";

// // group convoyzamak setCurrentWaypoint [group convoyzamak, 4];

[1, "BLACK", 5, 1] call BIS_fnc_fadeEffect;