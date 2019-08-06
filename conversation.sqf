player KbAddTopic ["introduction","texts.bikb","",""];		//Add the topics, refer back to the file above
soldier1 KbAddTopic ["introduction","texts.bikb","",""];
soldier2 KbAddTopic ["introduction","texts.bikb","",""];

player KbTell [soldier1,"introduction","playerLine_1"];		//playerLine_1 - Class name of the line defined above
waitUntil {
player KbWasSaid [soldier1,"introduction","playerLine_1",3];	//Search in 3 last seconds
};
sleep 0.5;
soldier1 kbTell [player, "introduction", "soldier1Line_1"];
waitUntil {
soldier1 kbWasSaid [player, "introduction", "soldier1Line_1", 5]
};
soldier2 kbTell [soldier1, "introduction", "soldier2Line_1"];
waitUntil {
soldier2 kbWasSaid [soldier1, "introduction", "soldier2Line_1", 4]
};
soldier1 kbTell [soldier2, "introduction", "soldier1Line_2"];
waitUntil {
soldier1 kbWasSaid [soldier2, "introduction", "soldier1Line_2", 5]
};
sleep 0.5;
soldier2 kbTell [soldier1, "introduction", "soldier2Line_2"];
waitUntil {
soldier2 kbWasSaid [soldier1, "introduction", "soldier2Line_2", 5]
};
hint "Conversation finished!";

player KbAddTopic ["introduction","texts.bikb","",""];
cursorTarget KbAddTopic ["introduction","texts.bikb","",""];
cursorTarget KbTell [player,"introduction","welcome"];