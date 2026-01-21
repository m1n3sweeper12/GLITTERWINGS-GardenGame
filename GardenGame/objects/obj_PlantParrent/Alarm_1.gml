if (!dead and !diseased and water > 20)
{
	
	
	if (firtilized) 
	{ 
		firtilizer_time_remaining -= 1;
		cur_min_age_rate = min_age_rate + firtilized_bonus_flat;
		cur_max_age_rate = max_age_rate + firtilized_bonus_flat;
	}
	
	if (firtilizer_time_remaining = 0)
	{
		firtilized = false;
		cur_min_age_rate = min_age_rate;
		cur_max_age_rate = max_age_rate;
	}
	
	age += floor(random_range(cur_min_age_rate,cur_max_age_rate));
	
	if (age <= 10)
	{
		image_index = 0;
		alarm_set(1, current_aging_speed);
	}
	else if (age > 10 and age <= 60)
	{
		image_index = 1;
		alarm_set(1, current_aging_speed);
	}
	else if (age > 60 and age <= 99)
	{
		image_index = 2;
		alarm_set(1, current_aging_speed);
	}
	else if (age >= 100)
	{
		image_index = 3;
		age = 100;
		harvestable = true;
		firtilized = false;
		current_aging_speed = aging_speed;
		cur_min_age_rate = min_age_rate;
		cur_max_age_rate = max_age_rate;
		
	}
}