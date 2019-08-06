[0,0,false] spawn BIS_fnc_cinemaBorder;
disableUserInput true;

["InspectionMeeting"] call it_fnc_succeedTask;

player KbAddTopic ["meeting","dialogues\meeting.bikb","",""];
sergeant_jones KbAddTopic ["meeting","dialogues\meeting.bikb","",""];
sergeant_davis KbAddTopic ["meeting","dialogues\meeting.bikb","",""];
sergeant_brown KbAddTopic ["meeting","dialogues\meeting.bikb","",""];

sergeant_jones KbTell [player,"meeting","welcome"];
waitUntil {
sergeant_jones KbWasSaid [player,"meeting","welcome",3];	//Search in 3 last seconds
};

[sergeant_jones, sergeant_davis, sergeant_brown] joinSilent player;

["InspectionHunter"] call it_fnc_assignTask;

[1,1,false] spawn BIS_fnc_cinemaBorder;
disableUserInput false;
player switchMove "";