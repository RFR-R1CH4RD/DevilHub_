local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local LocalPlayer = Players.LocalPlayer

local function onChatted(message)
    if message:lower() == "!devilhub" then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/RFR-R1CH4RD/DevilHub-/main/Main.lua"))()
        wait(2)
        local args = {
         [1] = "Welcome To DevilHub!",
         [2] = "All"
         }
         game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
         wait()
         local args = {
         [1] = "Please note that this is an early version of the script, and there may be bugs or missing features. We are constantly working to improve the script, and your feedback is valuable to us.",
         [2] = "All"
         }
         game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
         wait()
         local args = {
         [1] = "If you encounter any issues or have suggestions for how we can make the script better, please let us know. ",
         [2] = "All"
         }
         game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
         local args = {
         [1] = "Thank you for using DevilHub",
         [2] = "All"
         }
         game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
         local args = {
         [1] = "Developed by RFR_R1CH4RD, Real Panda, Deity",
         [2] = "All"
         }
         game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
    end
end

LocalPlayer.Chatted:Connect(function(message)
    onChatted(message)
end)

StarterGui:SetCore("ChatMakeSystemMessage", {
    Text = "Type the following command to load the script: !DevilHub";
    Color = Color3.fromRGB(255, 0, 0);
    Font = Enum.Font.SourceSansBold;
    TextSize = 20
})
