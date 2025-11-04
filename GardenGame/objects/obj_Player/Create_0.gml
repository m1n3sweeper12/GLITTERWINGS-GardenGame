// Initilization:

x_to = 0;
y_to = 0;

x_snap = 0;
y_snap = 0;

farmland_tileset = layer_tilemap_get_id("Tile_Dirt");
farmland_tile_type = undefined;

function PlowFarmland() 
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