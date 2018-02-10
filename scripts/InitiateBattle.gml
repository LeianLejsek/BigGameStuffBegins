GameMode = BATTLE;
BattleState = INITIATE;

FirstEnemy = other.id; //Make first item in an enemy list later.

var BattleSeparation, BattleRestSideP, BattleRestSideE
BattleSeparation = 1/3 * camera.ViewBattleW;  //Separation from each other between player and enemies in battle
BattleRestSideP = sign( oPlayer.x - FirstEnemy.x );
BattleRestSideE = - BattleRestSideP;
with(camera){
    //ChangeView(ViewBattle);
}
with(oPlayer) {
    BattleRestPos = x + BattleRestSideP * BattleSeparation/2;    
    BattleRestSide = BattleRestSideP;
    image_xscale = -BattleRestSideP;
}
PlayerReady = false;

with(FirstEnemy) {
    BattleRestPos = x + BattleRestSideE * BattleSeparation/2;
    InBattle = true;    
    BattleRestSide = BattleRestSideE;    
    image_xscale = -BattleRestSide;
}
EnemyReady = false;
