///scrUpdatePlayerSprite()

if(x== xprevious && y == yprevious)
    sprite_index=sp_basic_player_idle;
else if((x != xprevious || y != yprevious) && spd==2){
    sprite_index=sp_basic_player_walk;
}
else if((x != xprevious || y != yprevious) && spd==5){
    sprite_index=sp_basic_player_run;
}

