if(!obj_GameManager.land_lock_popup) {
	sprite_index = spr_LandLockPopup;
	obj_GameManager.land_lock_popup = true;
} else {
	if(point_in_rectangle(mouse_x, mouse_y, x + 88, y + 229, x + 167, y + 260)) { // click yes
		if(obj_GameManager.money >=1000) {
			obj_GameManager.money -= 1000;
			obj_GameManager.land_lock_popup = false;
			show_message("Land purchased!");
			instance_destroy(self);
		} else {
			show_message("You don't have enough money!");
		}
	} else if(point_in_rectangle(mouse_x, mouse_y, x + 216, y + 229, x + 295, y + 260)) { // click no
		obj_GameManager.land_lock_popup = false;
		sprite_index = spr_LandLock;
	}
}