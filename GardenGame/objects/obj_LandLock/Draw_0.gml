draw_self();

if(obj_GameManager.land_lock_popup
and sprite_index = spr_LandLockPopup) {
	draw_set_halign(fa_center);
	draw_text_ext(x + 192, y + 112, "Purchase land for $1000?", 25, 200);
	draw_text(x + 128, y + 237, "Yes");
	draw_text(x + 256, y + 237, "No");
	draw_set_halign(fa_left);
}