
#include "..\script_component.hpp";

if (getNumber (missionConfigFile >> "CfgSCE" >> "debugMode") == 1) then {
    params ["_message"];
    diag_log formatText ["[SCE] Info: %1", _message];
};