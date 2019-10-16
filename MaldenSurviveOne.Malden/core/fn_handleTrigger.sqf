_triggerId = [_this,0,"",[""]] call BIS_fnc_param;

if (_triggerId == "") exitWith {hint "No Trigger Id given!"};

switch (_triggerId) do
{
    case "trigger_gate":
    {
        if (assignedTask == "welcome_davis") then { [] spawn it_fnc_welcomeDavis;};
    };
    case "trigger_barracks":
    {
        if (assignedTask == "welcome_jones") then { [] spawn it_fnc_welcomeJones;};
    };
    case "trigger_centre":
    {
        if (assignedTask == "welcome_brown") then { [] spawn it_fnc_welcomeBrown;};
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
        if (assignedTask == "investigation_meeting") then { [] spawn it_fnc_investigationBoat;};
    };
    case "trigger_hunter":
    {
        if (assignedTask == "inspection_hunter") then { [] spawn it_fnc_inspectionDrive;};
    };
    case "trigger_drive_end":
    {
        if (assignedTask == "inspection_drive") then
        {
            ["InspectionDrive"] call it_fnc_succeedTask;
            ["InspectionOfficer"] call it_fnc_assignTask;
            ["AAF Military Base", "Le Port"] call it_fnc_showInfoText;
        };
    };
    case "trigger_officer":
    {
        if (assignedTask == "inspection_officer") then { [] spawn it_fnc_inspectionOfficer;};
    };
    case "trigger_zamak":
    {
        if (assignedTask == "inspection_zamak") then { [] spawn it_fnc_inspectionStart;};
    };
    case "trigger_landing":
    {
        if (assignedTask == "investigation_landing") then { [] spawn it_fnc_investigationLanding;};
    };
    case "trigger_barn":
    {
        if (assignedTask == "investigation_search") then { [] spawn it_fnc_investigationBarn;};
    };
    case "trigger_evacuate":
    {
        if (assignedTask == "investigation_evacuate") then { [] spawn it_fnc_investigationEvacuate;};
    };
    default { hint "Trigger is not listed!" };
};