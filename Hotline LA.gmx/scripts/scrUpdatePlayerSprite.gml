///scrUpdatePlayerSprite()
hands=scrGetCurrentWeaponHands();

if(hands=="pistol") 
image_index=3;
if(hands=="rifle")
image_index=4;
if(hands=="melee_1")
image_index=6;
if(hands=="melee_2")
image_index=0;



/* // old version
if(x== xprevious && y == yprevious)
    sprite_index=sp_basic_player_idle;
else if((x != xprevious || y != yprevious) && spd==2){
    sprite_index=sp_basic_player_walk;
}
else if((x != xprevious || y != yprevious) && spd==5){
    sprite_index=sp_basic_player_run;
}
*/
