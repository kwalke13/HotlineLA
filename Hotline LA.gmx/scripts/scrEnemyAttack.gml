///scrEnemyAttack(type)

type=argument0;

if(type=="melee"){
    if !instance_exists(obj_melee_enemy){
    melee = instance_create(x,y,obj_melee_enemy);
    melee.inst=id;
    }
}
else{
    // not hostile NEEDS IMPLEMENTATION
}

if !point_in_triangle(obj_player.x, obj_player.y, x, y, x1, y1, x2, y2)
{
    status="transition";
    wait=80;
}
