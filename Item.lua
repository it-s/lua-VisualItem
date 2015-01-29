local _path = ...
local Events = require(_path .. "Changes")
local Item = {}

function Item.extend (base, Interface)
        
        local interface = VisualItemInterface or DummyInterface
        base = Events.extend(base);



        return base
end


return Events