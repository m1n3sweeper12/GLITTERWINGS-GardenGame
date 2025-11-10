if (place_meeting(x, y, obj_Player))
	{
	if (mouse_check_button_pressed(mb_left))
		{
		if (position_meeting(mouse_x, mouse_y, id ) and obj_Player.speed = 0) {
			if (obj_Player.current_item = equipped.none){
				obj_Player.current_item = item_name;
				mouse_clear(mb_left);
				//show_message(string(item_name) + " SELECTED");
				instance_destroy();
			}
			else
			{
				show_debug_message("Cannot pick up item when already carrying something");
			}
		}
	}
}
