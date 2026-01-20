// Initilization:

enum equipped {
    none,
	wateringcan,
	shovel,
	crateEmpty,
	crateFire,
	crateEarth,
	crateWater,
	crateAir,
	seedsFire,
	seedsEarth,
	seedsWater,
	seedsAir,
	bugSpray
}


current_item = equipped.none;

x_to = 0;
y_to = 0;

x_snap = 0;
y_snap = 0;

farmland_tileset = layer_tilemap_get_id("Tile_Dirt");
farmland_tile_type = undefined;

can_equip = true;


// For storing special values: (Crates, Seeds, Watering Cans, the likes.)

current_special_value = 0;
bar_main_color = c_gray;
has_special = false;

function PlowFarmland() 
{
	
	if (x_snap = x and y_snap = y) // If the mouse clicks on the same tile the player is on...
	{
		if (!place_meeting(x, y, obj_PlantParrent) and !place_meeting(x, y, obj_LandLock))
		{
			// Detects what tile you are clicking on
			if(farmland_tileset > -1 and tilemap_get_at_pixel(farmland_tileset, x_snap, y_snap) > -1)
			{
				farmland_tile_type = tile_get_index(tilemap_get_at_pixel(farmland_tileset, x_snap, y_snap));
			}
	
			// Checks if the tile is empty or not.
			if (farmland_tile_type = 0)
			{
				tilemap_set_at_pixel(farmland_tileset, 9, x_snap, y_snap);
			}
			else if (farmland_tile_type = 1)
			{
				tilemap_set_at_pixel(farmland_tileset, 0, x_snap, y_snap);
			}
		}
	}
}

function PlantSeeds(plant_object)
{
	if (x_snap = x and y_snap = y) // If the mouse clicks on the same tile the player is on...
	{
		if (!place_meeting(x, y, obj_PlantParrent))
		{
			// Detects what tile you are clicking on
			if(farmland_tileset > -1 and tilemap_get_at_pixel(farmland_tileset, x_snap, y_snap) > -1)
			{
				farmland_tile_type = tile_get_index(tilemap_get_at_pixel(farmland_tileset, x_snap, y_snap));
			}
	
			// Checks if the tile is empty or not.
			if (farmland_tile_type != 0)
			{
				instance_create_layer(x, y, "Plants", plant_object);
				current_special_value -= 5;
				if (current_special_value <= 0) { current_item = equipped.none; has_special = false;}
			}
		}
	}
}

function DropItem()
{
	var dropped_object;
	var object_name;
	
	switch(current_item)
	{
		
		// CRATES
		
		case equipped.crateEmpty:
		object_name = obj_EmptyCrate;
		break;

		case equipped.crateFire:
		object_name = obj_CrateFire;
		break;

		case equipped.crateEarth:
		object_name = obj_CrateEarth;
		break;
		
		case equipped.crateWater:
		object_name = obj_CrateWater;
		break;

		case equipped.crateAir:
		object_name = obj_CrateAir;
		break;
		
		// SEEDS
		
		case equipped.seedsFire:
		object_name = obj_SeedsFire;
		break;
		
		case equipped.seedsEarth:
		object_name = obj_SeedsEarth;
		break;

		case equipped.seedsWater:
		object_name = obj_SeedsWater;
		break;

		case equipped.seedsAir:
		object_name = obj_SeedsAir;
		break;
		
		// TOOLS
		
		case equipped.wateringcan:
		object_name = obj_WateringCan;
		break;

		case equipped.shovel:
		object_name = obj_Shovel;
		break;
		
		// If you have nothing equipped
		
		default:
		break;
	}
	
	if (current_item != equipped.none)
	{
		dropped_object = instance_create_layer(x, y, "Instances", object_name);
		dropped_object.depth = -dropped_object.bbox_bottom;
		with (dropped_object)
		{
			dropped_object.current_special_value = obj_Player.current_special_value;
		}
		has_special = false;
		current_item = equipped.none;
	}

}

