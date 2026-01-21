basic_timer = random_range(1, 15) * minute;
basic_demand = generate_random_demand();

basic_price = get_price(basic_demand);
basic_sales_delay = get_delay(basic_demand);

alarm_set(5,basic_timer);