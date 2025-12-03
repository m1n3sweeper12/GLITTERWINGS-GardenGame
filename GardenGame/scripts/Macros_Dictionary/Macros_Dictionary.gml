// Used to define Macros

#macro grid_x 32
#macro grid_y 32

#macro gui_mouse_x device_mouse_x_to_gui(0)
#macro gui_mouse_y device_mouse_y_to_gui(0)

//When on 60 frames per second:
#macro second game_get_speed(gamespeed_fps)
#macro minute (60 * second)