if (mouse_check_button_pressed(mb_right))
{
	if (obj_Player.current_item = equipped.shovel)
	{
	instance_destroy();
	}
	else if (obj_Player.current_item = equipped.wateringcan and !dead)
	{
		if (water <= 20)
		{
			alarm_set(1, 5);
		}
		water = 100;
	}
	else if (obj_Player.current_item = equipped.crateEmpty and age = 100)
	{
		age = 50;
		harvestable = false;
		obj_Player.current_item = plant_type_in_crate;
		alarm_set(1, 5);
		alarm_set(0, 5);
	}
}
