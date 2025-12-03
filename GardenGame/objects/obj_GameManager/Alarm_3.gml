water_timer = random_range(1, 15) * minute;
water_demand = generate_random_demand();

water_price = get_price(water_demand);
water_sales_delay = get_delay(water_demand);

alarm_set(3,water_timer);