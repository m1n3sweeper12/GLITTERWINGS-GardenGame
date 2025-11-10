if (!harvestable)
{

	water -= round(random_range(0,2));

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