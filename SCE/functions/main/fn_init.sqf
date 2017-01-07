#include "..\script_component.hpp";
["Initializing"] call FUNC(debug);

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle setVariable [QGVAR(ContainerFull), false];
[_vehicle] call FUNC(addLoadOption);

["vehicle", {
    params ["_unit", "_vehicle"];
    if (_vehicle getVariable [QGVAR(ContainerFull), true] && {_vehicle getCargoIndex _unit > 1}) then {
        _unit action["eject",_vehicle];
        hint "The cargo is full of civilians you don't fitt.";
    };
}] call CBA_fnc_addPlayerEventHandler;