
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_loadAmount", 0]
];

_vehicle setVariable [QGVAR(ContainerFull),true];
_vehicle call FUNC(doSimulation);

[_vehicle,"_loadAmount"] call FUNC(doMoveCargo);

_vehicle vehicleChat "All Civilian Loaded";
