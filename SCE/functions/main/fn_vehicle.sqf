
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_amount", 0]
];

_vehicle setVariable [QGVAR(ContainerFull), false];
[_vehicle,_amount] call FUNC(addLoadOption);

["vehicle", {
    params ["_unit", "_vehicle"];
    if (_vehicle getVariable [QGVAR(ContainerFull), true] && {_vehicle getCargoIndex _unit > 1}) then {
        _unit action["eject",_vehicle];
        hint "The cargo is full of civilians you don't fitt.";
    };
}] call CBA_fnc_addPlayerEventHandler;

//_cargoPool = 0;
//_cargoMax = _amount;