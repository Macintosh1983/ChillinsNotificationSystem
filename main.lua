--chillin aka macs Notif system V.1

--START OF BACKGROUND UI ELEMENTS
local Background = Instance.new("Frame")
local Trim = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")

Background.Name = "Background"
Background.Parent = game.CoreGui
Background.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
Background.BorderSizePixel = 0
Background.Position = UDim2.new(0, -500, 0, 800)
Background.Size = UDim2.new(0, 364, 0, 106)

Trim.Name = "Trim"
Trim.Parent = Background
Trim.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
Trim.BorderSizePixel = 0
Trim.Size = UDim2.new(0, 364, 0, 27)

Title.Name = "title"
Title.Parent = Trim
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 364, 0, 27)
Title.Font = Enum.Font.Ubuntu
Title.Text = "ChillHub Notifcation"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Text.Name = "Text"
Text.Parent = Background
Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Text.BackgroundTransparency = 1.000
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0, 6, 0, 33)
Text.Size = UDim2.new(0, 349, 0, 64)
Text.Font = Enum.Font.Ubuntu
Text.Text = ""
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextSize = 30.000
Text.TextWrapped = true
--END OF BACKGROUND UI ELEMENTS

--START OF SCREEN GUI ELEMENTS (Most simple thing here)
local Notifcation = Instance.new("ScreenGui")

Notifcation.Name = "Notifcation"
Notifcation.Parent = game.CoreGui
Notifcation.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
--END OF SCREEN GUI ELEMENTS

--START OF SOUND STUFF
local sound = Instance.new("Sound",game.Lighting)
sound.SoundId = "http://www.roblox.com/asset/?id=6026984224"
sound.PlaybackSpeed = 1
sound.Volume = 5

--END OF SOUND STUFF

--FUNCTION FOR NOTIFICATIONS
function notify(title,text,time)
		text = text and text or 'Error: No text added!'
		time = time and time or 2
        title = title and title or 'Error: No text added!'
		local background = game.CoreGui.Background:Clone()
		background.Parent = game.CoreGui.Notifcation
        background.Trim.title.Text = title
		background.Text.Text = text
		background:TweenPosition(UDim2.new(0,10,0,800),'Out','Back',1)
		sound.Playing = true
			wait(time)
		background:TweenPosition(UDim2.new(0,-500,0,800),'In','Back',1)
		sound.Playing = false
		game:GetService('Debris'):AddItem(background,time)
end
--END
