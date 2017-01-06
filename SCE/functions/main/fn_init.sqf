
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle setVariable ["sce_hasContainerFull",false];
[_vehicle] call FUNC(addLoadOption);

while {true} do {
    if ((_vehicle getVariable ["sce_hasContainerFull",true]) && ((player getCargoIndex _vehicle) > 1)) then {
        player action["eject",_vehicle];
        hint "The cargo is full of civilians you don't fitt.";
    };
};