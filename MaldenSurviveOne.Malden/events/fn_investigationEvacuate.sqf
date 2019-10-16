["InvestigationEvacuate"] call it_fnc_succeedTask;

0 fadeMusic 0.6;
0 fadeSound 0.2;
playMusic "Evacuate";

bird enableAI "MOVE";

// get the load waypoint of the hummingbird
_birdwp = (waypoints bird) select 1;

// create waypoint for player group and sync to load waypoint of hummingbird
_playerGrp = group player;
_wp = _playerGrp addWaypoint [position inv_helipad_rescue, 0];
_wp setWaypointType "GETIN";
_wp synchronizeWaypoint [_birdwp];

player KbAddTopic ["investigation_evacuate","dialogues\investigation_evacuate.bikb","",""];
commander_williams KbAddTopic ["investigation_evacuate","dialogues\investigation_evacuate.bikb","",""];

sergeant_davis KbTell [player,"investigation_evacuate","investigationevacuateone", "VEHICLE"];
waitUntil {
sergeant_davis KbWasSaid [player,"investigation_evacuate","investigationevacuateone",3];
};
