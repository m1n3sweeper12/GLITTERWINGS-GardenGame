draw_self();

if(!obj_GameManager.shop_open) {
	draw_sprite(spr_Cursor, 0, x_snap, y_snap);
}

if (keyboard_check(vk_control))
{
	draw_circle(x_to, y_to, 2, 0);
	draw_circle(x, y, 2, 0);

	draw_text(x_to-20, y_to+25, x_to);
	draw_text(x_to+20, y_to+25, y_to);
	draw_text(x, y+20, direction);
	draw_text(x, y+25, farmland_tile_type);
}



if (has_special = true)
{
	draw_set_color(c_white);
	draw_rectangle(x,y,x+32,y-5,false);
	draw_set_color(bar_main_color);
	draw_rectangle(x+1,y-1,x+(31*current_special_value)/100,y-4,false);

	draw_set_color(c_white);
}
