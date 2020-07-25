diag_log "Mission Init";

diag_log "Starting the Checks...";

checks_done = false;

error_occured = false;

spokenToDoctor = false;

diag_log "Starting Check for All Units...";

_units = ["sergeant_davis","sergeant_jones","sergeant_brown", "commander_williams", "aaf_officer", "hunter"];

{
	if (isNil _x) then
	{
		error_occured = true;
		diag_log format ["%1 is missing.", _x];
	};
	
} forEach _units;

diag_log "Check for all Units done.";

checks_done = true;
diag_log "Checks done.";