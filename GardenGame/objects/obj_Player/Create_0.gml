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
	seedsAir
}

current_item = equipped.none;

x_to = 0;
y_to = 0;

x_snap = 0;
y_snap = 0;

farmland_tileset = layer_tilemap_get_id("Tile_Dirt");
farmland_tile_type = undefined;

can_equip = true;

function PlowFarmland() 
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
			if (farmland_tile_type = 0)
			{
				tilemap_set_at_pixel(farmland_tileset, 9, x_snap, y_snap);
			}
			else
			{
				tilemap_set_at_pixel(farmland_tileset, 0, x_snap, y_snap);
			}
		}
	}
}

function DropItem()
{
	switch(current_item)
	{
		
		// CRATES
		
		case equipped.crateEmpty:
		instance_create_layer(x, y, "Instances", obj_EmptyCrate);
		current_item = equipped.none;
		break;

		case equipped.crateFire:
		instance_create_layer(x, y, "Instances", obj_CrateFire);
		current_item = equipped.none;
		break;

		case equipped.crateEarth:
		instance_create_layer(x, y, "Instances", obj_CrateEarth);
		current_item = equipped.none;
		break;
		
		case equipped.crateWater:
		instance_create_layer(x, y, "Instances", obj_CrateWater);
		current_item = equipped.none;
		break;

		case equipped.crateAir:
		instance_create_layer(x, y, "Instances", obj_CrateAir);
		current_item = equipped.none;
		break;
		
		// SEEDS
		
		case equipped.seedsFire:
		instance_create_layer(x, y, "Instances", obj_SeedsFire);
		current_item = equipped.none;
		break;
		
		case equipped.seedsEarth:
		instance_create_layer(x, y, "Instances", obj_SeedsEarth);
		current_item = equipped.none;
		break;

		case equipped.seedsWater:
		instance_create_layer(x, y, "Instances", obj_SeedsWater);
		current_item = equipped.none;
		break;

		case equipped.seedsAir:
		instance_create_layer(x, y, "Instances", obj_SeedsAir);
		current_item = equipped.none;
		break;
		
		// TOOLS
		
		case equipped.wateringcan:
		instance_create_layer(x, y, "Instances", obj_WateringCan);
		current_item = equipped.none;
		break;

		case equipped.shovel:
		instance_create_layer(x, y, "Instances", obj_Shovel);
		current_item = equipped.none;
		break;
		
		// If you have nothing equipped
		
		default:
		break;
	}

}

