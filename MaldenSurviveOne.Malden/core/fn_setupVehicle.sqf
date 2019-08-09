
private ["_vehicle"];

_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_params;

// Clear Vehicle Trunk
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;