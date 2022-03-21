
package.path = package.path..'./libs/?.lua;./libs/?/init.lua';

local character = require('class/graphics/entity/character');
local render = require('render');

local your_character;
local w, a, s, d = false, false, false, false;

love.load = function()
	your_character = character(); --child
	render.add(your_character);
end;

love.keypressed = function(key, scancode, is_repeat)
	if (key == 'w') then
		w = true;
	elseif (key == 'a') then
		a = true;
	elseif (key == 's') then
		s = true;
	elseif (key == 'd') then
		d = true;
	end;
end;

love.keyreleased = function(key)
	if (key == 'w') then
		w = false;
	elseif (key == 'a') then
		a = false;
	elseif (key == 's') then
		s = false;
	elseif (key == 'd') then
		d = false;
	end;
end;

love.update = function(dt)
	if (w) then
		your_character.position.y = your_character.position.y - 250 * dt;
	end;
	if (a) then
		your_character.position.x = your_character.position.x - 250 * dt;
	end;
	if (s) then
		your_character.position.y = your_character.position.y + 250 * dt;
	end;
	if (d) then
		your_character.position.x = your_character.position.x + 250 * dt;
	end;
end;

love.draw = function() --runs every frame
	render.draw();
end;

