_taskConfigClass = [_this,0,"",[""]] call BIS_fnc_param;

if (_taskConfigClass == "") exitWith {hint "No Config Class given."};

// Standard Parameters
_taskState = "SUCCEEDED";
_taskShowNotification = true;

// Parameters from Config File
_taskId = (missionConfigFile >> "MissionTasks" >> _taskConfigClass >> "id") call BIS_fnc_getCfgData;

[_taskId, _taskState, _taskShowNotification] call BIS_fnc_taskSetState;