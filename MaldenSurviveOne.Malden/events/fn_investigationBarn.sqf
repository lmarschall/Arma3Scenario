["InvestigationSearch"] call it_fnc_succeedTask;

[0, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

sergeant_brown setPos getMarkerPos "marker_investigation_barn_brown";
sergeant_davis setPos getMarkerPos "marker_investigation_barn_davis";
sergeant_jones setPos getMarkerPos "marker_investigation_barn_jones";

sergeant_brown disableAI "MOVE";
sergeant_davis disableAI "MOVE";
sergeant_jones disableAI "MOVE";

[1, "BLACK", 5, 1] call BIS_fnc_fadeEffect;

player KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
commander_williams KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
sergeant_davis KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
sergeant_jones KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
sergeant_brown KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];

sergeant_davis KbTell [player,"investigation_barn","investigationbarnone", "GROUP"];
waitUntil {
sergeant_davis KbWasSaid [player,"investigation_barn","investigationbarnone",3];
};

sergeant_brown KbTell [player,"investigation_barn","investigationbarntwo", "GROUP"];
waitUntil {
sergeant_brown KbWasSaid [player,"investigation_barn","investigationbarntwo",3];
};

player KbTell [sergeant_davis,"investigation_barn","investigationbarnthree", "GROUP"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_barn","investigationbarnthree",3];
};

sergeant_jones KbTell [player,"investigation_barn","investigationbarnfour", "GROUP"];
waitUntil {
sergeant_jones KbWasSaid [player,"investigation_barn","investigationbarnfour",3];
};

player KbTell [sergeant_davis,"investigation_barn","investigationbarnfive", "GROUP"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_barn","investigationbarnfive",3];
};

player KbTell [commander_williams,"investigation_barn","investigationbarnsix", "COMMAND"];
waitUntil {
player KbWasSaid [commander_williams,"investigation_barn","investigationbarnsix",3];
};

commander_williams KbTell [player,"investigation_barn","investigationbarnseven", "COMMAND"];
waitUntil {
commander_williams KbWasSaid [player,"investigation_barn","investigationbarnseven",3];
};

player KbTell [sergeant_davis,"investigation_barn","investigationbarneight", "GROUP"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_barn","investigationbarneight",3];
};

["InvestigationEvacuate"] call it_fnc_assignTask;

sergeant_brown enableAI "MOVE";
sergeant_davis enableAI "MOVE";
sergeant_jones enableAI "MOVE";