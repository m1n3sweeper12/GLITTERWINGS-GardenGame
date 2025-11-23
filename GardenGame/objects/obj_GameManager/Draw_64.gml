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