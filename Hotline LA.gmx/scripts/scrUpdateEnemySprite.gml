///scrUpdateEnemySprite()
if(hp>0){
if(x== xprevious && y == yprevious)
    sprite_index=sp_basic_enemy_idle;
else if((x != xprevious || y != yprevious)){
    sprite_index=sp_basic_enemy_walk;
}
}
else{
    //if(sprite_index != sp_basic_enemy_dead_end && sprite_index != sp_basic_enemy_dead){
    //    sprite_index=sp_basic_enemy_dead;
        
    //}
    //if(image_index==3){
         //   image_speed=0;
            sprite_index=sp_basic_enemy_dead_end;
       // }
}
