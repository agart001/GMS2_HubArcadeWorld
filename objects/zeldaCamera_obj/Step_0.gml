var new_camera = view_get_camera(0);

var new_camera_x = zeldaPlayer_baseclass_obj.x / 1280;
new_camera_x -= frac(new_camera_x);
new_camera_x *= 1280;

var new_camera_y = zeldaPlayer_baseclass_obj.y / 720;
new_camera_y -= frac(new_camera_y);
new_camera_y *= 720;

camera_set_view_pos(new_camera, new_camera_x, new_camera_y);


  