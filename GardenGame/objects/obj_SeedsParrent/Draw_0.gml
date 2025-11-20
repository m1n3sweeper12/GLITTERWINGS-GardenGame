draw_self();

// Seed Count

draw_set_color(c_white);
draw_rectangle(x,y+6,x+32,y+1,false);
draw_set_color(c_yellow);
draw_rectangle(x+1,y+5,x+(31*seeds)/100,y+2,false);

draw_set_color(c_white);
