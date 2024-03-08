/*
	File: fn_animSync.
*/
private["_unit","_anim"];
_unit = [_this,0,ObjNull,[Objnull]] call BIS_fnc_param;
_anim = [_this,1,"",[""]] call BIS_fnc_param;
if(isNull _unit) exitWith {};
_unit switchMove _anim;
systemChat _unit; //Debug things
systemChat _anim; //Debug things