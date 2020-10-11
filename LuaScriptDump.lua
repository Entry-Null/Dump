local IsExploit = true
local IsPaid = true
local IsDebug = false
local CopyWhenDone = true
local function StartDump(vars)
    local decode = table.concat
    if IsExploit == true and IsPaid == true and vars == true then
        setreadonly(table, false)
    elseif vars == false then
        print("False")
    end
    table.concat = function(brr)
        print(decode(brr))
        return decode(brr)
    end
    if IsExploit == true and IsPaid == true and CopyWhenDone = true then
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
if IsDebug == true then
    local L_1_ = Game:GetService("LogService")
    local L_2_ = L_1_:GetLogHistory()
    local L_3_ = {}
    for L_4_forvar0 = 1, #L_2_ do
        L_3_[#L_3_ + 1] = L_2_[L_4_forvar0].message
    end
    setclipboard(table.concat(L_3_, "\n"))
end


StartDump(true)
