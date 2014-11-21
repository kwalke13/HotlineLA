///scrEnemyHit()


// push back
direction=point_direction(x,y,other.x,other.y);
if(!collision_circle(x,y,25,obj_solid,1,0)){
    speed=-4;
    alarm[1]=4;    // reset speed to 0
}

// create blood
if(hit_count<8){
hp-=100;

repeat(blood_count) instance_create(x,y,obj_blood);
hit_count++;
}