earth_timer = random_range(1, 15) * minute;
earth_demand = generate_random_demand();

earth_price = get_price(earth_demand);
earth_sales_delay = get_delay(earth_demand);

alarm_set(2,earth_timer);