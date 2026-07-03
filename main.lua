local CoreGui = game:GetService("CoreGui")

--

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = CoreGui

--

local Theme = {
    BackgroundColor1 = Color3.fromRGB(15, 15, 15),
    BackgroundColor2 = Color3.fromRGB(9, 9, 9),
    AccentColor = Color3.fromRGB(20, 15, 85)
}

local Settings = {}

local function Object(ClassName, Properties)
    local obj = Instance.new(ClassName)

    for property, value in pairs(Properties) do
        obj[property] = value
    end

    return obj
end

function Settings:CreateWindow(Properties)
    local Title = Properties.Title or "Window"

    local FrameBackground1 = Object("Frame", {
        Parent = ScreenGui,
        AnchorPoint = Vector2.new(0.5, 0.5),
        Position = UDim2.fromScale(0.5, 0.5),
        Size = UDim2.fromOffset(650, 850),
        BackgroundColor3 = Theme.BackgroundColor1,
        BorderSizePixel = 0
    })

    local FrameBackground2 = Object("Frame", {
        Parent = FrameBackground1,
        Position = UDim2.fromOffset(2, 2),
        Size = UDim2.new(1, -4, 1, -4),
        BackgroundColor3 = Theme.BackgroundColor2,
        BorderSizePixel = 0
    })

    local TopFrameForFrame2 = Object("Frame", {
        Parent = FrameBackground2,
        Size = UDim2.new(1, 0, 0, 8),
        BackgroundColor3 = Theme.AccentColor,
        BorderSizePixel = 0
    })

    local UiGradient = Object("UIGradient", {
        Parent = TopFrameForFrame2,
        Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(200, 200, 200))
        }),
        Rotation = 90
    })
end

return Settings
