if (!harvestable)
{
	disease_roll = random_range(0,100);

	if (disease_roll < chance_of_disease)
		{
			diseased = true;
		}

	if (diseased = true and rot < 100)
		{
			image_index = 5;
			rot += round(random_range(min_rot_rate,max_rot_rate));
		}

	if (rot >= 100)
		{
			image_index = 4;
			rot = 100;
			dead = true;
		}
		
	if (diseased)
	{
		alarm_set(2, rot_speed);
	}
	else
	{
		alarm_set(2, disease_speed);
	}
}