if (!harvestable)
{

	water -= round(random_range(min_thirst_rate,max_thirst_rate));

	if (water <= 20 and water > 0)
	{
		image_index = 5;
		alarm_set(0, dehydration_speed);
	}
	else if (water <= 0)
	{
		image_index = 4;
		dead = true;
	}
	else
	{
		alarm_set(0, dehydration_speed);
	}
}