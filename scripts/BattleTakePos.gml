///Initialize Battle
if ( oGame.BattleState == oGame.INITIATE ) {
    var Amplitude, DisConstant, MinVelocity, GroundColx, NextOnGround, WallColl ;
    Amplitude = 9;
    DisConstant = (2*pi) / (270 * 2/3);
    MinVelocity = 1.5;
    
    GroundColx = x + BattleRestSide * abs(sprite_width/2);
    NextOnGround = place_meeting( GroundColx, y + 1, oParSolid) || place_meeting( GroundColx, y + 1, oParJumpThru);
    
    WallColl = cLeft || cRight;
    
    if( !onGround ) {
        vy = 20;
    }   
    
    if( abs(x - BattleRestPos) > 1 && (NextOnGround ||  !onGround) && !WallColl ) {
        vx =  BattleRestSide * (abs( Amplitude*sin(  DisConstant * (BattleRestPos-x) ) ) + MinVelocity );
        return false;
    } else {
        vx = 0;
        return true;
    }
}
