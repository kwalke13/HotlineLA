

///scrSpecial(wep)
index = argument0;

wep = obj_weaponCon.wep;
//wep_kick = obj_gunCon.wep_kick;

weapon= string(wep[@ index]);
//kick = wep_kick[@ index];

if(weapon == "pistol"){
    if(collision_point(mouse_x,mouse_y,obj_enemy,1,0)){
        curr_target=instance_create(mouse_x,mouse_y,obj_player_target);
        ds_list_add(obj_weaponCon.target_list,curr_target);
    }
}

// bomb
if(instance_exists(obj_bomb) && weapon=="bomb"){
    //show_message(ds_list_size(bomb_list));
    
    // iterate through the list of bombs
    for(var i=0; i<ds_list_size(obj_weaponCon.bomb_list);i++;){
        // get the bomb instance at the current location
        curr_bomb=ds_list_find_value(obj_weaponCon.bomb_list,i);
        instance_create(curr_bomb.x,curr_bomb.y,obj_explosion);
        
        // destroy current bomb
        with(curr_bomb){
            instance_destroy();
        }
    }
    // clear list
    ds_list_clear(obj_weaponCon.bomb_list);
}