if(point_in_rectangle(mouse_x, mouse_y, x - 120, y + 20, x - 20, y + 90) ) { // click yes
	
} else if(point_in_rectangle(mouse_x, mouse_y, x + 20, y + 20, x + 120, y + 90)) { // click no
	show_debug_message("got here");
	
	instance_destroy(self);
}