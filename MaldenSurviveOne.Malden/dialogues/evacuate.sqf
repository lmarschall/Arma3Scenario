["TaskFourteen"] call it_fnc_succeedTask;

bird enableAI "MOVE";

// get the load waypoint of the hummingbird
_birdwp = (waypoints bird) select 1;

// create waypoint for player group and sync to load waypoint of hummingbird
_playerGrp = group player;
_wp = _playerGrp addWaypoint [position inv_helipad_rescue, 0];
_wp setWaypointType "GETIN";
_wp synchronizeWaypoint [_birdwp];

/* player KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
medic KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
autorifler KbAddTopic ["investigation","dialogues\investigation.bikb","",""];
engineer KbAddTopic ["investigation","dialogues\investigation.bikb","",""];

medic KbTell [player,"investigation","welcome", "GROUP"];
waitUntil {
medic KbWasSaid [player,"investigation","welcome",3];	//Search in 3 last seconds
}; */

