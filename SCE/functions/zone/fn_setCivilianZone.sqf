/*
this function should set a civilian zone
It should set the size (via marker) that is turned invissable
It should also keep tack of city civilian count.

Random damage inside the zone killes civilians
    Gun shot 0.5% chanse of killing a civilian
    Ordinance 5% chanse of killing a civilian
    (chanses are set in CfgSCE)

(Wounded civilian will not be added now.)
*/

#include "..\script_component.hpp";

params ["_markerName",["_population",100],["_showmarker",false]];

_zonePopulationPool = _population;

if (_markerName == "") exitWith { systemChat "WARNING: No marker found for civilian zone!" };

if (_showmarker) then {
    _markerName setMarkerAlpha 1;
} else {
    _markerName setMarkerAlpha 0;
};

_markerName setMarkerColor "ColorCIV";

if (getNumber (missionConfigFile >> "CfgSCE" >> "debugMode") == 1) then {
    while {true} do {
        params ["_markerName","_population","_debugMarkerName","_debugMarker","_debugMarkerName"];
        _markerName setMarkerAlpha 1;

        _debugMarkerName = format ["%1_debug", _markerName];
        
        _debugMarker = createMarker [_debugMarkerName,[0,0]];
        _debugMarkerName setMarkerPos getMarkerPos _markerName;
        _debugMarker = _debugMarkerName setMarkerText (format ["%1 | Population: %2", _markerName, _population]);
        _debugMarker = _debugMarkerName setMarkerType "c_unknown";
        _debugMarker = _debugMarkerName setMarkerColor "ColorBlack";
        sleep 180;
    };
};

GVAR(allZones) pushBack _markerName

/*
for "_" from 0 to 8 do {
    DEC(M_pool);
};
*/