///EaseInOut(exponent, TotalTime, CurrentTime)
var expnt,TotalTime, cTime, tPower, Divisor;

expnt = argument0;
TotalTime = argument1;
cTime = argument2;

var tPower = power(cTime, expnt);
var Divisor = power(( TotalTime * room_speed - cTime ),expnt );
return ( tPower ) / ( tPower + Divisor ); 
