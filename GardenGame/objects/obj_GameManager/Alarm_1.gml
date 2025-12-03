fire_timer = random_range(1, 15) * minute;
fire_demand = generate_random_demand();

fire_price = get_price(fire_demand);
fire_sales_delay = get_delay(fire_demand);

alarm_set(1,fire_timer);