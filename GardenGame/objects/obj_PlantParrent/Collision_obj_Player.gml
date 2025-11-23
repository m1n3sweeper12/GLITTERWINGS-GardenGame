if (mouse_check_button_pressed(mb_right))
{
	if (obj_Player.current_item = equipped.shovel)
	{
	instance_destroy();
	}
	else if (obj_Player.current_item = equipped.wateringcan and !dead and obj_Player.current_special_value >= water_requirement)
	{
		if (water <= 20)
		{
			alarm_set(1, 5);
		}
		water = 100;
		obj_Player.current_special_value -= water_requirement;
	}
	else if (obj_Player.current_item = equipped.crateEmpty and age = 100)
	{
		age = 50;
		harvestable = false;
		obj_Player.current_item = plant_type_in_crate;
		obj_Player.current_special_value += 20;
		alarm_set(1, 5);
		alarm_set(0, 5);
	}
	else if (obj_Player.current_item = plant_type_in_crate and age = 100 and obj_Player.current_special_value < 100)
	{
		age = 50;
		harvestable = false;
		obj_Player.current_special_value += harvest_yield;
		alarm_set(1, 5);
		alarm_set(0, 5);
	}
}
