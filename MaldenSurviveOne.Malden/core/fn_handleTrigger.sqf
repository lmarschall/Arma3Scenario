_triggerId = [_this,0,"",[""]] call BIS_fnc_param;

if (_triggerId == "") exitWith {hint "No Trigger Id given!"};

switch (_triggerId) do
{
    case "trigger_gate":
    {
        if (assignedTask == "welcome_smith") then { [] spawn it_fnc_welcomeSmith;};
    };
    case "trigger_barracks":
    {
        if (assignedTask == "welcome_johnson") then { [] spawn it_fnc_welcomeJohnson;};
    };
    case "trigger_office":
    {
        if (assignedTask == "welcome_williams") then { [] spawn it_fnc_welcomeWilliams;};
    };
    case "trigger_bed":
    {
        if (assignedTask == "welcome_bed") then { [] spawn it_fnc_welcomeSleep;};
    };
    case "trigger_yard":
    {
        if (assignedTask == "inspection_meeting") then { [] spawn it_fnc_inspectionMeeting;};
    };
    case "trigger_hunter":
    {
        if (assignedTask == "inspection_hunter") then { [] spawn it_fnc_inspectionDrive;};
    };
    case "trigger_drive_end":
    {
        if (assignedTask == "inspection_drive") then { ["InspectionDrive"] call it_fnc_succeedTask; ["InspectionOfficer"] call it_fnc_assignTask;};
    };
    case "trigger_officer":
    {
        if (assignedTask == "inspection_officer") then { [] spawn it_fnc_inspectionOfficer;};
    };
    case "trigger_zamak":
    {
        if (assignedTask == "inspection_zamak") then { [] spawn it_fnc_inspectionStart;};
    };
    default { hint "Trigger is not listed!" };
};