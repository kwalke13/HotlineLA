///scrBloodCounter(limit)

limit=argument0;


if(instance_number(obj_blood)>limit){
    inst=instance_find(obj_blood,0);
    with(inst) instance_destroy();
}
