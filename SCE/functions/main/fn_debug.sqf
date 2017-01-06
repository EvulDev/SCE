
#include "..\script_component.hpp";

params ["_message"];

_debugMode = getText (missionConfigFile >> "myMissionConfig" >> "CfgSCE" >> "debugMode");

if (_debugMode) then {
    diag_log formatText ["[SCE] Info: %1", _message];
};