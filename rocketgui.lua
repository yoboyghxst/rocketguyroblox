--[[

     _                _ _       _   _             
    / \   _ __  _ __ (_) | __ _| |_(_) ___  _ __  
   / _ \ | '_ \| '_ \| | |/ _` | __| |/ _ \| '_ \ 
  / ___ \| | | | | | | | | (_| | |_| | (_) | | | |
 /_/   \_\_| |_|_| |_|_|_|\__,_|\__|_|\___/|_| |_|
                                                  

]]

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local TextLabel = Instance.new("TextLabel")
local UIStroke_2 = Instance.new("UIStroke")
local TextButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local UIStroke_3 = Instance.new("UIStroke")
local UIStroke_4 = Instance.new("UIStroke")
local ImageLabel = Instance.new("ImageLabel")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.352790266, 0, 0.367215037, 0)
Frame.Size = UDim2.new(0, 394, 0, 285)

UICorner.Parent = Frame

UIStroke.Thickness = 3
UIStroke.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0, 345, 0, 45)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Rocket guy"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

UIStroke_2.Thickness = 3
UIStroke_2.Parent = TextLabel

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(172, 172, 172)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.878172576, 0, 0, 0)
TextButton.Size = UDim2.new(0, 48, 0, 50)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "X"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

UICorner_2.Parent = TextButton

UIStroke_3.Thickness = 3
UIStroke_3.Parent = TextButton

UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_4.Thickness = 3
UIStroke_4.Parent = TextButton

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.0253807101, 0, 0.112280704, 0)
ImageLabel.Size = UDim2.new(0, 507, 0, 287)
ImageLabel.Image = "http://www.roblox.com/asset/?id=47757545"

-- Scripts:

local function EAJKSW_fake_script() 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(EAJKSW_fake_script)()
local function NYTXSK_fake_script()
	local script = Instance.new('LocalScript', Frame)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(NYTXSK_fake_script)()
