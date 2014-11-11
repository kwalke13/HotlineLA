///scrFire(wep)
index = argument0;

wep = obj_weaponCon.wep;
//wep_kick = obj_gunCon.wep_kick;

weapon= string(wep[@ index]);
//kick = wep_kick[@ index];

if(weapon=="bat"){
    //audio_play_sound(snd_machine_gun_shoot,10,0);
    //instance_create(x,y,obj_bullet);
    //instance_create(x,y,obj_bullet_case);
    instance_create(x,y,obj_melee);
}
else if(weapon=="pistol"){
    //audio_play_sound(snd_machine_gun_shoot,10,0);
    //instance_create(x,y,obj_bullet);
    //instance_create(x,y,obj_bullet_case);
 if(instance_exists(obj_player_target)){
        for(var i=0; i<ds_list_size(obj_weaponCon.target_list);i++;){
            
             // get the target instance at first location
            curr_target=ds_list_find_value(obj_weaponCon.target_list,i);
            // target perk current target
            scr_target_perk(x,y,curr_target);
            repeat(90){
                // do nothing
            }
            
        }
    // clear list
    ds_list_clear(obj_weaponCon.target_list);
    //pistol_mag_size=7;
    
    // END target perk
    }
    else{
        with(instance_create(x, y, obj_bullet)){
            direction = point_direction(x, y, mouse_x, mouse_y);
            image_angle=direction;
            speed = global.bullet_speed;
        }
    }
}

if(weapon=="shotgun"){
    //audio_play_sound(snd_grenade_pop,10,0);
    //instance_create(x,y,obj_grenade);
    //instance_create(x,y,obj_bullet_case);
    for(var i=0; i<6; i++){
        with(instance_create(x,y,obj_bullet)){
        if(random(1)>.5)
            direction=point_direction(x,y,mouse_x+random(40),mouse_y+random(40));
        else
            direction=point_direction(x,y,mouse_x-random(40),mouse_y-random(40));
            
        image_angle=direction;    
        speed=global.bullet_speed;
        }

    }
}

if(weapon=="bomb"){
    bomb = instance_create(x,y,obj_bomb);
    ds_list_add(obj_weaponCon.bomb_list,bomb);

}

