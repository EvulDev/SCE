
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]]
];

_vehicle vehicleChat "All Civilian Loaded";
_vehicle setVariable [QGVAR(ContainerFull),true];

_vehicle call FUNC(doSimulation);
