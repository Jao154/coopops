drag("none");

//Me destruindo se sai da room
if (x > room_width + 32 or x < -32) instance_destroy(id,false)
if (y > room_width + 32 or y < -32) instance_destroy(id,false)
