/*
	0 spawn vls_fnc_initMenuAnims;
*/
createDialog "menuBaile";
_display = findDisplay 21313122;
_lista1 = _display displayCtrl 1500;
_lista2 = _display displayCtrl 1501;

_arrayConfig = getArray (missionConfigFile >> "cfgAnimations" >> "General" >> "anims");

_getConfigArray = _arrayConfig select 0;
_getDanceClass = _getConfigArray select 1;
_getDanceName = _getConfigArray select 2;


{
    _lista1 lbAdd (_x select 1); //((getArray (missionConfigFile >> "cfgAnimations" >> "General" >> "anims")) select 0) select 1
} forEach _arrayConfig;

_cacheCategorias = -1;
_cacheBailesDispo = -1;

while {!isNull findDisplay 21313122} do {
    _seleccionadoCategorias = lbCurSel _lista1;

    if (_seleccionadoCategorias != _cacheCategorias) then {
		lbClear 1501;
		systemChat format["displayCtrl 1500 (_lista1) selected n %1", _seleccionadoCategorias];

        if (_seleccionadoCategorias == -1) then {lbSetCurSel 0; _seleccionadoCategorias = 0};
        _seleccion = _dispoBailes select _seleccionadoCategorias;
        _cacheCategorias = _seleccionadoCategorias;

        {
            _lista2 lbAdd (_x select 1);
        } forEach _arrayConfig;
    };
	_seleccionadoDispos = lbCurSel _lista2;

	if (_seleccionadoDispos != _cacheBailesDispo) then {
		_seleccionDisposAsd = _seleccionadoDispos;
		_cacheBailesDispo = _seleccionadoDispos;
		systemChat format["Cache selec dispo es %1", _cacheBailesDispo];
		systemChat format["Valor _seleccionDisposAsd es %1", _seleccionDisposAsd];
	};
    sleep 0.1;
};
