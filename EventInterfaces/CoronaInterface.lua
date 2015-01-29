local Interface = {
    name = "CoronaSDK",
    addEventListener = function(property, func, oject)
        return oject:addEventListener(property, func)
        end,	
    dispatchEvent = function(property, meta, oject)
    	local meta = meta
    	meta.name = property
    	meta.target = oject
        return oject:dispatchEvent(meta)
        end,
    removeEventListener = function(eventType, func, oject)
        return oject:removeEventListener(property, func)
        end
}

return Interface