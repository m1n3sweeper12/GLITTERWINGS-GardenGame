if (mouse_check_button_pressed(mb_left))
{
	if (x_snap = x and y_snap = y) // If the mouse clicks on the same tile the player is on...
	{
		if (place_meeting(x, y, obj_ItemParrent))
		{
			show_debug_message("This spot is currently being used.");
		}
		else
		{
			DropItem();
		}
		
	}
}