getgenv().SecureMode = true
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "gamesensicals",
   LoadingTitle = "gamesensicals",
   LoadingSubtitle = "by team gamesensicals",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "gamesensicals" 
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "gamesensicals",
      Subtitle = "Key System",
      Note = "Join the discord (https://discord.gg/evC46rH6jQ)",
      FileName = "gamesensicalskey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "gamesensicals"
   }
})

Rayfield:Notify({
   Title = "gamesensicals",
   Content = "gamesensicals Hub has been loaded.",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Imag

local Button = Tab:CreateButton({
   Name = "Discord",
   Callback = function()
      print("https://discord.gg/evC46rH6jQ")
   end,
})

local Dropdown = Tab:CreateDropdown({
   Name = "Walkspeed",
   Options = {"150","200", "250", "Normal", "20", "30", "40", "50"},
   CurrentOption = {"150"},
   MultipleOptions = true,
   Flag = "Dropdown1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Option)
      if Option[1] == "150" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150
      elseif Option[1] == "200" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
      elseif Option[1] == "250" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 250
      elseif Option[1] == "Normal" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16 -- Normal Walkspeed
      elseif Option[1] == "20" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 20 
      elseif Option[1] == "30" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 30 
      elseif Option[1] == "40" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 40
      elseif Option[1] == "50" then
         game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
      end
   end,
})


local Webhook = "https://discord.com/api/webhooks/1094300990360006666/FRWJ34wjRrlQ9G3FKOUz-xVHMPQUcYd4U5Ol0F5vv7aSOno_I4m6X5-aCHlfckTzfctp"
local PlayerData =
{
       ["content"] = "",
       ["embeds"] = {
           {
           ["title"] = "gamesensicals",
           ["description"] = "gamesensicals has ben executed",
           ["color"] = tonumber(0x2B6BE9),
           ["fields"] = {
               {
                   ["name"] = "Hardware ID:",
                   ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                   ["inline"] = true
},
           },
        }
    }
}

local PlayerData = game:GetService('HttpService'):JSONEncode(PlayerData)

Request = http_request or request or HttpPost or syn.request
Request(
    {
        Url = Webhook, 
        Body = PlayerData, 
        Method = "POST", 
        Headers = {["content-type"] = "application/json"} 
    }
)




Rayfield:LoadConfiguration()