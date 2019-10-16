["InvestigationSearch"] call it_fnc_succeedTask;

player KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
commander_williams KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
sergeant_davis KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
sergeant_jones KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];
sergeant_brown KbAddTopic ["investigation_barn","dialogues\investigation_barn.bikb","",""];

sergeant_davis KbTell [player,"investigation_barn","investigationbarnone", "DIRECT"];
waitUntil {
sergeant_davis KbWasSaid [player,"investigation_barn","investigationbarnone",3];
};

sergeant_brown KbTell [player,"investigation_barn","investigationbarntwo", "DIRECT"];
waitUntil {
sergeant_brown KbWasSaid [player,"investigation_barn","investigationbarntwo",3];
};

sergeant_jones KbTell [player,"investigation_barn","investigationbarnthree", "DIRECT"];
waitUntil {
sergeant_jones KbWasSaid [player,"investigation_barn","investigationbarthree",3];
};

player KbTell [sergeant_davis,"investigation_barn","investigationbarnfour", "DIRECT"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_barn","investigationbarnfour",3];
};

player KbTell [sergeant_davis,"investigation_barn","investigationbarnfive", "DIRECT"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_barn","investigationbarnfive",3];
};

commander_williams KbTell [player,"investigation_barn","investigationbarnsix", "DIRECT"];
waitUntil {
commander_williams KbWasSaid [player,"investigation_barn","investigationbarnsix",3];
};

commander_williams KbTell [player,"investigation_barn","investigationbarnseven", "DIRECT"];
waitUntil {
commander_williams KbWasSaid [player,"investigation_barn","investigationbarnseven",3];
};

player KbTell [sergeant_davis,"investigation_barn","investigationbarneight", "DIRECT"];
waitUntil {
player KbWasSaid [sergeant_davis,"investigation_barn","investigationbarneight",3];
};

["InvestigationEvacuate"] call it_fnc_assignTask;