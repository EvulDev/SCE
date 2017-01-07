
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_amount", 0]
];

_vehicle setVariable [QGVAR(ContainerFull),true];
_vehicle call FUNC(doSimulation);

//SUB(_PopulationPool,_amount);
//ADD(_cargoPool,_amount);

_vehicle vehicleChat "All Civilian Loaded";
