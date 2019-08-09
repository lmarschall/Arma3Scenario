titleCut [" ", "BLACK IN", 5];

//; intro music
//playMusic "EP1_Track03";

title = parsetext "<t size='2.3'>Tensions rise as troops arrive</t><br />As Czech forces arrive in Zargabad attacks grow more frequent."; 
scroll = parsetext "Military Units across Takistan report dance outbursts are on the rise - A-10s have been spotted flying upside down more often than not - Rabbits are breeding like they often do. - Takistani women are often thirsty since it's so difficult to drink when you're dressed like a mailbox. - Robocop 6 opens Tuesday. - Study suggests that making up scrolling information is difficult."; 
nul = [title,scroll] spawn BIS_fnc_AAN;
/*
_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal", "back"];

_camera camPrepareTarget [2881.44,-95771.59,-41.58];
_camera camPreparePos [4005.77,4219.06,1.70];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;*/

["Paste",["Malden",[5915.45,3543.59,2.63801],308.468,0.75,[-1.58252,0],0,0,730.144,0.3,1,1,0,1]] call bis_fnc_camera;
["Malden",[5910.92,3578.51,2.50631],213.489,0.75,[-12.8267,0],0,0,730.067,0.3,0,1,0,1]
/*
; Fade to black
titleCut [" ", "BLACK OUT", 6]

player cameraEffect ["terminate", "back"]
camDestroy _camera
intro_finished = true
exit;*/