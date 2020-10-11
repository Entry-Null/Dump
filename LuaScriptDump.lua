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
    if IsExploit == true and IsPaid == true and CopyWhenDone == true then
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
local function Debug(Types)
	if Types == true then
		print("Debug on")
		local L_3_ = game.CoreGui.RobloxGui.DeveloperConsole.Interior.WindowContainer.Window.Body.ClientLog.Output
		local L_4_ = {}
		for L_5_forvar0, L_6_forvar1 in pairs(L_3_:GetChildren()) do
			table.insert(L_4_, L_6_forvar1.Text)
		end
		setclipboard(table.concat(L_4_))
	end 
end
if IsDebug == true then
	Debug(true)
end
if CopyWhenDone == false then
    print("Did not copy, you need to set 'CopyWhenDone' to true.")
end

StartDump(true)
