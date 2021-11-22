local closebutton = script.Parent
local openshop = game.StarterGui.ShopGui.Shop

closebutton.MouseButton1Click:Connect(function()
    openshop.Visible = false
end)