if (!dead and !diseased and water > 20)
{
	age += floor(random_range(min_age_rate,max_age_rate));
	
	if (age <= 10)
	{
		image_index = 0;
		alarm_set(1, aging_speed);
	}
	else if (age > 10 and age <= 60)
	{
		image_index = 1;
		alarm_set(1, aging_speed);
	}
	else if (age > 60 and age <= 99)
	{
		image_index = 2;
		alarm_set(1, aging_speed);
	}
	else if (age >= 100)
	{
		image_index = 3;
		age = 100;
		harvestable = true;
	}
}