local _path = ...
local MEvents = require(_path .. "lua-Events.Events")
local Events = {}

function Events.extend (base)
        
        base = MEvents.extend(base);

        local ProperEventName(property)
        	return "on" .. property .. "Changed"
    	end

        function base:onChanged(property, func)
        	return self:addEventListener(ProperEventName(property), func)
        end

        function base:changed(changes)
        	return self:dispatchEvent(ProperEventName(changes.property), changes)
        end

        return base
end

function Events.Change (property, old, new, parent)
	return {
		property = property,
		old = old,
		new = new,
		time = os.time(),
		parent = parent
	}
end

return Events