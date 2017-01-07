
#include "..\script_component.hpp";

if (!isServer) exitWith {};
params [["_vehicle", objNull, [objNull]]];

detach (_vehicle getVariable [QGVAR(SimulatedCargo1), objNull]);
deleteVehicle (_vehicle getVariable [QGVAR(SimulatedCargo1), objNull]);

detach (_vehicle getVariable [QGVAR(SimulatedCargo2), objNull]);
deleteVehicle (_vehicle getVariable [QGVAR(SimulatedCargo2), objNull]);

detach (_vehicle getVariable [QGVAR(isSimulatedCargo3), objNull]);
deleteVehicle (_vehicle getVariable [QGVAR(SimulatedCargo3), objNull]);
