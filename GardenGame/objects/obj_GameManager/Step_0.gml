total_current_storage = total_crates_of_fire + total_crates_of_earth + total_crates_of_water + total_crates_of_air + total_crates_of_basic;

if (mouse_check_button_pressed(mb_middle))
{
	if (shop_open = false)
	{
		shop_open = true;
		instance_create_layer(48, 832, "GUI", obj_ShopManager);
	}
	else
	{
		shop_open = false;
		instance_destroy(obj_ShopManager);
	}
}

if (total_current_storage = total_max_storage)
{
	selling_to_market = true;
}
if (total_current_storage = 0)
{
	selling_to_market = false;
}

// When selling:

if (selling_to_market = true)
{
	// Selling Fire
	if (total_crates_of_fire > 0)
	{
	
		if (fire_sales_delay_timer = 0)
		{
			total_crates_of_fire -= 1;
			money += fire_price;
			fire_sales_delay_timer = delay_range(fire_sales_delay);
		}	
		fire_sales_delay_timer -= 1;
	}

	// Selling Earth
	if (total_crates_of_earth > 0)
	{
	
		if (earth_sales_delay_timer = 0)
		{
			total_crates_of_earth -= 1;
			money += earth_price;
			earth_sales_delay_timer = delay_range(earth_sales_delay);
		}	
		earth_sales_delay_timer -= 1;
	}

	// Selling Water
	if (total_crates_of_water > 0)
	{
	
		if (water_sales_delay_timer = 0)
		{
			total_crates_of_water -= 1;
			money += water_price;
			water_sales_delay_timer = delay_range(water_sales_delay);
		}	
		water_sales_delay_timer -= 1;
	}

	// Selling Air
	if (total_crates_of_air > 0)
	{

		if (air_sales_delay_timer = 0)
		{
			total_crates_of_air -= 1;
			money += air_price;
			air_sales_delay_timer = delay_range(air_sales_delay);
		}	
		air_sales_delay_timer -= 1;
	}
	
	// Selling Basic
	if (total_crates_of_basic > 0)
	{

		if (basic_sales_delay_timer = 0)
		{
			total_crates_of_basic -= 1;
			money += basic_price;
			basic_sales_delay_timer = delay_range(basic_sales_delay);
		}	
		basic_sales_delay_timer -= 1;
	}
	
}