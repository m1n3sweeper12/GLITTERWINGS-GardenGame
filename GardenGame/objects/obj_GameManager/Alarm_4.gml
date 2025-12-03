air_timer = random_range(1, 15) * minute;
air_demand = generate_random_demand();

air_price = get_price(air_demand);
air_sales_delay = get_delay(air_demand);

alarm_set(4,air_timer);