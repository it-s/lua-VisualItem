local Changes = {}

-- create private index
local index = {}

-- create metatable
local mt = {
  __index = function (t,k)
    return index[t][k]   -- access the original table
  end,

  __newindex = function (t,k,v)
    local object = index[t]
    local eventName = Changes.getEventNameFor(k)
    local change = Changes.newChange(k, object[k] , v, object)
    object[k] = v   -- update original table
    object._EventsInterface.dispatchEvent(eventName, change, object)
  end
}

function Changes.newChange(property, old, new)
    return {
        target = target,
        property = property,
        time = os.time(),
        old = old,
        new = new
    }
end

function Changes.getEventNameFor(property)
    return "on" .. property .. "Changed"
end

function Changes.track(object, Interface)    
      object._EventsInterface = Interface
      local proxy = {}
      index[proxy] = object
      setmetatable(proxy, mt)
      return proxy
end

return Changes