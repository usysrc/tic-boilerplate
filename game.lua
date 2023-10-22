---@diagnostic disable: lowercase-global, undefined-global

-- utility functions
function all(a)
	if a == nil or #a == 0 then
		return function() end
	end
	local i, li = 1, nil
	return function()
		if a[i] == li then
			i = i + 1
		end
		while a[i] == nil and i <= #a do
			i = i + 1
		end
		li = a[i]
		return a[i]
	end
end

function add(a, v)
	if a == nil then
		return
	end
	a[#a + 1] = v
end

function del(a, dv)
	if a == nil then
		return
	end
	for i = 1, #a do
		if a[i] == dv then
			table.remove(a, i)
			return
		end
	end
end

-- game routines
local update = function() end

local draw = function() end

local TIC = function()
	update()
	draw()
end
