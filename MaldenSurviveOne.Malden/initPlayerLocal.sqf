// Add first task to player

//["WelcomeParent"] call it_fnc_createTask;
//["WelcomeSmith"] call it_fnc_assignTask;

["InspectionParent"] call it_fnc_createTask;
["InspectionDrive"] call it_fnc_assignTask;

//player addEventHandler ["GetInMan", "_h = [] spawn { call compile preProcessFile ""dialogues\flight.sqf"";}; "];