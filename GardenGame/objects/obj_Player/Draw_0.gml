draw_self();

draw_sprite(spr_Cursor, 0, x_snap, y_snap);

if (mouse_check_button_pressed(mb_right))
{
	draw_text(x, y+25, farmland_tile_type);
}

if (keyboard_check(vk_control))
{
	draw_circle(x_to, y_to, 2, 0);
	draw_circle(x, y, 2, 0);

	draw_text(x_to-20, y_to+25, x_to);
	draw_text(x_to+20, y_to+25, y_to);
	draw_text(x, y+20, direction);
}