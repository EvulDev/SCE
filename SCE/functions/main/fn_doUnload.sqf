
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle vehicleChat "All Civilian Unloaded";
_vehicle setVariable [QGVAR(hasContainerFull),false];

_vehicle call FUNC(removeSimulation);
