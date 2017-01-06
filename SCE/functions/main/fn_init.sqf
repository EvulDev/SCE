#include "..\script_component.hpp";
["Initializing"] call FUNC(debug);

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle setVariable [QGVAR(hasContainerFull), false];
[_vehicle] call FUNC(addLoadOption);
["Finished with addLoadOption and hasContainerFull"] call FUNC(debug);

["Starting with eventHandler"] call FUNC(debug);

["vehicle", {
    params ["_unit", "_vehicle"];
    
    if (_vehicle getVariable [QGVAR(hasContainerFull), true] && _unit getCargoIndex _vehicle > 1) then {
        ["Ejecting player"] call FUNC(debug);
        _unit action["eject",_vehicle];
        hint "The cargo is full of civilians you don't fitt.";
    };
}] call CBA_fnc_addPlayerEventHandler;