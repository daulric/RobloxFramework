local openbutton = script.Parent
local openshop = game.StarterGui.ShopGui.Shop

openbutton.MouseButton1Click:Connect(function()
    openshop.Visible = true
end)