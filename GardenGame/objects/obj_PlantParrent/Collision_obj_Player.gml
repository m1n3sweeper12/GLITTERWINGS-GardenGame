if (mouse_check_button_pressed(mb_right))
{

	switch(obj_Player.current_item)
	{
		case equipped.shovel:
			instance_destroy();
		break;
		
		case equipped.wateringcan:
			if (!dead and obj_Player.current_special_value >= water_requirement)
			{
				if (water <= 20)
				{
					alarm_set(1, 5); // 5 is an arbatrary short number, mimics recovery
				}
				water = 100;
				obj_Player.current_special_value -= water_requirement;
			}
		break;
		
		case equipped.crateEmpty:
			if (harvestable)
			{
				age = reset_age;
				harvestable = false;
				obj_Player.current_item = plant_type_in_crate;
				obj_Player.current_special_value += 20;
				alarm_set(1, 5);
				alarm_set(0, 5);
			}
		break;
		
		case plant_type_in_crate:
		if (harvestable and obj_Player.current_special_value < 100)
			{
				age = reset_age;
				harvestable = false;
				obj_Player.current_special_value += harvest_yield;
				alarm_set(1, 5);
				alarm_set(0, 5);
			}
		break;
		
		case equipped.bugSpray:
			if (!dead and obj_Player.current_special_value >= spray_requirement)
			{
				if (diseased) { alarm_set(1, 5); }
				
				rot = 0;
				diseased = false;
				obj_Player.current_special_value -= spray_requirement;
			}
		break;
		
		case equipped.firtilizer:
			if (!firtilized and !dead and !harvestable and obj_Player.current_special_value >= firtilizer_requirement)
			{
				firtilized = true;
				
				current_aging_speed = firtilized_speed;
				firtilizer_time_remaining = firtilized_duration;
				
				cur_min_age_rate = min_age_rate;
				cur_max_age_rate = max_age_rate;
				
				obj_Player.current_special_value -= firtilizer_requirement;
			}
		break;
	}
}