local DataStore = game:GetService("DataStoreService")
local ds = DataStoreService:GetDataStore("Cash")

game.Players.PlayerAdded:Connect(function(Player)

    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = Player

    local Cash = Instance.new("IntValue")
    Cash.Name = "Cash"
    Cash.Value = 100
    Cash.Parent = Player

    -- Data Store Function
    local data
	local success, errormessage = pcall(function()
		data = ds:GetAsync(player.UserId.."Souls")
	end)

	if success then
		souls.Value = data
	else
		print("There is an error")
		warn(errormessage)
	end

end)

game.Players.PlayerRemoving:Connect(function(Player)

	local success, errormessage = pcall(function()
		ds:SetAsync(Player.UserId.."Souls",player.leaderstats.Souls.Value)
	end)

	if success then
		print("Player Data has been saved!")
	else
		print("There is a error")
		warn(errormessage)
	end
end)