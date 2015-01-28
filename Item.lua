local _path = ...
local Events = require(_path .. "Events")
local Item = {}
local function DummyInterface ()

function Item.extend (base)
        
        local interface = VisualItemInterface or DummyInterface
        base = Events.extend(base);



        return base
end


return Events