#include "..\..\script_macros.hpp"
/*
	File: fn_bankDepositAll.sqf 
	Author: Admors

	Description: Add button for all deposit in ATM
*/
private ["_cash"];
_cash = parseNumber(ctrlText 2702) + CASH;

if(CASH isEqualTo 0) exitWith {hint localize STR_ATM_NotCash};

BANK = BANK + _cash;
CASH = CASH - _cash;

hint format[localize "STR_ATM_DepositSuccess",[_value] call life_fnc_numberText];

[] call life_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;

[] call life_fnc_hudUpdate;

