[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

["TaskFive"] call it_fnc_succeedTask;

player KbAddTopic ["meeting","dialogues\meeting.bikb","",""];
medic KbAddTopic ["meeting","dialogues\meeting.bikb","",""];
autorifler KbAddTopic ["meeting","dialogues\meeting.bikb","",""];
engineer KbAddTopic ["meeting","dialogues\meeting.bikb","",""];

medic KbTell [player,"meeting","welcome"];
waitUntil {
medic KbWasSaid [player,"meeting","welcome",3];	//Search in 3 last seconds
};

[medic, autorifler, engineer] joinSilent player;

["TaskSix"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
officerone switchMove "";
player switchMove "";

player addEventHandler ["GetInMan", "_h = [] spawn { call compile preProcessFile ""dialogues\drive.sqf"";}; "];