class menuBaile {
    idd = 21313122;
    movingEnable = 0;
    enableSimulation = 1;
    name = "menuBaile"; 
    onLoad = "uiNamespace setVariable ['menuBaile',_this select 0]";
    class controlsBackground {
		/* class background: IGUIBack
		{
			idc = 2200;
			x = 0.225 * safezoneW + safezoneX;
			y = 0.242159 * safezoneH + safezoneY;
			w = 0.55 * safezoneW;
			h = 0.515681 * safezoneH;
		}; */
	};
	class controls {
		class catAnimsList: RscListbox
		{
			idc = 1500;
			x = 0.231875 * safezoneW + safezoneX;
			y = 0.283414 * safezoneH + safezoneY;
			w = 0.1925 * safezoneW;
			h = 0.474427 * safezoneH;
		};
		class categoryText: RscText
		{
			idc = 1000;
			text = "Categorias de animaciones"; //--- ToDo: Localize;
			x = 0.26625 * safezoneW + safezoneX;
			y = 0.262787 * safezoneH + safezoneY;
			w = 0.11 * safezoneW;
			h = 0.0206272 * safezoneH;
			colorBackground[] = {0,0,0,1};
		};
		class animsDispoList: RscListbox
		{
			idc = 1501;
			x = 0.451875 * safezoneW + safezoneX;
			y = 0.281351 * safezoneH + safezoneY;
			w = 0.1925 * safezoneW;
			h = 0.474427 * safezoneH;
		};
		class RscText_1001: RscText
		{
			idc = 1001;
			text = "Seleccione la animacion"; //--- ToDo: Localize;
			x = 0.48625 * safezoneW + safezoneX;
			y = 0.262787 * safezoneH + safezoneY;
			w = 0.11 * safezoneW;
			h = 0.0206272 * safezoneH;
			colorBackground[] = {0,0,0,1};
		};
		class cerrar: RscButtonMenuCancel
		{
			text = "Salir"; //--- ToDo: Localize;
			x = 0.685625 * safezoneW + safezoneX;
			y = 0.471119 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0206272 * safezoneH;
		};
		class dance: RscButtonMenuOK
		{
			idc = 11992;
			text = "Bailar"; //--- ToDo: Localize;
			//action = "closeDialog 0; [""General""] spawn vls_fnc_initMenuAnims;";
			x = 0.685625 * safezoneW + safezoneX;
			y = 0.510314 * safezoneH + safezoneY;
			w = 0.055 * safezoneW;
			h = 0.0206272 * safezoneH;
		};
	};
};