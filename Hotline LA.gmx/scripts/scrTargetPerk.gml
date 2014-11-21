///scr_target_perk(x,y,curr_target)

x=argument0;
y=argument1;
curr_target=argument2;

// build bullet
audio_play_sound(snd_silencer_pistol,10,0);
curr_bullet=instance_create(x,y,obj_bullet);
curr_bullet.direction=point_direction(x,y,curr_target.x,curr_target.y);
curr_bullet.image_angle=curr_bullet.direction;
curr_bullet.speed=global.bullet_speed;
     
// casing
with(instance_create(x,y,obj_bullet_case)){
    direction = point_direction(x,y, mouse_x,mouse_y)-90;
    image_angle=direction+90;
}
                   
// destroy current target
with(curr_target){
    instance_destroy();
    }
