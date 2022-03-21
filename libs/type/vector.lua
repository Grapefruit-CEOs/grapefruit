
local vector = require('orcus')('vector', {
	x = 0;
	y = 0;
}, function(self, x, y)
	self.x, self.y = x or 0, y or 0;
end);

return vector;