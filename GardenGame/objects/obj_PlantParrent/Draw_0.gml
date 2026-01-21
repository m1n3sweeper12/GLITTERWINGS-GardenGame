draw_self();

if (keyboard_check(vk_control))
{
	// Water Healthbar
	draw_set_color(c_white);
	draw_rectangle(x,y-18,x+32,y-10,false);
	draw_set_color(c_blue);
	draw_rectangle(x+1,y-17,x+(31*water)/100,y-11,false);

	// Age Healthbar
	draw_set_color(c_white);
	draw_rectangle(x,y-8,x+32,y,false);
	draw_set_color(c_red);
	draw_rectangle(x+1,y-7,x+(31*age)/100,y-1,false);

	// Disase Healthbar
	draw_set_color(c_white);
	draw_rectangle(x,y-28,x+32,y-20,false);
	draw_set_color(c_olive);
	draw_rectangle(x+1,y-27,x+(31*rot)/100,y-21,false);

	draw_set_color(c_white);
}

if (dead)
{
	draw_sprite(spr_DeadWarning,0,x+8,y-8);
}
else if (diseased)
{
	draw_sprite(spr_DiseaseWarning,0,x+8,y-8);
}
else if (water <= 50 and water > 0)
{
	draw_sprite(spr_WaterWarning,0,x+8,y-8);
}

if (firtilized)
{
	draw_sprite(spr_FirtilizedWarning,0,x,y);
}