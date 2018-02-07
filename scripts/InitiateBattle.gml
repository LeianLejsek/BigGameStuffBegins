GameMode = BATTLE;
BattleState = INITIATE;

FirstEnemy = other.id; //Make first item in an enemy list later.

BattleSeparation = 1/3 * camera.ViewBattleW;  //Separation from each other between player and enemies in battle
BattleRestSideP = sign( oPlayer.x - FirstEnemy.x );
BattleRestSideE = - BattleRestSideP;
with(camera){
    ChangeView(ViewBattle);
}
with(oPlayer) {
    BattleRestPos = x + other.BattleRestSideP * other.BattleSeparation/2;    
}
PlayerReady = false;

with(FirstEnemy) {
    BattleRestPos = x + other.BattleRestSideE * other.BattleSeparation/2;
    InBattle = true;    
}
EnemyReady = false;
