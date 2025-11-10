image_speed = 0;
image_index = 0;

water = 100;
age = 0;
dead = false;
harvestable = false;

alarm_set(0, dehydration_speed); // Starts the Water loop
alarm_set(1, aging_speed); // Starts the age loop