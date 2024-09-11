--water team
repeat task.wait(0.25) until game:IsLoaded();
getgenv().Image = "rbxassetid://88808831705586"; -- image id
getgenv().ToggleUI = "E" -- toggle water hub 

task.spawn(function()
    if not getgenv().LoadedMobileUI == true then getgenv().LoadedMobileUI = true
        local OpenUI = Instance.new("ScreenGui");
        local ImageButton = Instance.new("ImageButton");
        local UICorner = Instance.new("UICorner");
        OpenUI.Name = "OpenUI";
        OpenUI.Parent = game:GetService("CoreGui");
        OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
        ImageButton.Parent = OpenUI;
        ImageButton.BackgroundColor3 = Color3.fromRGB(105,105,105);
        ImageButton.BackgroundTransparency = 0.8
        ImageButton.Position = UDim2.new(0.9,0,0.1,0);
        ImageButton.Size = UDim2.new(0, 37, 0, 39);
        ImageButton.Image = getgenv().Image;
        ImageButton.Draggable = true;
        ImageButton.Transparency = 1;
        UICorner.CornerRadius = UDim.new(0,200);
        UICorner.Parent = ImageButton;
        ImageButton.MouseButton1Click:Connect(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true,getgenv().ToggleUI,false,game);
        end)
    end
end)
loadstring(game:HttpGet(("https://raw.githubusercontent.com/REDzHUB/LibraryV2/main/redzLib")))()

MakeWindow({
  Hub = {
    Title = "Water Hub",
    Animation = "by : Cato"
  },
  Key = {
    KeySystem = false,
    Title = "Key System",
    Description = "",
    KeyLink = "water hub key system ",
    Keys = {"1234"},
    Notifi = {
      Notifications = true,
      CorrectKey = "Running the Script...",
      Incorrectkey = "The key is incorrect",
      CopyKeyLink = "Copied to Clipboard"
    }
  }
})

--[[
  Hub = {
    Title = "REDz HUB" -- <string> Titulo do seu script
    Animation = "by : redz9999" -- <string> Adiciona um texto na animacão do seu HUB
  },
  Key = {
    KeySystem = <bollean> Adiciona um sistema de chaves
    Title = "Key System" <string> Adiciona um titulo ao seu sistema de chaves
    Description = "" <string> Adiciona uma descrição ao seu sistema de chaves
    KeyLink = "" <string> Adicina o Link onde pega a chave do HUB
    Keys = {"1234"} <table> Adiciona as Chaves
    Notifi = {
      Notifications = true <boolean> Adicina notificações ao sistema de chaves
      CorrectKey = "Running the Script..." <string> notificação quando a chave estiver correta
      Incorrectkey = "The key is incorrect" <string> notificação quando a chave estiver incorreta
      CopyKeyLink = "Copied to Clipboard" <string> notificação quando o link da chave fir copiado
    }
  }
]]

AddKeybind(Main, {
  Name = "Keybind teste",
  KeyCode = "E",
  Default = false,
  Callback = function(Value)
    print("toggle button ")
  end
})

--[[
  Name = "Keybind teste" <string> nome do atalho do teclado
  KeyCode = "E" <string> tecla
  Default = false <boolean> valor padrã (isso fara funcionar como uma caixa de seleção)
  Callback = function(Value)
    -- função do atalho do teclado
  end
]]

MakeNotifi({
  Title = "what",
  Text = "Notificação teste",
  Time = 5
})

--[[
  Title = "REDz HUB" <string> titulo da notificação
  Text = "Notificação teste" <string> descrição da notificação
  Time = 5 <number> tempo da notificação
]]


local Main = MakeTab({Name = "Main"})

--[[
  Name = "Main" <string> Nome da guia
]]

local section = AddSection(Main, {"Teste"})
--[[
  {"Teste"} <table> nome da janela
]]

local Slider = AddSlider(Main, {
  Name = "Slider walkspeed ",
  MinValue = 10,
  MaxValue = 100,
  Default = 16,
  Increase = 1,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})

--[[
  Name = "Slider walkspeed" <string> nome do controle deslizante
  MinValue = 10 <number> valor minimo
  MaxValue = 100 <number> valor maximo
  Default = 25 <number> valor padrão
  Increase = 1 <number> valor que almenta de acordo com a posição do 
  Callback = function(Value)
    função do controle deslizante
  end
]]

local Slider = AddSlider(Main, {
  Name = "Slider jump ",
  MinValue = 10,
  MaxValue = 100,
  Default = 50,
  Increase = 1,
  Callback = function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
  end
})

--[[
  Name = "Slider walkspeed" <string> nome do controle deslizante
  MinValue = 10 <number> valor minimo
  MaxValue = 100 <number> valor maximo
  Default = 25 <number> valor padrão
  Increase = 1 <number> valor que almenta de acordo com a posição do 
  Callback = function(Value)
    função do controle deslizante
  end
]]
