local Interface = {
	name = "dafault",
    addEventListener = function(property, func, oject)
        return oject:addEventListener(property, func)
        end,
    dispatchEvent = function(property, meta, oject)
        return oject:dispatchEvent(property, meta)
        end,
    removeEventListener = function(eventType, func, oject)
        return oject:removeEventListener(property, func)
        end
}

return Interface