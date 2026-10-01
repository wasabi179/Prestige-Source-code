--!nocheck
--[[
	Prestige Remake UI  (v10)
	Place in: StarterPlayer > StarterPlayerScripts (LocalScript)

	Menu key : RightAlt (rebindable in Settings)
	Drag     : hold the sidebar header or the top bar
	Red dot  : hides the menu

	SYSTEMS
		Theme system   - presets + live color pickers, everything recolors instantly
		Flag system    - give any element a Flag = "Name" and it is saved/loaded automatically
		Config system  - save / load / delete / autoload / export / import (JSON)
		Notifications  - Window:Notify(title, text, duration)
		Menu settings  - keybind, UI scale, background visibility
		Legit          - Main (left): camlock, one card. Camera or Mouse method, smoothness / speed / strength,
		                 hit part, team / wall / death check, gradient FOV circle
		Unlegit        - Main (right): silent aim (cursor never moves), keybind, hit chance, gradient FOV circle
		ESP system     - World > Main Esp (box / name tag / skeleton), reachable through Window.Esp
		                 Auto-refreshes: death / respawn rebuilds the ESP on the new character,
		                 leaving removes it, joining / rejoining creates a fresh one.
		Visuals        - World > Hit Charms, Tung Tung, World Visuals (FOV / lighting / fog),
		                 Skybox (built-in presets), Weather (water / snow / xmas / custom + tint),
		                 World Texture (Minecraft block palette / custom image)

	API
		local tab  = Window:AddTab("Name", optionalIconAssetId)
		local card = tab:AddCard(1 or 2, "Optional Title")
		card:AddToggle({ Name, Default, Flag, Callback, OnRightClick, Colors, ColorFlags, OnColor })
			-- Colors = { c1, c2, c3 } puts side-by-side swatches on the toggle row; OnColor(index, color)
		card:AddSlider({ Name, Min, Max, Default, Step, Flag, Callback })
		card:AddKeybind({ Name, Default, Flag, Callback, OnChange, NoClear })
		card:AddDropdown({ Name, Options, Default, Flag, Callback })
		card:AddColorPicker({ Name, Default, Flag, Callback })
		card:AddColorRow({ Name, Colors = {..}, Flags = {..}, Callback(index, color) })  -- swatches side by side
		card:AddInput({ Name, Default, Placeholder, Flag, Callback })
		card:AddButton({ Name, Callback })
		card:AddButtons({ {Name, Callback}, {Name, Callback}, ... })
		card:AddLabel(text)
		card:AddSettings()  -- hidden panel that takes the same components; panel:Toggle() shows/hides it
		Window:GetFlag("Name")
]]

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")
local ContentProvider = game:GetService("ContentProvider")
local MarketplaceService = game:GetService("MarketplaceService")
local InsertService = game:GetService("InsertService")

local LocalPlayer = Players.LocalPlayer

-- Re-run cleanup: if the script is executed again, the previous copy (and its ESP loop) is removed first,
-- so nothing gets duplicated.
local Env = (getgenv and getgenv()) or shared
if Env.PrestigeRemake then
	pcall(function() Env.PrestigeRemake:Destroy() end)
end
do
	local pg = LocalPlayer:WaitForChild("PlayerGui")
	for _, name in { "PrestigeRemakeUI", "PrestigeESP", "PrestigeFOV" } do
		local old = pg:FindFirstChild(name)
		if old then old:Destroy() end
	end
end

--// CONFIG ---------------------------------------------------------------
local Config = {
	Title = "Prestige Remake",
	Subtitle = "Dev - Bandoboyz",
	LogoId = "80066181348863",
	BackgroundId = "76088550014864",
	-- Optional: a ready-to-use content string skips auto-resolving, e.g. "rbxassetid://IMAGE_ID"
	LogoImage = "",
	BackgroundImage = "",
	ToggleKey = Enum.KeyCode.RightAlt,
	Size = UDim2.fromOffset(940, 580),
	SidebarWidth = 258,
	FolderName = "PrestigeRemake",
	DefaultPreset = "Midnight",
}

--// THEME DATA -----------------------------------------------------------
local function rgb(r, g, b)
	return Color3.fromRGB(r, g, b)
end

local Presets = {
	Midnight = {
		Background = rgb(13, 13, 15), Sidebar = rgb(16, 16, 19), Card = rgb(26, 26, 30),
		Element = rgb(40, 40, 46), Stroke = rgb(60, 60, 68), Text = rgb(235, 235, 240),
		SubText = rgb(140, 140, 150), Accent = rgb(228, 228, 234), OnAccent = rgb(13, 13, 15),
	},
	Ocean = {
		Background = rgb(10, 14, 22), Sidebar = rgb(13, 18, 28), Card = rgb(20, 27, 40),
		Element = rgb(32, 42, 60), Stroke = rgb(52, 68, 96), Text = rgb(232, 238, 248),
		SubText = rgb(128, 142, 166), Accent = rgb(86, 156, 255), OnAccent = rgb(255, 255, 255),
	},
	Crimson = {
		Background = rgb(16, 11, 12), Sidebar = rgb(20, 14, 15), Card = rgb(30, 20, 22),
		Element = rgb(46, 32, 35), Stroke = rgb(74, 52, 56), Text = rgb(245, 234, 235),
		SubText = rgb(156, 132, 135), Accent = rgb(255, 82, 96), OnAccent = rgb(255, 255, 255),
	},
	Emerald = {
		Background = rgb(10, 15, 13), Sidebar = rgb(13, 19, 16), Card = rgb(20, 29, 24),
		Element = rgb(30, 44, 36), Stroke = rgb(52, 76, 62), Text = rgb(232, 246, 238),
		SubText = rgb(126, 150, 136), Accent = rgb(72, 220, 140), OnAccent = rgb(10, 15, 13),
	},
	Amethyst = {
		Background = rgb(13, 11, 18), Sidebar = rgb(17, 14, 23), Card = rgb(26, 21, 36),
		Element = rgb(40, 33, 56), Stroke = rgb(66, 56, 90), Text = rgb(238, 232, 248),
		SubText = rgb(146, 136, 168), Accent = rgb(168, 120, 255), OnAccent = rgb(255, 255, 255),
	},
	Light = {
		Background = rgb(240, 240, 244), Sidebar = rgb(232, 232, 238), Card = rgb(250, 250, 252),
		Element = rgb(222, 222, 230), Stroke = rgb(200, 200, 210), Text = rgb(24, 24, 30),
		SubText = rgb(110, 110, 124), Accent = rgb(30, 30, 36), OnAccent = rgb(255, 255, 255),
	},
}
local PresetOrder = { "Midnight", "Ocean", "Crimson", "Emerald", "Amethyst", "Light" }
local ThemeRoles = { "Background", "Sidebar", "Card", "Element", "Stroke", "Text", "SubText", "Accent", "OnAccent" }

local Theme = {}
for role, color in Presets[Config.DefaultPreset] do
	Theme[role] = color
end
local ThemeState = { Preset = Config.DefaultPreset }
local ThemeUI = { Pickers = {}, Preset = nil }

--// UTIL -----------------------------------------------------------------
local Connections = {}
local Themed, ThemeHooks = {}, {}
local LayoutCounter = 0

local function NextOrder()
	LayoutCounter += 1
	return LayoutCounter
end

local function Connect(signal, fn)
	local c = signal:Connect(fn)
	table.insert(Connections, c)
	return c
end

local function T(role)
	return { __role = role }
end

local function New(className, props, children)
	local inst = Instance.new(className)
	for k, v in props do
		if k ~= "Parent" then
			if type(v) == "table" and v.__role then
				inst[k] = Theme[v.__role]
				table.insert(Themed, { inst, k, v.__role })
			else
				inst[k] = v
			end
		end
	end
	if children then
		for _, child in children do
			child.Parent = inst
		end
	end
	inst.Parent = props.Parent
	return inst
end

local function Tween(inst, duration, goal, style, direction)
	local tween = TweenService:Create(
		inst,
		TweenInfo.new(duration, style or Enum.EasingStyle.Quint, direction or Enum.EasingDirection.Out),
		goal
	)
	tween:Play()
	return tween
end

local function OnTheme(fn)
	table.insert(ThemeHooks, fn)
end

local function ApplyTheme(animate)
	for i = #Themed, 1, -1 do
		local e = Themed[i]
		local inst = e[1]
		if inst.Parent == nil then
			table.remove(Themed, i)
		elseif animate then
			Tween(inst, 0.3, { [e[2]] = Theme[e[3]] }, Enum.EasingStyle.Sine)
		else
			inst[e[2]] = Theme[e[3]]
		end
	end
	for _, fn in ThemeHooks do
		pcall(fn)
	end
end

local function Corner(radius)
	return New("UICorner", { CornerRadius = UDim.new(0, radius) })
end

local function Round()
	return New("UICorner", { CornerRadius = UDim.new(1, 0) })
end

local function Stroke(role, transparency)
	return New("UIStroke", {
		Color = T(role or "Stroke"),
		Transparency = transparency or 0.5,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	})
end

local function IsPress(input)
	return input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch
end

local function IsMove(input)
	return input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch
end

-- Images ---------------------------------------------------------------
local ASSET_TYPE_IMAGE, ASSET_TYPE_DECAL = 1, 13
local ImageIssues = {}

-- Works out how an asset id should be loaded, and says why when it can't be.
local function ResolveImageContent(id)
	local numeric = tonumber(id)
	local ok, info = pcall(function()
		return MarketplaceService:GetProductInfo(numeric, Enum.InfoType.Asset)
	end)
	if not ok or type(info) ~= "table" then
		return nil, ("asset %s is unavailable (private, pending/failed moderation, or deleted)"):format(id)
	end

	local candidates = {}
	if info.AssetTypeId == ASSET_TYPE_IMAGE then
		table.insert(candidates, "rbxassetid://" .. id)
	elseif info.AssetTypeId == ASSET_TYPE_DECAL then
		-- a Decal id is not an Image id: pull the real image id out of the decal when possible
		local loaded, model = pcall(function()
			return InsertService:LoadAsset(numeric)
		end)
		if loaded and model then
			local decal = model:FindFirstChildWhichIsA("Decal", true)
			if decal and decal.Texture ~= "" then
				table.insert(candidates, decal.Texture)
			end
			model:Destroy()
		end
		table.insert(candidates, ("rbxthumb://type=Asset&id=%s&w=420&h=420"):format(id))
	else
		return nil, ("asset %s is not an image (asset type %s)"):format(id, tostring(info.AssetTypeId))
	end
	return candidates
end

local function LoadImage(label, id, override, onResult)
	task.spawn(function()
		local candidates, reason
		if override and override ~= "" then
			candidates = { override }
		else
			candidates, reason = ResolveImageContent(id)
		end

		if candidates then
			for _, content in candidates do
				label.Image = content
				pcall(function()
					ContentProvider:PreloadAsync({ label })
				end)
				if label.IsLoaded then
					onResult(true)
					return
				end
			end
			reason = "image failed to load"
		end

		label.Image = ""
		table.insert(ImageIssues, reason)
		warn("[PrestigeUI] " .. reason .. ". Use an approved Image asset your account/group owns.")
		onResult(false)
	end)
end

local function MakeDraggable(handle, target)
	local dragging, dragStart, startPos = false, nil, nil

	Connect(handle.InputBegan, function(input)
		if IsPress(input) then
			dragging = true
			dragStart = input.Position
			startPos = target.Position
		end
	end)
	Connect(UserInputService.InputChanged, function(input)
		if dragging and IsMove(input) then
			local delta = input.Position - dragStart
			Tween(target, 0.08, {
				Position = UDim2.new(
					startPos.X.Scale, startPos.X.Offset + delta.X,
					startPos.Y.Scale, startPos.Y.Offset + delta.Y
				),
			}, Enum.EasingStyle.Sine)
		end
	end)
	Connect(UserInputService.InputEnded, function(input)
		if IsPress(input) then
			dragging = false
		end
	end)
end

--// STATE ----------------------------------------------------------------
local Window = { Tabs = {}, Active = nil, NotificationsEnabled = true }
local Registry = {}   -- flag -> { Kind, Get, Set }
local Keybinds = {}   -- { Key, Callback }
local ListeningHandler, ListeningCancel = nil, nil
local UserScale = 1
local isOpen = false

local function Register(flag, kind, get, set)
	if flag then
		Registry[flag] = { Kind = kind, Get = get, Set = set }
	end
end

function Window:GetFlag(flag)
	local entry = Registry[flag]
	return entry and entry.Get() or nil
end

--// ROOT -----------------------------------------------------------------
local Gui = New("ScreenGui", {
	Name = "PrestigeRemakeUI",
	ResetOnSpawn = false,
	IgnoreGuiInset = true,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	DisplayOrder = 100,
	Parent = LocalPlayer:WaitForChild("PlayerGui"),
})

local Main = New("CanvasGroup", {
	Name = "Main",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = Config.Size,
	BackgroundColor3 = T("Background"),
	GroupTransparency = 1,
	Visible = false,
	Active = true,
	Parent = Gui,
}, { Corner(12), Stroke("Stroke", 0.35) })

local function ComputeAutoScale()
	local camera = workspace.CurrentCamera
	if not camera then
		return 1
	end
	local vp = camera.ViewportSize
	return math.min(1, (vp.X - 40) / Config.Size.X.Offset, (vp.Y - 40) / Config.Size.Y.Offset)
end
local AutoScale = ComputeAutoScale()

local Scale = New("UIScale", { Scale = 0.92 * AutoScale, Parent = Main })

do
	local camera = workspace.CurrentCamera
	if camera then
		Connect(camera:GetPropertyChangedSignal("ViewportSize"), function()
			AutoScale = ComputeAutoScale()
			if isOpen then
				Tween(Scale, 0.2, { Scale = UserScale * AutoScale })
			end
		end)
	end
end

-- Rotation is applied around the center. Since 90 degrees swaps width/height, the label's
-- size is swapped too so the rotated image still fills the whole window.
-- If it ends up facing the wrong way, change BG_ROTATION to 90 (or 180 to flip it upside down).
local BG_ROTATION = -90
local BgImage = New("ImageLabel", {
	Name = "Background",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(Config.Size.Y.Offset, Config.Size.X.Offset),
	Rotation = BG_ROTATION,
	BackgroundTransparency = 1,
	ImageTransparency = 0.8,
	ScaleType = Enum.ScaleType.Crop,
	ZIndex = 1,
	Parent = Main,
})
local BgFallback = New("Frame", {
	Name = "BackgroundFallback",
	Size = UDim2.fromScale(1, 1),
	BackgroundColor3 = T("Accent"),
	BorderSizePixel = 0,
	Visible = false,
	ZIndex = 1,
	Parent = Main,
}, {
	New("UIGradient", {
		Rotation = 35,
		Transparency = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0.86), NumberSequenceKeypoint.new(1, 1) }),
	}),
})

LoadImage(BgImage, Config.BackgroundId, Config.BackgroundImage, function(ok)
	if not ok then
		BgFallback.Visible = true
	end
end)

--// SIDEBAR --------------------------------------------------------------
local Sidebar = New("Frame", {
	Name = "Sidebar",
	Size = UDim2.new(0, Config.SidebarWidth, 1, 0),
	BackgroundColor3 = T("Sidebar"),
	BackgroundTransparency = 0.25,
	BorderSizePixel = 0,
	ZIndex = 2,
	Parent = Main,
})

New("Frame", {
	Size = UDim2.new(0, 1, 1, 0),
	Position = UDim2.fromScale(1, 0),
	AnchorPoint = Vector2.new(1, 0),
	BackgroundColor3 = T("Stroke"),
	BackgroundTransparency = 0.5,
	BorderSizePixel = 0,
	ZIndex = 3,
	Parent = Sidebar,
})

local SidebarHeader = New("Frame", {
	Name = "Header",
	Size = UDim2.new(1, 0, 0, 100),
	BackgroundTransparency = 1,
	ZIndex = 3,
	Parent = Sidebar,
})

local dotColors = { rgb(255, 95, 86), rgb(255, 189, 46), rgb(39, 201, 63) }
local dots = {}
for i, color in dotColors do
	dots[i] = New("TextButton", {
		Size = UDim2.fromOffset(12, 12),
		Position = UDim2.fromOffset(14 + (i - 1) * 20, 12),
		BackgroundColor3 = color,
		Text = "",
		AutoButtonColor = false,
		ZIndex = 4,
		Parent = SidebarHeader,
	}, { Round() })
end

local Logo = New("ImageLabel", {
	Name = "Logo",
	Size = UDim2.fromOffset(38, 38),
	Position = UDim2.fromOffset(20, 40),
	BackgroundColor3 = T("Accent"),
	BackgroundTransparency = 1,
	ScaleType = Enum.ScaleType.Fit,
	ZIndex = 4,
	Parent = SidebarHeader,
}, {
	Corner(8),
	New("TextLabel", { -- monogram, only shown if the logo image can't load
		Name = "Monogram",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Text = string.upper(Config.Title:sub(1, 1)),
		Font = Enum.Font.GothamBold,
		TextSize = 20,
		TextColor3 = T("OnAccent"),
		Visible = false,
		ZIndex = 5,
	}),
})

LoadImage(Logo, Config.LogoId, Config.LogoImage, function(ok)
	if not ok then
		Logo.BackgroundTransparency = 0
		Logo.Monogram.Visible = true
	end
end)

New("TextLabel", {
	Size = UDim2.new(1, -78, 0, 20),
	Position = UDim2.fromOffset(68, 40),
	BackgroundTransparency = 1,
	Text = Config.Title,
	Font = Enum.Font.GothamBold,
	TextSize = 16,
	TextColor3 = T("Text"),
	TextXAlignment = Enum.TextXAlignment.Left,
	TextTruncate = Enum.TextTruncate.AtEnd,
	ZIndex = 4,
	Parent = SidebarHeader,
})

New("TextLabel", {
	Size = UDim2.new(1, -78, 0, 14),
	Position = UDim2.fromOffset(68, 62),
	BackgroundTransparency = 1,
	Text = Config.Subtitle,
	Font = Enum.Font.Gotham,
	TextSize = 12,
	TextColor3 = T("SubText"),
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = 4,
	Parent = SidebarHeader,
})

New("Frame", {
	Size = UDim2.new(1, -40, 0, 1),
	Position = UDim2.fromOffset(20, 96),
	BackgroundColor3 = T("Stroke"),
	BackgroundTransparency = 0.5,
	BorderSizePixel = 0,
	ZIndex = 3,
	Parent = Sidebar,
})

local TabList = New("Frame", {
	Name = "Tabs",
	Position = UDim2.fromOffset(20, 112),
	Size = UDim2.new(1, -40, 1, -220),
	BackgroundTransparency = 1,
	ZIndex = 3,
	Parent = Sidebar,
}, { New("UIListLayout", { Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }) })

-- profile
New("Frame", {
	Size = UDim2.new(1, -40, 0, 1),
	Position = UDim2.new(0, 20, 1, -88),
	BackgroundColor3 = T("Stroke"),
	BackgroundTransparency = 0.5,
	BorderSizePixel = 0,
	ZIndex = 3,
	Parent = Sidebar,
})

local Profile = New("Frame", {
	Name = "Profile",
	Size = UDim2.new(1, -40, 0, 56),
	Position = UDim2.new(0, 20, 1, -76),
	BackgroundTransparency = 1,
	ZIndex = 3,
	Parent = Sidebar,
})

local Avatar = New("ImageLabel", {
	Size = UDim2.fromOffset(40, 40),
	Position = UDim2.fromScale(0, 0.5),
	AnchorPoint = Vector2.new(0, 0.5),
	BackgroundColor3 = T("Element"),
	Image = "",
	ZIndex = 4,
	Parent = Profile,
}, { Round(), Stroke("Stroke", 0.4) })

New("TextLabel", {
	Size = UDim2.new(1, -52, 0, 16),
	Position = UDim2.new(0, 52, 0.5, -17),
	BackgroundTransparency = 1,
	Text = LocalPlayer.DisplayName,
	Font = Enum.Font.GothamBold,
	TextSize = 14,
	TextColor3 = T("Text"),
	TextXAlignment = Enum.TextXAlignment.Left,
	TextTruncate = Enum.TextTruncate.AtEnd,
	ZIndex = 4,
	Parent = Profile,
})

New("TextLabel", {
	Size = UDim2.new(1, -52, 0, 14),
	Position = UDim2.new(0, 52, 0.5, 2),
	BackgroundTransparency = 1,
	Text = "@" .. LocalPlayer.Name,
	Font = Enum.Font.Gotham,
	TextSize = 12,
	TextColor3 = T("SubText"),
	TextXAlignment = Enum.TextXAlignment.Left,
	TextTruncate = Enum.TextTruncate.AtEnd,
	ZIndex = 4,
	Parent = Profile,
})

task.spawn(function()
	local ok, content = pcall(function()
		return Players:GetUserThumbnailAsync(
			LocalPlayer.UserId,
			Enum.ThumbnailType.HeadShot,
			Enum.ThumbnailSize.Size100x100
		)
	end)
	if ok then
		Avatar.Image = content
	end
end)

--// CONTENT AREA ---------------------------------------------------------
local Content = New("Frame", {
	Name = "Content",
	Position = UDim2.fromOffset(Config.SidebarWidth, 0),
	Size = UDim2.new(1, -Config.SidebarWidth, 1, 0),
	BackgroundTransparency = 1,
	ZIndex = 2,
	Parent = Main,
})

local TopBar = New("Frame", {
	Name = "TopBar",
	Size = UDim2.new(1, 0, 0, 64),
	BackgroundTransparency = 1,
	ZIndex = 3,
	Parent = Content,
})

local PageTitle = New("TextLabel", {
	Size = UDim2.new(1, -80, 1, 0),
	Position = UDim2.fromOffset(22, 0),
	BackgroundTransparency = 1,
	Text = "",
	Font = Enum.Font.GothamMedium,
	TextSize = 15,
	TextColor3 = T("Text"),
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = 4,
	Parent = TopBar,
})

local Grip = New("Frame", {
	Size = UDim2.fromOffset(15, 21),
	Position = UDim2.new(1, -22, 0.5, 0),
	AnchorPoint = Vector2.new(1, 0.5),
	BackgroundTransparency = 1,
	ZIndex = 4,
	Parent = TopBar,
})
for row = 0, 2 do
	for col = 0, 1 do
		New("Frame", {
			Size = UDim2.fromOffset(3, 3),
			Position = UDim2.fromOffset(col * 9, row * 9),
			BackgroundColor3 = T("SubText"),
			BorderSizePixel = 0,
			ZIndex = 4,
			Parent = Grip,
		}, { Round() })
	end
end

New("Frame", {
	Size = UDim2.new(1, 0, 0, 1),
	Position = UDim2.fromOffset(0, 64),
	BackgroundColor3 = T("Stroke"),
	BackgroundTransparency = 0.5,
	BorderSizePixel = 0,
	ZIndex = 3,
	Parent = Content,
})

local Pages = New("Frame", {
	Name = "Pages",
	Position = UDim2.fromOffset(0, 65),
	Size = UDim2.new(1, 0, 1, -65),
	BackgroundTransparency = 1,
	ClipsDescendants = true,
	ZIndex = 3,
	Parent = Content,
})

MakeDraggable(SidebarHeader, Main)
MakeDraggable(TopBar, Main)

--// NOTIFICATIONS --------------------------------------------------------
local NotifyHolder = New("Frame", {
	Name = "Notifications",
	AnchorPoint = Vector2.new(1, 1),
	Position = UDim2.new(1, -20, 1, -20),
	Size = UDim2.new(0, 300, 1, -40),
	BackgroundTransparency = 1,
	ZIndex = 50,
	Parent = Gui,
}, {
	New("UIListLayout", {
		Padding = UDim.new(0, 8),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	}),
})

function Window:Notify(title, text, duration, force)
	if not (self.NotificationsEnabled or force) then
		return
	end

	local toast = New("CanvasGroup", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = T("Card"),
		GroupTransparency = 1,
		LayoutOrder = NextOrder(),
		ZIndex = 50,
		Parent = NotifyHolder,
	}, { Corner(10), Stroke("Stroke", 0.4) })

	New("Frame", {
		Size = UDim2.new(0, 3, 1, 0),
		BackgroundColor3 = T("Accent"),
		BorderSizePixel = 0,
		ZIndex = 51,
		Parent = toast,
	})

	local body = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		ZIndex = 51,
		Parent = toast,
	}, {
		New("UIPadding", {
			PaddingLeft = UDim.new(0, 16), PaddingRight = UDim.new(0, 12),
			PaddingTop = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10),
		}),
		New("UIListLayout", { Padding = UDim.new(0, 2), SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	New("TextLabel", {
		Size = UDim2.new(1, 0, 0, 16),
		BackgroundTransparency = 1,
		Text = title,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextColor3 = T("Text"),
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = 1,
		ZIndex = 52,
		Parent = body,
	})

	New("TextLabel", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Text = text or "",
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = T("SubText"),
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		LayoutOrder = 2,
		ZIndex = 52,
		Parent = body,
	})

	Tween(toast, 0.3, { GroupTransparency = 0 }, Enum.EasingStyle.Quad)
	task.delay(duration or 3, function()
		if toast.Parent then
			local out = Tween(toast, 0.3, { GroupTransparency = 1 }, Enum.EasingStyle.Quad)
			out.Completed:Once(function()
				toast:Destroy()
			end)
		end
	end)
end

--// COMPONENTS -----------------------------------------------------------
local Card = {}
Card.__index = Card

local function NewCard(column, title)
	local frame = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = T("Card"),
		BackgroundTransparency = 0.3,
		LayoutOrder = NextOrder(),
		ZIndex = 4,
		Parent = column,
	}, {
		Corner(10),
		Stroke("Stroke", 0.55),
		New("UIPadding", {
			PaddingTop = UDim.new(0, 14), PaddingBottom = UDim.new(0, 14),
			PaddingLeft = UDim.new(0, 16), PaddingRight = UDim.new(0, 16),
		}),
		New("UIListLayout", { Padding = UDim.new(0, 10), SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	if title then
		New("TextLabel", {
			Size = UDim2.new(1, 0, 0, 16),
			BackgroundTransparency = 1,
			Text = string.upper(title),
			Font = Enum.Font.GothamBold,
			TextSize = 11,
			TextColor3 = T("SubText"),
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = NextOrder(),
			ZIndex = 5,
			Parent = frame,
		})
	end
	return setmetatable({ Frame = frame }, Card)
end

local function RowLabel(row, text, size)
	return New("TextLabel", {
		Size = size or UDim2.new(0.5, 0, 1, 0),
		BackgroundTransparency = 1,
		Text = text,
		Font = Enum.Font.GothamMedium,
		TextSize = 13,
		TextColor3 = T("Text"),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 5,
		Parent = row,
	})
end

local function NewRow(card, height)
	return New("Frame", {
		Size = UDim2.new(1, 0, 0, height or 30),
		BackgroundTransparency = 1,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = card.Frame,
	})
end

local function NewBox(props)
	local base = {
		BackgroundColor3 = T("Element"),
		BackgroundTransparency = 0.2,
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextColor3 = T("Text"),
		PlaceholderColor3 = T("SubText"),
		ClearTextOnFocus = false,
		ClipsDescendants = true,
		ZIndex = 6,
	}
	for k, v in props do
		base[k] = v
	end
	return New("TextBox", base, {
		Corner(6),
		Stroke("Stroke", 0.5),
		New("UIPadding", { PaddingLeft = UDim.new(0, 8), PaddingRight = UDim.new(0, 8) }),
	})
end

local function MakeButton(parent, opts, size)
	local callback = opts.Callback or function() end
	local btn = New("TextButton", {
		Size = size,
		BackgroundColor3 = T("Element"),
		BackgroundTransparency = 0.25,
		Text = opts.Name,
		Font = Enum.Font.GothamMedium,
		TextSize = 13,
		TextColor3 = T("Text"),
		AutoButtonColor = false,
		ZIndex = 5,
		Parent = parent,
	}, { Corner(8), Stroke("Stroke", 0.5) })

	Connect(btn.MouseEnter, function() Tween(btn, 0.15, { BackgroundTransparency = 0.05 }) end)
	Connect(btn.MouseLeave, function() Tween(btn, 0.15, { BackgroundTransparency = 0.25 }) end)
	Connect(btn.MouseButton1Down, function() Tween(btn, 0.08, { BackgroundTransparency = 0.55 }) end)
	Connect(btn.MouseButton1Up, function() Tween(btn, 0.15, { BackgroundTransparency = 0.05 }) end)
	Connect(btn.MouseButton1Click, function() task.spawn(callback) end)
	return btn
end

-- Color picker internals ------------------------------------------------
-- Builds the saturation/value square, hue bar and hex box inside `panel`.
-- onChange(color, silent) runs on every change (silent = set from code, so don't fire user callbacks).
local function BuildColorPanel(panel, initial, onChange)
	local h, s, v = initial:ToHSV()
	h = math.min(h, 0.999)

	-- saturation / value square
	local sv = New("Frame", {
		Size = UDim2.new(1, 0, 0, 110),
		Position = UDim2.fromOffset(0, 8),
		BackgroundColor3 = Color3.fromHSV(h, 1, 1),
		ZIndex = 6,
		Parent = panel,
	}, { Corner(6) })

	New("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(1, 1, 1),
		ZIndex = 7,
		Parent = sv,
	}, {
		Corner(6),
		New("UIGradient", { Transparency = NumberSequence.new(0, 1) }),
	})

	New("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundColor3 = Color3.new(0, 0, 0),
		ZIndex = 8,
		Parent = sv,
	}, {
		Corner(6),
		New("UIGradient", { Rotation = 90, Transparency = NumberSequence.new(1, 0) }),
	})

	local svKnob = New("Frame", {
		Size = UDim2.fromOffset(10, 10),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.new(1, 1, 1),
		ZIndex = 10,
		Parent = sv,
	}, { Round(), New("UIStroke", { Color = Color3.new(0, 0, 0), Thickness = 1.5 }) })

	local svHit = New("TextButton", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 11,
		Parent = sv,
	})

	-- hue bar
	local keypoints = {}
	for i = 0, 6 do
		table.insert(keypoints, ColorSequenceKeypoint.new(i / 6, Color3.fromHSV(math.min(i / 6, 0.999), 1, 1)))
	end
	local hue = New("Frame", {
		Size = UDim2.new(1, 0, 0, 12),
		Position = UDim2.fromOffset(0, 126),
		BackgroundColor3 = Color3.new(1, 1, 1),
		ZIndex = 6,
		Parent = panel,
	}, { Round(), New("UIGradient", { Color = ColorSequence.new(keypoints) }) })

	local hueKnob = New("Frame", {
		Size = UDim2.new(0, 6, 1, 6),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.new(1, 1, 1),
		ZIndex = 8,
		Parent = hue,
	}, { Corner(3), New("UIStroke", { Color = Color3.new(0, 0, 0), Thickness = 1.5 }) })

	local hueHit = New("TextButton", {
		Size = UDim2.new(1, 0, 1, 10),
		Position = UDim2.fromScale(0, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 9,
		Parent = hue,
	})

	local hexBox = NewBox({
		Size = UDim2.new(1, 0, 0, 24),
		Position = UDim2.fromOffset(0, 146),
		TextXAlignment = Enum.TextXAlignment.Center,
		Parent = panel,
	})

	local function refresh(silent)
		local color = Color3.fromHSV(h, s, v)
		sv.BackgroundColor3 = Color3.fromHSV(h, 1, 1)
		svKnob.Position = UDim2.fromScale(s, 1 - v)
		hueKnob.Position = UDim2.fromScale(h, 0.5)
		hexBox.Text = "#" .. color:ToHex():upper()
		onChange(color, silent)
	end

	local function setColor(color, silent)
		h, s, v = color:ToHSV()
		h = math.min(h, 0.999)
		refresh(silent)
	end

	local dragSV, dragHue = false, false
	local function updateSV(pos)
		s = math.clamp((pos.X - sv.AbsolutePosition.X) / sv.AbsoluteSize.X, 0, 1)
		v = 1 - math.clamp((pos.Y - sv.AbsolutePosition.Y) / sv.AbsoluteSize.Y, 0, 1)
		refresh()
	end
	local function updateHue(pos)
		h = math.clamp((pos.X - hue.AbsolutePosition.X) / hue.AbsoluteSize.X, 0, 0.999)
		refresh()
	end

	Connect(svHit.InputBegan, function(input)
		if IsPress(input) then dragSV = true updateSV(input.Position) end
	end)
	Connect(hueHit.InputBegan, function(input)
		if IsPress(input) then dragHue = true updateHue(input.Position) end
	end)
	Connect(UserInputService.InputChanged, function(input)
		if IsMove(input) then
			if dragSV then updateSV(input.Position) elseif dragHue then updateHue(input.Position) end
		end
	end)
	Connect(UserInputService.InputEnded, function(input)
		if IsPress(input) then dragSV, dragHue = false, false end
	end)

	Connect(hexBox.FocusLost, function()
		local ok, color = pcall(Color3.fromHex, (hexBox.Text:gsub("#", "")))
		if ok and color then
			setColor(color)
		else
			refresh(true)
		end
	end)

	refresh(true)
	return { Set = setColor, Get = function() return Color3.fromHSV(h, s, v) end }
end

-- Inline color swatches: small side-by-side boxes on an existing row.
-- Clicking one opens a single shared picker panel right under the row.
local SWATCH_W, SWATCH_H, SWATCH_GAP = 26, 18, 5
local PANEL_H = 178

local function SwatchesWidth(count)
	return count * SWATCH_W + (count - 1) * SWATCH_GAP
end

-- rightOffset = how many pixels to keep free at the right edge of the row (e.g. for a toggle)
local function AttachSwatches(card, row, colors, flags, callback, rightOffset)
	local count = #colors
	local values = table.clone(colors)
	local swatches, strokes = {}, {}
	local selected, open = nil, false

	local holder = New("Frame", {
		Size = UDim2.fromOffset(SwatchesWidth(count), SWATCH_H),
		Position = UDim2.new(1, -rightOffset, 0.5, 0),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundTransparency = 1,
		ZIndex = 9,
		Parent = row,
	}, {
		New("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, SWATCH_GAP),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})

	local panel = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Visible = false,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = card.Frame,
	})

	local picker = BuildColorPanel(panel, values[1], function(color, silent)
		if selected then
			values[selected] = color
			swatches[selected].BackgroundColor3 = color
			if not silent then
				task.spawn(callback, selected, color)
			end
		end
	end)

	local function markSelected()
		for i, stroke in strokes do
			local on = open and i == selected
			stroke.Thickness = on and 2 or 1
			stroke.Transparency = on and 0 or 0.3
		end
	end

	for i = 1, count do
		strokes[i] = Stroke("Stroke", 0.3)
		swatches[i] = New("TextButton", {
			Size = UDim2.fromOffset(SWATCH_W, SWATCH_H),
			BackgroundColor3 = values[i],
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = i,
			ZIndex = 9,
			Parent = holder,
		}, { Corner(5), strokes[i] })

		Connect(swatches[i].MouseButton1Click, function()
			if open and selected == i then
				open = false
				local t = Tween(panel, 0.2, { Size = UDim2.new(1, 0, 0, 0) })
				t.Completed:Once(function() if not open then panel.Visible = false end end)
			else
				selected = i
				picker.Set(values[i], true)
				if not open then
					open = true
					panel.Visible = true
					Tween(panel, 0.25, { Size = UDim2.new(1, 0, 0, PANEL_H) })
				end
			end
			markSelected()
		end)
	end

	local function setIndex(i, color, silent)
		values[i] = color
		swatches[i].BackgroundColor3 = color
		if selected == i then
			picker.Set(color, true)
		end
		if not silent then
			task.spawn(callback, i, color)
		end
	end

	for i = 1, count do
		Register(flags and flags[i], "color", function() return values[i] end, function(c) setIndex(i, c) end)
	end

	return {
		Set = function(_, i, color, silent) setIndex(i, color, silent) end,
		Get = function(_, i) return values[i] end,
	}
end

function Card:AddLabel(text)
	local label = New("TextLabel", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		Text = text,
		Font = Enum.Font.Gotham,
		TextSize = 12,
		TextColor3 = T("SubText"),
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = self.Frame,
	})
	return { SetText = function(_, t) label.Text = t end }
end

function Card:AddButton(opts)
	MakeButton(self.Frame, opts, UDim2.new(1, 0, 0, 34)).LayoutOrder = NextOrder()
end

function Card:AddButtons(list)
	local n = #list
	local row = New("Frame", {
		Size = UDim2.new(1, 0, 0, 34),
		BackgroundTransparency = 1,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = self.Frame,
	}, {
		New("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 8),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})
	for i, opts in list do
		MakeButton(row, opts, UDim2.new(1 / n, -8 * (n - 1) / n, 1, 0)).LayoutOrder = i
	end
end

-- Hidden panel that behaves like a card: put any component in it, then panel:Toggle() to show/hide.
-- Create it right after the element it belongs to so it sits directly underneath.
function Card:AddSettings()
	local frame = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = T("Element"),
		BackgroundTransparency = 0.6,
		Visible = false,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = self.Frame,
	}, {
		Corner(8),
		Stroke("Stroke", 0.6),
		New("UIPadding", {
			PaddingTop = UDim.new(0, 10), PaddingBottom = UDim.new(0, 10),
			PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10),
		}),
		New("UIListLayout", { Padding = UDim.new(0, 8), SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	local panel = setmetatable({ Frame = frame }, Card)
	function panel:Toggle()
		frame.Visible = not frame.Visible
	end
	return panel
end

function Card:AddToggle(opts)
	local state = opts.Default == true
	local callback = opts.Callback or function() end

	local swatchCount = opts.Colors and #opts.Colors or 0

	local row = NewRow(self, 28)
	-- with color swatches on the row, shrink the label so it never runs under them
	local labelSize = swatchCount > 0 and UDim2.new(1, -(SwatchesWidth(swatchCount) + 44 + 16), 1, 0) or nil
	RowLabel(row, opts.Name, labelSize)

	local track = New("Frame", {
		Size = UDim2.fromOffset(44, 22),
		Position = UDim2.fromScale(1, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundColor3 = Theme.Element,
		ZIndex = 5,
		Parent = row,
	}, { Round() })

	local knob = New("Frame", {
		Size = UDim2.fromOffset(16, 16),
		Position = UDim2.new(0, 3, 0.5, 0),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundColor3 = Theme.SubText,
		ZIndex = 6,
		Parent = track,
	}, { Round() })

	local hit = New("TextButton", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 7,
		Parent = row,
	})

	local function render(animate)
		local trackGoal = { BackgroundColor3 = state and Theme.Accent or Theme.Element }
		local knobGoal = {
			Position = state and UDim2.new(1, -19, 0.5, 0) or UDim2.new(0, 3, 0.5, 0),
			BackgroundColor3 = state and Theme.OnAccent or Theme.SubText,
		}
		if animate then
			Tween(track, 0.2, trackGoal)
			Tween(knob, 0.25, knobGoal, Enum.EasingStyle.Back)
		else
			for k, v in trackGoal do track[k] = v end
			for k, v in knobGoal do knob[k] = v end
		end
	end

	local function set(value, silent)
		state = value == true
		render(true)
		if not silent then
			task.spawn(callback, state)
		end
	end

	Connect(hit.MouseButton1Click, function() set(not state) end)
	if opts.OnRightClick then
		Connect(hit.MouseButton2Click, function() opts.OnRightClick() end)
	end
	OnTheme(function() render(false) end)
	Register(opts.Flag, "toggle", function() return state end, function(v) set(v) end)

	-- optional side-by-side color swatches on the same row (44px toggle + 8px gap kept free)
	local swatches = swatchCount > 0
		and AttachSwatches(self, row, opts.Colors, opts.ColorFlags, opts.OnColor or function() end, 52)
		or nil

	render(false)
	return {
		Set = function(_, v, silent) set(v, silent) end,
		Get = function() return state end,
		Colors = swatches,
	}
end

function Card:AddSlider(opts)
	local min, max, step = opts.Min or 0, opts.Max or 100, opts.Step or 1
	local callback = opts.Callback or function() end
	local value = math.clamp(opts.Default or min, min, max)
	local format = step >= 1 and "%.1f" or "%.2f"

	local row = NewRow(self, 46)
	RowLabel(row, opts.Name, UDim2.new(1, -64, 0, 24))

	local box = NewBox({
		Size = UDim2.fromOffset(56, 24),
		Position = UDim2.fromScale(1, 0),
		AnchorPoint = Vector2.new(1, 0),
		TextXAlignment = Enum.TextXAlignment.Center,
		Parent = row,
	})

	local track = New("Frame", {
		Size = UDim2.new(1, 0, 0, 4),
		Position = UDim2.fromOffset(0, 36),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundColor3 = T("Element"),
		ZIndex = 5,
		Parent = row,
	}, { Round() })

	local fill = New("Frame", {
		Size = UDim2.fromScale(0, 1),
		BackgroundColor3 = T("Accent"),
		ZIndex = 6,
		Parent = track,
	}, { Round() })

	local knob = New("Frame", {
		Size = UDim2.fromOffset(12, 12),
		Position = UDim2.fromScale(0, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = T("Text"),
		ZIndex = 7,
		Parent = track,
	}, { Round() })

	local hit = New("TextButton", {
		Size = UDim2.new(1, 12, 0, 22),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		Text = "",
		ZIndex = 8,
		Parent = track,
	})

	local function set(v, silent)
		v = math.clamp(math.round((v - min) / step) * step + min, min, max)
		value = v
		local alpha = (max == min) and 0 or (v - min) / (max - min)
		fill.Size = UDim2.fromScale(alpha, 1)
		knob.Position = UDim2.fromScale(alpha, 0.5)
		box.Text = format:format(v)
		if not silent then
			task.spawn(callback, v)
		end
	end

	local dragging = false
	local function fromX(x)
		set(min + (max - min) * math.clamp((x - track.AbsolutePosition.X) / track.AbsoluteSize.X, 0, 1))
	end

	Connect(hit.InputBegan, function(input)
		if IsPress(input) then
			dragging = true
			fromX(input.Position.X)
			Tween(knob, 0.12, { Size = UDim2.fromOffset(15, 15) })
		end
	end)
	Connect(UserInputService.InputChanged, function(input)
		if dragging and IsMove(input) then
			fromX(input.Position.X)
		end
	end)
	Connect(UserInputService.InputEnded, function(input)
		if dragging and IsPress(input) then
			dragging = false
			Tween(knob, 0.12, { Size = UDim2.fromOffset(12, 12) })
		end
	end)
	Connect(box.FocusLost, function()
		set(tonumber(box.Text) or value)
	end)

	Register(opts.Flag, "slider", function() return value end, function(v) set(tonumber(v) or value) end)
	set(value, true)
	return { Set = function(_, v, silent) set(v, silent) end, Get = function() return value end }
end

function Card:AddInput(opts)
	local callback = opts.Callback or function() end
	local value = opts.Default or ""

	local row = NewRow(self, 28)
	RowLabel(row, opts.Name, UDim2.new(0.4, 0, 1, 0))

	local box = NewBox({
		Size = UDim2.new(0.6, 0, 0, 26),
		Position = UDim2.fromScale(1, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
		Text = value,
		PlaceholderText = opts.Placeholder or "",
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = row,
	})

	local function set(text, silent)
		value = tostring(text or "")
		box.Text = value
		if not silent then
			task.spawn(callback, value)
		end
	end

	Connect(box.FocusLost, function()
		value = box.Text
		task.spawn(callback, value)
	end)

	Register(opts.Flag, "input", function() return value end, function(v) set(v) end)
	return {
		Set = function(_, t, silent) set(t, silent) end,
		Get = function() value = box.Text return value end,
	}
end

local KEY_MODES = { "Always", "Hold", "Toggle" }

-- Keybind with modes. Right-click the bind button to choose how it behaves:
--   Always = feature is active whenever it is enabled (key ignored)
--   Hold   = active only while the key is held
--   Toggle = each press flips active on/off
-- With no key bound the feature is simply active. Binds can be keyboard keys or mouse buttons 2 / 3.
-- opts: Name, Default, Mode, Flag, Callback (fires on every press), OnState(active), OnChange(key), NoClear, NoModes
function Card:AddKeybind(opts)
	local current = opts.Default
	local mode = opts.Mode or "Toggle"
	local listening = false
	local held, toggled = false, current == nil
	local lastActive
	local entry = { Key = current }

	local function isActive()
		if mode == "Always" or current == nil then
			return true
		end
		if mode == "Hold" then
			return held
		end
		return toggled
	end

	local function fire()
		local active = isActive()
		if active ~= lastActive then
			lastActive = active
			if opts.OnState then
				task.spawn(opts.OnState, active)
			end
		end
	end

	entry.Press = function()
		held = true
		if mode == "Toggle" then
			toggled = not toggled
		end
		fire()
		if opts.Callback then
			task.spawn(opts.Callback)
		end
	end
	entry.Release = function()
		held = false
		fire()
	end
	table.insert(Keybinds, entry)

	local row = NewRow(self, 28)
	RowLabel(row, opts.Name)

	local btn = New("TextButton", {
		Size = UDim2.fromOffset(0, 24),
		AutomaticSize = Enum.AutomaticSize.X,
		Position = UDim2.fromScale(1, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundColor3 = T("Element"),
		BackgroundTransparency = 0.2,
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextColor3 = T("SubText"),
		AutoButtonColor = false,
		ZIndex = 6,
		Parent = row,
	}, {
		Corner(6),
		Stroke("Stroke", 0.5),
		New("UIPadding", { PaddingLeft = UDim.new(0, 10), PaddingRight = UDim.new(0, 10) }),
		New("UISizeConstraint", { MinSize = Vector2.new(32, 24) }),
	})

	-- mode chooser: hidden row under the bind, shown on right-click
	local chooser = New("Frame", {
		Size = UDim2.new(1, 0, 0, 28),
		BackgroundTransparency = 1,
		Visible = false,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = self.Frame,
	}, {
		New("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 6),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})
	local modeButtons = {}
	for i, name in KEY_MODES do
		modeButtons[name] = New("TextButton", {
			Size = UDim2.new(1 / 3, -4, 1, 0),
			BackgroundColor3 = T("Element"),
			BackgroundTransparency = 0.25,
			Text = name,
			Font = Enum.Font.GothamMedium,
			TextSize = 12,
			TextColor3 = Theme.SubText,
			AutoButtonColor = false,
			LayoutOrder = i,
			ZIndex = 6,
			Parent = chooser,
		}, { Corner(6), Stroke("Stroke", 0.5) })
	end

	local function render()
		btn.Text = listening and "..." or ((current and current.Name or "None") .. " [" .. mode .. "]")
		for name, button in modeButtons do
			button.TextColor3 = name == mode and Theme.Accent or Theme.SubText
		end
	end
	OnTheme(render)

	local function setMode(value)
		if not table.find(KEY_MODES, value) then
			return
		end
		mode = value
		if mode == "Toggle" then
			toggled = current == nil
		end
		held = false
		render()
		fire()
	end

	local function setKey(key, silent)
		current = key
		entry.Key = key
		held = false
		toggled = key == nil
		render()
		fire()
		if not silent and opts.OnChange then
			task.spawn(opts.OnChange, key)
		end
	end

	for name, button in modeButtons do
		Connect(button.MouseButton1Click, function()
			setMode(name)
			chooser.Visible = false
		end)
	end

	Connect(btn.MouseButton1Click, function()
		if ListeningCancel then
			ListeningCancel()
		end
		listening = true
		render()
		ListeningCancel = function()
			listening = false
			ListeningHandler, ListeningCancel = nil, nil
			render()
		end
		ListeningHandler = function(bind)
			listening = false
			ListeningCancel = nil
			if bind == Enum.KeyCode.Escape then
				if opts.NoClear then
					render()
				else
					setKey(nil)
				end
			else
				setKey(bind)
			end
		end
	end)

	if not opts.NoModes then
		Connect(btn.MouseButton2Click, function()
			if listening then
				return
			end
			chooser.Visible = not chooser.Visible
		end)
	end

	Register(opts.Flag, "keybind", function() return current end, function(v) setKey(v) end)
	Register(opts.Flag and (opts.Flag .. "Mode"), "dropdown", function() return mode end, function(v) setMode(v) end)

	render()
	lastActive = isActive()
	if opts.OnState then
		task.spawn(opts.OnState, lastActive)
	end

	return {
		Get = function() return current end,
		Set = function(_, k, silent) setKey(k, silent) end,
		GetMode = function() return mode end,
		SetMode = function(_, m) setMode(m) end,
		IsActive = isActive,
	}
end

function Card:AddDropdown(opts)
	local options = opts.Options or {}
	local current = opts.Default
	local callback = opts.Callback or function() end
	local open = false
	local ITEM_H = 26

	local container = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = self.Frame,
	}, { New("UIListLayout", { Padding = UDim.new(0, 6), SortOrder = Enum.SortOrder.LayoutOrder }) })

	local header = New("Frame", {
		Size = UDim2.new(1, 0, 0, 28),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
		ZIndex = 5,
		Parent = container,
	})
	RowLabel(header, opts.Name, UDim2.new(0.4, 0, 1, 0))

	local btn = New("TextButton", {
		Size = UDim2.new(0.6, 0, 0, 28),
		Position = UDim2.fromScale(1, 0),
		AnchorPoint = Vector2.new(1, 0),
		BackgroundColor3 = T("Element"),
		BackgroundTransparency = 0.2,
		Text = "",
		AutoButtonColor = false,
		ZIndex = 6,
		Parent = header,
	}, { Corner(6), Stroke("Stroke", 0.5) })

	local btnText = New("TextLabel", {
		Size = UDim2.new(1, -28, 1, 0),
		Position = UDim2.fromOffset(10, 0),
		BackgroundTransparency = 1,
		Font = Enum.Font.GothamMedium,
		TextSize = 12,
		TextColor3 = T("Text"),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = 7,
		Parent = btn,
	})

	-- chevron drawn with two rotated bars
	local chevron = New("Frame", {
		Size = UDim2.fromOffset(10, 10),
		Position = UDim2.new(1, -16, 0.5, 0),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		ZIndex = 7,
		Parent = btn,
	})
	for i = 1, 2 do
		New("Frame", {
			Size = UDim2.fromOffset(6, 2),
			Position = UDim2.new(0.5, i == 1 and -2 or 2, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Rotation = i == 1 and 45 or -45,
			BackgroundColor3 = T("SubText"),
			BorderSizePixel = 0,
			ZIndex = 8,
			Parent = chevron,
		})
	end

	local list = New("ScrollingFrame", {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundColor3 = T("Element"),
		BackgroundTransparency = 0.35,
		BorderSizePixel = 0,
		ScrollBarThickness = 2,
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		Visible = false,
		LayoutOrder = 2,
		ZIndex = 6,
		Parent = container,
	}, {
		Corner(6),
		New("UIPadding", { PaddingTop = UDim.new(0, 4), PaddingBottom = UDim.new(0, 4), PaddingLeft = UDim.new(0, 4), PaddingRight = UDim.new(0, 4) }),
		New("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	local function listHeight()
		return math.min(math.max(#options, 1), 5) * ITEM_H + 8
	end

	local set
	local function populate()
		btnText.Text = current ~= nil and tostring(current) or "Select..."
		for _, child in list:GetChildren() do
			if child:IsA("TextButton") or child:IsA("TextLabel") then
				child:Destroy()
			end
		end
		if #options == 0 then
			New("TextLabel", {
				Size = UDim2.new(1, 0, 0, ITEM_H),
				BackgroundTransparency = 1,
				Text = "Nothing here yet",
				Font = Enum.Font.Gotham,
				TextSize = 12,
				TextColor3 = Theme.SubText,
				ZIndex = 7,
				Parent = list,
			})
			return
		end
		for i, option in options do
			local item = New("TextButton", {
				Size = UDim2.new(1, 0, 0, ITEM_H),
				BackgroundTransparency = 1,
				Text = tostring(option),
				Font = Enum.Font.GothamMedium,
				TextSize = 12,
				TextColor3 = option == current and Theme.Accent or Theme.SubText,
				AutoButtonColor = false,
				LayoutOrder = i,
				ZIndex = 7,
				Parent = list,
			})
			Connect(item.MouseEnter, function()
				if option ~= current then Tween(item, 0.12, { TextColor3 = Theme.Text }) end
			end)
			Connect(item.MouseLeave, function()
				if option ~= current then Tween(item, 0.12, { TextColor3 = Theme.SubText }) end
			end)
			Connect(item.MouseButton1Click, function()
				set(option)
				open = false
				Tween(chevron, 0.2, { Rotation = 0 })
				local t = Tween(list, 0.2, { Size = UDim2.new(1, 0, 0, 0) })
				t.Completed:Once(function() if not open then list.Visible = false end end)
			end)
		end
	end

	set = function(v, silent)
		current = v
		populate()
		if not silent then
			task.spawn(callback, v)
		end
	end

	Connect(btn.MouseButton1Click, function()
		open = not open
		Tween(chevron, 0.2, { Rotation = open and 180 or 0 })
		if open then
			list.Visible = true
			Tween(list, 0.25, { Size = UDim2.new(1, 0, 0, listHeight()) })
		else
			local t = Tween(list, 0.2, { Size = UDim2.new(1, 0, 0, 0) })
			t.Completed:Once(function() if not open then list.Visible = false end end)
		end
	end)

	OnTheme(populate)
	Register(opts.Flag, "dropdown", function() return current end, function(v) set(v) end)
	populate()

	return {
		Set = function(_, v, silent) set(v, silent) end,
		Get = function() return current end,
		SetOptions = function(_, newOptions)
			options = newOptions
			populate()
			if open then
				Tween(list, 0.2, { Size = UDim2.new(1, 0, 0, listHeight()) })
			end
		end,
	}
end

function Card:AddColorPicker(opts)
	local callback = opts.Callback or function() end
	local open = false

	local container = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = NextOrder(),
		ZIndex = 5,
		Parent = self.Frame,
	}, { New("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder }) })

	local header = New("Frame", {
		Size = UDim2.new(1, 0, 0, 28),
		BackgroundTransparency = 1,
		LayoutOrder = 1,
		ZIndex = 5,
		Parent = container,
	})
	RowLabel(header, opts.Name)

	local swatch = New("TextButton", {
		Size = UDim2.fromOffset(40, 22),
		Position = UDim2.fromScale(1, 0.5),
		AnchorPoint = Vector2.new(1, 0.5),
		BackgroundColor3 = opts.Default or Color3.new(1, 1, 1),
		Text = "",
		AutoButtonColor = false,
		ZIndex = 6,
		Parent = header,
	}, { Corner(6), Stroke("Stroke", 0.3) })

	local panel = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		BackgroundTransparency = 1,
		ClipsDescendants = true,
		Visible = false,
		LayoutOrder = 2,
		ZIndex = 5,
		Parent = container,
	})

	local picker = BuildColorPanel(panel, opts.Default or Color3.new(1, 1, 1), function(color, silent)
		swatch.BackgroundColor3 = color
		if not silent then
			task.spawn(callback, color)
		end
	end)

	Connect(swatch.MouseButton1Click, function()
		open = not open
		if open then
			panel.Visible = true
			Tween(panel, 0.25, { Size = UDim2.new(1, 0, 0, PANEL_H) })
		else
			local t = Tween(panel, 0.2, { Size = UDim2.new(1, 0, 0, 0) })
			t.Completed:Once(function() if not open then panel.Visible = false end end)
		end
	end)

	Register(opts.Flag, "color", picker.Get, function(c) picker.Set(c) end)
	return {
		Set = function(_, c, silent) picker.Set(c, silent) end,
		Get = picker.Get,
	}
end

-- One row: label on the left, several color swatches side by side on the right.
-- opts: Name, Colors = { Color3, ... }, Flags = { "FlagA", ... }, Callback = function(index, color)
function Card:AddColorRow(opts)
	local row = NewRow(self, 28)
	RowLabel(row, opts.Name, UDim2.new(1, -(SwatchesWidth(#opts.Colors) + 8), 1, 0))
	return AttachSwatches(self, row, opts.Colors, opts.Flags, opts.Callback or function() end, 0)
end

--// WINDOW / TABS --------------------------------------------------------
local function RenderTabs()
	for _, tab in Window.Tabs do
		local on = Window.Active == tab
		tab.Page.Visible = on
		Tween(tab.Button, 0.2, { BackgroundTransparency = on and 0.75 or 1 })
		Tween(tab.Bar, 0.25, { BackgroundTransparency = on and 0 or 1, Size = UDim2.fromOffset(3, on and 18 or 6) })
		Tween(tab.Label, 0.2, { TextColor3 = on and Theme.Text or Theme.SubText })
		if tab.Icon then
			Tween(tab.Icon, 0.2, { ImageColor3 = on and Theme.Text or Theme.SubText })
		end
	end
end
OnTheme(RenderTabs)

local function SelectTab(tab)
	if Window.Active == tab then
		return
	end
	Window.Active = tab
	PageTitle.Text = tab.Name
	RenderTabs()
	tab.Page.Position = UDim2.fromOffset(0, 12)
	Tween(tab.Page, 0.3, { Position = UDim2.fromOffset(0, 0) })
end

function Window:AddTab(name, icon)
	local tab = { Name = name }

	tab.Button = New("TextButton", {
		Size = UDim2.new(1, 0, 0, 42),
		BackgroundColor3 = T("Element"),
		BackgroundTransparency = 1,
		Text = "",
		AutoButtonColor = false,
		LayoutOrder = #self.Tabs + 1,
		ZIndex = 4,
		Parent = TabList,
	}, { Corner(8) })

	tab.Bar = New("Frame", {
		Size = UDim2.fromOffset(3, 6),
		Position = UDim2.fromScale(0, 0.5),
		AnchorPoint = Vector2.new(0, 0.5),
		BackgroundColor3 = T("Accent"),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ZIndex = 5,
		Parent = tab.Button,
	}, { Round() })

	local textX = 16
	if icon then
		tab.Icon = New("ImageLabel", {
			Size = UDim2.fromOffset(18, 18),
			Position = UDim2.new(0, 16, 0.5, 0),
			AnchorPoint = Vector2.new(0, 0.5),
			BackgroundTransparency = 1,
			Image = icon,
			ImageColor3 = Theme.SubText,
			ZIndex = 5,
			Parent = tab.Button,
		})
		textX = 46
	end

	tab.Label = New("TextLabel", {
		Size = UDim2.new(1, -textX - 8, 1, 0),
		Position = UDim2.fromOffset(textX, 0),
		BackgroundTransparency = 1,
		Text = name,
		Font = Enum.Font.GothamMedium,
		TextSize = 14,
		TextColor3 = Theme.SubText,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = 5,
		Parent = tab.Button,
	})

	tab.Page = New("ScrollingFrame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		ScrollBarThickness = 3,
		ScrollBarImageColor3 = T("Stroke"),
		ScrollingDirection = Enum.ScrollingDirection.Y,
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		Visible = false,
		ZIndex = 4,
		Parent = Pages,
	})

	-- explicit 16px margins (left/right/top/bottom) so nothing touches or overflows the window edge
	local wrapper = New("Frame", {
		Size = UDim2.new(1, -32, 0, 0),
		Position = UDim2.fromOffset(16, 16),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		ZIndex = 4,
		Parent = tab.Page,
	}, { New("UIListLayout", { SortOrder = Enum.SortOrder.LayoutOrder }) })

	-- two columns laid out side by side (no overlap)
	local container = New("Frame", {
		Size = UDim2.new(1, 0, 0, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = 1,
		ZIndex = 4,
		Parent = wrapper,
	}, {
		New("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 12),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})

	New("Frame", { -- bottom spacer
		Size = UDim2.new(1, 0, 0, 16),
		BackgroundTransparency = 1,
		LayoutOrder = 2,
		Parent = wrapper,
	})

	tab.Columns = {}
	for i = 1, 2 do
		tab.Columns[i] = New("Frame", {
			Size = UDim2.new(0.5, -6, 0, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
			LayoutOrder = i,
			ZIndex = 4,
			Parent = container,
		}, {
			New("UIListLayout", { Padding = UDim.new(0, 12), SortOrder = Enum.SortOrder.LayoutOrder }),
		})
	end

	function tab:AddCard(column, title)
		return NewCard(self.Columns[column or 1], title)
	end

	Connect(tab.Button.MouseEnter, function()
		if Window.Active ~= tab then Tween(tab.Button, 0.15, { BackgroundTransparency = 0.88 }) end
	end)
	Connect(tab.Button.MouseLeave, function()
		if Window.Active ~= tab then Tween(tab.Button, 0.15, { BackgroundTransparency = 1 }) end
	end)
	Connect(tab.Button.MouseButton1Click, function()
		SelectTab(tab)
	end)

	table.insert(self.Tabs, tab)
	if not self.Active then
		SelectTab(tab)
	end
	return tab
end

--// OPEN / CLOSE ---------------------------------------------------------
function Window:SetVisible(state)
	if state == isOpen then
		return
	end
	isOpen = state

	if state then
		Main.Visible = true
		Tween(Main, 0.3, { GroupTransparency = 0 }, Enum.EasingStyle.Quad)
		Tween(Scale, 0.45, { Scale = UserScale * AutoScale }, Enum.EasingStyle.Back)
	else
		local fade = Tween(Main, 0.22, { GroupTransparency = 1 }, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		Tween(Scale, 0.25, { Scale = UserScale * AutoScale * 0.92 }, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		fade.Completed:Once(function()
			if not isOpen then
				Main.Visible = false
			end
		end)
	end
end

function Window:Toggle()
	self:SetVisible(not isOpen)
end

function Window:Destroy()
	for _, c in Connections do
		c:Disconnect()
	end
	table.clear(Connections)
	Gui:Destroy()
end

Connect(dots[1].MouseButton1Click, function()
	Window:SetVisible(false)
end)

-- single input router: keybind capture -> menu key -> registered keybinds (keyboard + mouse 2/3)
Connect(UserInputService.InputBegan, function(input, processed)
	local kind = input.UserInputType
	local isKey = kind == Enum.UserInputType.Keyboard
	if not (isKey or kind == Enum.UserInputType.MouseButton2 or kind == Enum.UserInputType.MouseButton3) then
		return
	end
	local bind = isKey and input.KeyCode or kind
	if ListeningHandler then
		local handler = ListeningHandler
		ListeningHandler, ListeningCancel = nil, nil
		handler(bind)
		return
	end
	if isKey then
		if UserInputService:GetFocusedTextBox() then
			return
		end
		if input.KeyCode == Config.ToggleKey then
			Window:Toggle()
			return
		end
	end
	if not processed then
		for _, kb in Keybinds do
			if kb.Key and kb.Key == bind then
				task.spawn(kb.Press)
			end
		end
	end
end)

Connect(UserInputService.InputEnded, function(input)
	local kind = input.UserInputType
	local bind = kind == Enum.UserInputType.Keyboard and input.KeyCode or kind
	for _, kb in Keybinds do
		if kb.Key and kb.Key == bind then
			task.spawn(kb.Release)
		end
	end
end)

--// THEME CONTROL --------------------------------------------------------
local function SyncThemeUI()
	for role, picker in ThemeUI.Pickers do
		picker:Set(Theme[role], true)
	end
	if ThemeUI.Preset then
		ThemeUI.Preset:Set(ThemeState.Preset, true)
	end
end

function Window:SetPreset(name)
	local preset = Presets[name]
	if not preset then
		return
	end
	for role, color in preset do
		Theme[role] = color
	end
	ThemeState.Preset = name
	ApplyTheme(true)
	SyncThemeUI()
end

--// CONFIG SYSTEM --------------------------------------------------------
local Configs = {}
local memoryStore, memoryAutoload = {}, nil

local hasFS = type(writefile) == "function" and type(readfile) == "function"
	and type(isfile) == "function" and type(isfolder) == "function"
	and type(makefolder) == "function" and type(listfiles) == "function"
	and type(delfile) == "function"

local CONFIG_DIR = Config.FolderName .. "/configs"
local AUTOLOAD_FILE = Config.FolderName .. "/autoload.txt"
Configs.Backend = hasFS and "File system" or "Session memory"

if hasFS then
	pcall(function()
		if not isfolder(Config.FolderName) then makefolder(Config.FolderName) end
		if not isfolder(CONFIG_DIR) then makefolder(CONFIG_DIR) end
	end)
end

local function Serialize(kind, value)
	if kind == "color" then
		return { math.round(value.R * 255), math.round(value.G * 255), math.round(value.B * 255) }
	elseif kind == "keybind" then
		return value and value.Name or false
	end
	return value
end

local function Deserialize(kind, raw)
	if kind == "color" then
		if type(raw) == "table" then
			return Color3.fromRGB(raw[1], raw[2], raw[3])
		end
		return nil
	elseif kind == "keybind" then
		if type(raw) == "string" then
			local ok, key = pcall(function() return Enum.KeyCode[raw] end)
			if ok and key then return key end
			local ok2, kind = pcall(function() return Enum.UserInputType[raw] end)
			return ok2 and kind or nil
		end
		return nil
	end
	return raw
end

function Configs.Sanitize(name)
	name = (tostring(name or ""):gsub("[^%w%-_ ]", ""))
	return name:match("^%s*(.-)%s*$")
end

function Configs.Collect()
	local flags = {}
	for flag, entry in Registry do
		flags[flag] = Serialize(entry.Kind, entry.Get())
	end
	local themeData = {}
	for _, role in ThemeRoles do
		themeData[role] = Serialize("color", Theme[role])
	end
	return { Version = 1, Preset = ThemeState.Preset, Theme = themeData, Flags = flags }
end

function Configs.Apply(data)
	if type(data) ~= "table" then
		return false
	end
	if type(data.Theme) == "table" then
		for _, role in ThemeRoles do
			local raw = data.Theme[role]
			if type(raw) == "table" then
				pcall(function() Theme[role] = Deserialize("color", raw) end)
			end
		end
		ThemeState.Preset = type(data.Preset) == "string" and data.Preset or "Custom"
		ApplyTheme(true)
		SyncThemeUI()
	end
	if type(data.Flags) == "table" then
		for flag, raw in data.Flags do
			local entry = Registry[flag]
			if entry then
				pcall(entry.Set, Deserialize(entry.Kind, raw))
			end
		end
	end
	return true
end

function Configs.Encode()
	return HttpService:JSONEncode(Configs.Collect())
end

function Configs.Decode(json)
	local ok, data = pcall(function() return HttpService:JSONDecode(json) end)
	return ok and data or nil
end

function Configs.List()
	local names = {}
	if hasFS then
		local ok, files = pcall(listfiles, CONFIG_DIR)
		if ok then
			for _, path in files do
				local name = tostring(path):match("([^/\\]+)%.json$")
				if name then table.insert(names, name) end
			end
		end
	else
		for name in memoryStore do table.insert(names, name) end
	end
	table.sort(names)
	return names
end

function Configs.Save(name)
	local json = Configs.Encode()
	if hasFS then
		local ok, err = pcall(writefile, CONFIG_DIR .. "/" .. name .. ".json", json)
		return ok, err
	end
	memoryStore[name] = json
	return true
end

function Configs.Load(name)
	local json
	if hasFS then
		local path = CONFIG_DIR .. "/" .. name .. ".json"
		local ok, exists = pcall(isfile, path)
		if not (ok and exists) then return false, "Config not found." end
		local readOk, res = pcall(readfile, path)
		if not readOk then return false, "Could not read file." end
		json = res
	else
		json = memoryStore[name]
	end
	if not json then return false, "Config not found." end
	local data = Configs.Decode(json)
	if not data then return false, "Config data is invalid." end
	return Configs.Apply(data)
end

function Configs.Delete(name)
	if hasFS then
		return pcall(delfile, CONFIG_DIR .. "/" .. name .. ".json")
	end
	memoryStore[name] = nil
	return true
end

function Configs.SetAutoload(name)
	if hasFS then
		if name then pcall(writefile, AUTOLOAD_FILE, name)
		else pcall(function() if isfile(AUTOLOAD_FILE) then delfile(AUTOLOAD_FILE) end end) end
	else
		memoryAutoload = name
	end
end

function Configs.GetAutoload()
	if hasFS then
		local ok, res = pcall(function()
			if isfile(AUTOLOAD_FILE) then return readfile(AUTOLOAD_FILE) end
		end)
		return ok and res or nil
	end
	return memoryAutoload
end

--// TABS -----------------------------------------------------------------
-- BLACKLIST STATE (shared by Aimbot, Silent Aim and ESP; UI lives in the Player tab)
-- When a switch is on, that feature only works on the selected player.
local Blacklist = { Selected = nil, Aimbot = false, Silent = false, Esp = false, Map = {} }
Window.AimbotNotify = true -- Settings > Notify Appear

-- MAIN
local main = Window:AddTab("Main")
do
	--// LEGIT + UNLEGIT ---------------------------------------------------
	-- LEFT  = Legit   : camlock / aimbot, everything in ONE card (scroll down)
	-- RIGHT = Unlegit : silent aim
	--   Silent aim uses a camera spoof (no hooks): for the short window where the game reads your aim
	--   (input events), the camera is rotated so your cursor sits on the target, then it is put back
	--   before the frame is drawn. You never see it.
	-- Keybind buttons: right-click them to choose Always / Hold / Toggle.
	do
		local RunService = game:GetService("RunService")
		local WHITE = Color3.new(1, 1, 1)

		local Legit = {
			On = false, Active = true, Method = "Camera", HitPart = "Head", Priority = "Cursor", Sticky = true,
			Smoothness = 20, Speed = 8, Strength = 100, Radius = 350, Prediction = 0, Humanize = 0, Deadzone = 2,
			TeamCheck = false, WallCheck = true, DeathCheck = true,
			Target = nil, Remainder = Vector2.zero, WarnedMouse = false,
		}
		local Silent = {
			On = false, Active = true, Trigger = "Always", HitPart = "Head", Priority = "Cursor",
			HitChance = 100, Radius = 250, Prediction = 0, PingComp = true,
			TeamCheck = false, WallCheck = true, SkipLow = true,
			Part = nil, Player = nil, Roll = true,
		}
		local enableToggle, silentToggle

		local function LegitLive() return Legit.On and Legit.Active end
		local function SilentLive() return Silent.On and Silent.Active end

		--// SHARED HELPERS ----------------------------------------------
		local wallParams = RaycastParams.new()
		wallParams.FilterType = Enum.RaycastFilterType.Exclude
		wallParams.IgnoreWater = true
		local CLOSEST_PARTS = { "Head", "UpperTorso", "Torso", "HumanoidRootPart" }

		local function GetPart(char, mode, cam, mousePos)
			if mode == "Head" then
				return char:FindFirstChild("Head")
			elseif mode == "Torso" then
				return char:FindFirstChild("UpperTorso") or char:FindFirstChild("Torso")
			elseif mode == "HumanoidRootPart" then
				return char:FindFirstChild("HumanoidRootPart")
			end
			local best, bestDist
			for _, name in CLOSEST_PARTS do
				local part = char:FindFirstChild(name)
				if part and part:IsA("BasePart") then
					local sp, onScreen = cam:WorldToViewportPoint(part.Position)
					if onScreen then
						local dist = (Vector2.new(sp.X, sp.Y) - mousePos).Magnitude
						if not bestDist or dist < bestDist then
							best, bestDist = part, dist
						end
					end
				end
			end
			return best
		end

		local function IsVisible(char, part, cam)
			local ignore = {}
			for _, inst in { LocalPlayer.Character, char, workspace:FindFirstChild("PrestigeCharms"), workspace:FindFirstChild("PrestigeTungTung"), workspace:FindFirstChild("PrestigeRain") } do
				table.insert(ignore, inst)
			end
			local origin = cam.CFrame.Position
			local direction = part.Position - origin
			for _ = 1, 8 do
				wallParams.FilterDescendantsInstances = ignore
				local result = workspace:Raycast(origin, direction, wallParams)
				if not result then
					return true
				end
				local hit = result.Instance
				if hit.CanCollide == false or hit.Transparency >= 0.9 then
					table.insert(ignore, hit)
				else
					return false
				end
			end
			return true
		end

		-- cfg = Legit or Silent. Returns part, humanoid, screenDistance, screenPosition (or nil)
		local function Evaluate(player, cfg, cam, mousePos, useRadius)
			if player == LocalPlayer then
				return
			end
			local onlySelected = (cfg == Legit and Blacklist.Aimbot) or (cfg == Silent and Blacklist.Silent)
			if onlySelected and Blacklist.Selected ~= player then
				return
			end
			if cfg.TeamCheck and player.Team ~= nil and player.Team == LocalPlayer.Team then
				return
			end
			local char = player.Character
			local humanoid = char and char:FindFirstChildOfClass("Humanoid")
			if not (char and humanoid and humanoid.Health > 0) then
				return
			end
			if cfg.SkipLow and humanoid.Health <= 1 then
				return
			end
			local part = GetPart(char, cfg.HitPart, cam, mousePos)
			if not part then
				return
			end
			local sp, onScreen = cam:WorldToViewportPoint(part.Position)
			if not onScreen then
				return
			end
			local screen = Vector2.new(sp.X, sp.Y)
			local dist = (screen - mousePos).Magnitude
			if useRadius and dist > cfg.Radius then
				return
			end
			if cfg.WallCheck and not IsVisible(char, part, cam) then
				-- chosen part is blocked: fall back to any other visible body part before giving up
				local found
				for _, name in CLOSEST_PARTS do
					local alt = char:FindFirstChild(name)
					if alt and alt ~= part and alt:IsA("BasePart") and IsVisible(char, alt, cam) then
						found = alt
						break
					end
				end
				if not found then
					return
				end
				part = found
				local sp2, on2 = cam:WorldToViewportPoint(part.Position)
				if not on2 then
					return
				end
				screen = Vector2.new(sp2.X, sp2.Y)
				dist = (screen - mousePos).Magnitude
			end
			return part, humanoid, dist, screen
		end

		-- best target inside the FOV by priority (Cursor = closest to cursor, Distance, Health)
		local function PickTarget(cfg, cam, mousePos)
			local bestScore, bestPlayer, bestPart, bestHumanoid, bestScreen
			for _, player in Players:GetPlayers() do
				local part, humanoid, dist, screen = Evaluate(player, cfg, cam, mousePos, true)
				if part then
					local score = dist
					if cfg.Priority == "Distance" then
						score = (part.Position - cam.CFrame.Position).Magnitude
					elseif cfg.Priority == "Health" then
						score = humanoid.Health
					end
					if not bestScore or score < bestScore then
						bestScore, bestPlayer, bestPart, bestHumanoid, bestScreen = score, player, part, humanoid, screen
					end
				end
			end
			return bestPlayer, bestPart, bestHumanoid, bestScreen
		end

		-- aim point with velocity prediction (lead = seconds of lead; defaults to cfg.Prediction)
		local function AimPoint(part, cfg, lead)
			local pos = part.Position
			lead = lead or cfg.Prediction
			if lead and lead > 0 then
				pos += part.AssemblyLinearVelocity * lead
			end
			return pos
		end

		--// FOV CIRCLES (gradient outline + gradient fill) ----------------
		local FovGui = Instance.new("ScreenGui")
		FovGui.Name = "PrestigeFOV"
		FovGui.ResetOnSpawn = false
		FovGui.IgnoreGuiInset = true
		FovGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		FovGui.DisplayOrder = 3
		FovGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

		local function Seq(colors)
			return ColorSequence.new({
				ColorSequenceKeypoint.new(0, colors[1]),
				ColorSequenceKeypoint.new(1 / 3, colors[2]),
				ColorSequenceKeypoint.new(2 / 3, colors[3]),
				ColorSequenceKeypoint.new(1, colors[1]),
			})
		end

		local function MakeFov(colors, fillColors)
			local fov = {
				Show = false, Fill = false, Dirty = true,
				Colors = table.clone(colors), FillColors = table.clone(fillColors),
				Thickness = 1.5, FillTransparency = 0.85, Speed = 1,
			}
			local ring = Instance.new("Frame")
			ring.AnchorPoint = Vector2.new(0.5, 0.5)
			ring.BackgroundTransparency = 1
			ring.BorderSizePixel = 0
			ring.Visible = false
			ring.Parent = FovGui
			local corner = Instance.new("UICorner")
			corner.CornerRadius = UDim.new(1, 0)
			corner.Parent = ring
			local stroke = Instance.new("UIStroke")
			stroke.Color = WHITE
			stroke.Thickness = fov.Thickness
			stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			stroke.Parent = ring
			local strokeGrad = Instance.new("UIGradient")
			strokeGrad.Parent = stroke
			local fill = Instance.new("Frame")
			fill.Size = UDim2.fromScale(1, 1)
			fill.BackgroundColor3 = WHITE
			fill.BorderSizePixel = 0
			fill.Visible = false
			fill.Parent = ring
			local fillCorner = Instance.new("UICorner")
			fillCorner.CornerRadius = UDim.new(1, 0)
			fillCorner.Parent = fill
			local fillGrad = Instance.new("UIGradient")
			fillGrad.Parent = fill

			function fov:Update(active, mousePos, radius, t)
				local visible = active and self.Show
				ring.Visible = visible
				if not visible then
					return
				end
				if self.Dirty then
					self.Dirty = false
					strokeGrad.Color = Seq(self.Colors)
					fillGrad.Color = Seq(self.FillColors)
					fill.BackgroundTransparency = self.FillTransparency
					stroke.Thickness = self.Thickness
				end
				ring.Size = UDim2.fromOffset(radius * 2, radius * 2)
				ring.Position = UDim2.fromOffset(mousePos.X, mousePos.Y)
				local rotation = (t * self.Speed * 90) % 360
				strokeGrad.Rotation = rotation
				fillGrad.Rotation = 360 - rotation
				fill.Visible = self.Fill
			end
			return fov
		end

		local LegitFov = MakeFov(
			{ rgb(86, 156, 255), rgb(168, 120, 255), rgb(80, 220, 255) },
			{ rgb(86, 156, 255), rgb(168, 120, 255), rgb(80, 220, 255) }
		)
		local SilentFov = MakeFov(
			{ rgb(255, 85, 120), rgb(255, 170, 90), rgb(255, 85, 200) },
			{ rgb(255, 85, 120), rgb(255, 170, 90), rgb(255, 85, 200) }
		)

		Connect(RunService.RenderStepped, function()
			local mousePos = UserInputService:GetMouseLocation()
			local t = os.clock()
			LegitFov:Update(LegitLive(), mousePos, Legit.Radius, t)
			SilentFov:Update(SilentLive(), mousePos, Silent.Radius, t)
		end)

		--// LEGIT: AIMBOT ---------------------------------------------------
		-- Settings > Notify Appear: tells you when the aimbot turns on / off
		local lastLive = false
		local function NotifyLegit()
			local live = LegitLive()
			if live == lastLive then
				return
			end
			lastLive = live
			if Window.AimbotNotify then
				Window:Notify("Aimbot", live and "Aimbot is ON" or "Aimbot is OFF", 1.5, true)
			end
		end

		local function ForceOff(reason)
			lastLive = false
			Legit.On = false
			Legit.Target = nil
			Legit.Remainder = Vector2.zero
			if enableToggle then
				enableToggle:Set(false, true)
			end
			Window:Notify("Legit", reason, 3, true)
		end

		local function LegitStep(dt)
			if not LegitLive() then
				return
			end
			local cam = workspace.CurrentCamera
			if not cam then
				return
			end
			local mine = LocalPlayer.Character
			local myHumanoid = mine and mine:FindFirstChildOfClass("Humanoid")
			if not (myHumanoid and myHumanoid.Health > 0) then
				Legit.Target = nil
				return
			end

			local mousePos = UserInputService:GetMouseLocation()
			local part, humanoid

			-- sticky: keep the current lock while it stays valid
			local locked = Legit.Target
			if locked and Legit.Sticky then
				if not locked.Parent then
					Legit.Target = nil
				else
					local lockedChar = locked.Character
					local lockedHumanoid = lockedChar and lockedChar:FindFirstChildOfClass("Humanoid")
					if Legit.DeathCheck and lockedHumanoid and lockedHumanoid.Health <= 1 then
						return ForceOff("Death check: target is at 1 HP or below, aimbot turned off.")
					end
					part, humanoid = Evaluate(locked, Legit, cam, mousePos, false)
					if not part then
						Legit.Target = nil
					end
				end
			end

			if not part then
				local player, p, h = PickTarget(Legit, cam, mousePos)
				if player then
					Legit.Target, part, humanoid = player, p, h
				end
			end
			if not part then
				return
			end
			if Legit.DeathCheck and humanoid.Health <= 1 then
				return ForceOff("Death check: target is at 1 HP or below, aimbot turned off.")
			end

			-- aim point: prediction + humanize (slow natural drift so the aim is never pixel perfect)
			local aim = AimPoint(part, Legit)
			if Legit.Humanize > 0 then
				local t = os.clock()
				local amp = Legit.Humanize / 100 * 1.5
				aim += cam.CFrame.RightVector * (math.noise(t * 1.7, 0.31) * amp) + cam.CFrame.UpVector * (math.noise(t * 1.3, 7.7) * amp)
			end
			local sp = cam:WorldToViewportPoint(aim)
			if sp.Z <= 0 then
				return
			end
			local screen = Vector2.new(sp.X, sp.Y)
			if (screen - mousePos).Magnitude < Legit.Deadzone then
				return -- already on target, don't jitter
			end

			local rate = Legit.Speed * 6 * (Legit.Strength / 100) / (1 + Legit.Smoothness / 8)
			local alpha = 1 - math.exp(-dt * rate)

			if Legit.Method == "Mouse" and type(mousemoverel) == "function" then
				local delta = (screen - mousePos) * alpha + Legit.Remainder
				local ix = delta.X >= 0 and math.floor(delta.X) or math.ceil(delta.X)
				local iy = delta.Y >= 0 and math.floor(delta.Y) or math.ceil(delta.Y)
				Legit.Remainder = delta - Vector2.new(ix, iy)
				if ix ~= 0 or iy ~= 0 then
					mousemoverel(ix, iy)
				end
				return
			end
			if Legit.Method == "Mouse" and not Legit.WarnedMouse then
				Legit.WarnedMouse = true
				Window:Notify("Legit", "Your executor has no mousemoverel, so the Mouse method can't run. Using Camera instead.", 5, true)
			end
			cam.CFrame = cam.CFrame:Lerp(CFrame.lookAt(cam.CFrame.Position, aim), alpha)
		end

		pcall(function() RunService:UnbindFromRenderStep("PrestigeLegit") end)
		RunService:BindToRenderStep("PrestigeLegit", Enum.RenderPriority.Camera.Value + 2, LegitStep)

		--// UNLEGIT: SILENT AIM (camera spoof, no hooks) ----------------------
		-- Heartbeat (after the frame is drawn): the target is re-picked with FRESH positions and the camera
		-- is rotated so the cursor ray passes through it. Everything the game reads during the next input
		-- phase (Mouse.Hit / Target, camera rays, look vector) points at the target. At the very start of
		-- the next render step the real camera CFrame is written back, so the screen never shows it.
		-- Accuracy: sticky target (no flip-flopping), ping compensation, fresh re-pick on click, and a
		-- fallback to another visible body part when the chosen one is blocked.
		local Spoof = { Real = nil, Held = false, ClickUntil = 0 }
		local lastRefresh = 0

		local function SilentLead()
			local lead = Silent.Prediction
			if Silent.PingComp then
				local ok, ping = pcall(function() return LocalPlayer:GetNetworkPing() end)
				if ok and type(ping) == "number" then
					lead += math.min(ping, 0.3)
				end
			end
			return lead
		end

		local function RefreshSilent(force)
			local now = os.clock()
			if not force and now - lastRefresh < 0.003 then
				return
			end
			lastRefresh = now
			Silent.Part = nil
			if not SilentLive() then
				Silent.Player = nil
				return
			end
			local cam = workspace.CurrentCamera
			local mine = LocalPlayer.Character
			local myHumanoid = mine and mine:FindFirstChildOfClass("Humanoid")
			if not (cam and myHumanoid and myHumanoid.Health > 0) then
				return
			end
			local mousePos = UserInputService:GetMouseLocation()
			local part
			-- keep the current target while it stays valid and near the FOV
			local keep = Silent.Player
			if keep and keep.Parent then
				local p, _, dist = Evaluate(keep, Silent, cam, mousePos, false)
				if p and dist <= Silent.Radius * 1.25 then
					part = p
				end
			end
			if not part then
				local player, p = PickTarget(Silent, cam, mousePos)
				Silent.Player, part = player, p
			end
			Silent.Part = part
		end

		-- hit chance roll, once per frame
		Connect(RunService.RenderStepped, function()
			Silent.Roll = Silent.HitChance >= 100 or math.random(1, 100) <= Silent.HitChance
		end)

		local function RestoreSpoof()
			if Spoof.Real then
				local cam = workspace.CurrentCamera
				if cam then
					cam.CFrame = Spoof.Real
				end
				Spoof.Real = nil
			end
		end

		local function ApplySpoof()
			if Spoof.Real or not SilentLive() then
				return
			end
			if Silent.Trigger == "On Click" and not (Spoof.Held or os.clock() < Spoof.ClickUntil) then
				return
			end
			RefreshSilent(false)
			local part = Silent.Part
			if not (part and part.Parent and Silent.Roll) then
				return
			end
			local cam = workspace.CurrentCamera
			if not cam then
				return
			end
			local cf = cam.CFrame
			local mouse = UserInputService:GetMouseLocation()
			local d0 = cam:ViewportPointToRay(mouse.X, mouse.Y).Direction.Unit
			local d1 = (AimPoint(part, Silent, SilentLead()) - cf.Position).Unit
			local axis = d0:Cross(d1)
			if axis.Magnitude < 1e-5 then
				return
			end
			local rot = CFrame.fromAxisAngle(axis.Unit, math.acos(math.clamp(d0:Dot(d1), -1, 1)))
			Spoof.Real = cf
			cam.CFrame = CFrame.new(cf.Position) * rot * cf.Rotation
		end

		pcall(function() RunService:UnbindFromRenderStep("PrestigeSpoofRestore") end)
		RunService:BindToRenderStep("PrestigeSpoofRestore", Enum.RenderPriority.First.Value, RestoreSpoof)
		Connect(RunService.Heartbeat, ApplySpoof)

		-- the instant the button goes down: re-pick with fresh positions and re-aim
		Connect(UserInputService.InputBegan, function(input, processed)
			if processed or not IsPress(input) then
				return
			end
			Spoof.Held = true
			Spoof.ClickUntil = os.clock() + 0.15
			if SilentLive() then
				RestoreSpoof()
				RefreshSilent(true)
				ApplySpoof()
			end
		end)
		Connect(UserInputService.InputEnded, function(input)
			if IsPress(input) then
				Spoof.Held = false
			end
		end)

		--// UI ---------------------------------------------------------------
		local function AddFovControls(card, fov, flag, label)
			card:AddToggle({
				Name = label .. " FOV", Flag = flag .. "FovShow",
				Colors = fov.Colors, ColorFlags = { flag .. "FovC1", flag .. "FovC2", flag .. "FovC3" },
				OnColor = function(i, color) fov.Colors[i] = color fov.Dirty = true end,
				Callback = function(v) fov.Show = v end,
			})
			card:AddToggle({
				Name = label .. " FOV Fill", Flag = flag .. "FovFill",
				Colors = fov.FillColors, ColorFlags = { flag .. "FillC1", flag .. "FillC2", flag .. "FillC3" },
				OnColor = function(i, color) fov.FillColors[i] = color fov.Dirty = true end,
				Callback = function(v) fov.Fill = v end,
			})
			card:AddSlider({
				Name = "FOV Fill Opacity", Min = 5, Max = 100, Default = 15, Step = 1, Flag = flag .. "FovOpacity",
				Callback = function(v) fov.FillTransparency = 1 - v / 100 fov.Dirty = true end,
			})
			card:AddSlider({
				Name = "FOV Thickness", Min = 1, Max = 5, Default = 1.5, Step = 0.5, Flag = flag .. "FovThickness",
				Callback = function(v) fov.Thickness = v fov.Dirty = true end,
			})
			card:AddSlider({
				Name = "FOV Animation Speed", Min = 0, Max = 5, Default = 1, Step = 0.1, Flag = flag .. "FovSpeed",
				Callback = function(v) fov.Speed = v end,
			})
		end

		-- LEFT: Legit (one card, scroll down)
		local legitCard = main:AddCard(1, "Legit")
		enableToggle = legitCard:AddToggle({
			Name = "Enable", Flag = "LegitEnable",
			Callback = function(value)
				Legit.On = value
				Legit.Target = nil
				Legit.Remainder = Vector2.zero
				NotifyLegit()
			end,
		})
		legitCard:AddKeybind({
			Name = "Legit Keybind", Flag = "LegitKey", Mode = "Hold",
			OnState = function(active)
				Legit.Active = active
				Legit.Target = nil
				Legit.Remainder = Vector2.zero
				NotifyLegit()
			end,
		})
		legitCard:AddDropdown({
			Name = "Method", Options = { "Camera", "Mouse" }, Default = "Camera", Flag = "LegitMethod",
			Callback = function(value) Legit.Method = value Legit.Remainder = Vector2.zero end,
		})
		legitCard:AddDropdown({
			Name = "Hit Part", Options = { "Head", "Torso", "HumanoidRootPart", "Closest" }, Default = "Head", Flag = "LegitHitPart",
			Callback = function(v) Legit.HitPart = v end,
		})
		legitCard:AddDropdown({
			Name = "Target Priority", Options = { "Cursor", "Distance", "Health" }, Default = "Cursor", Flag = "LegitPriority",
			Callback = function(v) Legit.Priority = v end,
		})
		legitCard:AddToggle({
			Name = "Sticky Target", Default = true, Flag = "LegitSticky",
			Callback = function(v) Legit.Sticky = v Legit.Target = nil end,
		})
		legitCard:AddSlider({
			Name = "Prediction (s)", Min = 0, Max = 0.5, Default = 0, Step = 0.01, Flag = "LegitPrediction",
			Callback = function(v) Legit.Prediction = v end,
		})
		legitCard:AddSlider({
			Name = "Smoothness", Min = 0, Max = 100, Default = 20, Step = 1, Flag = "LegitSmoothness",
			Callback = function(v) Legit.Smoothness = v end,
		})
		legitCard:AddSlider({
			Name = "Speed", Min = 1, Max = 20, Default = 8, Step = 0.5, Flag = "LegitSpeed",
			Callback = function(v) Legit.Speed = v end,
		})
		legitCard:AddSlider({
			Name = "Strength", Min = 1, Max = 100, Default = 100, Step = 1, Flag = "LegitStrength",
			Callback = function(v) Legit.Strength = v end,
		})
		legitCard:AddSlider({
			Name = "Humanize", Min = 0, Max = 100, Default = 0, Step = 1, Flag = "LegitHumanize",
			Callback = function(v) Legit.Humanize = v end,
		})
		legitCard:AddSlider({
			Name = "Deadzone (px)", Min = 0, Max = 30, Default = 2, Step = 1, Flag = "LegitDeadzone",
			Callback = function(v) Legit.Deadzone = v end,
		})
		legitCard:AddSlider({
			Name = "FOV Radius (px)", Min = 50, Max = 1000, Default = 350, Step = 10, Flag = "LegitRadius",
			Callback = function(v) Legit.Radius = v end,
		})
		legitCard:AddToggle({
			Name = "Team Check", Default = false, Flag = "LegitTeamCheck",
			Callback = function(v) Legit.TeamCheck = v end,
		})
		legitCard:AddToggle({
			Name = "Wall Check", Default = true, Flag = "LegitWallCheck",
			Callback = function(v) Legit.WallCheck = v end,
		})
		legitCard:AddToggle({
			Name = "Death Check", Default = true, Flag = "LegitDeathCheck",
			Callback = function(v) Legit.DeathCheck = v end,
		})
		AddFovControls(legitCard, LegitFov, "Legit", "Aimbot")
		legitCard:AddLabel("Enable arms the aimbot. Right-click the keybind to pick Always / Hold / Toggle (default Hold; with no key bound it is always active; mouse buttons 2 and 3 can be bound too). Prediction leads moving targets, Humanize adds natural drift, Deadzone stops jitter when you're already on target, Sticky keeps the lock until the target is invalid. Death Check turns the aimbot off when the target is at 1 HP or below.")

		-- RIGHT: Unlegit (silent aim)
		local unlegitCard = main:AddCard(2, "Unlegit")
		silentToggle = unlegitCard:AddToggle({
			Name = "Silent Aim", Flag = "SilentEnable",
			Callback = function(value)
				Silent.On = value
				Silent.Part = nil
				Silent.Player = nil
			end,
		})
		unlegitCard:AddKeybind({
			Name = "Silent Keybind", Flag = "SilentKey", Mode = "Always",
			OnState = function(active)
				Silent.Active = active
				Silent.Part = nil
				Silent.Player = nil
			end,
		})
		unlegitCard:AddDropdown({
			Name = "Trigger", Options = { "Always", "On Click" }, Default = "Always", Flag = "SilentTrigger",
			Callback = function(v) Silent.Trigger = v end,
		})
		unlegitCard:AddDropdown({
			Name = "Hit Part", Options = { "Head", "Torso", "HumanoidRootPart", "Closest" }, Default = "Head", Flag = "SilentHitPart",
			Callback = function(v) Silent.HitPart = v end,
		})
		unlegitCard:AddDropdown({
			Name = "Target Priority", Options = { "Cursor", "Distance", "Health" }, Default = "Cursor", Flag = "SilentPriority",
			Callback = function(v) Silent.Priority = v end,
		})
		unlegitCard:AddSlider({
			Name = "Hit Chance (%)", Min = 1, Max = 100, Default = 100, Step = 1, Flag = "SilentHitChance",
			Callback = function(v) Silent.HitChance = v end,
		})
		unlegitCard:AddToggle({
			Name = "Ping Compensation", Default = true, Flag = "SilentPingComp",
			Callback = function(v) Silent.PingComp = v end,
		})
		unlegitCard:AddSlider({
			Name = "Prediction (s)", Min = 0, Max = 0.5, Default = 0, Step = 0.01, Flag = "SilentPrediction",
			Callback = function(v) Silent.Prediction = v end,
		})
		unlegitCard:AddSlider({
			Name = "FOV Radius (px)", Min = 50, Max = 1000, Default = 250, Step = 10, Flag = "SilentRadius",
			Callback = function(v) Silent.Radius = v end,
		})
		unlegitCard:AddToggle({
			Name = "Team Check", Default = false, Flag = "SilentTeamCheck",
			Callback = function(v) Silent.TeamCheck = v end,
		})
		unlegitCard:AddToggle({
			Name = "Wall Check", Default = true, Flag = "SilentWallCheck",
			Callback = function(v) Silent.WallCheck = v end,
		})
		unlegitCard:AddToggle({
			Name = "Death Check", Default = true, Flag = "SilentDeathCheck",
			Callback = function(v) Silent.SkipLow = v end,
		})
		AddFovControls(unlegitCard, SilentFov, "Silent", "Silent")
		unlegitCard:AddLabel("Silent aim spoofs your camera for a split second right when the game reads your aim, then puts it back before the frame draws, so you never see it. Trigger: Always = spoofed constantly, On Click = only while you hold / press the mouse button. Ping Compensation leads moving targets by your ping; the lock is sticky and falls back to another visible body part when the chosen one is blocked. Death Check skips targets at 1 HP or below.")

		-- clean unload
		local baseDestroy = Window.Destroy
		function Window:Destroy()
			Legit.On = false
			Legit.Target = nil
			Silent.On = false
			Silent.Part = nil
			RestoreSpoof()
			pcall(function() RunService:UnbindFromRenderStep("PrestigeLegit") end)
			pcall(function() RunService:UnbindFromRenderStep("PrestigeSpoofRestore") end)
			FovGui:Destroy()
			baseDestroy(self)
		end
	end

end

local playerTab = Window:AddTab("Player")
Window:AddTab("World")

-- PLAYER > BLACKLIST: pick a player, then choose which features only work on them
do
	local card = playerTab:AddCard(1, "Blacklist")
	local dropdown

	local function Labels()
		local list = {}
		table.clear(Blacklist.Map)
		for _, player in Players:GetPlayers() do
			if player ~= LocalPlayer then
				local label = ("%s (@%s)"):format(player.DisplayName, player.Name)
				Blacklist.Map[label] = player
				table.insert(list, label)
			end
		end
		table.sort(list, function(a, b) return a:lower() < b:lower() end)
		return list
	end

	dropdown = card:AddDropdown({
		Name = "Player", Options = Labels(), Flag = "BlacklistPlayer",
		Callback = function(label)
			Blacklist.Selected = Blacklist.Map[label]
			if Blacklist.Selected then
				Window:Notify("Blacklist", "Selected " .. label, 2)
			end
		end,
	})

	local function refresh()
		dropdown:SetOptions(Labels())
		if Blacklist.Selected and not Blacklist.Selected.Parent then
			Blacklist.Selected = nil
			dropdown:Set(nil, true)
		end
	end
	Connect(Players.PlayerAdded, function() task.defer(refresh) end)
	Connect(Players.PlayerRemoving, function(player)
		if Blacklist.Selected == player then
			Blacklist.Selected = nil
			dropdown:Set(nil, true)
		end
		task.defer(refresh)
	end)

	local function needSelection(value)
		if value and not Blacklist.Selected then
			Window:Notify("Blacklist", "Select a player first, this feature only works on the selected player.", 4, true)
		end
	end
	card:AddToggle({
		Name = "Aimbot", Flag = "BlacklistAimbot",
		Callback = function(v) Blacklist.Aimbot = v needSelection(v) end,
	})
	card:AddToggle({
		Name = "Silent Aim", Flag = "BlacklistSilent",
		Callback = function(v) Blacklist.Silent = v needSelection(v) end,
	})
	card:AddToggle({
		Name = "ESP", Flag = "BlacklistEsp",
		Callback = function(v) Blacklist.Esp = v needSelection(v) end,
	})
	card:AddButton({
		Name = "Clear Selection",
		Callback = function()
			Blacklist.Selected = nil
			dropdown:Set(nil, true)
		end,
	})
	card:AddLabel("Pick a player from the list. Every switch you turn on here makes that feature (Aimbot, Silent Aim, ESP) work ONLY on the selected player. With a switch on and nobody selected, that feature targets no one.")
end

-- SETTINGS
local settings = Window:AddTab("Settings")
do
	-- menu
	local menu = settings:AddCard(1, "Menu")
	menu:AddKeybind({
		Name = "Menu Keybind", Default = Config.ToggleKey, Flag = "MenuKey", NoClear = true, NoModes = true,
		OnChange = function(key) if key then Config.ToggleKey = key end end,
	})
	menu:AddSlider({
		Name = "UI Scale", Min = 0.7, Max = 1.3, Default = 1, Step = 0.05, Flag = "UIScale",
		Callback = function(value)
			UserScale = value
			if isOpen then Tween(Scale, 0.2, { Scale = value * AutoScale }) end
		end,
	})
	menu:AddSlider({
		Name = "Background Visibility", Min = 0, Max = 100, Default = 20, Step = 1, Flag = "BackgroundVisibility",
		Callback = function(value) Tween(BgImage, 0.2, { ImageTransparency = 1 - value / 100 }) end,
	})
	menu:AddToggle({
		Name = "Notifications", Default = true, Flag = "Notifications",
		Callback = function(v) Window.NotificationsEnabled = v end,
	})
	menu:AddToggle({
		Name = "Notify Appear", Default = true, Flag = "NotifyAppear",
		Callback = function(v) Window.AimbotNotify = v end,
	})
	menu:AddLabel("Notify Appear: when on, you get a notification each time the aimbot turns on or off. When off, no aimbot notifications are sent.")
	menu:AddButton({ Name = "Unload UI", Callback = function() Window:Destroy() end })

	-- theme
	local theme = settings:AddCard(1, "Theme")
	ThemeUI.Preset = theme:AddDropdown({
		Name = "Preset", Options = PresetOrder, Default = ThemeState.Preset,
		Callback = function(name) Window:SetPreset(name) end,
	})
	for _, role in { "Accent", "Background", "Sidebar", "Card", "Element", "Text" } do
		ThemeUI.Pickers[role] = theme:AddColorPicker({
			Name = role, Default = Theme[role],
			Callback = function(color)
				Theme[role] = color
				if role == "Accent" then
					local lum = 0.299 * color.R + 0.587 * color.G + 0.114 * color.B
					Theme.OnAccent = lum > 0.55 and rgb(13, 13, 15) or rgb(255, 255, 255)
				end
				ThemeState.Preset = "Custom"
				ThemeUI.Preset:Set("Custom", true)
				ApplyTheme(false)
			end,
		})
	end
	theme:AddButton({ Name = "Reset Theme", Callback = function() Window:SetPreset(Config.DefaultPreset) end })

	-- configs
	local cfg = settings:AddCard(2, "Configs")
	local nameBox = cfg:AddInput({ Name = "Config Name", Placeholder = "my-config" })
	local cfgList = cfg:AddDropdown({ Name = "Saved", Options = Configs.List() })
	local info = cfg:AddLabel("")

	local function refreshInfo()
		info:SetText(("Storage: %s  •  Autoload: %s"):format(Configs.Backend, Configs.GetAutoload() or "none"))
	end
	local function refreshList(select)
		cfgList:SetOptions(Configs.List())
		if select then cfgList:Set(select, true) end
		refreshInfo()
	end
	local function target()
		local name = Configs.Sanitize(nameBox:Get())
		if name == "" then name = cfgList:Get() end
		return name
	end

	cfg:AddButtons({
		{ Name = "Save", Callback = function()
			local name = target()
			if not name or name == "" then return Window:Notify("Config", "Enter a config name first.", 3, true) end
			local ok, err = Configs.Save(name)
			if ok then
				refreshList(name)
				Window:Notify("Config saved", name, 3, true)
			else
				Window:Notify("Save failed", tostring(err), 4, true)
			end
		end },
		{ Name = "Load", Callback = function()
			local name = cfgList:Get()
			if not name then return Window:Notify("Config", "Select a config first.", 3, true) end
			local ok, err = Configs.Load(name)
			Window:Notify(ok and "Config loaded" or "Load failed", ok and name or tostring(err), 3, true)
		end },
	})
	cfg:AddButtons({
		{ Name = "Delete", Callback = function()
			local name = cfgList:Get()
			if not name then return Window:Notify("Config", "Select a config first.", 3, true) end
			Configs.Delete(name)
			if Configs.GetAutoload() == name then Configs.SetAutoload(nil) end
			cfgList:Set(nil, true)
			refreshList()
			Window:Notify("Config deleted", name, 3, true)
		end },
		{ Name = "Refresh", Callback = function() refreshList() end },
	})
	cfg:AddButtons({
		{ Name = "Set Autoload", Callback = function()
			local name = cfgList:Get()
			if not name then return Window:Notify("Config", "Select a config first.", 3, true) end
			Configs.SetAutoload(name)
			refreshInfo()
			Window:Notify("Autoload set", name, 3, true)
		end },
		{ Name = "Clear Autoload", Callback = function()
			Configs.SetAutoload(nil)
			refreshInfo()
			Window:Notify("Autoload cleared", "No config will load on start.", 3, true)
		end },
	})
	refreshInfo()

	-- share
	local share = settings:AddCard(2, "Share")
	local jsonBox = share:AddInput({ Name = "Config JSON", Placeholder = "paste here" })
	share:AddButtons({
		{ Name = "Export", Callback = function()
			local json = Configs.Encode()
			if type(setclipboard) == "function" then
				setclipboard(json)
				Window:Notify("Exported", "Config copied to clipboard.", 3, true)
			else
				jsonBox:Set(json, true)
				Window:Notify("Exported", "JSON placed in the box, copy it from there.", 4, true)
			end
		end },
		{ Name = "Import", Callback = function()
			local data = Configs.Decode(jsonBox:Get())
			if data and Configs.Apply(data) then
				Window:Notify("Imported", "Config applied.", 3, true)
			else
				Window:Notify("Import failed", "That JSON is not a valid config.", 4, true)
			end
		end },
	})
end

-- MOVEMENTS (created after Settings so it sits under it in the sidebar)
local movements = Window:AddTab("Movements")
do
	local card = movements:AddCard(1, "Movements")
	card:AddLabel("No movement features yet.")
end

--// ESP SYSTEM -----------------------------------------------------------
-- World > Main Esp. Uses only the public library API. Reach it via Window.Esp.
-- Features: Box (+fill), Name tag, Skeleton, Health bar, Distance, Tracers, Chams (Highlight),
--           team check, max distance.
--
-- Lifecycle (everything is automatic):
--   player joins / rejoins -> Track(): a fresh ESP set is built for them
--   player leaves          -> Untrack(): their ESP is destroyed
--   player dies            -> ESP hides instantly
--   player respawns        -> old ESP is deleted and a brand new one is built on the new character
--   safety sweep (1s)      -> adds anyone that got missed, removes anyone who is gone
do
	local RunService = game:GetService("RunService")
	local WHITE = Color3.new(1, 1, 1)

	local Esp = {
		-- master gate: nothing draws until Player Esp is on; each feature below is switched on its own
		Enabled = false,

		-- feature switches
		Box = false,
		Fill = false,
		Name = false,
		Skeleton = false,
		Health = false,
		Distance = false,
		Tracer = false,
		Chams = false,

		-- settings
		NameMode = "Username", -- "Username" | "Display Name"
		FillTransparency = 0.65,
		Speed = 1,
		BoneThickness = 1.5,
		NameColor = WHITE,
		BoneColor = WHITE,
		TracerColor = WHITE,
		TracerFrom = "Bottom", -- "Bottom" | "Center" | "Mouse"
		ChamsFill = Color3.fromRGB(255, 85, 120),
		ChamsOutline = WHITE,
		ChamsTransparency = 0.5,
		TeamCheck = false,
		MaxDistance = 2000,
		BoxColors = { Color3.fromRGB(255, 85, 120), Color3.fromRGB(140, 90, 255), Color3.fromRGB(80, 200, 255) },
		FillColors = { Color3.fromRGB(255, 85, 120), Color3.fromRGB(140, 90, 255), Color3.fromRGB(80, 200, 255) },

		-- internals
		Version = 0,
		Objects = {},   -- player -> drawing objects
		Tracked = {},   -- player -> { connections }
		Connections = {},
		Drawing = false,
		SweepAt = 0,
	}

	--// HELPERS ----------------------------------------------------------
	local function Make(class, props, parent)
		local inst = Instance.new(class)
		for key, value in props do
			inst[key] = value
		end
		inst.Parent = parent
		return inst
	end

	local function Bind(signal, fn)
		table.insert(Esp.Connections, signal:Connect(fn))
	end

	-- 3 colors -> looping gradient (first color repeats at the end so rotation is seamless)
	local function Sequence(colors)
		return ColorSequence.new({
			ColorSequenceKeypoint.new(0, colors[1]),
			ColorSequenceKeypoint.new(1 / 3, colors[2]),
			ColorSequenceKeypoint.new(2 / 3, colors[3]),
			ColorSequenceKeypoint.new(1, colors[1]),
		})
	end

	--// SKELETON RIGS ----------------------------------------------------
	-- each end = { partName, yFactor }   yFactor: 0 = center, 1 = top, -1 = bottom
	local function Bone(a, fa, b, fb)
		return { { a, fa }, { b, fb } }
	end

	local R15 = {
		Bone("Head", 0, "UpperTorso", 0), Bone("UpperTorso", 0, "LowerTorso", 0),
		Bone("UpperTorso", 0, "LeftUpperArm", 0), Bone("LeftUpperArm", 0, "LeftLowerArm", 0), Bone("LeftLowerArm", 0, "LeftHand", 0),
		Bone("UpperTorso", 0, "RightUpperArm", 0), Bone("RightUpperArm", 0, "RightLowerArm", 0), Bone("RightLowerArm", 0, "RightHand", 0),
		Bone("LowerTorso", 0, "LeftUpperLeg", 0), Bone("LeftUpperLeg", 0, "LeftLowerLeg", 0), Bone("LeftLowerLeg", 0, "LeftFoot", 0),
		Bone("LowerTorso", 0, "RightUpperLeg", 0), Bone("RightUpperLeg", 0, "RightLowerLeg", 0), Bone("RightLowerLeg", 0, "RightFoot", 0),
	}
	local R6 = {
		Bone("Head", 0, "Torso", 1), Bone("Torso", 1, "Torso", -1),
		Bone("Torso", 1, "Left Arm", 1), Bone("Left Arm", 1, "Left Arm", -1),
		Bone("Torso", 1, "Right Arm", 1), Bone("Right Arm", 1, "Right Arm", -1),
		Bone("Torso", -1, "Left Leg", 1), Bone("Left Leg", 1, "Left Leg", -1),
		Bone("Torso", -1, "Right Leg", 1), Bone("Right Leg", 1, "Right Leg", -1),
	}

	local function PartPoint(char, spec)
		local part = char:FindFirstChild(spec[1])
		if part and part:IsA("BasePart") then
			return part.CFrame:PointToWorldSpace(Vector3.new(0, part.Size.Y / 2 * spec[2], 0))
		end
		return nil
	end

	--// DRAW LAYER -------------------------------------------------------
	Esp.Gui = Make("ScreenGui", {
		Name = "PrestigeESP",
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = 1,
	}, LocalPlayer:WaitForChild("PlayerGui"))

	function Esp:Refresh()
		self.BoxSequence = Sequence(self.BoxColors)
		self.FillSequence = Sequence(self.FillColors)
		self.Version += 1
	end

	-- Builds a brand-new set of drawing objects for a player. Any old set is deleted first,
	-- so calling this again is how the ESP "refreshes" (after respawn, manual refresh, ...).
	function Esp:Create(player)
		if self.Objects[player] then
			self:Remove(player)
		end

		local box = Make("Frame", { BackgroundTransparency = 1, BorderSizePixel = 0, Visible = false, ZIndex = 2 }, self.Gui)
		local stroke = Make("UIStroke", {
			Color = WHITE, Thickness = 1.5, ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		}, box)
		local fill = Make("Frame", {
			Size = UDim2.fromScale(1, 1), BackgroundColor3 = WHITE, BorderSizePixel = 0, Visible = false,
		}, box)

		local healthBack = Make("Frame", {
			BackgroundColor3 = Color3.new(0, 0, 0), BackgroundTransparency = 0.35, BorderSizePixel = 0, Visible = false, ZIndex = 3,
		}, self.Gui)
		local healthFill = Make("Frame", {
			AnchorPoint = Vector2.new(0, 1), Position = UDim2.fromScale(0, 1), Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = Color3.fromRGB(80, 255, 120), BorderSizePixel = 0, ZIndex = 4,
		}, healthBack)

		local obj = {
			Player = player,
			Version = -1,
			Box = box,
			Fill = fill,
			StrokeGradient = Make("UIGradient", {}, stroke),
			FillGradient = Make("UIGradient", {}, fill),
			HealthBack = healthBack,
			HealthFill = healthFill,
			Tag = Make("TextLabel", {
				Size = UDim2.fromOffset(220, 16),
				AnchorPoint = Vector2.new(0.5, 1),
				BackgroundTransparency = 1,
				Font = Enum.Font.GothamBold,
				TextSize = 13,
				TextColor3 = WHITE,
				TextStrokeTransparency = 0.4,
				Visible = false,
				ZIndex = 4,
			}, self.Gui),
			Dist = Make("TextLabel", {
				Size = UDim2.fromOffset(120, 14),
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundTransparency = 1,
				Font = Enum.Font.GothamMedium,
				TextSize = 12,
				TextColor3 = WHITE,
				TextStrokeTransparency = 0.4,
				Visible = false,
				ZIndex = 4,
			}, self.Gui),
			Tracer = Make("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5), BackgroundColor3 = WHITE, BorderSizePixel = 0, Visible = false, ZIndex = 2,
			}, self.Gui),
			Highlight = Make("Highlight", {
				Enabled = false, DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			}, self.Gui),
			Bones = {},
		}
		for i = 1, #R15 do
			obj.Bones[i] = Make("Frame", {
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundColor3 = WHITE,
				BorderSizePixel = 0,
				Visible = false,
				ZIndex = 3,
			}, self.Gui)
		end

		self.Objects[player] = obj
	end

	function Esp:Remove(player)
		local obj = self.Objects[player]
		if not obj then
			return
		end
		obj.Box:Destroy()
		obj.Tag:Destroy()
		obj.Dist:Destroy()
		obj.Tracer:Destroy()
		obj.HealthBack:Destroy()
		obj.Highlight:Destroy()
		for _, bone in obj.Bones do
			bone:Destroy()
		end
		self.Objects[player] = nil
	end

	function Esp:Hide(obj)
		obj.Box.Visible = false
		obj.Tag.Visible = false
		obj.Dist.Visible = false
		obj.Tracer.Visible = false
		obj.HealthBack.Visible = false
		obj.Highlight.Enabled = false
		for _, bone in obj.Bones do
			bone.Visible = false
		end
	end

	-- Start following a player: builds their ESP and reacts to death / respawn.
	function Esp:Track(player)
		if player == LocalPlayer or self.Tracked[player] then
			return
		end
		local links = {}
		self.Tracked[player] = links
		self:Create(player)

		-- hide right when the character dies
		local function hookHumanoid(char)
			local humanoid = char:WaitForChild("Humanoid", 10)
			if humanoid and self.Tracked[player] == links then
				table.insert(links, humanoid.Died:Connect(function()
					local o = self.Objects[player]
					if o then self:Hide(o) end
				end))
			end
		end

		table.insert(links, player.CharacterRemoving:Connect(function()
			local o = self.Objects[player]
			if o then self:Hide(o) end
		end))

		-- respawn: delete the old ESP completely and build a new one for the new character
		table.insert(links, player.CharacterAdded:Connect(function(char)
			if self.Tracked[player] ~= links then
				return
			end
			self:Create(player)
			task.spawn(hookHumanoid, char)
		end))

		if player.Character then
			task.spawn(hookHumanoid, player.Character)
		end
	end

	-- Stop following a player (left the game): everything of theirs is deleted.
	function Esp:Untrack(player)
		local links = self.Tracked[player]
		if links then
			for _, link in links do
				link:Disconnect()
			end
			self.Tracked[player] = nil
		end
		self:Remove(player)
	end

	-- Rebuilds every player's ESP from scratch (also wired to the Refresh button).
	function Esp:RefreshAll()
		local list = {}
		for player in self.Tracked do
			table.insert(list, player)
		end
		for _, player in list do
			if player.Parent then
				self:Create(player)
			else
				self:Untrack(player)
			end
		end
		for _, player in Players:GetPlayers() do
			self:Track(player) -- picks up anyone that was missed
		end
	end

	-- safety net: drops players who left, adds players who were missed, deletes orphaned elements
	function Esp:Sweep()
		for player in self.Tracked do
			if not player.Parent then
				self:Untrack(player)
			end
		end
		for _, player in Players:GetPlayers() do
			if player ~= LocalPlayer and not self.Tracked[player] then
				self:Track(player)
			end
		end
		local keep = {}
		for _, obj in self.Objects do
			keep[obj.Box], keep[obj.Tag], keep[obj.Dist], keep[obj.Tracer] = true, true, true, true
			keep[obj.HealthBack], keep[obj.Highlight] = true, true
			for _, bone in obj.Bones do
				keep[bone] = true
			end
		end
		for _, child in self.Gui:GetChildren() do
			if not keep[child] then
				child:Destroy()
			end
		end
	end

	-- pushes color / opacity / thickness changes to an object (only when settings changed)
	function Esp:Sync(obj)
		obj.Version = self.Version
		obj.StrokeGradient.Color = self.BoxSequence
		obj.FillGradient.Color = self.FillSequence
		obj.Fill.BackgroundTransparency = self.FillTransparency
		obj.Tag.TextColor3 = self.NameColor
		obj.Dist.TextColor3 = self.NameColor
		obj.Tracer.BackgroundColor3 = self.TracerColor
		obj.Highlight.FillColor = self.ChamsFill
		obj.Highlight.OutlineColor = self.ChamsOutline
		obj.Highlight.FillTransparency = self.ChamsTransparency
		for _, bone in obj.Bones do
			bone.BackgroundColor3 = self.BoneColor
		end
	end

	--// PER-FRAME DRAWING ------------------------------------------------
	-- Fixed-size box: built from the root part + character scale only, so accessories,
	-- wings, effects or oversized parts can never stretch it. Returns centerX, topY, width, height.
	function Esp:Geometry(root, camera)
		local scale = root.Size.Y / 2
		local top = camera:WorldToViewportPoint(root.Position + Vector3.new(0, 2.8 * scale, 0))
		local bottom = camera:WorldToViewportPoint(root.Position - Vector3.new(0, 3.1 * scale, 0))
		if top.Z <= 0 or bottom.Z <= 0 then
			return nil
		end
		local height = math.abs(bottom.Y - top.Y)
		return top.X, math.min(top.Y, bottom.Y), height * 0.55, height
	end

	function Esp:DrawBox(obj, cx, y, w, h, t)
		local visible = self.Box and cx ~= nil
		if visible then
			obj.Box.Position = UDim2.fromOffset(cx - w / 2, y)
			obj.Box.Size = UDim2.fromOffset(w, h)
			local rotation = (t * self.Speed * 90) % 360
			obj.StrokeGradient.Rotation = rotation
			obj.FillGradient.Rotation = 360 - rotation
		end
		obj.Box.Visible = visible
		obj.Fill.Visible = visible and self.Fill
	end

	function Esp:DrawHealth(obj, humanoid, cx, y, w, h)
		local visible = self.Health and cx ~= nil
		if visible then
			local frac = math.clamp(humanoid.Health / math.max(humanoid.MaxHealth, 1), 0, 1)
			obj.HealthBack.Position = UDim2.fromOffset(cx - w / 2 - 6, y)
			obj.HealthBack.Size = UDim2.fromOffset(3, h)
			obj.HealthFill.Size = UDim2.fromScale(1, frac)
			obj.HealthFill.BackgroundColor3 = Color3.fromHSV(frac * 0.33, 0.9, 1)
		end
		obj.HealthBack.Visible = visible
	end

	function Esp:DrawDistance(obj, dist, cx, y, h)
		local visible = self.Distance and cx ~= nil
		if visible then
			obj.Dist.Position = UDim2.fromOffset(cx, y + h + 2)
			obj.Dist.Text = ("[%d]"):format(math.floor(dist))
		end
		obj.Dist.Visible = visible
	end

	function Esp:DrawTag(obj, char, camera)
		local visible = false
		local head = self.Name and char:FindFirstChild("Head")
		if head and head:IsA("BasePart") then
			local p = camera:WorldToViewportPoint(head.Position + Vector3.new(0, head.Size.Y / 2 + 0.7, 0))
			if p.Z > 0 then
				visible = true
				obj.Tag.Position = UDim2.fromOffset(p.X, p.Y)
				obj.Tag.Text = self.NameMode == "Display Name" and obj.Player.DisplayName or obj.Player.Name
			end
		end
		obj.Tag.Visible = visible
	end

	function Esp:DrawTracer(obj, cx, y, h, camera)
		local visible = self.Tracer and cx ~= nil
		if visible then
			local vp = camera.ViewportSize
			local from
			if self.TracerFrom == "Center" then
				from = Vector2.new(vp.X / 2, vp.Y / 2)
			elseif self.TracerFrom == "Mouse" then
				from = UserInputService:GetMouseLocation()
			else
				from = Vector2.new(vp.X / 2, vp.Y)
			end
			local to = Vector2.new(cx, y + h)
			local delta = to - from
			obj.Tracer.Size = UDim2.fromOffset(delta.Magnitude, 1.5)
			obj.Tracer.Position = UDim2.fromOffset((from.X + to.X) / 2, (from.Y + to.Y) / 2)
			obj.Tracer.Rotation = math.deg(math.atan2(delta.Y, delta.X))
		end
		obj.Tracer.Visible = visible
	end

	function Esp:DrawSkeleton(obj, char, camera)
		local rig = self.Skeleton and (char:FindFirstChild("UpperTorso") and R15 or R6) or {}
		for i, bone in obj.Bones do
			local visible = false
			local link = rig[i]
			if link then
				local a, b = PartPoint(char, link[1]), PartPoint(char, link[2])
				if a and b then -- a missing limb only hides its own bone
					local pa, pb = camera:WorldToViewportPoint(a), camera:WorldToViewportPoint(b)
					if pa.Z > 0 and pb.Z > 0 then
						local dx, dy = pb.X - pa.X, pb.Y - pa.Y
						bone.Size = UDim2.fromOffset(math.sqrt(dx * dx + dy * dy), self.BoneThickness)
						bone.Position = UDim2.fromOffset((pa.X + pb.X) / 2, (pa.Y + pb.Y) / 2)
						bone.Rotation = math.deg(math.atan2(dy, dx))
						visible = true
					end
				end
			end
			bone.Visible = visible
		end
	end

	function Esp:DrawChams(obj, char)
		if obj.Highlight.Adornee ~= char then
			obj.Highlight.Adornee = char
		end
		obj.Highlight.Enabled = self.Chams
	end

	function Esp:Update(obj, camera, t)
		local player = obj.Player
		local char = player.Character
		local humanoid = char and char.Parent and char:FindFirstChildOfClass("Humanoid")
		local root = char and char:FindFirstChild("HumanoidRootPart")
		if not (humanoid and humanoid.Health > 0 and root) then
			self:Hide(obj)
			return
		end
		if self.TeamCheck and player.Team ~= nil and player.Team == LocalPlayer.Team then
			self:Hide(obj)
			return
		end
		if Blacklist.Esp and Blacklist.Selected ~= player then
			self:Hide(obj)
			return
		end
		local dist = (camera.CFrame.Position - root.Position).Magnitude
		if dist > self.MaxDistance then
			self:Hide(obj)
			return
		end
		if obj.Version ~= self.Version then
			self:Sync(obj)
		end
		local cx, y, w, h = self:Geometry(root, camera)
		self:DrawBox(obj, cx, y, w, h, t)
		self:DrawHealth(obj, humanoid, cx, y, w, h)
		self:DrawDistance(obj, dist, cx, y, h)
		self:DrawTag(obj, char, camera)
		self:DrawTracer(obj, cx, y, h, camera)
		self:DrawSkeleton(obj, char, camera)
		self:DrawChams(obj, char)
	end

	function Esp:AnyOn()
		return self.Enabled and (self.Box or self.Name or self.Skeleton or self.Health or self.Distance or self.Tracer or self.Chams)
	end

	function Esp:Step()
		local camera = workspace.CurrentCamera
		if not camera then
			return
		end
		local now = os.clock()
		if now >= self.SweepAt then
			self.SweepAt = now + 1
			self:Sweep()
		end
		if not self:AnyOn() then
			if self.Drawing then -- everything was just switched off: clear once, then idle
				for _, obj in self.Objects do
					self:Hide(obj)
				end
				self.Drawing = false
			end
			return
		end
		self.Drawing = true
		local t = os.clock()
		for _, obj in self.Objects do
			self:Update(obj, camera, t)
		end
	end

	function Esp:Unload()
		for _, connection in self.Connections do
			connection:Disconnect()
		end
		table.clear(self.Connections)
		local list = {}
		for player in self.Tracked do
			table.insert(list, player)
		end
		for _, player in list do
			self:Untrack(player)
		end
		self.Gui:Destroy()
	end

	--// PLAYERS + LOOP ---------------------------------------------------
	Esp:Refresh()
	for _, player in Players:GetPlayers() do
		Esp:Track(player)
	end
	Bind(Players.PlayerAdded, function(player)
		Esp:Track(player) -- joins and rejoins get a fresh ESP
	end)
	Bind(Players.PlayerRemoving, function(player)
		Esp:Untrack(player) -- leaving deletes their ESP
	end)
	Bind(RunService.RenderStepped, function()
		Esp:Step()
	end)

	-- unload together with the menu
	local baseDestroy = Window.Destroy
	function Window:Destroy()
		Esp:Unload()
		baseDestroy(self)
	end

	--// UI (World > Main Esp) -------------------------------------------
	local worldTab
	for _, tab in Window.Tabs do
		if tab.Name == "World" then
			worldTab = tab
			break
		end
	end
	worldTab = worldTab or Window:AddTab("World")

	local card = worldTab:AddCard(1, "Main Esp")
	local toggles = {}
	local boxSettings, nameSettings, skeletonSettings, tracerSettings, chamsSettings

	-- master switch: it only turns the ESP system on. It does NOT touch the individual toggles, so
	-- you switch on exactly the parts you want (Box, Name Tag, Skeleton, Health Bar, ...).
	card:AddToggle({
		Name = "Player Esp", Flag = "PlayerEsp",
		Callback = function(value) Esp.Enabled = value end,
	})
	card:AddLabel("Turn Player Esp on, then switch on only what you want below. Right-click Box / Name Tag / Skeleton / Tracers / Chams for their settings. ESP refreshes by itself on death, respawn, join, leave and rejoin.")

	-- Box ESP: 3 gradient colors sit side by side on the toggle row, right-click for fill settings
	toggles.Box = card:AddToggle({
		Name = "Box Esp", Flag = "BoxEsp",
		Colors = Esp.BoxColors, ColorFlags = { "BoxColor1", "BoxColor2", "BoxColor3" },
		OnColor = function(i, color)
			Esp.BoxColors[i] = color
			Esp:Refresh()
		end,
		Callback = function(value) Esp.Box = value end,
		OnRightClick = function() boxSettings:Toggle() end,
	})
	boxSettings = card:AddSettings()
	boxSettings:AddToggle({
		Name = "Fill", Flag = "BoxFill",
		Colors = Esp.FillColors, ColorFlags = { "FillColor1", "FillColor2", "FillColor3" },
		OnColor = function(i, color)
			Esp.FillColors[i] = color
			Esp:Refresh()
		end,
		Callback = function(value) Esp.Fill = value end,
	})
	boxSettings:AddSlider({
		Name = "Fill Opacity", Min = 5, Max = 100, Default = 35, Step = 1, Flag = "FillOpacity",
		Callback = function(value)
			Esp.FillTransparency = 1 - value / 100
			Esp:Refresh()
		end,
	})
	boxSettings:AddSlider({
		Name = "Animation Speed", Min = 0, Max = 5, Default = 1, Step = 0.1, Flag = "EspAnimSpeed",
		Callback = function(value) Esp.Speed = value end,
	})

	-- Name tag ESP
	toggles.Name = card:AddToggle({
		Name = "Name Tag Esp", Flag = "NameEsp",
		Callback = function(value) Esp.Name = value end,
		OnRightClick = function() nameSettings:Toggle() end,
	})
	nameSettings = card:AddSettings()
	nameSettings:AddDropdown({
		Name = "Show", Options = { "Username", "Display Name" }, Default = "Username", Flag = "NameMode",
		Callback = function(value) Esp.NameMode = value end,
	})
	nameSettings:AddColorPicker({
		Name = "Text Color", Default = Esp.NameColor, Flag = "NameColor",
		Callback = function(color)
			Esp.NameColor = color
			Esp:Refresh()
		end,
	})

	-- Skeleton ESP
	toggles.Skeleton = card:AddToggle({
		Name = "Skeleton Esp", Flag = "SkeletonEsp",
		Callback = function(value) Esp.Skeleton = value end,
		OnRightClick = function() skeletonSettings:Toggle() end,
	})
	skeletonSettings = card:AddSettings()
	skeletonSettings:AddColorPicker({
		Name = "Bone Color", Default = Esp.BoneColor, Flag = "BoneColor",
		Callback = function(color)
			Esp.BoneColor = color
			Esp:Refresh()
		end,
	})
	skeletonSettings:AddSlider({
		Name = "Thickness", Min = 1, Max = 4, Default = 1.5, Step = 0.5, Flag = "BoneThickness",
		Callback = function(value) Esp.BoneThickness = value end,
	})

	-- Health bar + distance
	toggles.Health = card:AddToggle({
		Name = "Health Bar", Flag = "HealthEsp",
		Callback = function(value) Esp.Health = value end,
	})
	toggles.Distance = card:AddToggle({
		Name = "Distance", Flag = "DistanceEsp",
		Callback = function(value) Esp.Distance = value end,
	})

	-- Tracers
	toggles.Tracer = card:AddToggle({
		Name = "Tracers", Flag = "TracerEsp",
		Callback = function(value) Esp.Tracer = value end,
		OnRightClick = function() tracerSettings:Toggle() end,
	})
	tracerSettings = card:AddSettings()
	tracerSettings:AddDropdown({
		Name = "From", Options = { "Bottom", "Center", "Mouse" }, Default = "Bottom", Flag = "TracerFrom",
		Callback = function(value) Esp.TracerFrom = value end,
	})
	tracerSettings:AddColorPicker({
		Name = "Tracer Color", Default = Esp.TracerColor, Flag = "TracerColor",
		Callback = function(color)
			Esp.TracerColor = color
			Esp:Refresh()
		end,
	})

	-- Chams (Highlight through walls)
	toggles.Chams = card:AddToggle({
		Name = "Chams", Flag = "ChamsEsp",
		Callback = function(value) Esp.Chams = value end,
		OnRightClick = function() chamsSettings:Toggle() end,
	})
	chamsSettings = card:AddSettings()
	chamsSettings:AddColorPicker({
		Name = "Fill Color", Default = Esp.ChamsFill, Flag = "ChamsFill",
		Callback = function(color)
			Esp.ChamsFill = color
			Esp:Refresh()
		end,
	})
	chamsSettings:AddColorPicker({
		Name = "Outline Color", Default = Esp.ChamsOutline, Flag = "ChamsOutline",
		Callback = function(color)
			Esp.ChamsOutline = color
			Esp:Refresh()
		end,
	})
	chamsSettings:AddSlider({
		Name = "Fill Opacity", Min = 0, Max = 100, Default = 50, Step = 1, Flag = "ChamsOpacity",
		Callback = function(value)
			Esp.ChamsTransparency = 1 - value / 100
			Esp:Refresh()
		end,
	})

	-- global ESP filters
	card:AddToggle({
		Name = "Team Check", Flag = "EspTeamCheck",
		Callback = function(value) Esp.TeamCheck = value end,
	})
	card:AddSlider({
		Name = "Max Distance", Min = 100, Max = 5000, Default = 2000, Step = 50, Flag = "EspMaxDistance",
		Callback = function(value) Esp.MaxDistance = value end,
	})

	card:AddButton({
		Name = "Refresh Esp",
		Callback = function()
			Esp:RefreshAll()
			Window:Notify("ESP", "Rebuilt ESP for every player.", 2, true)
		end,
	})

	Window.Esp = Esp
end

--// VISUALS ------------------------------------------------------------
-- World: Hit Charms, Tung Tung, World Visuals, Skybox, Weather, World Texture.
do
	local RunService = game:GetService("RunService")
	local Lighting = game:GetService("Lighting")

	local PINK = Color3.fromRGB(255, 105, 180)
	local WHITE = Color3.new(1, 1, 1)

	local worldTab
	for _, tab in Window.Tabs do
		if tab.Name == "World" then
			worldTab = tab
			break
		end
	end
	worldTab = worldTab or Window:AddTab("World")

	-- ================================================================
	-- HIT CHARMS
	-- When you damage another player, a colored copy of them is left behind and fades out
	-- (purely visual, client side).
	--   My Hits    = only damage that happens shortly after you click / use a tool (ping is added to the window)
	--   Any Damage = every health drop on another player inside the range
	-- Built part by part, so it works on any character (no Tool needed, no model clone needed).
	-- ================================================================
	local Charms = { On = false, Fade = 1.5, Color = PINK, Opacity = 0.65, Window = 1.0, Range = 500, Mode = "My Hits", Last = {} }
	local CharmFolder = Instance.new("Folder")
	CharmFolder.Name = "PrestigeCharms"
	CharmFolder.Parent = workspace
	local lastSwing = 0

	local function PingSeconds()
		local ok, ping = pcall(function() return LocalPlayer:GetNetworkPing() end)
		return (ok and type(ping) == "number") and math.min(ping, 0.3) or 0
	end

	local function SpawnCharm(char)
		local charm = Instance.new("Folder")
		charm.Name = "Charm"
		local made = {}

		for _, d in char:GetDescendants() do
			if d:IsA("BasePart") and d.Name ~= "HumanoidRootPart" and d.Transparency < 0.99 and not d:FindFirstAncestorOfClass("Tool") then
				local clone
				local was = d.Archivable
				d.Archivable = true
				local ok, copy = pcall(d.Clone, d)
				d.Archivable = was
				if ok and copy then
					clone = copy
				else
					clone = Instance.new("Part") -- fallback: plain block with the same size and position
					clone.Size = d.Size
				end
				for _, child in clone:GetChildren() do
					if child:IsA("SpecialMesh") then
						child.TextureId = ""
					else
						child:Destroy() -- welds, attachments, decals, scripts, appearances...
					end
				end
				clone.CFrame = d.CFrame
				clone.Anchored = true
				clone.CanCollide = false
				clone.CanQuery = false
				clone.CanTouch = false
				clone.CastShadow = false
				clone.Massless = true
				clone.Material = Enum.Material.Neon
				clone.Color = Charms.Color
				clone.Transparency = 1 - Charms.Opacity
				if clone:IsA("MeshPart") then
					clone.TextureID = ""
				end
				clone.Parent = charm
				table.insert(made, clone)
			end
		end

		if #made == 0 then
			charm:Destroy()
			return
		end
		charm.Parent = CharmFolder
		for _, part in made do
			Tween(part, Charms.Fade, { Transparency = 1 }, Enum.EasingStyle.Linear)
		end
		task.delay(Charms.Fade + 0.25, function()
			charm:Destroy()
		end)
	end

	local function WithinRange(char)
		local mine = LocalPlayer.Character
		local origin = mine and mine:GetPivot().Position
		if not origin then
			local cam = workspace.CurrentCamera
			origin = cam and cam.CFrame.Position
		end
		if not origin then
			return true
		end
		return (char:GetPivot().Position - origin).Magnitude <= Charms.Range
	end

	local function HookCharacter(player, char)
		local humanoid = char:WaitForChild("Humanoid", 10)
		if not humanoid then
			return
		end
		local last = humanoid.Health
		humanoid.HealthChanged:Connect(function(hp)
			local dropped = hp < last
			last = hp
			if not (dropped and Charms.On) then
				return
			end
			if Charms.Mode == "My Hits" and os.clock() - lastSwing > Charms.Window + PingSeconds() then
				return
			end
			if not WithinRange(char) then
				return
			end
			local now = os.clock()
			if now - (Charms.Last[player] or 0) < 0.12 then
				return -- one charm per hit burst
			end
			Charms.Last[player] = now
			SpawnCharm(char)
		end)
	end

	local function HookPlayer(player)
		if player == LocalPlayer then
			return
		end
		if player.Character then
			task.spawn(HookCharacter, player, player.Character)
		end
		Connect(player.CharacterAdded, function(char)
			HookCharacter(player, char)
		end)
	end
	for _, player in Players:GetPlayers() do
		HookPlayer(player)
	end
	Connect(Players.PlayerAdded, HookPlayer)
	Connect(Players.PlayerRemoving, function(player)
		Charms.Last[player] = nil
	end)

	-- remember when you last attacked: any click / touch (even if the game sinks the input), held
	-- mouse button every frame, and every tool activation
	Connect(UserInputService.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			lastSwing = os.clock()
		end
	end)
	Connect(RunService.RenderStepped, function()
		if UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
			lastSwing = os.clock()
		end
	end)
	local function WatchTools(char)
		local function watch(tool)
			if tool:IsA("Tool") then
				Connect(tool.Activated, function() lastSwing = os.clock() end)
			end
		end
		for _, c in char:GetChildren() do watch(c) end
		Connect(char.ChildAdded, watch)
	end
	if LocalPlayer.Character then WatchTools(LocalPlayer.Character) end
	Connect(LocalPlayer.CharacterAdded, WatchTools)

	-- UI
	local charmCard = worldTab:AddCard(1, "Hit Charms")
	local charmSettings
	charmCard:AddToggle({
		Name = "Hit Charms", Flag = "HitCharms",
		Callback = function(v) Charms.On = v end,
		OnRightClick = function() charmSettings:Toggle() end,
	})
	charmSettings = charmCard:AddSettings()
	charmSettings:AddDropdown({
		Name = "Detect", Options = { "My Hits", "Any Damage" }, Default = "My Hits", Flag = "CharmMode",
		Callback = function(v) Charms.Mode = v end,
	})
	charmSettings:AddSlider({
		Name = "Range (studs)", Min = 20, Max = 2000, Default = 500, Step = 10, Flag = "CharmRange",
		Callback = function(v) Charms.Range = v end,
	})
	charmSettings:AddSlider({
		Name = "Hit Window (s)", Min = 0.2, Max = 3, Default = 1.0, Step = 0.1, Flag = "CharmWindow",
		Callback = function(v) Charms.Window = v end,
	})
	charmSettings:AddSlider({
		Name = "Fade Time (s)", Min = 0.2, Max = 6, Default = 1.5, Step = 0.1, Flag = "CharmFade",
		Callback = function(v) Charms.Fade = v end,
	})
	charmSettings:AddColorPicker({
		Name = "Charm Color", Default = PINK, Flag = "CharmColor",
		Callback = function(c) Charms.Color = c end,
	})
	charmSettings:AddSlider({
		Name = "Opacity", Min = 10, Max = 100, Default = 65, Step = 1, Flag = "CharmOpacity",
		Callback = function(v) Charms.Opacity = v / 100 end,
	})
	charmCard:AddLabel("A colored copy of the player appears when you damage them. Right-click for settings. My Hits = damage right after you click (ping is added to the window), Any Damage = any hit on anyone in range. Raise the Hit Window for slow projectiles.")

	-- ================================================================
	-- TUNG TUNG  (client side only, other players still see your real avatar)
	-- ================================================================
	local TUNG_ID = "98700908163662"
	local Tung = { On = false, Scale = 1, Stored = {}, Link = nil, Folder = nil }
	local HIDE_ENABLED = { "ParticleEmitter", "Trail", "Beam", "Fire", "Smoke", "Sparkles", "BillboardGui", "SurfaceGui", "Highlight" }

	local function HideInstance(d)
		if Tung.Stored[d] ~= nil then
			return
		end
		if d:IsA("BasePart") or d:IsA("Decal") then
			if d.Transparency < 1 then
				Tung.Stored[d] = { "Transparency", d.Transparency }
				d.Transparency = 1
			end
		else
			for _, class in HIDE_ENABLED do
				if d:IsA(class) then
					Tung.Stored[d] = { "Enabled", d.Enabled }
					d.Enabled = false
					break
				end
			end
		end
	end

	local function ClearOverlay()
		if Tung.Folder then
			Tung.Folder:Destroy()
			Tung.Folder = nil
		end
	end

	local function BuildOverlay(char)
		ClearOverlay()
		local root = char:FindFirstChild("HumanoidRootPart")
		if not root then
			return
		end
		local folder = Instance.new("Folder")
		folder.Name = "PrestigeTungTung"
		folder.Parent = workspace
		Tung.Folder = folder

		-- first try: the id is an image / decal -> billboard that always faces the camera
		local gui = Instance.new("BillboardGui")
		gui.Adornee = root
		gui.Size = UDim2.new(4 * Tung.Scale, 0, 6 * Tung.Scale, 0)
		gui.StudsOffset = Vector3.new(0, 0.5, 0)
		gui.LightInfluence = 0
		gui.ResetOnSpawn = false
		gui.Parent = folder
		local img = Instance.new("ImageLabel")
		img.Size = UDim2.fromScale(1, 1)
		img.BackgroundTransparency = 1
		img.ScaleType = Enum.ScaleType.Fit
		img.Parent = gui

		LoadImage(img, TUNG_ID, "", function(ok)
			if ok or Tung.Folder ~= folder then
				return
			end
			gui:Destroy()
			-- second try: the id is a model / mesh -> weld it to the root part
			local loaded, objs = pcall(function() return game:GetObjects("rbxassetid://" .. TUNG_ID) end)
			if not (loaded and objs and objs[1]) then
				local okAsset, model = pcall(function() return InsertService:LoadAsset(tonumber(TUNG_ID)) end)
				objs = okAsset and model and model:GetChildren() or nil
			end
			local asset = objs and objs[1]
			if not asset then
				Window:Notify("Tung Tung", "Could not load that asset (not an image and not loadable as a model).", 6, true)
				return
			end
			asset.Parent = folder
			if asset:IsA("Model") then
				asset:ScaleTo(Tung.Scale)
				asset:PivotTo(root.CFrame * CFrame.new(0, -0.5, 0))
			elseif asset:IsA("BasePart") then
				asset.CFrame = root.CFrame
			end
			local list = asset:IsA("BasePart") and { asset } or asset:GetDescendants()
			for _, d in list do
				if d:IsA("BasePart") then
					d.Anchored, d.CanCollide, d.CanQuery, d.CanTouch, d.Massless = false, false, false, false, true
					local weld = Instance.new("WeldConstraint")
					weld.Part0, weld.Part1 = root, d
					weld.Parent = d
				elseif d:IsA("Script") or d:IsA("LocalScript") then
					d:Destroy()
				end
			end
		end)
	end

	local function TungApply(char)
		if Tung.Link then
			Tung.Link:Disconnect()
			Tung.Link = nil
		end
		Tung.Stored = {}
		if not (Tung.On and char) then
			ClearOverlay()
			return
		end
		for _, d in char:GetDescendants() do
			HideInstance(d)
		end
		Tung.Link = char.DescendantAdded:Connect(function(d)
			task.defer(HideInstance, d)
		end)
		BuildOverlay(char)
	end

	local function TungSet(value)
		Tung.On = value
		if value then
			TungApply(LocalPlayer.Character)
		else
			if Tung.Link then
				Tung.Link:Disconnect()
				Tung.Link = nil
			end
			for inst, data in Tung.Stored do
				if inst.Parent then
					pcall(function() inst[data[1]] = data[2] end)
				end
			end
			Tung.Stored = {}
			ClearOverlay()
		end
	end

	Connect(LocalPlayer.CharacterAdded, function(char)
		if Tung.On then
			task.wait(0.6) -- let accessories load
			if Tung.On then
				TungApply(char)
			end
		end
	end)

	local tungCard = worldTab:AddCard(1, "Tung Tung")
	tungCard:AddToggle({ Name = "Tung Tung", Flag = "TungTung", Callback = TungSet })
	tungCard:AddSlider({
		Name = "Size", Min = 0.5, Max = 3, Default = 1, Step = 0.1, Flag = "TungSize",
		Callback = function(v)
			Tung.Scale = v
			if Tung.On and LocalPlayer.Character then
				BuildOverlay(LocalPlayer.Character)
			end
		end,
	})
	tungCard:AddLabel("Hides your whole character on your screen and shows the Tung Tung asset instead. Only you see it.")

	-- ================================================================
	-- WORLD: FOV / AMBIENT / TIME / FOG
	-- ================================================================
	local camera0 = workspace.CurrentCamera
	local Orig = {
		Fov = camera0 and camera0.FieldOfView or 70,
		Ambient = Lighting.Ambient, OutdoorAmbient = Lighting.OutdoorAmbient,
		Brightness = Lighting.Brightness, ClockTime = Lighting.ClockTime,
		FogEnd = Lighting.FogEnd, FogStart = Lighting.FogStart, FogColor = Lighting.FogColor,
	}
	local World = {
		Fov = false, FovValue = 90,
		Light = false, Ambient = Color3.fromRGB(120, 120, 140), Outdoor = Color3.fromRGB(150, 150, 170), Brightness = 2, Time = 14,
		Fog = false, FogEnd = 400, FogColor = Color3.fromRGB(180, 180, 190),
	}

	RunService:BindToRenderStep("PrestigeFov", Enum.RenderPriority.Camera.Value + 1, function()
		local cam = workspace.CurrentCamera
		if World.Fov and cam then
			cam.FieldOfView = World.FovValue
		end
	end)

	Connect(RunService.Heartbeat, function()
		if World.Light then
			Lighting.Ambient = World.Ambient
			Lighting.OutdoorAmbient = World.Outdoor
			Lighting.Brightness = World.Brightness
			Lighting.ClockTime = World.Time
		end
		if World.Fog then
			Lighting.FogStart = 0
			Lighting.FogEnd = World.FogEnd
			Lighting.FogColor = World.FogColor
		end
	end)

	local visCard = worldTab:AddCard(2, "World Visuals")
	visCard:AddToggle({
		Name = "Custom FOV", Flag = "CustomFov",
		Callback = function(v)
			World.Fov = v
			if not v and workspace.CurrentCamera then workspace.CurrentCamera.FieldOfView = Orig.Fov end
		end,
	})
	visCard:AddSlider({
		Name = "FOV", Min = 30, Max = 120, Default = 90, Step = 1, Flag = "FovValue",
		Callback = function(v) World.FovValue = v end,
	})
	visCard:AddToggle({
		Name = "Custom Lighting", Flag = "CustomLighting",
		Callback = function(v)
			World.Light = v
			if not v then
				Lighting.Ambient, Lighting.OutdoorAmbient = Orig.Ambient, Orig.OutdoorAmbient
				Lighting.Brightness, Lighting.ClockTime = Orig.Brightness, Orig.ClockTime
			end
		end,
	})
	visCard:AddColorRow({
		Name = "Ambient / Outdoor", Colors = { World.Ambient, World.Outdoor }, Flags = { "AmbientColor", "OutdoorColor" },
		Callback = function(i, color)
			if i == 1 then World.Ambient = color else World.Outdoor = color end
		end,
	})
	visCard:AddSlider({
		Name = "Brightness", Min = 0, Max = 6, Default = 2, Step = 0.1, Flag = "LightBrightness",
		Callback = function(v) World.Brightness = v end,
	})
	visCard:AddSlider({
		Name = "Time of Day", Min = 0, Max = 24, Default = 14, Step = 0.1, Flag = "TimeOfDay",
		Callback = function(v) World.Time = v end,
	})
	visCard:AddToggle({
		Name = "Custom Fog", Flag = "CustomFog",
		Callback = function(v)
			World.Fog = v
			if not v then
				Lighting.FogEnd, Lighting.FogStart, Lighting.FogColor = Orig.FogEnd, Orig.FogStart, Orig.FogColor
			end
		end,
	})
	visCard:AddSlider({
		Name = "Fog Distance", Min = 50, Max = 3000, Default = 400, Step = 10, Flag = "FogDistance",
		Callback = function(v) World.FogEnd = v end,
	})
	visCard:AddColorPicker({
		Name = "Fog Color", Default = World.FogColor, Flag = "FogColor",
		Callback = function(c) World.FogColor = c end,
	})

	-- ================================================================
	-- SKYBOX / SKY THEMES  (no asset ids needed)
	-- Each preset is a stack of things that always work: Sky (stars / sun / moon) + Atmosphere +
	-- ColorCorrection + Bloom + SunRays + tint colors + time of day. The game's own Sky / Atmosphere
	-- are parked while it is on, and anything the game adds later is parked too, so it can't fight back.
	-- Custom: paste ONE image id in "All Faces" (used on every face) and/or per-face ids.
	-- Decal ids are converted to their Image id automatically.
	-- ================================================================
	local DEFAULT_FACES = {
		Bk = "rbxasset://textures/sky/sky512_bk.tex", Dn = "rbxasset://textures/sky/sky512_dn.tex",
		Ft = "rbxasset://textures/sky/sky512_ft.tex", Lf = "rbxasset://textures/sky/sky512_lf.tex",
		Rt = "rbxasset://textures/sky/sky512_rt.tex", Up = "rbxasset://textures/sky/sky512_up.tex",
	}
	local function Atmo(color, decay, density, offset, glare, haze)
		return { Color = color, Decay = decay, Density = density, Offset = offset, Glare = glare, Haze = haze }
	end
	local function Grade(tint, sat, contrast, bright)
		return { Tint = tint, Sat = sat, Contrast = contrast, Bright = bright or 0 }
	end
	local SkyPresets = {
		Default = { Faces = "default", Time = 14, Stars = 3000, Celestial = true },
		Sunset = { Faces = "default", Time = 17.9, Stars = 500, Celestial = true,
			Top = rgb(255, 140, 90), Bottom = rgb(120, 60, 110),
			Atmo = Atmo(rgb(255, 150, 100), rgb(255, 90, 50), 0.5, 0.3, 1, 2.5),
			Grade = Grade(rgb(255, 210, 180), 0.2, 0.05), Bloom = { 0.5, 24, 0.85 }, Rays = 0.15 },
		["Golden Hour"] = { Faces = "default", Time = 16.3, Stars = 0, Celestial = true,
			Atmo = Atmo(rgb(255, 205, 130), rgb(255, 170, 80), 0.4, 0.2, 1, 2),
			Grade = Grade(rgb(255, 228, 175), 0.15, 0.05), Bloom = { 0.4, 24, 0.9 }, Rays = 0.2 },
		Night = { Faces = "default", Time = 0, Stars = 4500, Celestial = true,
			Atmo = Atmo(rgb(15, 20, 45), rgb(10, 10, 30), 0.45, 0, 0, 1),
			Grade = Grade(rgb(170, 185, 255), -0.05, 0.1, -0.05) },
		Space = { Faces = "black", Time = 0, Stars = 5000, Celestial = false,
			Grade = Grade(rgb(200, 210, 255), 0.1, 0.15) },
		Void = { Faces = "black", Time = 0, Stars = 0, Celestial = false,
			Atmo = Atmo(rgb(0, 0, 0), rgb(0, 0, 0), 0.9, 0, 0, 10),
			Grade = Grade(rgb(255, 255, 255), -0.6, 0.2, -0.1) },
		["Purple Dream"] = { Faces = "default", Time = 19, Stars = 3000, Celestial = false,
			Top = rgb(170, 90, 255), Bottom = rgb(255, 120, 200),
			Atmo = Atmo(rgb(180, 120, 255), rgb(255, 100, 220), 0.55, 0.3, 0.5, 3),
			Grade = Grade(rgb(230, 190, 255), 0.3, 0.05), Bloom = { 0.8, 28, 0.8 } },
		Overcast = { Faces = "default", Time = 12, Stars = 0, Celestial = false,
			Atmo = Atmo(rgb(170, 175, 185), rgb(150, 155, 165), 0.6, 0, 0, 5),
			Grade = Grade(rgb(220, 225, 235), -0.3, -0.05) },
		["Blood Moon"] = { Faces = "default", Time = 0, Stars = 2500, Celestial = true,
			Top = rgb(255, 40, 40), Bottom = rgb(90, 0, 0),
			Atmo = Atmo(rgb(160, 30, 30), rgb(90, 10, 10), 0.55, 0.1, 0, 3),
			Grade = Grade(rgb(255, 170, 170), 0.1, 0.15, -0.05) },
		Toxic = { Faces = "default", Time = 21, Stars = 1500, Celestial = false,
			Atmo = Atmo(rgb(120, 255, 90), rgb(60, 180, 40), 0.55, 0.1, 0, 3),
			Grade = Grade(rgb(190, 255, 170), 0.3, 0.1), Bloom = { 0.6, 24, 0.85 } },
		Ice = { Faces = "default", Time = 13, Stars = 0, Celestial = true,
			Atmo = Atmo(rgb(160, 220, 255), rgb(120, 190, 255), 0.45, 0, 0.3, 2.5),
			Grade = Grade(rgb(190, 235, 255), 0.1, 0.05), Rays = 0.1 },
	}
	local SkyOptions = { "Default", "Sunset", "Golden Hour", "Night", "Space", "Void", "Purple Dream", "Overcast", "Blood Moon", "Toxic", "Ice", "Custom" }
	local SkyFaces = { "Bk", "Dn", "Ft", "Lf", "Rt", "Up" }
	local SkyState = {
		On = false, Preset = "Default", Custom = {}, All = "", Celestial = true, Stars = 3000, Lock = true, Spin = 0,
		Obj = nil, Fx = {}, Stash = {}, Orig = nil, Token = 0, Cache = {},
	}

	local function ToContent(text)
		local clean = (tostring(text or ""):gsub("%s", ""))
		if clean == "" then return "" end
		if tonumber(clean) then return "rbxassetid://" .. clean end
		return clean
	end

	-- resolves a typed id to something a Sky face can show (Decal ids -> Image ids), then calls back
	local function ResolveFace(text, callback)
		local clean = (tostring(text or ""):gsub("%s", ""))
		if clean == "" then return callback("") end
		local id = (clean:gsub("%D", ""))
		if id == "" or clean:find("^rbxasset://") then return callback(ToContent(clean)) end
		if SkyState.Cache[id] then return callback(SkyState.Cache[id]) end
		task.spawn(function()
			local candidates = ResolveImageContent(id)
			local content = candidates and candidates[1] or ("rbxassetid://" .. id)
			SkyState.Cache[id] = content
			callback(content)
		end)
	end

	local function FxGet(class, name)
		local inst = SkyState.Fx[name]
		if inst and inst.Parent == Lighting then return inst end
		if inst then inst:Destroy() end
		inst = Instance.new(class)
		inst.Name = "Prestige" .. name
		inst.Parent = Lighting
		SkyState.Fx[name] = inst
		return inst
	end

	local function FxDrop(name)
		local inst = SkyState.Fx[name]
		if inst then
			inst:Destroy()
			SkyState.Fx[name] = nil
		end
	end

	-- parks the game's own Sky / Atmosphere so ours is the one that renders
	local function StashOthers(class)
		for _, child in Lighting:GetChildren() do
			if child:IsA(class) and child ~= SkyState.Obj and child ~= SkyState.Fx.Atmo then
				SkyState.Stash[child] = true
				child.Parent = nil
			end
		end
	end

	local function RestoreSky()
		SkyState.Token += 1
		if SkyState.Obj then SkyState.Obj:Destroy() SkyState.Obj = nil end
		for _, name in { "Atmo", "Grade", "Bloom", "Rays" } do FxDrop(name) end
		for inst in SkyState.Stash do inst.Parent = Lighting end
		table.clear(SkyState.Stash)
		if SkyState.Orig then
			Lighting.ColorShift_Top, Lighting.ColorShift_Bottom = SkyState.Orig.Top, SkyState.Orig.Bottom
			if not World.Light then Lighting.ClockTime = SkyState.Orig.Time end
			SkyState.Orig = nil
		end
	end

	local function ApplySky()
		if not SkyState.On then
			RestoreSky()
			return
		end
		SkyState.Token += 1
		local token = SkyState.Token
		local isCustom = SkyState.Preset == "Custom"
		local preset = SkyPresets[SkyState.Preset] or SkyPresets.Default

		if not SkyState.Orig then
			SkyState.Orig = { Top = Lighting.ColorShift_Top, Bottom = Lighting.ColorShift_Bottom, Time = Lighting.ClockTime }
		end
		if not SkyState.Obj or SkyState.Obj.Parent ~= Lighting then
			if SkyState.Obj then SkyState.Obj:Destroy() end
			local created = Instance.new("Sky")
			created.Name = "PrestigeSky"
			created.Parent = Lighting
			SkyState.Obj = created
		end
		StashOthers("Sky")
		local sky = SkyState.Obj

		-- faces
		if isCustom then
			for _, face in SkyFaces do
				local typed = SkyState.Custom[face]
				if not typed or (tostring(typed):gsub("%s", "")) == "" then
					typed = SkyState.All
				end
				ResolveFace(typed, function(content)
					if SkyState.Token == token and SkyState.Obj == sky then
						sky["Skybox" .. face] = content ~= "" and content or DEFAULT_FACES[face]
					end
				end)
			end
			sky.CelestialBodiesShown = SkyState.Celestial
			sky.StarCount = SkyState.Stars
		else
			local faces = preset.Faces == "black" and {} or (type(preset.Faces) == "table" and preset.Faces or DEFAULT_FACES)
			for _, face in SkyFaces do
				sky["Skybox" .. face] = ToContent(faces[face])
			end
			sky.CelestialBodiesShown = SkyState.Celestial and preset.Celestial ~= false
			sky.StarCount = preset.Stars or SkyState.Stars
		end

		-- atmosphere
		local atmo = (not isCustom) and preset.Atmo or nil
		if atmo then
			local a = FxGet("Atmosphere", "Atmo")
			StashOthers("Atmosphere")
			a.Color, a.Decay, a.Density, a.Offset, a.Glare, a.Haze = atmo.Color, atmo.Decay, atmo.Density, atmo.Offset, atmo.Glare, atmo.Haze
		else
			FxDrop("Atmo")
			for inst in SkyState.Stash do
				if inst:IsA("Atmosphere") then
					inst.Parent = Lighting
					SkyState.Stash[inst] = nil
				end
			end
		end

		-- color grading / bloom / sun rays
		local grade = (not isCustom) and preset.Grade or nil
		if grade then
			local g = FxGet("ColorCorrectionEffect", "Grade")
			g.TintColor, g.Saturation, g.Contrast, g.Brightness = grade.Tint, grade.Sat, grade.Contrast, grade.Bright
		else
			FxDrop("Grade")
		end
		local bloom = (not isCustom) and preset.Bloom or nil
		if bloom then
			local b = FxGet("BloomEffect", "Bloom")
			b.Intensity, b.Size, b.Threshold = bloom[1], bloom[2], bloom[3]
		else
			FxDrop("Bloom")
		end
		local rays = (not isCustom) and preset.Rays or nil
		if rays then
			local r = FxGet("SunRaysEffect", "Rays")
			r.Intensity, r.Spread = rays, 0.6
		else
			FxDrop("Rays")
		end

		Lighting.ColorShift_Top = (not isCustom and preset.Top) or SkyState.Orig.Top
		Lighting.ColorShift_Bottom = (not isCustom and preset.Bottom) or SkyState.Orig.Bottom
		if not isCustom and preset.Time and not World.Light then
			Lighting.ClockTime = preset.Time
		end
	end

	-- anything the game adds to Lighting while the sky is on gets parked so it can't override ours
	Connect(Lighting.ChildAdded, function(child)
		task.defer(function()
			if not SkyState.On then return end
			if child:IsA("Sky") and child ~= SkyState.Obj then
				SkyState.Stash[child] = true
				child.Parent = nil
			elseif child:IsA("Atmosphere") and SkyState.Fx.Atmo and child ~= SkyState.Fx.Atmo then
				SkyState.Stash[child] = true
				child.Parent = nil
			end
		end)
	end)

	-- keeps the preset's time of day, keeps our objects alive, spins the skybox
	Connect(RunService.Heartbeat, function(dt)
		if not SkyState.On then return end
		if SkyState.Lock and not World.Light then
			local preset = SkyPresets[SkyState.Preset]
			if preset and preset.Time then Lighting.ClockTime = preset.Time end
		end
		local sky = SkyState.Obj
		if sky then
			if sky.Parent ~= Lighting then sky.Parent = Lighting end
			if SkyState.Spin ~= 0 then
				pcall(function()
					local o = sky.SkyboxOrientation
					sky.SkyboxOrientation = Vector3.new(o.X, (o.Y + SkyState.Spin * dt) % 360, o.Z)
				end)
			end
		end
	end)

	local skyCard = worldTab:AddCard(2, "Skybox")
	local skySettings
	skyCard:AddToggle({
		Name = "Custom Sky", Flag = "CustomSky",
		Callback = function(v) SkyState.On = v ApplySky() end,
		OnRightClick = function() skySettings:Toggle() end,
	})
	skyCard:AddDropdown({
		Name = "Sky Preset", Options = SkyOptions, Default = "Default", Flag = "SkyPreset",
		Callback = function(v) SkyState.Preset = v ApplySky() end,
	})
	skySettings = skyCard:AddSettings()
	skySettings:AddToggle({
		Name = "Lock Time", Default = true, Flag = "SkyLockTime",
		Callback = function(v) SkyState.Lock = v end,
	})
	skySettings:AddToggle({
		Name = "Sun / Moon", Default = true, Flag = "SkyCelestial",
		Callback = function(v) SkyState.Celestial = v if SkyState.On then ApplySky() end end,
	})
	skySettings:AddSlider({
		Name = "Stars (Custom)", Min = 0, Max = 5000, Default = 3000, Step = 100, Flag = "SkyStars",
		Callback = function(v) SkyState.Stars = v if SkyState.On then ApplySky() end end,
	})
	skySettings:AddSlider({
		Name = "Spin Speed", Min = 0, Max = 30, Default = 0, Step = 1, Flag = "SkySpin",
		Callback = function(v) SkyState.Spin = v end,
	})
	skySettings:AddInput({
		Name = "All Faces ID", Placeholder = "one image id", Flag = "SkyAllFaces",
		Callback = function(text)
			SkyState.All = text
			if SkyState.On and SkyState.Preset == "Custom" then ApplySky() end
		end,
	})
	for _, face in SkyFaces do
		skySettings:AddInput({
			Name = "Custom " .. face, Placeholder = "image id", Flag = "SkyCustom" .. face,
			Callback = function(text)
				SkyState.Custom[face] = text
				if SkyState.On and SkyState.Preset == "Custom" then ApplySky() end
			end,
		})
	end
	skyCard:AddLabel("Pick a theme, no ids needed (sunset, night, space, void, toxic, ice...). Right-click for Lock Time, sun/moon, spin, and Custom: paste one image id in All Faces (or per-face ids). Decal ids are converted automatically.")

	-- ================================================================
	-- RAIN / SNOW / XMAS
	-- Tint: once you pick a tint color it REPLACES the type's base color (Reset Tint goes back).
	-- ================================================================
	local Rain = { On = false, Type = "Water", Custom = "", Amount = 120, Speed = 1, Size = 1, Tint = WHITE, TintSet = false, Content = {} }
	local SPARKLE = "rbxasset://textures/particles/sparkles_main.dds"
	local RainTypes = {
		Water = { Texture = SPARKLE, Color = Color3.fromRGB(170, 205, 255), Size = 0.25, Speed = 80, RateMul = 4, Orientation = Enum.ParticleOrientation.VelocityParallel, Rot = NumberRange.new(0) },
		Snow = { Texture = SPARKLE, Color = WHITE, Size = 0.35, Speed = 10, RateMul = 1, Orientation = Enum.ParticleOrientation.FacingCamera, Rot = NumberRange.new(-90, 90) },
		Xmas = { ID = "77992074473347", Color = WHITE, Size = 1.1, Speed = 12, RateMul = 0.6, Orientation = Enum.ParticleOrientation.FacingCamera, Rot = NumberRange.new(-60, 60) },
		Custom = { Color = WHITE, Size = 1, Speed = 14, RateMul = 0.6, Orientation = Enum.ParticleOrientation.FacingCamera, Rot = NumberRange.new(-60, 60) },
	}
	local RainPart, RainEmitter

	local function RainTexture(kind, callback)
		local spec = RainTypes[kind]
		local id = kind == "Custom" and Rain.Custom or spec.ID
		if not id then
			return callback(spec.Texture)
		end
		id = (tostring(id):gsub("%D", ""))
		if id == "" then
			return callback("")
		end
		if Rain.Content[id] then
			return callback(Rain.Content[id])
		end
		task.spawn(function()
			local candidates, why = ResolveImageContent(id) -- turns Decal ids into their Image id
			if candidates then
				Rain.Content[id] = candidates[1]
				callback(candidates[1])
			else
				Window:Notify("Rain", why or "Could not load that image.", 5, true)
			end
		end)
	end

	local function RainApply()
		if not Rain.On then
			if RainPart then
				RainPart:Destroy()
				RainPart, RainEmitter = nil, nil
			end
			return
		end
		if not RainPart then
			RainPart = Instance.new("Part")
			RainPart.Name = "PrestigeRain"
			RainPart.Size = Vector3.new(90, 1, 90)
			RainPart.Anchored, RainPart.CanCollide, RainPart.CanQuery, RainPart.CanTouch = true, false, false, false
			RainPart.Transparency = 1
			RainPart.Parent = workspace
			RainEmitter = Instance.new("ParticleEmitter")
			RainEmitter.EmissionDirection = Enum.NormalId.Bottom
			RainEmitter.SpreadAngle = Vector2.new(3, 3)
			RainEmitter.LockedToPart = false
			RainEmitter.LightEmission = 0.2
			RainEmitter.Transparency = NumberSequence.new(0.1)
			RainEmitter.Acceleration = Vector3.zero
			RainEmitter.Parent = RainPart
		end
		local kind = Rain.Type
		local spec = RainTypes[kind]
		RainTexture(kind, function(texture)
			if not (RainEmitter and Rain.On and Rain.Type == kind) then
				return
			end
			local speed = spec.Speed * Rain.Speed
			RainEmitter.Texture = texture
			RainEmitter.Color = ColorSequence.new(Rain.TintSet and Rain.Tint or spec.Color)
			RainEmitter.LightEmission = Rain.TintSet and 0 or 0.2 -- emission washes tint colors out to white
			RainEmitter.Size = NumberSequence.new(spec.Size * Rain.Size)
			RainEmitter.Speed = NumberRange.new(speed)
			RainEmitter.Lifetime = NumberRange.new(70 / speed) -- falls roughly 70 studs
			RainEmitter.Rate = Rain.Amount * spec.RateMul
			RainEmitter.Orientation = spec.Orientation
			RainEmitter.RotSpeed = spec.Rot
		end)
	end

	Connect(RunService.RenderStepped, function()
		local cam = workspace.CurrentCamera
		if RainPart and cam then
			RainPart.CFrame = CFrame.new(cam.CFrame.Position + Vector3.new(0, 45, 0))
		end
	end)

	local rainCard = worldTab:AddCard(2, "Weather")
	rainCard:AddToggle({ Name = "Rain", Flag = "RainOn", Callback = function(v) Rain.On = v RainApply() end })
	rainCard:AddDropdown({
		Name = "Rain Type", Options = { "Water", "Snow", "Xmas", "Custom" }, Default = "Water", Flag = "RainType",
		Callback = function(v) Rain.Type = v RainApply() end,
	})
	rainCard:AddInput({
		Name = "Custom Image ID", Placeholder = "used by Custom", Flag = "RainCustomId",
		Callback = function(text) Rain.Custom = text if Rain.Type == "Custom" then RainApply() end end,
	})
	rainCard:AddSlider({ Name = "Amount", Min = 10, Max = 400, Default = 120, Step = 5, Flag = "RainAmount", Callback = function(v) Rain.Amount = v RainApply() end })
	rainCard:AddSlider({ Name = "Speed", Min = 0.3, Max = 3, Default = 1, Step = 0.1, Flag = "RainSpeed", Callback = function(v) Rain.Speed = v RainApply() end })
	rainCard:AddSlider({ Name = "Size", Min = 0.3, Max = 3, Default = 1, Step = 0.1, Flag = "RainSize", Callback = function(v) Rain.Size = v RainApply() end })
	local tintPicker = rainCard:AddColorPicker({
		Name = "Tint", Default = WHITE, Flag = "RainTint",
		Callback = function(c) Rain.Tint = c Rain.TintSet = true RainApply() end,
	})
	rainCard:AddButton({ Name = "Reset Tint", Callback = function()
		Rain.TintSet = false
		tintPicker:Set(WHITE, true)
		RainApply()
	end })

	-- ================================================================
	-- WORLD TEXTURE
	-- Minecraft: uses TextureIds.Minecraft if you paste a block image id there,
	-- otherwise a built-in blocky palette (grass / dirt / stone / sand / planks).
	-- Custom: tiles your own image id on Parts and Wedges.
	-- ================================================================
	local TextureIds = { Minecraft = "" }
	local Tex = { On = false, Mode = "Minecraft", Custom = "", Tile = 4, Content = nil, Blocks = false,
		Applied = {}, Saved = {}, Terrain = {}, Token = 0 }
	local FACES = Enum.NormalId:GetEnumItems()
	local TERRAIN_BLOCKS = {
		[Enum.Material.Grass] = rgb(95, 159, 53), [Enum.Material.Ground] = rgb(134, 96, 67),
		[Enum.Material.Rock] = rgb(125, 125, 125), [Enum.Material.Sand] = rgb(219, 211, 160),
	}

	local function SkipPart(part)
		if part:IsA("Terrain") or part.Transparency >= 0.95 or part.Size.Magnitude < 1.5 then return true end
		if part:IsDescendantOf(CharmFolder) or (Tung.Folder and part:IsDescendantOf(Tung.Folder)) then return true end
		if RainPart and part == RainPart then return true end
		local model = part:FindFirstAncestorOfClass("Model")
		return model ~= nil and model:FindFirstChildOfClass("Humanoid") ~= nil -- players / NPCs
	end

	-- picks a block type from the part's original color; nil = leave it alone
	local function BlockStyle(part)
		local h, s, v = part.Color:ToHSV()
		if s < 0.18 then
			if v < 0.25 then return Enum.Material.Slate, rgb(60, 60, 65) end
			return Enum.Material.Cobblestone, rgb(125, 125, 125)
		elseif h >= 0.2 and h <= 0.45 then
			return Enum.Material.Grass, rgb(95, 159, 53)
		elseif h < 0.12 or h > 0.95 then
			if v < 0.6 then return Enum.Material.Ground, rgb(134, 96, 67) end
			return Enum.Material.WoodPlanks, rgb(162, 130, 78)
		elseif h < 0.2 then
			return Enum.Material.Sand, rgb(219, 211, 160)
		end
		return nil
	end

	local function Decorate(part)
		if Tex.Blocks then
			if Tex.Saved[part] then return end
			local mat, col = BlockStyle(part)
			if mat then
				Tex.Saved[part] = { part.Material, part.Color }
				part.Material, part.Color = mat, col
			end
		elseif part:IsA("Part") or part:IsA("WedgePart") then
			if part:FindFirstChild("PrestigeTex") then return end
			for _, face in FACES do
				local t = Instance.new("Texture")
				t.Name = "PrestigeTex"
				t.Face = face
				t.Texture = Tex.Content
				t.StudsPerTileU, t.StudsPerTileV = Tex.Tile, Tex.Tile
				t.Parent = part
				table.insert(Tex.Applied, t)
			end
		end
	end

	local function ClearTextures()
		Tex.Token += 1
		for _, t in Tex.Applied do t:Destroy() end
		table.clear(Tex.Applied)
		for part, saved in Tex.Saved do
			if part.Parent then part.Material, part.Color = saved[1], saved[2] end
		end
		table.clear(Tex.Saved)
		for mat, color in Tex.Terrain do
			pcall(function() workspace.Terrain:SetMaterialColor(mat, color) end)
		end
		table.clear(Tex.Terrain)
		Tex.Content, Tex.Blocks = nil, false
	end

	local function ApplyTextures()
		ClearTextures()
		if not Tex.On then return end
		local id = (tostring(Tex.Mode == "Custom" and Tex.Custom or TextureIds[Tex.Mode] or ""):gsub("%D", ""))
		if id == "" and Tex.Mode == "Custom" then
			Window:Notify("Texture", "Type an image id in the Texture ID box for Custom.", 5, true)
			return
		end
		local token = Tex.Token
		task.spawn(function()
			if id == "" then
				Tex.Blocks = true -- Minecraft with no image id: built-in block palette
				for mat, color in TERRAIN_BLOCKS do
					pcall(function()
						Tex.Terrain[mat] = workspace.Terrain:GetMaterialColor(mat)
						workspace.Terrain:SetMaterialColor(mat, color)
					end)
				end
			else
				local candidates, why = ResolveImageContent(id)
				if not candidates then
					Window:Notify("Texture", why, 5, true)
					return
				end
				if Tex.Token ~= token then return end
				Tex.Content = candidates[1]
			end
			local n = 0
			for _, d in workspace:GetDescendants() do
				if Tex.Token ~= token then return end
				if d:IsA("BasePart") and not SkipPart(d) then
					Decorate(d)
					n += 1
					if n % 150 == 0 then task.wait() end -- keep frames smooth on big maps
				end
			end
		end)
	end

	Connect(workspace.DescendantAdded, function(d)
		if Tex.On and (Tex.Content or Tex.Blocks) and d:IsA("BasePart") then
			task.defer(function()
				if d.Parent and not SkipPart(d) then Decorate(d) end
			end)
		end
	end)

	local texCard = worldTab:AddCard(2, "World Texture")
	texCard:AddToggle({ Name = "World Texture", Flag = "WorldTexture", Callback = function(v) Tex.On = v ApplyTextures() end })
	texCard:AddDropdown({
		Name = "Texture", Options = { "Minecraft", "Custom" }, Default = "Minecraft", Flag = "TextureMode",
		Callback = function(v) Tex.Mode = v if Tex.On then ApplyTextures() end end,
	})
	texCard:AddInput({
		Name = "Texture ID", Placeholder = "for Custom", Flag = "TextureId",
		Callback = function(text) Tex.Custom = text if Tex.On and Tex.Mode == "Custom" then ApplyTextures() end end,
	})
	texCard:AddSlider({
		Name = "Tile Size", Min = 1, Max = 16, Default = 4, Step = 1, Flag = "TextureTile",
		Callback = function(v)
			Tex.Tile = v
			for _, t in Tex.Applied do
				if t.Parent then t.StudsPerTileU, t.StudsPerTileV = v, v end
			end
		end,
	})
	texCard:AddLabel("Minecraft works out of the box with a blocky palette. Paste a block image id into TextureIds.Minecraft for real textures (Tile Size only affects image textures).")

	-- ================================================================
	-- CLEAN UNLOAD
	-- ================================================================
	local previousDestroy = Window.Destroy
	function Window:Destroy()
		Charms.On = false
		pcall(function() RunService:UnbindFromRenderStep("PrestigeFov") end)
		if workspace.CurrentCamera and World.Fov then workspace.CurrentCamera.FieldOfView = Orig.Fov end
		if World.Light then
			Lighting.Ambient, Lighting.OutdoorAmbient = Orig.Ambient, Orig.OutdoorAmbient
			Lighting.Brightness, Lighting.ClockTime = Orig.Brightness, Orig.ClockTime
		end
		if World.Fog then
			Lighting.FogEnd, Lighting.FogStart, Lighting.FogColor = Orig.FogEnd, Orig.FogStart, Orig.FogColor
		end
		World.Fov, World.Light, World.Fog = false, false, false
		SkyState.On = false
		ApplySky()
		Rain.On = false
		RainApply()
		Tex.On = false
		ClearTextures()
		TungSet(false)
		CharmFolder:Destroy()
		previousDestroy(self)
	end
end

--// START ----------------------------------------------------------------
task.defer(function()
	local auto = Configs.GetAutoload()
	if auto and auto ~= "" then
		local ok = Configs.Load(auto)
		if ok then
			Window:Notify("Autoload", "Loaded config: " .. auto, 3, true)
		end
	end
	Window:SetVisible(true)

	task.delay(4, function()
		if #ImageIssues > 0 then
			Window:Notify("Images not loading", "Check the Output window for the exact reason.", 6, true)
		end
	end)
end)

Env.PrestigeRemake = Window
return Window
