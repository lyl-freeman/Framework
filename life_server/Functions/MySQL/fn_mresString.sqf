/*
    File: fn_mresString.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Makes the string safe to be passed to MySQL (strips various stuff).
*/
private _string = [_this,0,"",[""]] call BIS_fnc_param;
private _filter = "'/\`:|;,{}-""<>";

_filter = toArray _filter; //Blow it up to an array

toString ((toArray _string) - _filter);
