draw_set_color(c_black);
draw_set_alpha(0.75);
draw_rectangle(0,0,200,140,false);
draw_set_alpha(1);
draw_set_color(c_white);

draw_text(10,0, "Total Space: " + string(total_current_storage) + "/" + string(total_max_storage));

draw_text(10,20, "Money: $" + string(money));

draw_text(10,40, "Fotia Peppers: " + string(total_crates_of_fire));
draw_text(10,60, "Terragi Roots: " + string(total_crates_of_earth));
draw_text(10,80, "Neroufyll Leafs: " + string(total_crates_of_water));
draw_text(10,100, "Aeraslou Blooms: " + string(total_crates_of_air));

if (keyboard_check(vk_control))
{
	draw_set_color(c_black);
	draw_set_alpha(0.75);
	draw_rectangle(0,140,200,700,false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	draw_text(10,120, "TRUE MOUSE X: " + string(mouse_x));
	draw_text(10,140, "TRUE MOUSE Y: " + string(mouse_y));

	draw_text(10,160, "GUI MOUSE X: " + string(gui_mouse_x));
	draw_text(10,180, "GUI MOUSE Y: " + string(gui_mouse_y));

	draw_text(10,220, "FIRE DEMAND: " + string(fire_demand));
	draw_text(10,240, "FIRE PRICE: " + string(fire_price));
	draw_text(10,260, "FIRE TIMER: " + string(fire_timer));

	draw_text(10,300, "EARTH DEMAND: " + string(earth_demand));
	draw_text(10,320, "EARTH PRICE: " + string(earth_price));
	draw_text(10,340, "EARTH TIMER: " + string(earth_timer));

	draw_text(10,380, "WATER DEMAND: " + string(water_demand));
	draw_text(10,400, "WATER PRICE: " + string(water_price));
	draw_text(10,420, "WATER TIMER: " + string(water_timer));

	draw_text(10,460, "AIR DEMAND: " + string(air_demand));
	draw_text(10,480, "AIR PRICE: " + string(air_price));
	draw_text(10,500, "AIR TIMER: " + string(air_timer));

	draw_text(10,540, "FIRE SALES DELAY: " + string(fire_sales_delay_timer));
	draw_text(10,560, "EARTH SALES DELAY: " + string(earth_sales_delay_timer));
	draw_text(10,580, "WATER SALES DELAY: " + string(water_sales_delay_timer));
	draw_text(10,600, "AIR SALES DELAY: " + string(air_sales_delay_timer));

}