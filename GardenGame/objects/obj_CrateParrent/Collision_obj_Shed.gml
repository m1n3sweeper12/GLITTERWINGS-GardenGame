if (current_special_value = 100 and obj_GameManager.total_current_storage < obj_GameManager.total_max_storage)
{
	switch (item_name)
	{
		case equipped.crateEarth:
		obj_GameManager.total_crates_of_earth += 1;
		break;
	
		case equipped.crateFire:
		obj_GameManager.total_crates_of_fire += 1;
		break;

		case equipped.crateWater:
		obj_GameManager.total_crates_of_water += 1;
		break;
	
		case equipped.crateAir:
		obj_GameManager.total_crates_of_air += 1;
		break;

		case equipped.crateBasic:
		obj_GameManager.total_crates_of_basic += 1;
		break;

		default:
		break;
	}
	
	instance_destroy();
}