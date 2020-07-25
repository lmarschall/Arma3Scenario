// this addAction[""Deliver Package"",life_fnc_dpFinish,""dp_1"",0,false,false,"""",'!isNil ""life_dp_point"" && life_delivery_in_progress && life_dp_point == _target '];  this addAction[""Get Delivery Mission"",life_fnc_getDPMission,""dp_1"",0,false,false,"""",' isNil ""life_dp_point"" && !life_delivery_in_progress '];";

// get the person spken to
_person = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;


// switch action for each person

switch (_person) do {
	case 1: { hint "1" };
    case 2: { hint "2" };
    default { hint "default" };
};