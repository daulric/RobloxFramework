--Put this In a local script under the text label

local MPS = game:GetService("MarketplaceService")
local player = game.Players.LocalPlayer
local text = script.Parent

if MPS:UserOwnsGamepassAsync(player.UserID, 2001001010) then --gamepass id here
    text.Visible = true
else
    text.Visible = false
end)