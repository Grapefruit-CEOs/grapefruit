
local vector = require('type/vector');
local enemy = require('class/graphics/entity'):extend('enemy', nil, function(self)
	self.position = vector();
end);

enemy.render = function(self, i)
	love.graphics.print('Hello World!', 400, 300)
end;

return enemy;