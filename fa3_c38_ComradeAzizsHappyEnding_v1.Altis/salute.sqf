_salutedistance = 10 + (random 2); //how far away the lowerranking has to be to do the initial salute
_resetdistance = 1000; //how far away the higherranking unit has to be until lower ranking units salute him again
_higherranking = _this select 0;
_alreadysaluted = [];

while {alive _higherranking} do {
	_salutesleep = 4 + random 3;
	_list = position _higherranking nearObjects["Man",_salutedistance];
		_enemysides = side _higherranking call BIS_fnc_enemysides;

	{
		if (!(side _x in _enemysides) && {rankId _x < rankId _higherranking} && {!(_x in _alreadysaluted)} && (behaviour _x == "SAFE" OR behaviour _x == "AWARE")) then {
			
			_x glanceat _higherranking;
			if ((side _x == Civilian) && ((random 50) < 100)) then {
			_civgestures = ["GestureHi","GestureHiB","GestureHiC","GestureNod"];
			_randomgesture = _civgestures select floor random (count _civgestures -1);
			_x playaction _randomgesture;
			
		} else {
			_x disableAI "ANIM";
			if (primaryWeapon _x == currentWeapon _x) then {
				_x playmove "AmovPercMstpSlowWrflDnon_Salute";
			};
			
			if (handgunWeapon _x == currentWeapon _x) then {
				_x playmove "AmovPercMstpSrasWpstDnon_Salute";
			};
			
			if (currentweapon _x == "") then {
				_x action ["Salute",_x];
			};
			
			_rank = [_x,"DisplayName"] call BIS_fnc_rankParams;
			_messagearray = ["reporting in","reporting for duty","ready for orders","awaiting orders"];
			_message = _messagearray select random (count _messagearray -1);
			
			if (_x in units group _higherranking) then {
				_x groupchat format ["Sir, %1 %2, %3, Sir!",_rank,name _x,_message];
			};
			
		};
			
		_alreadysaluted = _alreadysaluted + [_x];
		_x glanceat objnull;
			
			
			if (!(side _x == Civilian)) then {
			_nul = [_x,_salutesleep] spawn {
			_unit = _this select 0;
			_salutesleep = _this select 1;
			_time = time;
			waituntil {time > _time + _salutesleep};
			_unit enableAI "ANIM";
				if (primaryWeapon _unit == currentWeapon _unit) then {
					_unit playmove "AmovPercMstpSlowWrflDnon_SaluteOut";
				};
				
				if (handgunWeapon _unit == currentWeapon _unit) then {
					_unit playmove "AmovPercMstpSrasWpstDnon_SaluteOut";
				};
			
				if (currentweapon _unit == "") then {
					_unit playmove "AmovPercMstpSnonWnonDnon_SaluteOut";
				};
				};
			};
		};
	} forEach _list;
	
	sleep 0.3;

	{
		if ((side _x == side _higherranking) && {_x in _alreadysaluted} && {_x distance _higherranking > 1000}) then {
			_alreadysaluted = _alreadysaluted - [_x];
		};
		sleep 0.1;
	} foreach _alreadysaluted;
};

