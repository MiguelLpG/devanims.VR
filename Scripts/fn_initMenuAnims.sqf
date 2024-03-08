/*
	[param] spawn vls_fnc_initMenuAnims;

	Posible params:
	+ General
	+ Misc
	+ Misc2
	+ Other 
	+ Roleplay
	+ Combat 
	+ WeaponHolding
	+ Dances 
	+ Dances 2
	+ Dances 3
	+ Dances 4
	+ Dances 5
	+ Policing

*/
disableSerialization; createDialog "menuBaile"; 

private["_param", "_display", "_lista1", "_lista2", "_arrayConfig", "_getConfigArray", "_getDanceClass", "_getDanceName",
		"_cacheCategorias", "_seleccionadoCategorias", "_currentDanceClassSelec", "_buttonBailar"];

_param = _this select 0; 
_display = findDisplay 21313122;
_lista1 = _display displayCtrl 1500;
_lista2 = _display displayCtrl 1501;
_arrayConfig = getArray (missionConfigFile >> "cfgAnimations" >> _param >> "anims");
_getConfigArray = _arrayConfig select 0;
_cacheCategorias = -1;

{_lista1 lbAdd (_x select 1);} forEach _arrayConfig;

while {!isNull findDisplay 21313122} do {
	_getMoveType = _getConfigArray select 2;
    _seleccionadoCategorias = lbCurSel _lista1;
    if (_seleccionadoCategorias != _cacheCategorias) then {
		lbClear 1501;
        if (_seleccionadoCategorias == -1) then {lbSetCurSel 0; _seleccionadoCategorias = 0};
        _cacheCategorias = _seleccionadoCategorias;
		_currentDanceClassSelec =  ((_arrayConfig) select _seleccionadoCategorias) select 0;
		_buttonBailar = _display displayCtrl 11992;
		_buttonBailar buttonSetAction format ["closeDialog 0; player switchMove '%1'; player playAction '%1';", _currentDanceClassSelec];
    }; sleep 0.1;
};