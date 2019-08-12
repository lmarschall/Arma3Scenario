["WelcomeBed"] call it_fnc_succeedTask;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;
setDate [2020, 10, 26, 8, 10];
//sleep 5;

// Prepare new mission capitel
sergeant_brown setPos getMarkerPos "marker_inspection_meeting_brown";
sergeant_davis setPos getMarkerPos "marker_inspection_meeting_davis";
sergeant_jones setPos getMarkerPos "marker_inspection_meeting_jones";

[1, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

["InspectionParent"] call it_fnc_createTask;
["InspectionMeeting"] call it_fnc_assignTask;

["Nato Camp Hope", "Airport"] call it_fnc_showInfoText;