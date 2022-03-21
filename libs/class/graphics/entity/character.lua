
local vector = require('type/vector');
local character = require('class/graphics/entity'):extend('character', nil, function(self)
	self.position = vector();
end);

character.render = function(self, i)
	love.graphics.setColor(255, 0, 0, 1);
	love.graphics.circle("fill", self.position.x, self.position.y, 100);
end;

return character;