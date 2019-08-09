_secondLine = [_this,0,"",[""]] call BIS_fnc_param;
_thirdLine = [_this,1,"",[""]] call BIS_fnc_param;

_now = date;
_year = _now select 0;
_month = _now select 1;
_day = _now select 2;
_hour = _now select 3;
_minute = _now select 4;

_firstLine = format["%1/%2/%3 %4:%5", _month, _day, _year, _hour, _minute];

[ _firstLine, _secondLine, _thirdLine ] spawn BIS_fnc_infoText;