
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]]
];

//Load
_conditionLoad = {
    !((_this select 0) getVariable ["sce_hasContainerFull",false]);
};
_statementLoad = {
    (_this select 0) call FUNC(doLoad);
};
_actionLoad = ["Load Civilians","Load Civilians","",_statementLoad,_conditionLoad] call ace_interact_menu_fnc_createAction;
[(typeOf _vehicle), 1, ["ACE_SelfActions"], _actionLoad] call ace_interact_menu_fnc_addActionToClass;


//Unload
_conditionUnload = {
    (_this select 0) getVariable ["sce_hasContainerFull",true];
};
_statementUnload = {
    (_this select 0) call FUNC(doUnload);
};
_actionUnload = ["Unload Civilians","Unload Civilians","",_statementUnload,_conditionUnload] call ace_interact_menu_fnc_createAction;
[(typeOf _vehicle), 1, ["ACE_SelfActions"], _actionUnload] call ace_interact_menu_fnc_addActionToClass;