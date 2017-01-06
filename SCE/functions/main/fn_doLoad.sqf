
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle vehicleChat "All Civilian Loaded";
_vehicle setVariable ["sce_hasContainerFull",true];

_vehicle call FUNC(doSimulation);