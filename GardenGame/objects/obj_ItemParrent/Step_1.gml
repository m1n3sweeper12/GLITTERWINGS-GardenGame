if (place_meeting(x, y, obj_Player))
	{
	if (mouse_check_button_pressed(mb_left))
		{
		if (position_meeting(mouse_x, mouse_y, id ) and obj_Player.speed = 0) {
			if (obj_Player.current_item = equipped.none){
				
				obj_Player.current_item = item_name;
				obj_Player.current_special_value = current_special_value;
				obj_Player.bar_main_color = bar_main_color;
				obj_Player.has_special = has_special;
				
				mouse_clear(mb_left);
				instance_destroy();
			}
			else
			{
				show_debug_message("Cannot pick up item when already carrying something");
			}
		}
	}
}

if (current_special_value <= 0) { current_special_value = 0; }
if (current_special_value >= 100) { current_special_value = 100; }