
local require = require;
local table = table;
local table_insert, table_remove = table.insert, table.remove;

local render = require('orcus')('render');
local list = {};

render.add = function(instance)
	table_insert(list, instance);
end;

render.remove = function(instance)
	local n = #list;
	for i = 1, n do
		local v = list[i];
		if (v == instance) then
			table_remove(list, i);
			break;
		end;
	end;
end;

render.removeByIndex = function(i)
	table_remove(list, i);
end;

render.clear = function()
	list = {};
end;

render.draw = function() --this run every frame
	local n = #list;
	for i = n, 1, -1 do
		local v = list[i];
		if (v.visible and v.render) then
			v:render(i);
		end;
	end;
end;

return render;