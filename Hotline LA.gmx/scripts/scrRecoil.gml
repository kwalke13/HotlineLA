///scrRecoil(distance)
dist=argument0;
x1=lengthdir_x(dist,obj_player.direction);
y1=lengthdir_y(dist,obj_player.direction);

with(instance_create(x,y,obj_screen_recoil)){
    x1=other.x1;
    y1=other.y1;
}
