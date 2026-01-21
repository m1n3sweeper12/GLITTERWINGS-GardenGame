draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0,0,200,140,false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_text(10,20*0, "Total Space: " + string(total_current_storage) + "/" + string(total_max_storage));

draw_text(10,20*1, "Money: $" + string(money));

draw_text(10,20*2, "Fotia Peppers: " + string(total_crates_of_fire));
draw_text(10,20*3, "Terragi Roots: " + string(total_crates_of_earth));
draw_text(10,20*4, "Neroufyll Leafs: " + string(total_crates_of_water));
draw_text(10,20*5, "Aeraslou Blooms: " + string(total_crates_of_air));
draw_text(10,20*6, "Panimula Stems: " + string(total_crates_of_basic));

if (keyboard_check(vk_control))
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,140,200,700,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_text(10,20*8, "TRUE MOUSE X: " + string(mouse_x));
	draw_text(10,20*9, "TRUE MOUSE Y: " + string(mouse_y));

	draw_text(10,20*10, "GUI MOUSE X: " + string(gui_mouse_x));
	draw_text(10,20*11, "GUI MOUSE Y: " + string(gui_mouse_y));

	draw_text(10,20*13, "FIRE DEMAND: " + string(fire_demand));
	draw_text(10,20*14, "FIRE PRICE: " + string(fire_price));
	draw_text(10,20*15, "FIRE TIMER: " + string(fire_timer));

	draw_text(10,20*17, "EARTH DEMAND: " + string(earth_demand));
	draw_text(10,20*18, "EARTH PRICE: " + string(earth_price));
	draw_text(10,20*19, "EARTH TIMER: " + string(earth_timer));

	draw_text(10,20*21, "WATER DEMAND: " + string(water_demand));
	draw_text(10,20*22, "WATER PRICE: " + string(water_price));
	draw_text(10,20*23, "WATER TIMER: " + string(water_timer));

	draw_text(10,20*25, "AIR DEMAND: " + string(air_demand));
	draw_text(10,20*26, "AIR PRICE: " + string(air_price));
	draw_text(10,20*27, "AIR TIMER: " + string(air_timer));
	
	draw_text(10,20*29, "BASIC DEMAND: " + string(basic_demand));
	draw_text(10,20*30, "BASIC PRICE: " + string(basic_price));
	draw_text(10,20*31, "BASIC TIMER: " + string(basic_timer));

	draw_text(10,20*33, "FIRE SALES DELAY: " + string(fire_sales_delay_timer));
	draw_text(10,20*34, "EARTH SALES DELAY: " + string(earth_sales_delay_timer));
	draw_text(10,20*35, "WATER SALES DELAY: " + string(water_sales_delay_timer));
	draw_text(10,20*36, "AIR SALES DELAY: " + string(air_sales_delay_timer));
	draw_text(10,20*37, "BASIC SALES DELAY: " + string(basic_sales_delay_timer));

}