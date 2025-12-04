land_lock_popup = false;

money = 100;

total_max_storage = 20;
total_current_storage = 0;

total_crates_of_earth = 4;
total_crates_of_fire = 5;
total_crates_of_water = 3;
total_crates_of_air = 6;

shop_open = false;
selling_to_market = false;

very_low_price = 20;
low_price = 30;
below_average_price = 40;
average_price = 50;
above_average_price = 60;
high_price = 70;
very_high_price = 80;

very_low_delay = 3.5;
low_delay = 3;
below_average_delay = 2.5;
average_delay = 2;
above_average_delay = 1.5;
high_delay = 1;
very_high_delay = 0.5;

fire_demand = demand.average;
earth_demand = demand.average;
water_demand = demand.average;
air_demand = demand.average;

fire_price = average_price;
earth_price = average_price;
water_price = average_price;
air_price = average_price;

enum demand {
    very_low,
	low,
	below_average,
	average,
	above_average,
	high,
	very_high
}

fire_sales_delay = average_delay;
earth_sales_delay = average_delay;
water_sales_delay = average_delay;
air_sales_delay = average_delay;

fire_sales_delay_timer = fire_sales_delay;
earth_sales_delay_timer = earth_sales_delay;
water_sales_delay_timer = water_sales_delay;
air_sales_delay_timer = air_sales_delay;

fire_timer = random_range(1, 15) * minute;
earth_timer = random_range(1, 15) * minute;
water_timer = random_range(1, 15) * minute;
air_timer = random_range(1, 15) * minute;

alarm_set(1,fire_timer);
alarm_set(2,earth_timer);
alarm_set(3,water_timer);
alarm_set(4,air_timer);

function generate_random_demand() 
{
	var temp_demand = irandom_range(0, 6);

	switch (temp_demand)
	{
		case 0:
		return demand.very_low;

		case 1:
		return demand.low;
		
		case 2:
		return demand.below_average;
		
		case 3:
		return demand.average;
		
		case 4:
		return demand.above_average;

		case 5:
		return demand.high;

		case 6:
		return demand.very_high;
	}
}

function get_price(element_demand)
{
	switch (element_demand)
	{
		case demand.very_low:
		return very_low_price;

		case demand.low:
		return low_price;

		case demand.below_average:
		return below_average_price;
		
		case demand.average:
		return average_price;

		case demand.above_average:
		return above_average_price;

		case demand.high:
		return high_price;

		case demand.very_high:
		return very_high_price;
	}
}

function get_delay(element_demand)
{
	switch (element_demand)
	{
		case demand.very_low:
		return delay_range(very_low_delay);

		case demand.low:
		return delay_range(low_delay);
		
		case demand.below_average:
		return delay_range(below_average_delay);

		case demand.average:
		return delay_range(average_delay);

		case demand.above_average:
		return delay_range(above_average_delay);

		case demand.high:
		return delay_range(high_delay);

		case demand.very_high:
		return delay_range(very_high_delay);
	}
}

function delay_range(delay)
{
	return irandom_range(1, 5) * delay * second;
}
