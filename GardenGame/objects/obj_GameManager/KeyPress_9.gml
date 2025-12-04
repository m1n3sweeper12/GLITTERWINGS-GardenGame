fire_demand = generate_random_demand();
earth_demand = generate_random_demand();
water_demand = generate_random_demand();
air_demand = generate_random_demand();


fire_price = get_price(fire_demand);
show_debug_message(fire_price);
fire_sales_delay = get_delay(fire_demand);