local PlaceId = game["PlaceId\0"]
local LocalPlayer = game:GetService("Players").LocalPlayer
local TradeUiPhone = LocalPlayer:WaitForChild("PlayerGui").TradeGUI_Phone.Container.Trade.TheirOffer.Accepted
local TradeUi = LocalPlayer:WaitForChild("PlayerGui").TradeGUI.Container.Trade.TheirOffer.Accepted

function ToDoWhenVisible()
    if TradeUiPhone.Visible or TradeUi.Visible then
        game:GetService("ReplicatedStorage").Trade.AcceptTrade:FireServer(PlaceId * 2)
    end
end

function ConnectTradeWindowFunction()
    TradeUiPhone:GetPropertyChangedSignal("Visible"):Connect(ToDoWhenVisible)
    TradeUi:GetPropertyChangedSignal("Visible"):Connect(ToDoWhenVisible)
end
ConnectTradeWindowFunction()

LocalPlayer.CharacterAdded:Connect(function()
    repeat task.wait(.1) until LocalPlayer:FindFirstChild("PlayerGui")
    TradeUiPhone = LocalPlayer.PlayerGui.TradeGUI_Phone.Container.Trade.TheirOffer.Accepted
    TradeUi = LocalPlayer.PlayerGui.TradeGUI.Container.Trade.TheirOffer.Accepted
    task.wait()
    ConnectTradeWindowFunction()
end)
