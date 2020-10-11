local IsExploit = false
local IsPaid = false
local function LuaDumpScript(vars)
    local decode = table.concat
    if IsExploit == true and IsPaid == true and vars == true then
        setreadonly(table, false)
    elseif vars == false then
        print("You need to set it to true (Dump(true))")
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

LuaDumpScript(true)