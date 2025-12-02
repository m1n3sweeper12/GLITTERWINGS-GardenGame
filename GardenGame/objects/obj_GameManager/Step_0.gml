total_current_storage = total_crates_of_fire + total_crates_of_earth + total_crates_of_water + total_crates_of_air;

if (mouse_check_button_pressed(mb_middle))
{
	if (shop_open = false)
	{
		shop_open = true;
		instance_create_layer(0, 0, "GUI", obj_ShopManager);
	}
	else
	{
		shop_open = false;
		instance_destroy(obj_ShopManager);
	}
}

