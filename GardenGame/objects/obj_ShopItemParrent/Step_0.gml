if (position_meeting(gui_mouse_x, gui_mouse_y, id ))
{
	if (mouse_check_button_pressed(mb_left) and obj_GameManager.money >= price)
	{
		isSelected = true;
	}
}
	
if (isSelected) {
	x = gui_mouse_x;
	y = gui_mouse_y;
		
	if (mouse_check_button_released(mb_left))
	{
		isSelected = false;
		snap_x = floor(mouse_x / grid_x) * grid_x;
		snap_y = floor(mouse_y / grid_y) * grid_y;
		
		if (instance_position(snap_x, snap_y, obj_ItemParrent) or instance_position(x,y, obj_ShopManager))
		{
			x = orig_x;
			y = orig_y;
		}
		else
		{
			instance_create_layer(snap_x, snap_y, "Instances", purchased_item);
			obj_GameManager.money -= price;
			x = orig_x;
			y = orig_y;
		}

	}

	if (mouse_check_button_pressed(mb_right))
	{
		isSelected = false;
		x = orig_x;
		y = orig_y;
	}
}
