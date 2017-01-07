
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_unloadAmount", 0]
];

_vehicle setVariable [QGVAR(ContainerFull),false];
_vehicle call FUNC(removeSimulation);

[_vehicle,_unloadAmount] call FUNC(doMoveCargo);

_vehicle vehicleChat "All Civilian Unloaded";

