draw_self();

draw_set_color(c_white);

draw_text(x + 32 + 64*0, y + 64, string_concat("$", obj_ShopSeedsFire.price));
draw_text(x + 32 + 64*1, y + 64, string_concat("$", obj_ShopSeedsEarth.price));
draw_text(x + 32 + 64*2, y + 64, string_concat("$", obj_ShopSeedsWater.price));
draw_text(x + 32 + 64*3, y + 64, string_concat("$", obj_ShopSeedsAir.price));
draw_text(x + 35 + 64*4, y + 64, string_concat("$", obj_ShopCrateSingle.price));
