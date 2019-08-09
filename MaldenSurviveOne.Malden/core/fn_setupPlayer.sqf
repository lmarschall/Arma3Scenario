	
// Strip down Player
removeAllWeapons player;
{player removeMagazine _x;} forEach (magazines player);
removeUniform player;
removeVest player;
removeBackpack player;
removeGoggles player;
removeHeadGear player;

player linkItem "ItemGPS";
player addItem "FirstAidKit";