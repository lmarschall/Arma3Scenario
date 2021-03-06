
_taskConfigClass = [_this,0,"",[""]] call BIS_fnc_param;

if (_taskConfigClass == "") exitWith {hint "No Config Class given."};

// Standard Parameters
_taskOwner = player;
_taskState = "ASSIGNED";
_taskPriority = 0;
_taskShowNotification = true;
_task3D = true;

// Parameters from Config File
_taskId = (missionConfigFile >> "MissionTasks" >> _taskConfigClass >> "id") call BIS_fnc_getCfgData;
_taskDescription = (missionConfigFile >> "MissionTasks" >> _taskConfigClass >> "description") call BIS_fnc_getCfgData;
_taskTitle = (missionConfigFile >> "MissionTasks" >> _taskConfigClass >> "title") call BIS_fnc_getCfgData;
_taskDestination = (missionConfigFile >> "MissionTasks" >> _taskConfigClass >> "destination") call BIS_fnc_getCfgData;
_taskType = (missionConfigFile >> "MissionTasks" >> _taskConfigClass >> "type") call BIS_fnc_getCfgData;
_taskParent = (missionConfigFile >> "MissionTasks" >> _taskConfigClass >> "parent") call BIS_fnc_getCfgData;

// check for location of given object
if (_taskDestination != "") then
{
	_taskDestination = missionNamespace getVariable _taskDestination;
};

[_taskOwner, [_taskId, _taskParent], [_taskDescription, _taskTitle, ""], _taskDestination, _taskState, _taskPriority, _taskShowNotification, _taskType, _task3D] call BIS_fnc_taskCreate;
assignedTask = _taskId;