
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle vehicleChat "All Civilian Unloaded";
_vehicle setVariable ["sce_hasContainerFull",false];

_vehicle call FUNC(removeSimulation);