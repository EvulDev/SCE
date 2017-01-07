
#include "..\script_component.hpp";

params [
    ["_vehicle", objNull, [objNull]],
    ["_amount", 0]
];

_vehicle setVariable [QGVAR(ContainerFull),false];
_vehicle call FUNC(removeSimulation);

//ADD(_PopulationPool,_amount);
//SUB(_cargoPool,_amount);

_vehicle vehicleChat "All Civilian Unloaded";

