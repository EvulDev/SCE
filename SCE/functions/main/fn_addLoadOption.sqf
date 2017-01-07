
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_amount", 0]
];


//Load
_conditionLoad = {
    params ["_vehicle"];
    !(_vehicle getVariable [QGVAR(ContainerFull),false]) && {speed _vehicle < 0.1} && {{_vehicle inArea _x} count GVAR(allZones) > 0};
};
_statementLoad = {
    params ["_vehicle"];
    [_vehicle,_amount] call FUNC(doLoad);
};
_actionLoad = ["Load Civilians","Load Civilians","",_statementLoad,_conditionLoad] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _actionLoad] call ace_interact_menu_fnc_addActionToObject;


//Unload
_conditionUnload = {
    params ["_vehicle"];
    _vehicle getVariable [QGVAR(ContainerFull),true] && {speed _vehicle < 0.1} && {{_vehicle inArea _x} count GVAR(allZones) > 0};
};  
_statementUnload = {
    params ["_vehicle"];
    [_vehicle,_amount] call FUNC(doUnload);
};
_actionUnload = ["Unload Civilians","Unload Civilians","",_statementUnload,_conditionUnload] call ace_interact_menu_fnc_createAction;
[_vehicle, 1, ["ACE_SelfActions"], _actionUnload] call ace_interact_menu_fnc_addActionToObject;
