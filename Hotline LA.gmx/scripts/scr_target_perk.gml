///scr_target_perk(x,y,curr_target)

x=argument0;
y=argument1;
curr_target=argument2;

    // build bullet
            curr_bullet=instance_create(x,y,obj_bullet);
                curr_bullet.direction=point_direction(x,y,curr_target.x,curr_target.y);
                curr_bullet.image_angle=curr_bullet.direction;
                curr_bullet.speed=global.bullet_speed;
        // destroy current target
            with(curr_target){
                instance_destroy();
            }