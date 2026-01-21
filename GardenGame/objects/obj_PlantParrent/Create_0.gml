image_speed = 0;
image_index = 0;

water = 100;
age = 0;
rot = 0;
dead = false;
harvestable = false;
diseased = false;
firtilized = false;
current_aging_speed = aging_speed;
firtilizer_time_remaining = 0;
cur_min_age_rate = min_age_rate;
cur_max_age_rate = max_age_rate;

alarm_set(0, dehydration_speed); // Starts the Water loop
alarm_set(1, aging_speed); // Starts the age loop
alarm_set(2, disease_speed); // Starts the disease loop