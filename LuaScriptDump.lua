local IsExploit = true
local IsPaid = true
local IsDebug = false
local function StartDump(vars)
    local decode = table.concat
    if IsExploit == true and IsPaid == true and vars == "true" then
        setreadonly(table, false)
    elseif vars == false then
        print("False")
    end
    table.concat = function(brr)
        print(decode(brr))
        return decode(brr)
    end
    if IsExploit == true and IsPaid == true then
        local LogService = Game:GetService("LogService")
        local history = LogService:GetLogHistory()
        local concat = {}
        for i = 1, #history do
            concat[#concat + 1] = history[i].message
        end
        setclipboard(table.concat(concat, "\n"))
    elseif IsPaid == false then
        print("Non Exploit")
    end
end


StartDump(true)
