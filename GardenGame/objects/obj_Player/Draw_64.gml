if (keyboard_check(vk_control))
{

	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,0,200,120,false);
	draw_set_alpha(1);
	draw_set_color(c_white);

	draw_text(20,20, "GUI X: " + string(gui_mouse_x));
	draw_text(20,4, "GUI Y: " + string(gui_mouse_y));

	draw_text(20,60, "MOUSE X: " + string(mouse_x));
	draw_text(20,80, "MOUSE Y: " + string(mouse_y));

	draw_text(20,100, "ITEM ID: " + string(current_item));

}