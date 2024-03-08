/* createDialog "menuBaile";
disableSerialization;
_display = findDisplay 21313122;

_categoriasAnims = [
	"Bailes", "Roleplay", "Acciones", "Policia", "Médico", "Otros"
];

_dispoBailes = [
	["Baile 1", "AG_Dance_1"],
	["Baile 2", "AG_Dance_2"],
	["Baile 3", "AG_Dance_3"]
];

_labelCategorias = _display displayCtrl 1500;
lbClear 1500;
{
	_labelCategorias lbAdd _x;
} forEach _categoriasAnims;

_labelCategorias ctrlAddEventHandler ["LBSelChanged",{ 
	_labelSelected = (lbCurSel 1500);
	_display = findDisplay 21313122;
	_labelBailesDispo = _display displayCtrl 1501;

	_categoriasAnims = [
		"Bailes", "Roleplay", "Acciones", "Policia", "Médico", "Otros"
	];

	_dispoBailes = [
	["Baile 1", "AG_Dance_1"],
	["Baile 2", "AG_Dance_2"],
	["Baile 3", "AG_Dance_3"]
	];

	switch(_labelSelected) do
	{
		case 0: {
			systemChat format ["DEBUG: Seleccionado ""%1""", (_categoriasAnims select 0)];
			{
				_labelBailesDispo lbAdd ((_this select 0) select 0);
			} forEach _dispoBailes;
		};
		case 1: {
			systemChat format ["DEBUG: Seleccionado ""%1""", (_categoriasAnims select 1)];
			{
				_labelCategorias lbAdd _x;
			} forEach ((_dispoBailes select 1) select 0);
		};
		case 2: {
			systemChat format ["DEBUG: Seleccionado ""%1""", (_categoriasAnims select 2)];
			{
				_labelCategorias lbAdd _x;
			} forEach ((_dispoBailes select 2) select 0);
		};
		case 3: {
			systemChat format ["DEBUG: Seleccionado ""%1""", (_categoriasAnims select 3)];
		};
		case 4: {
			systemChat format ["DEBUG: Seleccionado ""%1""", (_categoriasAnims select 4)];
		};
		case 5: {
			systemChat format ["DEBUG: Seleccionado ""%1""", (_categoriasAnims select 5)];
		};
	};

}];
 */

createDialog "menuBaile";
_display = findDisplay 21313122;
_lista1 = _display displayCtrl 1500;
_lista2 = _display displayCtrl 1501;

_dispoBailes = [
    ["Bailes", [
        "AG_Dance_1",
        "AG_Dance_2",
        "AG_Dance_3"
    ]],
    ["Animaciones", [

        "Animacion1",
        "Animacion2",
        "Animacion3"
    ]]
];

{
    _lista1 lbAdd (_x select 0);
} forEach _dispoBailes;

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
            _lista2 lbAdd _x;
        } forEach (_seleccion select 1);
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


vls_fnc_menuBailesDanceBtn = {
	disableSerialization;

	switch(_lista1) do 
	{
		case 0: {}; //Bailes
		case 1: {}; //Animaciones
	}; 



};