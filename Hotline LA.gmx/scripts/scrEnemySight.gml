///scrEnemySight()
// check - distance to player and no collision with solid and player is trespassing
if(distance_to_point(obj_player.x,obj_player.y)< view_range && !collision_line(x,y,obj_player.x,obj_player.y,obj_solid,false,true) && global.trespassing==true)
    {
      // check - sight cone && close to player
     if point_in_triangle(obj_player.x, obj_player.y, x, y, x1, y1, x2, y2) || (collision_circle(x,y,sense,obj_player,1,0) && obj_player.spd==obj_player.normal)
     {
        
        last_seen_x=obj_player.x;
        last_seen_y=obj_player.y;
        //checker_text = "?!";
        status="chasing";
     if(last_seen_obj != 0){
        with (last_seen_obj)
            instance_destroy();
        }
     last_seen_obj=instance_create(last_seen_x,last_seen_y,obj_last_known_position);
     }
}

