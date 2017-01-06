
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle setVariable [QGVAR(hasContainerFull),false];
[_vehicle] call FUNC(addLoadOption);

while {true} do {
    if ((_vehicle getVariable [QGVAR(hasContainerFull),true]) && ((player getCargoIndex _vehicle) > 1)) then {
        ["Ejecting player"] call FUNC(debug);
        player action["eject",_vehicle];
        hint "The cargo is full of civilians you don't fitt.";
    };
};
