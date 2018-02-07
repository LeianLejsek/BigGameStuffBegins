///Initialize Battle
if ( oGame.BattleState == oGame.INITIATE ) {
    x = Approach(x, BattleRestPos, 4);
    if( x == BattleRestPos ) {
        return true;
    }
}
