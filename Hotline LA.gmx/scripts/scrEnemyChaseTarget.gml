///scrEnemyChaseTarget

direction = point_direction(x,y,last_seen_x,last_seen_y);
image_angle = direction;
mp_grid_path(new_grid,dummy_path,x,y,last_seen_x,last_seen_y,true);
path_start(dummy_path,4,"",1);
if distance_to_object(obj_player)<20
    status="attack";

if !point_in_triangle(obj_player.x, obj_player.y, x, y, x1, y1, x2, y2)
{
    status="transition";
    wait=80;
}