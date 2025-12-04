
var cam_id = view_camera[0];
var min_x = camera_get_view_x(cam_id);
var min_y = camera_get_view_y(cam_id);
var max_x = camera_get_view_x(cam_id) + camera_get_view_width(cam_id);
var max_y = camera_get_view_y(cam_id) + camera_get_view_height(cam_id);

var temp_x = irandom_range(min_x, max_x);
var temp_y = irandom_range(min_y, max_y);

goal_x = floor(temp_x/grid_x)*grid_x;
goal_y = floor(temp_y/grid_y)*grid_y;

alarm[0] = random_range(3, 8)*second;