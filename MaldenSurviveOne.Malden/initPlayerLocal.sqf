
waitUntil {checks_done};

setDate [2020, 10, 25, 12, 10];

enableSentences false;

//[] spawn it_fnc_setupPlayer;
//[] spawn it_fnc_Intro;

["InspectionParent"] call it_fnc_createTask;
["InspectionHandle"] call it_fnc_assignTask;

// ["InvestigationParent"] call it_fnc_createTask;
// ["InvestigationMeeting"] call it_fnc_assignTask;

// ["WelcomeParent"] call it_fnc_createTask;
// ["WelcomeDavis"] call it_fnc_assignTask;