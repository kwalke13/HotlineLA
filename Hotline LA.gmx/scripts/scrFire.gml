///scrFire(wep)
index = argument0;

wep = obj_weaponCon.wep;
//wep_kick = obj_gunCon.wep_kick;

weapon= string(wep[@ index]);
//kick = wep_kick[@ index];

if(weapon=="bat"){

    instance_create(x,y,obj_melee);
    scrScreenShake(-4,4,-4,4);
    audio_play_sound(snd_swing,10,0);
}
else if(weapon=="pistol"){

 if(instance_exists(obj_player_target)){
        // start perk fire
        pistolPerk=true;
    }
    else{
        // bullet
        with(instance_create(x, y, obj_bullet)){
            audio_play_sound(snd_silencer_pistol,10,0);
            direction = point_direction(x, y, mouse_x, mouse_y);
            image_angle=direction;
            speed = global.bullet_speed;
        }
        // casing
        with(instance_create(x,y,obj_bullet_case)){
            direction = point_direction(x,y, mouse_x,mouse_y)-90;
            image_angle=direction+90;
        }
        scrRecoil(2);
        
    }
}

else if(weapon=="shotgun"){

    audio_play_sound(snd_shotgun,10,0);
    scrRecoil(5);
    // first bullet
    with(instance_create(x,y,obj_bullet)){
        direction=obj_player.direction;
        image_angle=direction;
        speed=global.bullet_speed;
    }
    // other bullets
    for(var i=0; i<5; i++){
        with(instance_create(x,y,obj_bullet)){
            if(random(1)>.5)
                direction=point_direction(x,y,mouse_x+random(60),mouse_y+random(60));
            else
                direction=point_direction(x,y,mouse_x-random(60),mouse_y-random(60));
            
            image_angle=direction;    
            speed=global.bullet_speed;
        }

    }
    // casing
        with(instance_create(x,y,obj_bullet_case)){
            direction = point_direction(x,y, mouse_x,mouse_y)-90;
            image_angle=direction+90;
        }
}

else if(weapon=="bomb"){
    bomb = instance_create(x,y,obj_bomb);
    ds_list_add(obj_weaponCon.bomb_list,bomb);

}

else if(weapon=="sniper"){

 if(instance_exists(obj_player_target)){
        // start perk fire
        pistolPerk=true;
    }
    else{
        // bullet
        with(instance_create(x, y, obj_bullet)){
            audio_play_sound(snd_silencer_pistol,10,0);
            direction = point_direction(x, y, mouse_x, mouse_y);
            image_angle=direction;
            speed = global.bullet_speed+2;
        }
        // casing
        with(instance_create(x,y,obj_bullet_case)){
            direction = point_direction(x,y, mouse_x,mouse_y)-90;
            image_angle=direction+90;
        }
        scrRecoil(2);
        
    }
}

