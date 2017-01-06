
#include "..\script_component.hpp";

if (!isServer) exitWith {};
params [["_vehicle", objNull, [objNull]]];

detach (_vehicle getVariable ["sce_isSimulatedCargo1", objNull]);
deleteVehicle (_vehicle getVariable ["sce_isSimulatedCargo1", objNull]);

detach (_vehicle getVariable ["sce_isSimulatedCargo2", objNull]);
deleteVehicle (_vehicle getVariable ["sce_isSimulatedCargo2", objNull]);

detach (_vehicle getVariable ["sce_isSimulatedCargo3", objNull]);
deleteVehicle (_vehicle getVariable ["sce_isSimulatedCargo3", objNull]);