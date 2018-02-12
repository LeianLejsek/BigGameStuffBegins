///Initialize Battle
if ( oGame.BattleState == oGame.INITIATE ) {
    var Amplitude = 9;
    var DisConstant = (2*pi) / (270 * 2/3);
    var MinVelocity = 1.5;
    if( abs(x - BattleRestPos) > 1  ) {
        vx =  BattleRestSide * (abs( Amplitude*sin(  DisConstant * (BattleRestPos-x) ) ) + MinVelocity );
    } else {
        vx = 0;
        return true;
    }
}
