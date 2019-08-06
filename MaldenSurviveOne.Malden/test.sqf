titleCut [" ", "BLACK IN", 5]

; intro music
playMusic "EP1_Track03";

title = parsetext "<t size='2.3'>Tensions rise as troops arrive</t><br />As Czech forces arrive in Zargabad attacks grow more frequent."; 
scroll = parsetext "Military Units across Takistan report dance outbursts are on the rise - A-10s have been spotted flying upside down more often than not - Rabbits are breeding like they often do. - Takistani women are often thirsty since it's so difficult to drink when you're dressed like a mailbox. - Robocop 6 opens Tuesday. - Study suggests that making up scrolling information is difficult."; 
nul = [title,scroll] spawn BIS_fnc_AAN;

_camera = "camera" camCreate [0,0,0];
_camera cameraEffect ["internal", "back"];

_camera camPrepareTarget [2881.44,-95771.59,-41.58];
_camera camPreparePos [4005.77,4219.06,1.70];
_camera camPrepareFOV 0.700;
_camera camCommitPrepared 0;

; Fade to black
titleCut [" ", "BLACK OUT", 6]

player cameraEffect ["terminate", "back"]
camDestroy _camera
intro_finished = true
exit;