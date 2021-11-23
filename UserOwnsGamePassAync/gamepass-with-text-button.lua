local button = script.Parent
local MPS = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer

if MPS:PlayerOwnsGamePassAsync(player.UserID, 1771783839) then --gamepass id here
    button.Visible = true
else
    button.Visible = false
end)