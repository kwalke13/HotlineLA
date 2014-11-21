///scrEnemyReturn()
direction = point_direction(x,y,start_x,start_y);
image_angle = direction;
mp_grid_path(new_grid,dummy_path,x,y,start_x,start_y,true);
path_start(dummy_path,4,"",1);

//if(x = start_x && y = start_y){
if(distance_to_point(start_x,start_y)<20){
    status="basic";    
}
