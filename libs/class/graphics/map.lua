
local tiles = require('tiles');
local map = require('class/graphics'):extend('map', {
	visible = true;
	z_index = 1;
}, function(self, map_data)
	self.data = map_data;
end);

map.render = function(self, i)
	local data = self.data;
	local map_y = #data;
	for y = 1, map_y do
		local row = data[y];
		local map_x = #row;
		for x = 1, map_x do
			local tile_id = row[x];
			local image_path = tiles[tile_id];
			
			love.graphics.draw(image_data, tiles.tile_x * x, tiles.tile_y * y);
		end;
	end;
end;

return map;