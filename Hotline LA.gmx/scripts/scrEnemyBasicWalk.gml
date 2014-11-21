///scrEnemyBasicWalk()


// north and south
if(isNorth){
    if(variation==0){
        direction=90;
        image_angle=direction;
        if(!place_meeting(x,y-spd,obj_solid)){
            y-=spd;
        }
        else{
            variation=1;
        }
    }
    else{
        direction=270;
        image_angle=direction;
        if(!place_meeting(x,y+spd,obj_solid)){
            y+=spd;
        }
        else
            variation=0;
    }

}
else{   //east and west

 if(variation==0){
        direction=0;
        image_angle=direction;
        if(!place_meeting(x+spd,y,obj_solid)){
            x+=spd;
        }
        else{
            variation=1;
        }
    }
    else{
        direction=180;
        image_angle=direction;
        if(!place_meeting(x-spd,y,obj_solid)){
            x-=spd;
        }
        else
            variation=0;
    }
}
