_monitor = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_target = [_this,1,objNull,[objNull]] call BIS_fnc_param;

_textureString = format["#(argb,512,512,1)r2t(%1,1)", str _target];
_monitor setObjectTexture [0, _textureString];

_uav = createVehicle ["B_UAV_02_dynamicLoadout_F", _target modelToWorld [0,300,300], [], 0, "FLY"];
createVehicleCrew _uav;
_uav flyInHeight 300;
player reveal [_uav, 4];
_uav lockCameraTo [_target, [0]];

_wp = group _uav addWaypoint [position _target, 0];
_wp setWaypointType "LOITER";
_wp setWaypointLoiterType "CIRCLE_L";
_wp setWaypointLoiterRadius 100;

_cam = "camera" camCreate [0,0,0];
_cam cameraEffect ["Internal", "Back", str _target];
_cam attachTo [_uav, [0,0,0], "laserstart"];
_cam camSetFov 0.5;

"uavrtt" setPiPEffect [0];

_code = {
	_uav = _this select 0;
	_cam = _this select 1;

	_dir = 
		(_uav selectionPosition "laserstart") 
			vectorFromTo 
		(_uav selectionPosition "commanderview");
	
	_cam setVectorDirAndUp [
		_dir, 
		_dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
	];
};

[str _monitor, "onEachFrame", _code, [_uav, _cam]] call BIS_fnc_addStackedEventHandler;