///scrEnemyTransition()
with(last_seen_obj)
    instance_destroy();
if(wait<1){       
            wait=0;
            status="returning";

}
else if(wait == 60){
            direction+=45;
            image_angle = direction;
}
else if(wait == 30){
            direction-=90;
            image_angle = direction;
}

wait--;

