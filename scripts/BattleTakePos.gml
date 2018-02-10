///Initialize Battle
if ( oGame.BattleState == oGame.INITIATE ) {
    var Amplitude = 9;
    var DisConstant = (2*pi) / (270 * 2/3);
    var MinVelocity = 1.5;
    x = Approach(x, BattleRestPos, abs( Amplitude*sin(  DisConstant * (BattleRestPos-x) ) ) + MinVelocity );
    if( abs(x - BattleRestPos) < .1  ) {
        return true;
    }
}
