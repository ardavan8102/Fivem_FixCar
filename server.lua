---------------------------------------------------  αυтнσя : αя∂αναη81  -----------------------------------------------

-- Permission To Use This Script Will Grant To Steam Hexs & IPs Which Are Listed Below 
local allowed = {
    "steam:0000000",
    "127.0.0.1"
}

-- Check Steam Hex For Granted Permission
function checkAllowed(id)
    for k,v in pairs(allowed) do
        if id == v then
            return true
        end
    end 

    return false
end

-- Server Commands Setup
AddEventHandler('chatMessage', function(source, n, msg)
    local sHex = GetPlayerIdentifier(source)[1]
    local msg = string.lower(msg)
    if msg == "/tamir" then
        CancelEvent()
        if checkAllowed(sHex) then
            TriggerClientEvent('ard:tamir', source)
        else
            TriggerClientEvent('ard:canNot', source)
        end
    elseif msg == "/tamiz" then
        CancelEvent()
        if checkAllowed(sHex) then
            TriggerClientEvent('ard:tamiz', source)
        else
            TriggerClientEvent('ard:canNot', source)
        end
    end
end)


---------------------------------------------------  αυтнσя : αя∂αναη81  -----------------------------------------------