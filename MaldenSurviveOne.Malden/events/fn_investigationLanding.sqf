["InvestigationLanding"] call it_fnc_succeedTask;

3 fadeMusic 0;
3 fadeSound 1;

["AAF Military Base", "Le Port"] call it_fnc_showInfoText;

player KbAddTopic ["investigation_landing","dialogues\investigation_landing.bikb","",""];

player KbTell [sergeant_davis,"investigation_landing","investigationlandingone", "VEHICLE"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_landing","investigationlandingone",3];
};

player KbTell [sergeant_davis,"investigation_landing","investigationlandingtwo", "VEHICLE"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_landing","investigationlandingtwo",3];
};

["InvestigationSearch"] call it_fnc_assignTask;