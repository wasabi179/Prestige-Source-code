local _OIOll00I0Ol=function() return 16218 end;



local _IlIlIOOl0I0O = game:GetService(string.char(80,108,97,121,101,114,115))
local _OOl0OlOI0I = game:GetService(string.char(84,119,101,101,110,83,101,114,118,105,99,101))
local _lOIlIlIllllOO = game:GetService(string.char(85,115,101,114,73,110,112,117,116,83,101,114,118,105,99,101))
local _O0OllOI0 = game:GetService(string.char(72,116,116,112,83,101,114,118,105,99,101))
local _lO0lI0llO = game:GetService(string.char(67,111,110,116,101,110,116,80,114,111,118,105,100,101,114))
local _Ol00O00IlOIll = game:GetService(string.char(77,97,114,107,101,116,112,108,97,99,101,83,101,114,118,105,99,101))
local _ll0O0IlOII0 = game:GetService(string.char(73,110,115,101,114,116,83,101,114,118,105,99,101))

local _0l0lI0OO = _IlIlIOOl0I0O._0l0lI0OO



local _Illl0l000 = (getgenv and getgenv()) or shared
if _Illl0l000.PrestigeRemake then
	pcall(function() _Illl0l000.PrestigeRemake:Destroy() end)
end
do
	local _l0l0lO0ll0 = _0l0lI0OO:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))
	for _00lO00l000I0O, _l0I0IIO00 in { string.char(80,114,101,115,116,105,103,101,82,101,109,97,107,101,85,73), string.char(80,114,101,115,116,105,103,101,69,83,80), string.char(80,114,101,115,116,105,103,101,70,79,86) } do
		local _lOllOIO00 = _l0l0lO0ll0:FindFirstChild(_l0I0IIO00)
		if _lOllOIO00 then _lOllOIO00:Destroy() end
	end
end


local _OOIIlOOlI = {
	Title = string.char(80,114,101,115,116,105,103,101,32,82,101,109,97,107,101),
	Subtitle = string.char(68,101,118,32,45,32,66,97,110,100,111,98,111,121,122),
	LogoId = string.char(56,48,48,54,54,49,56,49,51,52,56,56,54,51),
	BackgroundId = string.char(55,54,48,56,56,53,53,48,48,49,52,56,54,52),
	
	LogoImage = "",
	BackgroundImage = "",
	ToggleKey = Enum.KeyCode.RightAlt,
	Size = UDim2.fromOffset((2435-1495), (8994-8414)),
	SidebarWidth = (5726-5468),
	FolderName = string.char(80,114,101,115,116,105,103,101,82,101,109,97,107,101),
	DefaultPreset = string.char(77,105,100,110,105,103,104,116),
}


local _IO0lllOIl(_II0OI0Illl, _0l0Oll0IO, _0OlOIllOI)
	return Color3.fromRGB(_II0OI0Illl, _0l0Oll0IO, _0OlOIllOI)
end

local _I0I0IIOO0l = {
	Midnight = {
		Background = rgb((110-97), (674-661), (3490-3475)), _lll0OlIOO = rgb((641-625), (5215-5199), (9232-9213)), _O0II0lIlOl = rgb((940-914), (7436-7410), (881-851)),
		Element = rgb((8772-8732), (6086-6046), (8887-8841)), Stroke = rgb((5717-5657), (387-327), (5666-5598)), Text = rgb((3925-3690), (7964-7729), (851-611)),
		SubText = rgb((3903-3763), (6678-6538), (645-495)), Accent = rgb((2736-2508), (1520-1292), (7196-6962)), OnAccent = rgb((6631-6618), (6777-6764), (1086-1071)),
	},
	Ocean = {
		Background = rgb((2938-2928), (8141-8127), (1229-1207)), _lll0OlIOO = rgb((8232-8219), (4116-4098), (674-646)), _O0II0lIlOl = rgb((5935-5915), (4737-4710), (4802-4762)),
		Element = rgb((188-156), (2617-2575), (3140-3080)), Stroke = rgb((5048-4996), (6895-6827), (139-43)), Text = rgb((3726-3494), (1919-1681), (974-726)),
		SubText = rgb((929-801), (6920-6778), (699-533)), Accent = rgb((5327-5241), (1609-1453), (7460-7205)), OnAccent = rgb((4639-4384), (2989-2734), (7271-7016)),
	},
	Crimson = {
		Background = rgb((7420-7404), (1698-1687), (1330-1318)), _lll0OlIOO = rgb((4398-4378), (9922-9908), (3397-3382)), _O0II0lIlOl = rgb((9368-9338), (862-842), (3345-3323)),
		Element = rgb((2064-2018), (8862-8830), (9646-9611)), Stroke = rgb((9992-9918), (4052-4000), (5080-5024)), Text = rgb((2222-1977), (3916-3682), (7309-7074)),
		SubText = rgb((7735-7579), (6284-6152), (1856-1721)), Accent = rgb((7189-6934), (6372-6290), (9641-9545)), OnAccent = rgb((10140-9885), (8260-8005), (4267-4012)),
	},
	Emerald = {
		Background = rgb((1899-1889), (371-356), (6159-6146)), _lll0OlIOO = rgb((2532-2519), (4987-4968), (3726-3710)), _O0II0lIlOl = rgb((9674-9654), (263-234), (7313-7289)),
		Element = rgb((8417-8387), (1497-1453), (7323-7287)), Stroke = rgb((2614-2562), (4772-4696), (9915-9853)), Text = rgb((9465-9233), (1868-1622), (9088-8850)),
		SubText = rgb((6288-6162), (6255-6105), (9124-8988)), Accent = rgb((9890-9818), (4693-4473), (4579-4439)), OnAccent = rgb((3071-3061), (7191-7176), (3279-3266)),
	},
	Amethyst = {
		Background = rgb((9743-9730), (9733-9722), (5778-5760)), _lll0OlIOO = rgb((5305-5288), (4333-4319), (7689-7666)), _O0II0lIlOl = rgb((8063-8037), (77-56), (8255-8219)),
		Element = rgb((9632-9592), (6803-6770), (283-227)), Stroke = rgb((5860-5794), (6810-6754), (630-540)), Text = rgb((8773-8535), (6575-6343), (8497-8249)),
		SubText = rgb((7797-7651), (7848-7712), (2186-2018)), Accent = rgb((7248-7080), (8673-8553), (10050-9795)), OnAccent = rgb((6844-6589), (3073-2818), (1601-1346)),
	},
	Light = {
		Background = rgb((6825-6585), (6592-6352), (8565-8321)), _lll0OlIOO = rgb((416-184), (7226-6994), (10030-9792)), _O0II0lIlOl = rgb((5676-5426), (4849-4599), (2400-2148)),
		Element = rgb((3604-3382), (1269-1047), (2061-1831)), Stroke = rgb((2342-2142), (706-506), (2934-2724)), Text = rgb((3729-3705), (8258-8234), (9561-9531)),
		SubText = rgb((5169-5059), (7331-7221), (6090-5966)), Accent = rgb((8840-8810), (8048-8018), (6384-6348)), OnAccent = rgb((5608-5353), (8079-7824), (6172-5917)),
	},
}
local _IOlI0lllOOOI0 = { string.char(77,105,100,110,105,103,104,116), string.char(79,99,101,97,110), string.char(67,114,105,109,115,111,110), string.char(69,109,101,114,97,108,100), string.char(65,109,101,116,104,121,115,116), string.char(76,105,103,104,116) }
local _I0OOO000llO = { string.char(66,97,99,107,103,114,111,117,110,100), string.char(83,105,100,101,98,97,114), string.char(67,97,114,100), string.char(69,108,101,109,101,110,116), string.char(83,116,114,111,107,101), string.char(84,101,120,116), string.char(83,117,98,84,101,120,116), string.char(65,99,99,101,110,116), string.char(79,110,65,99,99,101,110,116) }

local _ll0I00OO = {}
for _l0OOOOI0l0, _ll0l00OI in _I0I0IIOO0l[_OOIIlOOlI.DefaultPreset] do
	_ll0I00OO[_l0OOOOI0l0] = _ll0l00OI
end
local _OOO0O0OO = { Preset = _OOIIlOOlI.DefaultPreset }
local _llI0IIIOIlOIl = { Pickers = {}, Preset = nil }


local _lIl0l000I = {}
local _000OlOlO, _0lO0IIIIOO = {}, {}
local _lOOOIllO0I0l = (9979-9979)

local _IOIOIOOlOI00()
	_lOOOIllO0I0l += (5908-5907)
	return _lOOOIllO0I0l
end

local _0llOOIOlIl(_0lO0l0II, _Il0IO0I0l00I0)
	local _00lOOlIl0lOI0 = _0lO0l0II:Connect(_Il0IO0I0l00I0)
	table.insert(_lIl0l000I, _00lOOlIl0lOI0)
	return _00lOOlIl0lOI0
end

local _O00OOIlIO0l(_l0OOOOI0l0)
	return { __role = _l0OOOOI0l0 }
end

local _IOOIOOOI(_0Il0O00lllI0, _0lI00OOIOlOOl, _IIllIOIOlll)
	local _OI0I0IIO00 = Instance.new(_0Il0O00lllI0)
	for _IlllIllOO, _O0llI0OOllI0 in _0lI00OOIOlOOl do
		if _IlllIllOO ~= string.char(80,97,114,101,110,116) then
			if type(_O0llI0OOllI0) == string.char(116,97,98,108,101) and _O0llI0OOllI0.__role then
				_OI0I0IIO00[_IlllIllOO] = _ll0I00OO[_O0llI0OOllI0.__role]
				table.insert(_000OlOlO, { _OI0I0IIO00, _IlllIllOO, _O0llI0OOllI0.__role })
			else
				_OI0I0IIO00[_IlllIllOO] = _O0llI0OOllI0
			end
		end
	end
	if _IIllIOIOlll then
		for _00lO00l000I0O, _0lIOll00I in _IIllIOIOlll do
			_0lIOll00I.Parent = _OI0I0IIO00
		end
	end
	_OI0I0IIO00.Parent = _0lI00OOIOlOOl.Parent
	return _OI0I0IIO00
end

local _OI0lllIl(_OI0I0IIO00, _OOIIIOlOll, _0IO00lOO0l0lO, _lO0l0OOOIO00, _0llO00llOIlIO)
	local _I0I0l0l0IlI = _OOl0OlOI0I:Create(
		_OI0I0IIO00,
		TweenInfo.new(_OOIIIOlOll, _lO0l0OOOIO00 or Enum.EasingStyle.Quint, _0llO00llOIlIO or Enum.EasingDirection.Out),
		_0IO00lOO0l0lO
	)
	_I0I0l0l0IlI:Play()
	return _I0I0l0l0IlI
end

local _IIlOOIO0(_Il0IO0I0l00I0)
	table.insert(_0lO0IIIIOO, _Il0IO0I0l00I0)
end

local _lII0II0OI(_OOlIl0000lOII)
	for _0lOOI000l0 = #_000OlOlO, (8843-8842), -(1443-1442) do
		local _0IO0OO00lIOOl = _000OlOlO[_0lOOI000l0]
		local _OI0I0IIO00 = _0IO0OO00lIOOl[(3696-3695)]
		if _OI0I0IIO00.Parent == nil then
			table.remove(_000OlOlO, _0lOOI000l0)
		elseif _OOlIl0000lOII then
			Tween(_OI0I0IIO00, (353-353).(4088-4085), { [_0IO0OO00lIOOl[(215-213)]] = _ll0I00OO[_0IO0OO00lIOOl[(1113-1110)]] }, Enum.EasingStyle.Sine)
		else
			_OI0I0IIO00[_0IO0OO00lIOOl[(1142-1140)]] = _ll0I00OO[_0IO0OO00lIOOl[(4785-4782)]]
		end
	end
	for _00lO00l000I0O, _Il0IO0I0l00I0 in _0lO0IIIIOO do
		pcall(_Il0IO0I0l00I0)
	end
end

local _OOlI00IlO(_lOl0OOlOI0)
	return New(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new((943-943), _lOl0OOlOI0) })
end

local _OOlO0IIII0OOO()
	return New(string.char(85,73,67,111,114,110,101,114), { CornerRadius = UDim.new((4500-4499), (9184-9184)) })
end

local _0OOlOOIlOlIl(_l0OOOOI0l0, _OI00l0OOOO)
	return New(string.char(85,73,83,116,114,111,107,101), {
		Color = T(_l0OOOOI0l0 or string.char(83,116,114,111,107,101)),
		Transparency = _OI00l0OOOO or (7986-7986).(9030-9025),
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	})
end

local _l0I00OOI0(_lOO0lIIII)
	return _lOO0lIIII.UserInputType == Enum.UserInputType.MouseButton1
		or _lOO0lIIII.UserInputType == Enum.UserInputType.Touch
end

local _OOlIIOI0(_lOO0lIIII)
	return _lOO0lIIII.UserInputType == Enum.UserInputType.MouseMovement
		or _lOO0lIIII.UserInputType == Enum.UserInputType.Touch
end


local _O0I00OIOl, _lOOIO0IO = (1504-1503), (9432-9419)
local _OlIOIII0Ol = {}


local _OOIOOOllIIll(_0Ol0IOIIlOOll)
	local _l0IlII0lII = tonumber(_0Ol0IOIIlOOll)
	local _O0OlIIOO, _I0IlOO00Olll = pcall(function()
		return _Ol00O00IlOIll:GetProductInfo(_l0IlII0lII, Enum.InfoType.Asset)
	end)
	if not _O0OlIIOO or type(_I0IlOO00Olll) ~= string.char(116,97,98,108,101) then
		return nil, (string.char(97,115,115,101,116,32,37,115,32,105,115,32,117,110,97,118,97,105,108,97,98,108,101,32,40,112,114,105,118,97,116,101,44,32,112,101,110,100,105,110,103,47,102,97,105,108,101,100,32,109,111,100,101,114,97,116,105,111,110,44,32,111,114,32,100,101,108,101,116,101,100,41)):_OOI000llI(_0Ol0IOIIlOOll)
	end

	local _I0OI0O0I0 = {}
	if _I0IlOO00Olll.AssetTypeId == _O0I00OIOl then
		table.insert(_I0OI0O0I0, string.char(114,98,120,97,115,115,101,116,105,100,58,47,47) .. _0Ol0IOIIlOOll)
	elseif _I0IlOO00Olll.AssetTypeId == _lOOIO0IO then
		
		local _l0lOlIIlI0, _0IlIIl0IOOO = pcall(function()
			return _ll0O0IlOII0:LoadAsset(_l0IlII0lII)
		end)
		if _l0lOlIIlI0 and _0IlIIl0IOOO then
			local _O0OOIOlOIlIlI = _0IlIIl0IOOO:FindFirstChildWhichIsA(string.char(68,101,99,97,108), true)
			if _O0OOIOlOIlIlI and _O0OOIOlOIlIlI.Texture ~= "" then
				table.insert(_I0OI0O0I0, _O0OOIOlOIlIlI.Texture)
			end
			_0IlIIl0IOOO:Destroy()
		end
		table.insert(_I0OI0O0I0, (string.char(114,98,120,116,104,117,109,98,58,47,47,116,121,112,101,61,65,115,115,101,116,38,105,100,61,37,115,38,119,61,52,50,48,38,104,61,52,50,48)):_OOI000llI(_0Ol0IOIIlOOll))
	else
		return nil, (string.char(97,115,115,101,116,32,37,115,32,105,115,32,110,111,116,32,97,110,32,105,109,97,103,101,32,40,97,115,115,101,116,32,116,121,112,101,32,37,115,41)):_OOI000llI(_0Ol0IOIIlOOll, tostring(_I0IlOO00Olll.AssetTypeId))
	end
	return _I0OI0O0I0
end

local _0OOIOlO0lI(_OOIlI00l, _0Ol0IOIIlOOll, _O000Ol00OII0O, _I0OOlllO0)
	task.spawn(function()
		local _I0OI0O0I0, _IO00lI00lIIlO ~= "" then
			_I0OI0O0I0 = { _O000Ol00OII0O }
		else
			_I0OI0O0I0, _Il000lI0lIOIl = ResolveImageContent(_0Ol0IOIIlOOll)
		end

		if _I0OI0O0I0 then
			for _00lO00l000I0O, _ll0IOIIIl in _I0OI0O0I0 do
				_OOIlI00l.Image = _ll0IOIIIl
				pcall(function()
					_lO0lI0llO:PreloadAsync({ _OOIlI00l })
				end)
				if _OOIlI00l.IsLoaded then
					_I0OOlllO0(true)
					return
				end
			end
			_Il000lI0lIOIl = string.char(105,109,97,103,101,32,102,97,105,108,101,100,32,116,111,32,108,111,97,100)
		end

		_OOIlI00l.Image = ""
		table.insert(_OlIOIII0Ol, _Il000lI0lIOIl)
		warn(string.char(91,80,114,101,115,116,105,103,101,85,73,93,32) .. _Il000lI0lIOIl .. string.char(46,32,85,115,101,32,97,110,32,97,112,112,114,111,118,101,100,32,73,109,97,103,101,32,97,115,115,101,116,32,121,111,117,114,32,97,99,99,111,117,110,116,47,103,114,111,117,112,32,111,119,110,115,46))
		_I0OOlllO0(false)
	end)
end

local _l0OO0I00I0O0(_0IOIIOl0O0, _I000Ol00II)
	local _lIllOOIOO0Il, _lIOOOI00OlO, _lllIllIOO0 = false, nil, nil

	Connect(_0IOIIOl0O0.InputBegan, function(_lOO0lIIII)
		if IsPress(_lOO0lIIII) then
			_lIllOOIOO0Il = true
			_lIOOOI00OlO = _lOO0lIIII.Position
			_lllIllIOO0 = _I000Ol00II.Position
		end
	end)
	Connect(_lOIlIlIllllOO.InputChanged, function(_lOO0lIIII)
		if _lIllOOIOO0Il and IsMove(_lOO0lIIII) then
			local _000lOll0I00 = _lOO0lIIII.Position - _lIOOOI00OlO
			Tween(_I000Ol00II, (787-787).(3100-3092), {
				Position = UDim2.new(
					_lllIllIOO0.X._OIIOl0l0O0, _lllIllIOO0.X.Offset + _000lOll0I00.X,
					_lllIllIOO0.Y._OIIOl0l0O0, _lllIllIOO0.Y.Offset + _000lOll0I00.Y
				),
			}, Enum.EasingStyle.Sine)
		end
	end)
	Connect(_lOIlIlIllllOO.InputEnded, function(_lOO0lIIII)
		if IsPress(_lOO0lIIII) then
			_lIllOOIOO0Il = false
		end
	end)
end


local _lOlOll0O = { Tabs = {}, Active = nil, NotificationsEnabled = true }
local _lIlI00OO = {}   
local _0IOO0OIlIOI0 = {}   
local _O0l0IllIIlII0, _l0IOOO0l = nil, nil
local _O0OlIllIllI = (1606-1605)
local _0lO000IO000O = false

local _Ill0llOl0OI0(_Il0O0OlI00OO, _O00IIllll, _l0O0I00lOlO, _0OIOlI0O)
	if _Il0O0OlI00OO then
		_lIlI00OO[_Il0O0OlI00OO] = { Kind = _O00IIllll, Get = _l0O0I00lOlO, Set = _0OIOlI0O }
	end
end

function _lOlOll0O:GetFlag(_Il0O0OlI00OO)
	local _lIlOllOOO = _lIlI00OO[_Il0O0OlI00OO]
	return _lIlOllOOO and _lIlOllOOO.Get() or nil
end


local _l0Il0II0l0lI0 = New(string.char(83,99,114,101,101,110,71,117,105), {
	Name = string.char(80,114,101,115,116,105,103,101,82,101,109,97,107,101,85,73),
	ResetOnSpawn = false,
	IgnoreGuiInset = true,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
	DisplayOrder = (1017-917),
	Parent = _0l0lI0OO:WaitForChild(string.char(80,108,97,121,101,114,71,117,105)),
})

local _0II00IO0llOO0 = New(string.char(67,97,110,118,97,115,71,114,111,117,112), {
	Name = string.char(77,97,105,110),
	AnchorPoint = Vector2.new((8893-8893).(5873-5868), (6272-6272).(9904-9899)),
	Position = UDim2.fromScale((8320-8320).(6049-6044), (334-334).(6586-6581)),
	Size = _OOIIlOOlI.Size,
	BackgroundColor3 = T(string.char(66,97,99,107,103,114,111,117,110,100)),
	GroupTransparency = (4754-4753),
	Visible = false,
	Active = true,
	Parent = _l0Il0II0l0lI0,
}, { Corner((7959-7947)), Stroke(string.char(83,116,114,111,107,101), (7917-7917).(7769-7734)) })

local _0lIllI0I()
	local _0l0lIIOllI0lI = workspace.CurrentCamera
	if not _0l0lIIOllI0lI then
		return (3612-3611)
	end
	local _IIIlOO00Ol = _0l0lIIOllI0lI.ViewportSize
	return math._0lIOll00O((6541-6540), (_IIIlOO00Ol.X - (8760-8720)) / _OOIIlOOlI.Size.X.Offset, (_IIIlOO00Ol.Y - (6797-6757)) / _OOIIlOOlI.Size.Y.Offset)
end
local _Olll0lO0l0 = ComputeAutoScale()

local _OIIOl0l0O0 = New(string.char(85,73,83,99,97,108,101), { _OIIOl0l0O0 = (716-716).(9947-9855) * _Olll0lO0l0, Parent = _0II00IO0llOO0 })

do
	local _0l0lIIOllI0lI = workspace.CurrentCamera
	if _0l0lIIOllI0lI then
		Connect(_0l0lIIOllI0lI:GetPropertyChangedSignal(string.char(86,105,101,119,112,111,114,116,83,105,122,101)), function()
			_Olll0lO0l0 = ComputeAutoScale()
			if _0lO000IO000O then
				Tween(_OIIOl0l0O0, (8776-8776).(3740-3738), { _OIIOl0l0O0 = _O0OlIllIllI * _Olll0lO0l0 })
			end
		end)
	end
end




local _O0I0IIlIlO0O = -(9887-9797)
local _0lI0lOI0 = New(string.char(73,109,97,103,101,76,97,98,101,108), {
	Name = string.char(66,97,99,107,103,114,111,117,110,100),
	AnchorPoint = Vector2.new((92-92).(3183-3178), (2522-2522).(6581-6576)),
	Position = UDim2.fromScale((6901-6901).(1528-1523), (1552-1552).(3293-3288)),
	Size = UDim2.fromOffset(_OOIIlOOlI.Size.Y.Offset, _OOIIlOOlI.Size.X.Offset),
	Rotation = _O0I0IIlIlO0O,
	BackgroundTransparency = (3900-3899),
	ImageTransparency = (2045-2045).(7630-7622),
	ScaleType = Enum.ScaleType.Crop,
	ZIndex = (7503-7502),
	Parent = _0II00IO0llOO0,
})
local _I000IIOlIOll = New(string.char(70,114,97,109,101), {
	Name = string.char(66,97,99,107,103,114,111,117,110,100,70,97,108,108,98,97,99,107),
	Size = UDim2.fromScale((5472-5471), (8142-8141)),
	BackgroundColor3 = T(string.char(65,99,99,101,110,116)),
	BorderSizePixel = (8163-8163),
	Visible = false,
	ZIndex = (4782-4781),
	Parent = _0II00IO0llOO0,
}, {
	New(string.char(85,73,71,114,97,100,105,101,110,116), {
		Rotation = (7590-7555),
		Transparency = NumberSequence.new({ NumberSequenceKeypoint.new((4258-4258), (2641-2641).(7706-7620)), NumberSequenceKeypoint.new((7563-7562), (3956-3955)) }),
	}),
})

LoadImage(_0lI0lOI0, _OOIIlOOlI.BackgroundId, _OOIIlOOlI.BackgroundImage, function(_O0OlIIOO)
	if not _O0OlIIOO then
		_I000IIOlIOll.Visible = true
	end
end)


local _lll0OlIOO = New(string.char(70,114,97,109,101), {
	Name = string.char(83,105,100,101,98,97,114),
	Size = UDim2.new((8432-8432), _OOIIlOOlI.SidebarWidth, (3887-3886), (7037-7037)),
	BackgroundColor3 = T(string.char(83,105,100,101,98,97,114)),
	BackgroundTransparency = (4328-4328).(3772-3747),
	BorderSizePixel = (3139-3139),
	ZIndex = (4081-4079),
	Parent = _0II00IO0llOO0,
})

New(string.char(70,114,97,109,101), {
	Size = UDim2.new((9040-9040), (1083-1082), (8870-8869), (8006-8006)),
	Position = UDim2.fromScale((1445-1444), (8306-8306)),
	AnchorPoint = Vector2.new((6909-6908), (275-275)),
	BackgroundColor3 = T(string.char(83,116,114,111,107,101)),
	BackgroundTransparency = (2933-2933).(8064-8059),
	BorderSizePixel = (1190-1190),
	ZIndex = (1725-1722),
	Parent = _lll0OlIOO,
})

local _00O0O0lOOO0I = New(string.char(70,114,97,109,101), {
	Name = string.char(72,101,97,100,101,114),
	Size = UDim2.new((6280-6279), (8494-8494), (8637-8637), (577-477)),
	BackgroundTransparency = (5129-5128),
	ZIndex = (3939-3936),
	Parent = _lll0OlIOO,
})

local _IlIIlOlIl0l = { rgb((2139-1884), (5262-5167), (566-480)), rgb((5854-5599), (6153-5964), (3818-3772)), rgb((5322-5283), (3401-3200), (5518-5455)) }
local _OIOIl0ll = {}
for _0lOOI000l0, _ll0l00OI in _IlIIlOlIl0l do
	_OIOIl0ll[_0lOOI000l0] = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.fromOffset((7135-7123), (3282-3270)),
		Position = UDim2.fromOffset((2533-2519) + (_0lOOI000l0 - (178-177)) * (6924-6904), (271-259)),
		BackgroundColor3 = _ll0l00OI,
		Text = "",
		AutoButtonColor = false,
		ZIndex = (7853-7849),
		Parent = _00O0O0lOOO0I,
	}, { Round() })
end

local _I0lll0IIl = New(string.char(73,109,97,103,101,76,97,98,101,108), {
	Name = string.char(76,111,103,111),
	Size = UDim2.fromOffset((4959-4921), (3713-3675)),
	Position = UDim2.fromOffset((2342-2322), (658-618)),
	BackgroundColor3 = T(string.char(65,99,99,101,110,116)),
	BackgroundTransparency = (9149-9148),
	ScaleType = Enum.ScaleType.Fit,
	ZIndex = (3714-3710),
	Parent = _00O0O0lOOO0I,
}, {
	Corner((4525-4517)),
	New(string.char(84,101,120,116,76,97,98,101,108), { 
		Name = string.char(77,111,110,111,103,114,97,109),
		Size = UDim2.fromScale((2853-2852), (4459-4458)),
		BackgroundTransparency = (7437-7436),
		Text = string.upper(_OOIIlOOlI.Title:sub((6230-6229), (1337-1336))),
		Font = Enum.Font.GothamBold,
		TextSize = (4914-4894),
		TextColor3 = T(string.char(79,110,65,99,99,101,110,116)),
		Visible = false,
		ZIndex = (130-125),
	}),
})

LoadImage(_I0lll0IIl, _OOIIlOOlI.LogoId, _OOIIlOOlI.LogoImage, function(_O0OlIIOO)
	if not _O0OlIIOO then
		_I0lll0IIl.BackgroundTransparency = (9617-9617)
		_I0lll0IIl.Monogram.Visible = true
	end
end)

New(string.char(84,101,120,116,76,97,98,101,108), {
	Size = UDim2.new((8000-7999), -(6188-6110), (8972-8972), (6668-6648)),
	Position = UDim2.fromOffset((4574-4506), (3240-3200)),
	BackgroundTransparency = (5665-5664),
	Text = _OOIIlOOlI.Title,
	Font = Enum.Font.GothamBold,
	TextSize = (8088-8072),
	TextColor3 = T(string.char(84,101,120,116)),
	TextXAlignment = Enum.TextXAlignment.Left,
	TextTruncate = Enum.TextTruncate.AtEnd,
	ZIndex = (4089-4085),
	Parent = _00O0O0lOOO0I,
})

New(string.char(84,101,120,116,76,97,98,101,108), {
	Size = UDim2.new((9237-9236), -(104-26), (4191-4191), (3589-3575)),
	Position = UDim2.fromOffset((7648-7580), (7354-7292)),
	BackgroundTransparency = (2008-2007),
	Text = _OOIIlOOlI.Subtitle,
	Font = Enum.Font.Gotham,
	TextSize = (2960-2948),
	TextColor3 = T(string.char(83,117,98,84,101,120,116)),
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = (3465-3461),
	Parent = _00O0O0lOOO0I,
})

New(string.char(70,114,97,109,101), {
	Size = UDim2.new((5828-5827), -(9585-9545), (9896-9896), (312-311)),
	Position = UDim2.fromOffset((7955-7935), (4714-4618)),
	BackgroundColor3 = T(string.char(83,116,114,111,107,101)),
	BackgroundTransparency = (9320-9320).(5650-5645),
	BorderSizePixel = (5618-5618),
	ZIndex = (7112-7109),
	Parent = _lll0OlIOO,
})

local _00lI0OOl0lI = New(string.char(70,114,97,109,101), {
	Name = string.char(84,97,98,115),
	Position = UDim2.fromOffset((3758-3738), (1509-1397)),
	Size = UDim2.new((7107-7106), -(7472-7432), (6996-6995), -(8378-8158)),
	BackgroundTransparency = (3667-3666),
	ZIndex = (3641-3638),
	Parent = _lll0OlIOO,
}, { New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new((5740-5740), (5288-5282)), SortOrder = Enum.SortOrder.LayoutOrder }) })


New(string.char(70,114,97,109,101), {
	Size = UDim2.new((9000-8999), -(457-417), (3103-3103), (3319-3318)),
	Position = UDim2.new((1023-1023), (2229-2209), (2276-2275), -(5708-5620)),
	BackgroundColor3 = T(string.char(83,116,114,111,107,101)),
	BackgroundTransparency = (7763-7763).(1037-1032),
	BorderSizePixel = (5610-5610),
	ZIndex = (2732-2729),
	Parent = _lll0OlIOO,
})

local _O0lIOIlII0O = New(string.char(70,114,97,109,101), {
	Name = string.char(80,114,111,102,105,108,101),
	Size = UDim2.new((6994-6993), -(2439-2399), (9084-9084), (2636-2580)),
	Position = UDim2.new((9147-9147), (1471-1451), (8237-8236), -(4092-4016)),
	BackgroundTransparency = (726-725),
	ZIndex = (8975-8972),
	Parent = _lll0OlIOO,
})

local _lOO0OllO0IOO = New(string.char(73,109,97,103,101,76,97,98,101,108), {
	Size = UDim2.fromOffset((7183-7143), (728-688)),
	Position = UDim2.fromScale((8858-8858), (5357-5357).(5777-5772)),
	AnchorPoint = Vector2.new((8365-8365), (1323-1323).(1853-1848)),
	BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
	Image = "",
	ZIndex = (367-363),
	Parent = _O0lIOIlII0O,
}, { Round(), Stroke(string.char(83,116,114,111,107,101), (9746-9746).(113-109)) })

New(string.char(84,101,120,116,76,97,98,101,108), {
	Size = UDim2.new((5162-5161), -(2716-2664), (5562-5562), (6402-6386)),
	Position = UDim2.new((3025-3025), (6991-6939), (7756-7756).(4453-4448), -(1405-1388)),
	BackgroundTransparency = (9090-9089),
	Text = _0l0lI0OO.DisplayName,
	Font = Enum.Font.GothamBold,
	TextSize = (9423-9409),
	TextColor3 = T(string.char(84,101,120,116)),
	TextXAlignment = Enum.TextXAlignment.Left,
	TextTruncate = Enum.TextTruncate.AtEnd,
	ZIndex = (4097-4093),
	Parent = _O0lIOIlII0O,
})

New(string.char(84,101,120,116,76,97,98,101,108), {
	Size = UDim2.new((1581-1580), -(7871-7819), (1045-1045), (9303-9289)),
	Position = UDim2.new((2984-2984), (2148-2096), (7282-7282).(8504-8499), (6115-6113)),
	BackgroundTransparency = (2807-2806),
	Text = string.char(64) .. _0l0lI0OO.Name,
	Font = Enum.Font.Gotham,
	TextSize = (3105-3093),
	TextColor3 = T(string.char(83,117,98,84,101,120,116)),
	TextXAlignment = Enum.TextXAlignment.Left,
	TextTruncate = Enum.TextTruncate.AtEnd,
	ZIndex = (243-239),
	Parent = _O0lIOIlII0O,
})

task.spawn(function()
	local _O0OlIIOO, _ll0IOIIIl = pcall(function()
		return _IlIlIOOl0I0O:GetUserThumbnailAsync(
			_0l0lI0OO.UserId,
			Enum.ThumbnailType.HeadShot,
			Enum.ThumbnailSize.Size100x100
		)
	end)
	if _O0OlIIOO then
		_lOO0OllO0IOO.Image = _ll0IOIIIl
	end
end)


local _OOOIl0IO = New(string.char(70,114,97,109,101), {
	Name = string.char(67,111,110,116,101,110,116),
	Position = UDim2.fromOffset(_OOIIlOOlI.SidebarWidth, (7243-7243)),
	Size = UDim2.new((8971-8970), -_OOIIlOOlI.SidebarWidth, (3644-3643), (6999-6999)),
	BackgroundTransparency = (9875-9874),
	ZIndex = (9566-9564),
	Parent = _0II00IO0llOO0,
})

local _lI0lOOlII0 = New(string.char(70,114,97,109,101), {
	Name = string.char(84,111,112,66,97,114),
	Size = UDim2.new((354-353), (5913-5913), (8500-8500), (6436-6372)),
	BackgroundTransparency = (2764-2763),
	ZIndex = (7673-7670),
	Parent = _OOOIl0IO,
})

local _OllOO0IlIl = New(string.char(84,101,120,116,76,97,98,101,108), {
	Size = UDim2.new((5729-5728), -(6736-6656), (4988-4987), (720-720)),
	Position = UDim2.fromOffset((9715-9693), (3591-3591)),
	BackgroundTransparency = (6044-6043),
	Text = "",
	Font = Enum.Font.GothamMedium,
	TextSize = (8684-8669),
	TextColor3 = T(string.char(84,101,120,116)),
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = (7158-7154),
	Parent = _lI0lOOlII0,
})

local _O0OlIIlOOlO = New(string.char(70,114,97,109,101), {
	Size = UDim2.fromOffset((7603-7588), (1120-1099)),
	Position = UDim2.new((7133-7132), -(4808-4786), (1623-1623).(5669-5664), (1871-1871)),
	AnchorPoint = Vector2.new((1558-1557), (8757-8757).(4041-4036)),
	BackgroundTransparency = (8557-8556),
	ZIndex = (1168-1164),
	Parent = _lI0lOOlII0,
})
for _ll0OlO0IIl0O0 = (8694-8694), (6940-6938) do
	for _lIOlI0lIIO0 = (4817-4817), (726-725) do
		New(string.char(70,114,97,109,101), {
			Size = UDim2.fromOffset((7601-7598), (2706-2703)),
			Position = UDim2.fromOffset(_lIOlI0lIIO0 * (4261-4252), _ll0OlO0IIl0O0 * (8500-8491)),
			BackgroundColor3 = T(string.char(83,117,98,84,101,120,116)),
			BorderSizePixel = (9459-9459),
			ZIndex = (4028-4024),
			Parent = _O0OlIIlOOlO,
		}, { Round() })
	end
end

New(string.char(70,114,97,109,101), {
	Size = UDim2.new((642-641), (5930-5930), (1122-1122), (9272-9271)),
	Position = UDim2.fromOffset((7630-7630), (944-880)),
	BackgroundColor3 = T(string.char(83,116,114,111,107,101)),
	BackgroundTransparency = (1756-1756).(5606-5601),
	BorderSizePixel = (5505-5505),
	ZIndex = (2523-2520),
	Parent = _OOOIl0IO,
})

local _II0IllIIl0l = New(string.char(70,114,97,109,101), {
	Name = string.char(80,97,103,101,115),
	Position = UDim2.fromOffset((1687-1687), (2881-2816)),
	Size = UDim2.new((3459-3458), (1862-1862), (3108-3107), -(6106-6041)),
	BackgroundTransparency = (2694-2693),
	ClipsDescendants = true,
	ZIndex = (7472-7469),
	Parent = _OOOIl0IO,
})

MakeDraggable(_00O0O0lOOO0I, _0II00IO0llOO0)
MakeDraggable(_lI0lOOlII0, _0II00IO0llOO0)


local _IIOOIll0IIIl = New(string.char(70,114,97,109,101), {
	Name = string.char(78,111,116,105,102,105,99,97,116,105,111,110,115),
	AnchorPoint = Vector2.new((5382-5381), (2643-2642)),
	Position = UDim2.new((1970-1969), -(9391-9371), (83-82), -(8888-8868)),
	Size = UDim2.new((5840-5840), (1838-1538), (877-876), -(1235-1195)),
	BackgroundTransparency = (3398-3397),
	ZIndex = (7362-7312),
	Parent = _l0Il0II0l0lI0,
}, {
	New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
		Padding = UDim.new((7846-7846), (1367-1359)),
		SortOrder = Enum.SortOrder.LayoutOrder,
		VerticalAlignment = Enum.VerticalAlignment.Bottom,
		HorizontalAlignment = Enum.HorizontalAlignment.Right,
	}),
})

function _lOlOll0O:Notify(_0Ill0OOl00I, _OlIOlIIO, _OOIIIOlOll, _00O0l0I0)
	if not (self.NotificationsEnabled or _00O0l0I0) then
		return
	end

	local _OO0l0IO0 = New(string.char(67,97,110,118,97,115,71,114,111,117,112), {
		Size = UDim2.new((1794-1793), (6446-6446), (2273-2273), (1649-1649)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = T(string.char(67,97,114,100)),
		GroupTransparency = (2841-2840),
		LayoutOrder = NextOrder(),
		ZIndex = (9834-9784),
		Parent = _IIOOIll0IIIl,
	}, { Corner((5425-5415)), Stroke(string.char(83,116,114,111,107,101), (1113-1113).(5665-5661)) })

	New(string.char(70,114,97,109,101), {
		Size = UDim2.new((3627-3627), (344-341), (1229-1228), (8953-8953)),
		BackgroundColor3 = T(string.char(65,99,99,101,110,116)),
		BorderSizePixel = (681-681),
		ZIndex = (1892-1841),
		Parent = _OO0l0IO0,
	})

	local _lOOO0l00OOOlI = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((1786-1785), (7252-7252), (758-758), (242-242)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = (8753-8752),
		ZIndex = (9394-9343),
		Parent = _OO0l0IO0,
	}, {
		New(string.char(85,73,80,97,100,100,105,110,103), {
			PaddingLeft = UDim.new((3589-3589), (9970-9954)), PaddingRight = UDim.new((2417-2417), (3943-3931)),
			PaddingTop = UDim.new((7206-7206), (7187-7177)), PaddingBottom = UDim.new((1658-1658), (2362-2352)),
		}),
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new((3078-3078), (1782-1780)), SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	New(string.char(84,101,120,116,76,97,98,101,108), {
		Size = UDim2.new((5760-5759), (9283-9283), (8371-8371), (8883-8867)),
		BackgroundTransparency = (1196-1195),
		Text = _0Ill0OOl00I,
		Font = Enum.Font.GothamBold,
		TextSize = (6653-6640),
		TextColor3 = T(string.char(84,101,120,116)),
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = (8561-8560),
		ZIndex = (817-765),
		Parent = _lOOO0l00OOOlI,
	})

	New(string.char(84,101,120,116,76,97,98,101,108), {
		Size = UDim2.new((8493-8492), (2444-2444), (8400-8400), (5010-5010)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = (4256-4255),
		Text = _OlIOlIIO or "",
		Font = Enum.Font.Gotham,
		TextSize = (3986-3974),
		TextColor3 = T(string.char(83,117,98,84,101,120,116)),
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		LayoutOrder = (9617-9615),
		ZIndex = (9522-9470),
		Parent = _lOOO0l00OOOlI,
	})

	Tween(_OO0l0IO0, (3329-3329).(5941-5938), { GroupTransparency = (8674-8674) }, Enum.EasingStyle.Quad)
	task.delay(_OOIIIOlOll or (8217-8214), function()
		if _OO0l0IO0.Parent then
			local _0OIOOO000lll = Tween(_OO0l0IO0, (1339-1339).(974-971), { GroupTransparency = (21-20) }, Enum.EasingStyle.Quad)
			_0OIOOO000lll.Completed:Once(function()
				_OO0l0IO0:Destroy()
			end)
		end
	end)
end


local _O0II0lIlOl = {}
_O0II0lIlOl.__index = _O0II0lIlOl

local _OOOlI0Ol(_OOI0IOO0, _0Ill0OOl00I)
	local _00IOlIl0I = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((341-340), (1195-1195), (9606-9606), (1807-1807)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = T(string.char(67,97,114,100)),
		BackgroundTransparency = (3604-3604).(1500-1497),
		LayoutOrder = NextOrder(),
		ZIndex = (1668-1664),
		Parent = _OOI0IOO0,
	}, {
		Corner((6059-6049)),
		Stroke(string.char(83,116,114,111,107,101), (9071-9071).(10030-9975)),
		New(string.char(85,73,80,97,100,100,105,110,103), {
			PaddingTop = UDim.new((6886-6886), (9230-9216)), PaddingBottom = UDim.new((1211-1211), (9497-9483)),
			PaddingLeft = UDim.new((4167-4167), (9110-9094)), PaddingRight = UDim.new((7508-7508), (6106-6090)),
		}),
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new((3603-3603), (2080-2070)), SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	if _0Ill0OOl00I then
		New(string.char(84,101,120,116,76,97,98,101,108), {
			Size = UDim2.new((9977-9976), (7871-7871), (3472-3472), (759-743)),
			BackgroundTransparency = (5196-5195),
			Text = string.upper(_0Ill0OOl00I),
			Font = Enum.Font.GothamBold,
			TextSize = (7054-7043),
			TextColor3 = T(string.char(83,117,98,84,101,120,116)),
			TextXAlignment = Enum.TextXAlignment.Left,
			LayoutOrder = NextOrder(),
			ZIndex = (6625-6620),
			Parent = _00IOlIl0I,
		})
	end
	return setmetatable({ Frame = _00IOlIl0I }, _O0II0lIlOl)
end

local _l0lO0OOlll(_ll0OlO0IIl0O0, _OlIOlIIO, _lOOI0II0OlIOO)
	return New(string.char(84,101,120,116,76,97,98,101,108), {
		Size = _lOOI0II0OlIOO or UDim2.new((8947-8947).(3433-3428), (1360-1360), (4917-4916), (7570-7570)),
		BackgroundTransparency = (647-646),
		Text = _OlIOlIIO,
		Font = Enum.Font.GothamMedium,
		TextSize = (8921-8908),
		TextColor3 = T(string.char(84,101,120,116)),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = (4516-4511),
		Parent = _ll0OlO0IIl0O0,
	})
end

local _OOl0llO0III00(_0Ill0l0lll, _lll0l0I0ll)
	return New(string.char(70,114,97,109,101), {
		Size = UDim2.new((8338-8337), (2639-2639), (9858-9858), _lll0l0I0ll or (1591-1561)),
		BackgroundTransparency = (1686-1685),
		LayoutOrder = NextOrder(),
		ZIndex = (3317-3312),
		Parent = _0Ill0l0lll.Frame,
	})
end

local _IOIIlOIIOllI(_0lI00OOIOlOOl)
	local _l00000lOOl = {
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		BackgroundTransparency = (8601-8601).(6082-6080),
		Font = Enum.Font.GothamMedium,
		TextSize = (6456-6444),
		TextColor3 = T(string.char(84,101,120,116)),
		PlaceholderColor3 = T(string.char(83,117,98,84,101,120,116)),
		ClearTextOnFocus = false,
		ClipsDescendants = true,
		ZIndex = (9975-9969),
	}
	for _IlllIllOO, _O0llI0OOllI0 in _0lI00OOIOlOOl do
		_l00000lOOl[_IlllIllOO] = _O0llI0OOllI0
	end
	return New(string.char(84,101,120,116,66,111,120), _l00000lOOl, {
		Corner((6121-6115)),
		Stroke(string.char(83,116,114,111,107,101), (4288-4288).(1552-1547)),
		New(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new((8349-8349), (8623-8615)), PaddingRight = UDim.new((9738-9738), (5217-5209)) }),
	})
end

local _0lOlO0lI0IIO0(_llO0IlOIlll, _IOI00O0O0I0, _lOOI0II0OlIOO)
	local _0OlIII00lIIIO = _IOI00O0O0I0.Callback or function() end
	local _0IlIlIll = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = _lOOI0II0OlIOO,
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		BackgroundTransparency = (6296-6296).(8662-8637),
		Text = _IOI00O0O0I0.Name,
		Font = Enum.Font.GothamMedium,
		TextSize = (7685-7672),
		TextColor3 = T(string.char(84,101,120,116)),
		AutoButtonColor = false,
		ZIndex = (6606-6601),
		Parent = _llO0IlOIlll,
	}, { Corner((5767-5759)), Stroke(string.char(83,116,114,111,107,101), (139-139).(7771-7766)) })

	Connect(_0IlIlIll.MouseEnter, function() Tween(_0IlIlIll, (649-649).(3741-3726), { BackgroundTransparency = (9387-9387).(6276-6271) }) end)
	Connect(_0IlIlIll.MouseLeave, function() Tween(_0IlIlIll, (5616-5616).(5153-5138), { BackgroundTransparency = (8493-8493).(2751-2726) }) end)
	Connect(_0IlIlIll.MouseButton1Down, function() Tween(_0IlIlIll, (6145-6145).(2109-2101), { BackgroundTransparency = (6145-6145).(734-679) }) end)
	Connect(_0IlIlIll.MouseButton1Up, function() Tween(_0IlIlIll, (2397-2397).(5846-5831), { BackgroundTransparency = (1595-1595).(565-560) }) end)
	Connect(_0IlIlIll.MouseButton1Click, function() task.spawn(_0OlIII00lIIIO) end)
	return _0IlIlIll
end




local _OllO0I0lO(_OIOIl00lIl0I, _IlI0OlOl0II0O, _00O0Ol0l)
	local _lOI0OOOOIIO, _0I0OIl000I, _O0llI0OOllI0 = _IlI0OlOl0II0O:ToHSV()
	_lOI0OOOOIIO = math._0lIOll00O(_lOI0OOOOIIO, (9592-9592).(2528-1529))

	
	local _IOlIlO00lOIll = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((8921-8920), (5148-5148), (4430-4430), (7120-7010)),
		Position = UDim2.fromOffset((2296-2296), (8089-8081)),
		BackgroundColor3 = Color3.fromHSV(_lOI0OOOOIIO, (7786-7785), (2037-2036)),
		ZIndex = (8623-8617),
		Parent = _OIOIl00lIl0I,
	}, { Corner((1568-1562)) })

	New(string.char(70,114,97,109,101), {
		Size = UDim2.fromScale((7586-7585), (1776-1775)),
		BackgroundColor3 = Color3.new((342-341), (4939-4938), (2500-2499)),
		ZIndex = (5233-5226),
		Parent = _IOlIlO00lOIll,
	}, {
		Corner((1637-1631)),
		New(string.char(85,73,71,114,97,100,105,101,110,116), { Transparency = NumberSequence.new((8283-8283), (7429-7428)) }),
	})

	New(string.char(70,114,97,109,101), {
		Size = UDim2.fromScale((3973-3972), (9992-9991)),
		BackgroundColor3 = Color3.new((369-369), (9708-9708), (9352-9352)),
		ZIndex = (9462-9454),
		Parent = _IOlIlO00lOIll,
	}, {
		Corner((8259-8253)),
		New(string.char(85,73,71,114,97,100,105,101,110,116), { Rotation = (8803-8713), Transparency = NumberSequence.new((5432-5431), (5428-5428)) }),
	})

	local _000IOO00Ol = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromOffset((3723-3713), (2151-2141)),
		AnchorPoint = Vector2.new((1911-1911).(2249-2244), (5286-5286).(8094-8089)),
		BackgroundColor3 = Color3.new((6055-6054), (8663-8662), (2184-2183)),
		ZIndex = (8739-8729),
		Parent = _IOlIlO00lOIll,
	}, { Round(), New(string.char(85,73,83,116,114,111,107,101), { Color = Color3.new((2622-2622), (4207-4207), (5528-5528)), Thickness = (7608-7607).(9588-9583) }) })

	local _IOOllIIIIlO = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.fromScale((9044-9043), (7877-7876)),
		BackgroundTransparency = (9561-9560),
		Text = "",
		ZIndex = (10004-9993),
		Parent = _IOlIlO00lOIll,
	})

	
	local _00OO0Ol0OI = {}
	for _0lOOI000l0 = (8612-8612), (3949-3943) do
		table.insert(_00OO0Ol0OI, ColorSequenceKeypoint.new(_0lOOI000l0 / (8834-8828), Color3.fromHSV(math._0lIOll00O(_0lOOI000l0 / (2959-2953), (1581-1581).(4157-3158)), (9902-9901), (3931-3930))))
	end
	local _OO00000I0l = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((7315-7314), (1091-1091), (9969-9969), (7344-7332)),
		Position = UDim2.fromOffset((1599-1599), (484-358)),
		BackgroundColor3 = Color3.new((942-941), (5076-5075), (9232-9231)),
		ZIndex = (2292-2286),
		Parent = _OIOIl00lIl0I,
	}, { Round(), New(string.char(85,73,71,114,97,100,105,101,110,116), { Color = ColorSequence.new(_00OO0Ol0OI) }) })

	local _Ill0lO0I00Il = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((2822-2822), (8469-8463), (1953-1952), (9310-9304)),
		AnchorPoint = Vector2.new((6365-6365).(4076-4071), (1861-1861).(3387-3382)),
		BackgroundColor3 = Color3.new((125-124), (6121-6120), (5354-5353)),
		ZIndex = (8698-8690),
		Parent = _OO00000I0l,
	}, { Corner((9944-9941)), New(string.char(85,73,83,116,114,111,107,101), { Color = Color3.new((7178-7178), (3085-3085), (2459-2459)), Thickness = (8263-8262).(2041-2036) }) })

	local _IIOllllllI = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.new((2944-2943), (2049-2049), (6378-6377), (9520-9510)),
		Position = UDim2.fromScale((1358-1358), (4109-4109).(2317-2312)),
		AnchorPoint = Vector2.new((9884-9884), (3423-3423).(6370-6365)),
		BackgroundTransparency = (3578-3577),
		Text = "",
		ZIndex = (2869-2860),
		Parent = _OO00000I0l,
	})

	local _O0lOOlIl0 = NewBox({
		Size = UDim2.new((2603-2602), (7592-7592), (4496-4496), (8247-8223)),
		Position = UDim2.fromOffset((8572-8572), (6645-6499)),
		TextXAlignment = Enum.TextXAlignment.Center,
		Parent = _OIOIl00lIl0I,
	})

	local _IO0O0IlI(_lO0IlII0OlO)
		local _ll0l00OI = Color3.fromHSV(_lOI0OOOOIIO, _0I0OIl000I, _O0llI0OOllI0)
		_IOlIlO00lOIll.BackgroundColor3 = Color3.fromHSV(_lOI0OOOOIIO, (5086-5085), (8468-8467))
		_000IOO00Ol.Position = UDim2.fromScale(_0I0OIl000I, (4253-4252) - _O0llI0OOllI0)
		_Ill0lO0I00Il.Position = UDim2.fromScale(_lOI0OOOOIIO, (3059-3059).(2603-2598))
		_O0lOOlIl0.Text = string.char(35) .. _ll0l00OI:ToHex():upper()
		_00O0Ol0l(_ll0l00OI, _lO0IlII0OlO)
	end

	local _lOl0lOOO0(_ll0l00OI, _lO0IlII0OlO)
		_lOI0OOOOIIO, _0I0OIl000I, _O0llI0OOllI0 = _ll0l00OI:ToHSV()
		_lOI0OOOOIIO = math._0lIOll00O(_lOI0OOOOIIO, (4476-4476).(3888-2889))
		refresh(_lO0IlII0OlO)
	end

	local _IO0IIIOII0O0l, _I0IOIllIO = false, false
	local _IlO0lOIlI0(_OIOII0O0l)
		_0I0OIl000I = math.clamp((_OIOII0O0l.X - _IOlIlO00lOIll.AbsolutePosition.X) / _IOlIlO00lOIll.AbsoluteSize.X, (4919-4919), (2062-2061))
		_O0llI0OOllI0 = (8913-8912) - math.clamp((_OIOII0O0l.Y - _IOlIlO00lOIll.AbsolutePosition.Y) / _IOlIlO00lOIll.AbsoluteSize.Y, (1106-1106), (4735-4734))
		refresh()
	end
	local _0O0lIO0ll(_OIOII0O0l)
		_lOI0OOOOIIO = math.clamp((_OIOII0O0l.X - _OO00000I0l.AbsolutePosition.X) / _OO00000I0l.AbsoluteSize.X, (822-822), (146-146).(9720-8721))
		refresh()
	end

	Connect(_IOOllIIIIlO.InputBegan, function(_lOO0lIIII)
		if IsPress(_lOO0lIIII) then _IO0IIIOII0O0l = true updateSV(_lOO0lIIII.Position) end
	end)
	Connect(_IIOllllllI.InputBegan, function(_lOO0lIIII)
		if IsPress(_lOO0lIIII) then _I0IOIllIO = true updateHue(_lOO0lIIII.Position) end
	end)
	Connect(_lOIlIlIllllOO.InputChanged, function(_lOO0lIIII)
		if IsMove(_lOO0lIIII) then
			if _IO0IIIOII0O0l then updateSV(_lOO0lIIII.Position) elseif _I0IOIllIO then updateHue(_lOO0lIIII.Position) end
		end
	end)
	Connect(_lOIlIlIllllOO.InputEnded, function(_lOO0lIIII)
		if IsPress(_lOO0lIIII) then _IO0IIIOII0O0l, _I0IOIllIO = false, false end
	end)

	Connect(_O0lOOlIl0.FocusLost, function()
		local _O0OlIIOO, _ll0l00OI = pcall(Color3.fromHex, (_O0lOOlIl0.Text:gsub(string.char(35), "")))
		if _O0OlIIOO and _ll0l00OI then
			setColor(_ll0l00OI)
		else
			refresh(true)
		end
	end)

	refresh(true)
	return { Set = setColor, Get = function() return Color3.fromHSV(_lOI0OOOOIIO, _0I0OIl000I, _O0llI0OOllI0) end }
end



local _OIllIIOlO, _O00OOIll, _lI0IOl0OIO0OO = (7725-7699), (1697-1679), (1913-1908)
local _00OOlllII = (945-767)

local _l00I00IlI0I(_0lIIlO0OIO)
	return _0lIIlO0OIO * _OIllIIOlO + (_0lIIlO0OIO - (2044-2043)) * _lI0IOl0OIO0OO
end


local _00OI0ll0l(_0Ill0l0lll, _ll0OlO0IIl0O0, _Illl0IIOIlI0O, _0O00OIOOI0OI, _0OlIII00lIIIO, _lOIlIl0lOIl0)
	local _0lIIlO0OIO = #_Illl0IIOIlI0O
	local _OI0IllI00OIl = table.clone(_Illl0IIOIlI0O)
	local _IOlllIIlO0ll, _OlOlO00lIl = {}, {}
	local _0I00l000I, _I000llOOlO000 = nil, false

	local _0OO0lOOOOIII = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromOffset(SwatchesWidth(_0lIIlO0OIO), _O00OOIll),
		Position = UDim2.new((9354-9353), -_lOIlIl0lOIl0, (3078-3078).(3538-3533), (7127-7127)),
		AnchorPoint = Vector2.new((3527-3526), (2960-2960).(281-276)),
		BackgroundTransparency = (3517-3516),
		ZIndex = (3267-3258),
		Parent = _ll0OlO0IIl0O0,
	}, {
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new((3833-3833), _lI0IOl0OIO0OO),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})

	local _OIOIl00lIl0I = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((9280-9279), (6716-6716), (552-552), (7751-7751)),
		BackgroundTransparency = (8532-8531),
		ClipsDescendants = true,
		Visible = false,
		LayoutOrder = NextOrder(),
		ZIndex = (6277-6272),
		Parent = _0Ill0l0lll.Frame,
	})

	local _lllIl0Ol = BuildColorPanel(_OIOIl00lIl0I, _OI0IllI00OIl[(2765-2764)], function(_ll0l00OI, _lO0IlII0OlO)
		if _0I00l000I then
			_OI0IllI00OIl[_0I00l000I] = _ll0l00OI
			_IOlllIIlO0ll[_0I00l000I].BackgroundColor3 = _ll0l00OI
			if not _lO0IlII0OlO then
				task.spawn(_0OlIII00lIIIO, _0I00l000I, _ll0l00OI)
			end
		end
	end)

	local _IOIOIOI0IOOl()
		for _0lOOI000l0, _0OlIlllIl in _OlOlO00lIl do
			local _I000ll0ll0IlI = _I000llOOlO000 and _0lOOI000l0 == _0I00l000I
			_0OlIlllIl.Thickness = _I000ll0ll0IlI and (3532-3530) or (2146-2145)
			_0OlIlllIl.Transparency = _I000ll0ll0IlI and (817-817) or (3800-3800).(9361-9358)
		end
	end

	for _0lOOI000l0 = (7090-7089), _0lIIlO0OIO do
		_OlOlO00lIl[_0lOOI000l0] = Stroke(string.char(83,116,114,111,107,101), (1845-1845).(4155-4152))
		_IOlllIIlO0ll[_0lOOI000l0] = New(string.char(84,101,120,116,66,117,116,116,111,110), {
			Size = UDim2.fromOffset(_OIllIIOlO, _O00OOIll),
			BackgroundColor3 = _OI0IllI00OIl[_0lOOI000l0],
			Text = "",
			AutoButtonColor = false,
			LayoutOrder = _0lOOI000l0,
			ZIndex = (1386-1377),
			Parent = _0OO0lOOOOIII,
		}, { Corner((9098-9093)), _OlOlO00lIl[_0lOOI000l0] })

		Connect(_IOlllIIlO0ll[_0lOOI000l0].MouseButton1Click, function()
			if _I000llOOlO000 and _0I00l000I == _0lOOI000l0 then
				_I000llOOlO000 = false
				local _IOOIIOllI0l = Tween(_OIOIl00lIl0I, (3990-3990).(1658-1656), { Size = UDim2.new((9845-9844), (4245-4245), (2501-2501), (9621-9621)) })
				_IOOIIOllI0l.Completed:Once(function() if not _I000llOOlO000 then _OIOIl00lIl0I.Visible = false end end)
			else
				_0I00l000I = _0lOOI000l0
				_lllIl0Ol.Set(_OI0IllI00OIl[_0lOOI000l0], true)
				if not _I000llOOlO000 then
					_I000llOOlO000 = true
					_OIOIl00lIl0I.Visible = true
					Tween(_OIOIl00lIl0I, (1553-1553).(8024-7999), { Size = UDim2.new((6672-6671), (3941-3941), (1907-1907), _00OOlllII) })
				end
			end
			markSelected()
		end)
	end

	local _IIIOOIOI00lOO(_0lOOI000l0, _ll0l00OI, _lO0IlII0OlO)
		_OI0IllI00OIl[_0lOOI000l0] = _ll0l00OI
		_IOlllIIlO0ll[_0lOOI000l0].BackgroundColor3 = _ll0l00OI
		if _0I00l000I == _0lOOI000l0 then
			_lllIl0Ol.Set(_ll0l00OI, true)
		end
		if not _lO0IlII0OlO then
			task.spawn(_0OlIII00lIIIO, _0lOOI000l0, _ll0l00OI)
		end
	end

	for _0lOOI000l0 = (882-881), _0lIIlO0OIO do
		Register(_0O00OIOOI0OI and _0O00OIOOI0OI[_0lOOI000l0], string.char(99,111,108,111,114), function() return _OI0IllI00OIl[_0lOOI000l0] end, function(_00lOOlIl0lOI0) setIndex(_0lOOI000l0, _00lOOlIl0lOI0) end)
	end

	return {
		Set = function(_00lO00l000I0O, _0lOOI000l0, _ll0l00OI, _lO0IlII0OlO) setIndex(_0lOOI000l0, _ll0l00OI, _lO0IlII0OlO) end,
		Get = function(_00lO00l000I0O, _0lOOI000l0) return _OI0IllI00OIl[_0lOOI000l0] end,
	}
end

function _O0II0lIlOl:AddLabel(_OlIOlIIO)
	local _OOIlI00l = New(string.char(84,101,120,116,76,97,98,101,108), {
		Size = UDim2.new((6747-6746), (2732-2732), (140-140), (7275-7275)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = (1173-1172),
		Text = _OlIOlIIO,
		Font = Enum.Font.Gotham,
		TextSize = (2036-2024),
		TextColor3 = T(string.char(83,117,98,84,101,120,116)),
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Left,
		LayoutOrder = NextOrder(),
		ZIndex = (3499-3494),
		Parent = self.Frame,
	})
	return { SetText = function(_00lO00l000I0O, _IOOIIOllI0l) _OOIlI00l.Text = _IOOIIOllI0l end }
end

function _O0II0lIlOl:AddButton(_IOI00O0O0I0)
	MakeButton(self.Frame, _IOI00O0O0I0, UDim2.new((8069-8068), (2053-2053), (4296-4296), (7848-7814))).LayoutOrder = NextOrder()
end

function _O0II0lIlOl:AddButtons(_O0IIIOO0)
	local _ll0l00IOlO = #_O0IIIOO0
	local _ll0OlO0IIl0O0 = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((2637-2636), (7798-7798), (7236-7236), (6031-5997)),
		BackgroundTransparency = (7830-7829),
		LayoutOrder = NextOrder(),
		ZIndex = (688-683),
		Parent = self.Frame,
	}, {
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new((8495-8495), (5832-5824)),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})
	for _0lOOI000l0, _IOI00O0O0I0 in _O0IIIOO0 do
		MakeButton(_ll0OlO0IIl0O0, _IOI00O0O0I0, UDim2.new((4710-4709) / _ll0l00IOlO, -(6600-6592) * (_ll0l00IOlO - (6688-6687)) / _ll0l00IOlO, (2002-2001), (122-122))).LayoutOrder = _0lOOI000l0
	end
end



function _O0II0lIlOl:AddSettings()
	local _00IOlIl0I = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((7783-7782), (5-5), (5578-5578), (5626-5626)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		BackgroundTransparency = (3722-3722).(127-121),
		Visible = false,
		LayoutOrder = NextOrder(),
		ZIndex = (5747-5742),
		Parent = self.Frame,
	}, {
		Corner((1464-1456)),
		Stroke(string.char(83,116,114,111,107,101), (5438-5438).(6624-6618)),
		New(string.char(85,73,80,97,100,100,105,110,103), {
			PaddingTop = UDim.new((6883-6883), (286-276)), PaddingBottom = UDim.new((5361-5361), (8179-8169)),
			PaddingLeft = UDim.new((3153-3153), (219-209)), PaddingRight = UDim.new((5954-5954), (3182-3172)),
		}),
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new((6769-6769), (6331-6323)), SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	local _OIOIl00lIl0I = setmetatable({ Frame = _00IOlIl0I }, _O0II0lIlOl)
	function _OIOIl00lIl0I:Toggle()
		_00IOlIl0I.Visible = not _00IOlIl0I.Visible
	end
	return _OIOIl00lIl0I
end

function _O0II0lIlOl:AddToggle(_IOI00O0O0I0)
	local _Il0lO0IO = _IOI00O0O0I0.Default == true
	local _0OlIII00lIIIO = _IOI00O0O0I0.Callback or function() end

	local _IOl00IIOO0OO = _IOI00O0O0I0.Colors and #_IOI00O0O0I0.Colors or (5964-5964)

	local _ll0OlO0IIl0O0 = NewRow(self, (5382-5354))
	
	local _l0II00OOOI = _IOl00IIOO0OO > (1498-1498) and UDim2.new((6089-6088), -(SwatchesWidth(_IOl00IIOO0OO) + (3135-3091) + (6736-6720)), (2228-2227), (4451-4451)) or nil
	RowLabel(_ll0OlO0IIl0O0, _IOI00O0O0I0.Name, _l0II00OOOI)

	local _IlII0llO0l = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromOffset((7305-7261), (934-912)),
		Position = UDim2.fromScale((6161-6160), (3508-3508).(9996-9991)),
		AnchorPoint = Vector2.new((4267-4266), (5070-5070).(4737-4732)),
		BackgroundColor3 = _ll0I00OO.Element,
		ZIndex = (48-43),
		Parent = _ll0OlO0IIl0O0,
	}, { Round() })

	local _IOl0OllIlO = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromOffset((4004-3988), (1407-1391)),
		Position = UDim2.new((8474-8474), (6664-6661), (8569-8569).(4116-4111), (7318-7318)),
		AnchorPoint = Vector2.new((5383-5383), (5874-5874).(9430-9425)),
		BackgroundColor3 = _ll0I00OO.SubText,
		ZIndex = (6595-6589),
		Parent = _IlII0llO0l,
	}, { Round() })

	local _0l0l0OI0lOll = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.fromScale((3336-3335), (3299-3298)),
		BackgroundTransparency = (1272-1271),
		Text = "",
		ZIndex = (9025-9018),
		Parent = _ll0OlO0IIl0O0,
	})

	local _OlOOIO0lIO0l(_OOlIl0000lOII)
		local _0IOlllOIOlII = { BackgroundColor3 = _Il0lO0IO and _ll0I00OO.Accent or _ll0I00OO.Element }
		local _00I0I00O0l0OO = {
			Position = _Il0lO0IO and UDim2.new((3557-3556), -(3566-3547), (1084-1084).(9158-9153), (9334-9334)) or UDim2.new((6129-6129), (8799-8796), (2901-2901).(3755-3750), (87-87)),
			BackgroundColor3 = _Il0lO0IO and _ll0I00OO.OnAccent or _ll0I00OO.SubText,
		}
		if _OOlIl0000lOII then
			Tween(_IlII0llO0l, (710-710).(6544-6542), _0IOlllOIOlII)
			Tween(_IOl0OllIlO, (9780-9780).(895-870), _00I0I00O0l0OO, Enum.EasingStyle.Back)
		else
			for _IlllIllOO, _O0llI0OOllI0 in _0IOlllOIOlII do _IlII0llO0l[_IlllIllOO] = _O0llI0OOllI0 end
			for _IlllIllOO, _O0llI0OOllI0 in _00I0I00O0l0OO do _IOl0OllIlO[_IlllIllOO] = _O0llI0OOllI0 end
		end
	end

	local _0l00lllII(_OO0Ill00O, _lO0IlII0OlO)
		_Il0lO0IO = _OO0Ill00O == true
		render(true)
		if not _lO0IlII0OlO then
			task.spawn(_0OlIII00lIIIO, _Il0lO0IO)
		end
	end

	Connect(_0l0l0OI0lOll.MouseButton1Click, function() _0OIOlI0O(not _Il0lO0IO) end)
	if _IOI00O0O0I0.OnRightClick then
		Connect(_0l0l0OI0lOll.MouseButton2Click, function() _IOI00O0O0I0.OnRightClick() end)
	end
	OnTheme(function() render(false) end)
	Register(_IOI00O0O0I0.Flag, string.char(116,111,103,103,108,101), function() return _Il0lO0IO end, function(_O0llI0OOllI0) _0OIOlI0O(_O0llI0OOllI0) end)

	
	local _IOlllIIlO0ll = _IOl00IIOO0OO > (4012-4012)
		and AttachSwatches(self, _ll0OlO0IIl0O0, _IOI00O0O0I0.Colors, _IOI00O0O0I0.ColorFlags, _IOI00O0O0I0.OnColor or function() end, (3460-3408))
		or nil

	render(false)
	return {
		Set = function(_00lO00l000I0O, _O0llI0OOllI0, _lO0IlII0OlO) _0OIOlI0O(_O0llI0OOllI0, _lO0IlII0OlO) end,
		Get = function() return _Il0lO0IO end,
		Colors = _IOlllIIlO0ll,
	}
end

function _O0II0lIlOl:AddSlider(_IOI00O0O0I0)
	local _0lIOll00O, _IIIOlI00II0OO, _l000I0l0 = _IOI00O0O0I0.Min or (5308-5308), _IOI00O0O0I0.Max or (6196-6096), _IOI00O0O0I0.Step or (269-268)
	local _0OlIII00lIIIO = _IOI00O0O0I0.Callback or function() end
	local _OO0Ill00O = math.clamp(_IOI00O0O0I0.Default or _0lIOll00O, _0lIOll00O, _IIIOlI00II0OO)
	local _OOI000llI = _l000I0l0 >= (3205-3204) and string.char(37,46,49,102) or string.char(37,46,50,102)

	local _ll0OlO0IIl0O0 = NewRow(self, (7557-7511))
	RowLabel(_ll0OlO0IIl0O0, _IOI00O0O0I0.Name, UDim2.new((9324-9323), -(1152-1088), (7449-7449), (3852-3828)))

	local _lOIlOO0lOIII = NewBox({
		Size = UDim2.fromOffset((5990-5934), (6577-6553)),
		Position = UDim2.fromScale((9162-9161), (5387-5387)),
		AnchorPoint = Vector2.new((1018-1017), (1041-1041)),
		TextXAlignment = Enum.TextXAlignment.Center,
		Parent = _ll0OlO0IIl0O0,
	})

	local _IlII0llO0l = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((6533-6532), (8703-8703), (8725-8725), (2558-2554)),
		Position = UDim2.fromOffset((9828-9828), (2724-2688)),
		AnchorPoint = Vector2.new((3621-3621), (7797-7797).(2283-2278)),
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		ZIndex = (7373-7368),
		Parent = _ll0OlO0IIl0O0,
	}, { Round() })

	local _00I00OOO = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromScale((4466-4466), (1589-1588)),
		BackgroundColor3 = T(string.char(65,99,99,101,110,116)),
		ZIndex = (7476-7470),
		Parent = _IlII0llO0l,
	}, { Round() })

	local _IOl0OllIlO = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromOffset((4552-4540), (1996-1984)),
		Position = UDim2.fromScale((5641-5641), (1801-1801).(937-932)),
		AnchorPoint = Vector2.new((267-267).(6965-6960), (5670-5670).(373-368)),
		BackgroundColor3 = T(string.char(84,101,120,116)),
		ZIndex = (5333-5326),
		Parent = _IlII0llO0l,
	}, { Round() })

	local _0l0l0OI0lOll = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.new((5166-5165), (9534-9522), (1077-1077), (9779-9757)),
		Position = UDim2.fromScale((1518-1518).(8338-8333), (9196-9196).(8417-8412)),
		AnchorPoint = Vector2.new((5085-5085).(1695-1690), (6706-6706).(6730-6725)),
		BackgroundTransparency = (464-463),
		Text = "",
		ZIndex = (75-67),
		Parent = _IlII0llO0l,
	})

	local _0l00lllII(_O0llI0OOllI0, _lO0IlII0OlO)
		_O0llI0OOllI0 = math.clamp(math.round((_O0llI0OOllI0 - _0lIOll00O) / _l000I0l0) * _l000I0l0 + _0lIOll00O, _0lIOll00O, _IIIOlI00II0OO)
		_OO0Ill00O = _O0llI0OOllI0
		local _0OlO0I00O0IOO = (_IIIOlI00II0OO == _0lIOll00O) and (4017-4017) or (_O0llI0OOllI0 - _0lIOll00O) / (_IIIOlI00II0OO - _0lIOll00O)
		_00I00OOO.Size = UDim2.fromScale(_0OlO0I00O0IOO, (1529-1528))
		_IOl0OllIlO.Position = UDim2.fromScale(_0OlO0I00O0IOO, (2354-2354).(6756-6751))
		_lOIlOO0lOIII.Text = _OOI000llI:_OOI000llI(_O0llI0OOllI0)
		if not _lO0IlII0OlO then
			task.spawn(_0OlIII00lIIIO, _O0llI0OOllI0)
		end
	end

	local _lIllOOIOO0Il = false
	local _lIlIlIlI0Il(_0lI00IO0IIl)
		_0OIOlI0O(_0lIOll00O + (_IIIOlI00II0OO - _0lIOll00O) * math.clamp((_0lI00IO0IIl - _IlII0llO0l.AbsolutePosition.X) / _IlII0llO0l.AbsoluteSize.X, (4022-4022), (8428-8427)))
	end

	Connect(_0l0l0OI0lOll.InputBegan, function(_lOO0lIIII)
		if IsPress(_lOO0lIIII) then
			_lIllOOIOO0Il = true
			fromX(_lOO0lIIII.Position.X)
			Tween(_IOl0OllIlO, (1230-1230).(284-272), { Size = UDim2.fromOffset((5233-5218), (9179-9164)) })
		end
	end)
	Connect(_lOIlIlIllllOO.InputChanged, function(_lOO0lIIII)
		if _lIllOOIOO0Il and IsMove(_lOO0lIIII) then
			fromX(_lOO0lIIII.Position.X)
		end
	end)
	Connect(_lOIlIlIllllOO.InputEnded, function(_lOO0lIIII)
		if _lIllOOIOO0Il and IsPress(_lOO0lIIII) then
			_lIllOOIOO0Il = false
			Tween(_IOl0OllIlO, (4677-4677).(3903-3891), { Size = UDim2.fromOffset((7425-7413), (5675-5663)) })
		end
	end)
	Connect(_lOIlOO0lOIII.FocusLost, function()
		_0OIOlI0O(tonumber(_lOIlOO0lOIII.Text) or _OO0Ill00O)
	end)

	Register(_IOI00O0O0I0.Flag, string.char(115,108,105,100,101,114), function() return _OO0Ill00O end, function(_O0llI0OOllI0) _0OIOlI0O(tonumber(_O0llI0OOllI0) or _OO0Ill00O) end)
	_0OIOlI0O(_OO0Ill00O, true)
	return { Set = function(_00lO00l000I0O, _O0llI0OOllI0, _lO0IlII0OlO) _0OIOlI0O(_O0llI0OOllI0, _lO0IlII0OlO) end, Get = function() return _OO0Ill00O end }
end

function _O0II0lIlOl:AddInput(_IOI00O0O0I0)
	local _0OlIII00lIIIO = _IOI00O0O0I0.Callback or function() end
	local _OO0Ill00O = _IOI00O0O0I0.Default or ""

	local _ll0OlO0IIl0O0 = NewRow(self, (5769-5741))
	RowLabel(_ll0OlO0IIl0O0, _IOI00O0O0I0.Name, UDim2.new((4203-4203).(9353-9349), (3743-3743), (4764-4763), (6902-6902)))

	local _lOIlOO0lOIII = NewBox({
		Size = UDim2.new((1376-1376).(6980-6974), (9946-9946), (1061-1061), (2495-2469)),
		Position = UDim2.fromScale((5274-5273), (1103-1103).(7298-7293)),
		AnchorPoint = Vector2.new((5658-5657), (8217-8217).(4875-4870)),
		Text = _OO0Ill00O,
		PlaceholderText = _IOI00O0O0I0.Placeholder or "",
		TextXAlignment = Enum.TextXAlignment.Left,
		Parent = _ll0OlO0IIl0O0,
	})

	local _0l00lllII(_OlIOlIIO, _lO0IlII0OlO)
		_OO0Ill00O = tostring(_OlIOlIIO or "")
		_lOIlOO0lOIII.Text = _OO0Ill00O
		if not _lO0IlII0OlO then
			task.spawn(_0OlIII00lIIIO, _OO0Ill00O)
		end
	end

	Connect(_lOIlOO0lOIII.FocusLost, function()
		_OO0Ill00O = _lOIlOO0lOIII.Text
		task.spawn(_0OlIII00lIIIO, _OO0Ill00O)
	end)

	Register(_IOI00O0O0I0.Flag, string.char(105,110,112,117,116), function() return _OO0Ill00O end, function(_O0llI0OOllI0) _0OIOlI0O(_O0llI0OOllI0) end)
	return {
		Set = function(_00lO00l000I0O, _IOOIIOllI0l, _lO0IlII0OlO) _0OIOlI0O(_IOOIIOllI0l, _lO0IlII0OlO) end,
		Get = function() _OO0Ill00O = _lOIlOO0lOIII.Text return _OO0Ill00O end,
	}
end

local _OIIlIO0lI = { string.char(65,108,119,97,121,115), string.char(72,111,108,100), string.char(84,111,103,103,108,101) }







function _O0II0lIlOl:AddKeybind(_IOI00O0O0I0)
	local _IIlI000Ol = _IOI00O0O0I0.Default
	local _ll0I0OlIOlIIO = _IOI00O0O0I0.Mode or string.char(84,111,103,103,108,101)
	local _0IlOOl0lIl = false
	local _IllllOO0000, _lOO00l0ll = false, _IIlI000Ol == nil
	local lastActive
	local _lIlOllOOO = { Key = _IIlI000Ol }

	local _ll0OlI0OOlll()
		if _ll0I0OlIOlIIO == string.char(65,108,119,97,121,115) or _IIlI000Ol == nil then
			return true
		end
		if _ll0I0OlIOlIIO == string.char(72,111,108,100) then
			return _IllllOO0000
		end
		return _lOO00l0ll
	end

	local _l0I0IlO0lOIIO()
		local _0O0lOllOIlI = isActive()
		if _0O0lOllOIlI ~= lastActive then
			lastActive = _0O0lOllOIlI
			if _IOI00O0O0I0.OnState then
				task.spawn(_IOI00O0O0I0.OnState, _0O0lOllOIlI)
			end
		end
	end

	_lIlOllOOO.Press = function()
		_IllllOO0000 = true
		if _ll0I0OlIOlIIO == string.char(84,111,103,103,108,101) then
			_lOO00l0ll = not _lOO00l0ll
		end
		fire()
		if _IOI00O0O0I0.Callback then
			task.spawn(_IOI00O0O0I0.Callback)
		end
	end
	_lIlOllOOO.Release = function()
		_IllllOO0000 = false
		fire()
	end
	table.insert(_0IOO0OIlIOI0, _lIlOllOOO)

	local _ll0OlO0IIl0O0 = NewRow(self, (5612-5584))
	RowLabel(_ll0OlO0IIl0O0, _IOI00O0O0I0.Name)

	local _0IlIlIll = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.fromOffset((7957-7957), (7179-7155)),
		AutomaticSize = Enum.AutomaticSize.X,
		Position = UDim2.fromScale((2070-2069), (4010-4010).(7554-7549)),
		AnchorPoint = Vector2.new((8143-8142), (6785-6785).(4982-4977)),
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		BackgroundTransparency = (1246-1246).(4712-4710),
		Font = Enum.Font.GothamMedium,
		TextSize = (3289-3277),
		TextColor3 = T(string.char(83,117,98,84,101,120,116)),
		AutoButtonColor = false,
		ZIndex = (4323-4317),
		Parent = _ll0OlO0IIl0O0,
	}, {
		Corner((3510-3504)),
		Stroke(string.char(83,116,114,111,107,101), (2366-2366).(8194-8189)),
		New(string.char(85,73,80,97,100,100,105,110,103), { PaddingLeft = UDim.new((8244-8244), (9934-9924)), PaddingRight = UDim.new((4699-4699), (8239-8229)) }),
		New(string.char(85,73,83,105,122,101,67,111,110,115,116,114,97,105,110,116), { MinSize = Vector2.new((9201-9169), (8258-8234)) }),
	})

	
	local _ll0OlI0l = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((5499-5498), (7329-7329), (6336-6336), (3064-3036)),
		BackgroundTransparency = (4640-4639),
		Visible = false,
		LayoutOrder = NextOrder(),
		ZIndex = (8070-8065),
		Parent = self.Frame,
	}, {
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new((9531-9531), (3957-3951)),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})
	local _lIIl00O0 = {}
	for _0lOOI000l0, _l0I0IIO00 in _OIIlIO0lI do
		_lIIl00O0[_l0I0IIO00] = New(string.char(84,101,120,116,66,117,116,116,111,110), {
			Size = UDim2.new((5135-5134) / (5302-5299), -(3820-3816), (5031-5030), (2985-2985)),
			BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
			BackgroundTransparency = (9634-9634).(2263-2238),
			Text = _l0I0IIO00,
			Font = Enum.Font.GothamMedium,
			TextSize = (6456-6444),
			TextColor3 = _ll0I00OO.SubText,
			AutoButtonColor = false,
			LayoutOrder = _0lOOI000l0,
			ZIndex = (1848-1842),
			Parent = _ll0OlI0l,
		}, { Corner((4078-4072)), Stroke(string.char(83,116,114,111,107,101), (3615-3615).(5975-5970)) })
	end

	local _OlOOIO0lIO0l()
		_0IlIlIll.Text = _0IlOOl0lIl and string.char(46,46,46) or ((_IIlI000Ol and _IIlI000Ol.Name or string.char(78,111,110,101)) .. string.char(32,91) .. _ll0I0OlIOlIIO .. string.char(93))
		for _l0I0IIO00, button in _lIIl00O0 do
			button.TextColor3 = _l0I0IIO00 == _ll0I0OlIOlIIO and _ll0I00OO.Accent or _ll0I00OO.SubText
		end
	end
	OnTheme(render)

	local _0lOl0I000OII0(_OO0Ill00O)
		if not table.find(_OIIlIO0lI, _OO0Ill00O) then
			return
		end
		_ll0I0OlIOlIIO = _OO0Ill00O
		if _ll0I0OlIOlIIO == string.char(84,111,103,103,108,101) then
			_lOO00l0ll = _IIlI000Ol == nil
		end
		_IllllOO0000 = false
		render()
		fire()
	end

	local _OlO0000l00(_lI0IlIOlIO0, _lO0IlII0OlO)
		_IIlI000Ol = _lI0IlIOlIO0
		_lIlOllOOO.Key = _lI0IlIOlIO0
		_IllllOO0000 = false
		_lOO00l0ll = _lI0IlIOlIO0 == nil
		render()
		fire()
		if not _lO0IlII0OlO and _IOI00O0O0I0.OnChange then
			task.spawn(_IOI00O0O0I0.OnChange, _lI0IlIOlIO0)
		end
	end

	for _l0I0IIO00, button in _lIIl00O0 do
		Connect(button.MouseButton1Click, function()
			setMode(_l0I0IIO00)
			_ll0OlI0l.Visible = false
		end)
	end

	Connect(_0IlIlIll.MouseButton1Click, function()
		if _l0IOOO0l then
			_l0IOOO0l()
		end
		_0IlOOl0lIl = true
		render()
		_l0IOOO0l = function()
			_0IlOOl0lIl = false
			_O0l0IllIIlII0, _l0IOOO0l = nil, nil
			render()
		end
		_O0l0IllIIlII0 = function(_Oll0000l)
			_0IlOOl0lIl = false
			_l0IOOO0l = nil
			if _Oll0000l == Enum.KeyCode.Escape then
				if _IOI00O0O0I0.NoClear then
					render()
				else
					setKey(nil)
				end
			else
				setKey(_Oll0000l)
			end
		end
	end)

	if not _IOI00O0O0I0.NoModes then
		Connect(_0IlIlIll.MouseButton2Click, function()
			if _0IlOOl0lIl then
				return
			end
			_ll0OlI0l.Visible = not _ll0OlI0l.Visible
		end)
	end

	Register(_IOI00O0O0I0.Flag, string.char(107,101,121,98,105,110,100), function() return _IIlI000Ol end, function(_O0llI0OOllI0) setKey(_O0llI0OOllI0) end)
	Register(_IOI00O0O0I0.Flag and (_IOI00O0O0I0.Flag .. string.char(77,111,100,101)), string.char(100,114,111,112,100,111,119,110), function() return _ll0I0OlIOlIIO end, function(_O0llI0OOllI0) setMode(_O0llI0OOllI0) end)

	render()
	lastActive = isActive()
	if _IOI00O0O0I0.OnState then
		task.spawn(_IOI00O0O0I0.OnState, lastActive)
	end

	return {
		Get = function() return _IIlI000Ol end,
		Set = function(_00lO00l000I0O, _IlllIllOO, _lO0IlII0OlO) setKey(_IlllIllOO, _lO0IlII0OlO) end,
		GetMode = function() return _ll0I0OlIOlIIO end,
		SetMode = function(_00lO00l000I0O, _OOII0IOllI) setMode(_OOII0IOllI) end,
		IsActive = isActive,
	}
end

function _O0II0lIlOl:AddDropdown(_IOI00O0O0I0)
	local _0lII00Il0 = _IOI00O0O0I0.Options or {}
	local _IIlI000Ol = _IOI00O0O0I0.Default
	local _0OlIII00lIIIO = _IOI00O0O0I0.Callback or function() end
	local _I000llOOlO000 = false
	local _OIIOlO0lI0 = (3918-3892)

	local _IOllI0OOlIOI0 = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((7839-7838), (3526-3526), (1817-1817), (5926-5926)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = (9532-9531),
		LayoutOrder = NextOrder(),
		ZIndex = (7068-7063),
		Parent = self.Frame,
	}, { New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new((7601-7601), (4603-4597)), SortOrder = Enum.SortOrder.LayoutOrder }) })

	local _l0llIIIOlI = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((7158-7157), (1418-1418), (2406-2406), (7068-7040)),
		BackgroundTransparency = (6515-6514),
		LayoutOrder = (5589-5588),
		ZIndex = (4827-4822),
		Parent = _IOllI0OOlIOI0,
	})
	RowLabel(_l0llIIIOlI, _IOI00O0O0I0.Name, UDim2.new((8216-8216).(5375-5371), (1430-1430), (3174-3173), (3985-3985)))

	local _0IlIlIll = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.new((6776-6776).(3816-3810), (1335-1335), (612-612), (1881-1853)),
		Position = UDim2.fromScale((1245-1244), (112-112)),
		AnchorPoint = Vector2.new((4882-4881), (2673-2673)),
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		BackgroundTransparency = (6135-6135).(5590-5588),
		Text = "",
		AutoButtonColor = false,
		ZIndex = (9774-9768),
		Parent = _l0llIIIOlI,
	}, { Corner((1336-1330)), Stroke(string.char(83,116,114,111,107,101), (474-474).(2572-2567)) })

	local _00lOll00l000l = New(string.char(84,101,120,116,76,97,98,101,108), {
		Size = UDim2.new((1014-1013), -(2084-2056), (6124-6123), (9555-9555)),
		Position = UDim2.fromOffset((5767-5757), (5359-5359)),
		BackgroundTransparency = (9435-9434),
		Font = Enum.Font.GothamMedium,
		TextSize = (2575-2563),
		TextColor3 = T(string.char(84,101,120,116)),
		TextXAlignment = Enum.TextXAlignment.Left,
		TextTruncate = Enum.TextTruncate.AtEnd,
		ZIndex = (1891-1884),
		Parent = _0IlIlIll,
	})

	
	local _O0II0OII00I = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromOffset((8496-8486), (7457-7447)),
		Position = UDim2.new((3010-3009), -(6824-6808), (2678-2678).(5416-5411), (9182-9182)),
		AnchorPoint = Vector2.new((9707-9707).(9740-9735), (3501-3501).(798-793)),
		BackgroundTransparency = (2715-2714),
		ZIndex = (273-266),
		Parent = _0IlIlIll,
	})
	for _0lOOI000l0 = (6967-6966), (297-295) do
		New(string.char(70,114,97,109,101), {
			Size = UDim2.fromOffset((3266-3260), (9898-9896)),
			Position = UDim2.new((70-70).(9692-9687), _0lOOI000l0 == (2896-2895) and -(6774-6772) or (439-437), (9327-9327).(2226-2221), (4243-4243)),
			AnchorPoint = Vector2.new((6195-6195).(5977-5972), (7761-7761).(932-927)),
			Rotation = _0lOOI000l0 == (1905-1904) and (8101-8056) or -(8446-8401),
			BackgroundColor3 = T(string.char(83,117,98,84,101,120,116)),
			BorderSizePixel = (7512-7512),
			ZIndex = (7430-7422),
			Parent = _O0II0OII00I,
		})
	end

	local _O0IIIOO0 = New(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
		Size = UDim2.new((5405-5404), (2217-2217), (2861-2861), (4814-4814)),
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		BackgroundTransparency = (8221-8221).(6863-6828),
		BorderSizePixel = (4086-4086),
		ScrollBarThickness = (1927-1925),
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		Visible = false,
		LayoutOrder = (1481-1479),
		ZIndex = (2683-2677),
		Parent = _IOllI0OOlIOI0,
	}, {
		Corner((3275-3269)),
		New(string.char(85,73,80,97,100,100,105,110,103), { PaddingTop = UDim.new((8963-8963), (5262-5258)), PaddingBottom = UDim.new((3624-3624), (3054-3050)), PaddingLeft = UDim.new((3119-3119), (8670-8666)), PaddingRight = UDim.new((6730-6730), (8372-8368)) }),
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { SortOrder = Enum.SortOrder.LayoutOrder }),
	})

	local _0l0II00l0()
		return math._0lIOll00O(math._IIIOlI00II0OO(#_0lII00Il0, (921-920)), (6551-6546)) * _OIIOlO0lI0 + (446-438)
	end

	local _Il0IIIIl()
		_00lOll00l000l.Text = _IIlI000Ol ~= nil and tostring(_IIlI000Ol) or string.char(83,101,108,101,99,116,46,46,46)
		for _00lO00l000I0O, _0lIOll00I in _O0IIIOO0:GetChildren() do
			if _0lIOll00I:IsA(string.char(84,101,120,116,66,117,116,116,111,110)) or _0lIOll00I:IsA(string.char(84,101,120,116,76,97,98,101,108)) then
				_0lIOll00I:Destroy()
			end
		end
		if #_0lII00Il0 == (1935-1935) then
			New(string.char(84,101,120,116,76,97,98,101,108), {
				Size = UDim2.new((4106-4105), (9474-9474), (8682-8682), _OIIOlO0lI0),
				BackgroundTransparency = (9763-9762),
				Text = string.char(78,111,116,104,105,110,103,32,104,101,114,101,32,121,101,116),
				Font = Enum.Font.Gotham,
				TextSize = (173-161),
				TextColor3 = _ll0I00OO.SubText,
				ZIndex = (8973-8966),
				Parent = _O0IIIOO0,
			})
			return
		end
		for _0lOOI000l0, option in _0lII00Il0 do
			local _OO0IOlI0 = New(string.char(84,101,120,116,66,117,116,116,111,110), {
				Size = UDim2.new((4045-4044), (869-869), (5166-5166), _OIIOlO0lI0),
				BackgroundTransparency = (1193-1192),
				Text = tostring(option),
				Font = Enum.Font.GothamMedium,
				TextSize = (4519-4507),
				TextColor3 = option == _IIlI000Ol and _ll0I00OO.Accent or _ll0I00OO.SubText,
				AutoButtonColor = false,
				LayoutOrder = _0lOOI000l0,
				ZIndex = (6527-6520),
				Parent = _O0IIIOO0,
			})
			Connect(_OO0IOlI0.MouseEnter, function()
				if option ~= _IIlI000Ol then Tween(_OO0IOlI0, (963-963).(6758-6746), { TextColor3 = _ll0I00OO.Text }) end
			end)
			Connect(_OO0IOlI0.MouseLeave, function()
				if option ~= _IIlI000Ol then Tween(_OO0IOlI0, (5640-5640).(6832-6820), { TextColor3 = _ll0I00OO.SubText }) end
			end)
			Connect(_OO0IOlI0.MouseButton1Click, function()
				_0OIOlI0O(option)
				_I000llOOlO000 = false
				Tween(_O0II0OII00I, (3-3).(9320-9318), { Rotation = (2398-2398) })
				local _IOOIIOllI0l = Tween(_O0IIIOO0, (3472-3472).(2539-2537), { Size = UDim2.new((2639-2638), (7403-7403), (2516-2516), (8351-8351)) })
				_IOOIIOllI0l.Completed:Once(function() if not _I000llOOlO000 then _O0IIIOO0.Visible = false end end)
			end)
		end
	end

	_0OIOlI0O = function(_O0llI0OOllI0, _lO0IlII0OlO)
		_IIlI000Ol = _O0llI0OOllI0
		populate()
		if not _lO0IlII0OlO then
			task.spawn(_0OlIII00lIIIO, _O0llI0OOllI0)
		end
	end

	Connect(_0IlIlIll.MouseButton1Click, function()
		_I000llOOlO000 = not _I000llOOlO000
		Tween(_O0II0OII00I, (7074-7074).(5811-5809), { Rotation = _I000llOOlO000 and (5094-4914) or (4329-4329) })
		if _I000llOOlO000 then
			_O0IIIOO0.Visible = true
			Tween(_O0IIIOO0, (9299-9299).(7023-6998), { Size = UDim2.new((1470-1469), (463-463), (6492-6492), listHeight()) })
		else
			local _IOOIIOllI0l = Tween(_O0IIIOO0, (4200-4200).(1212-1210), { Size = UDim2.new((384-383), (1773-1773), (3420-3420), (1420-1420)) })
			_IOOIIOllI0l.Completed:Once(function() if not _I000llOOlO000 then _O0IIIOO0.Visible = false end end)
		end
	end)

	OnTheme(populate)
	Register(_IOI00O0O0I0.Flag, string.char(100,114,111,112,100,111,119,110), function() return _IIlI000Ol end, function(_O0llI0OOllI0) _0OIOlI0O(_O0llI0OOllI0) end)
	populate()

	return {
		Set = function(_00lO00l000I0O, _O0llI0OOllI0, _lO0IlII0OlO) _0OIOlI0O(_O0llI0OOllI0, _lO0IlII0OlO) end,
		Get = function() return _IIlI000Ol end,
		SetOptions = function(_00lO00l000I0O, _lO0lO0IlOII)
			_0lII00Il0 = _lO0lO0IlOII
			populate()
			if _I000llOOlO000 then
				Tween(_O0IIIOO0, (4624-4624).(1007-1005), { Size = UDim2.new((4933-4932), (8960-8960), (3168-3168), listHeight()) })
			end
		end,
	}
end

function _O0II0lIlOl:AddColorPicker(_IOI00O0O0I0)
	local _0OlIII00lIIIO = _IOI00O0O0I0.Callback or function() end
	local _I000llOOlO000 = false

	local _IOllI0OOlIOI0 = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((8013-8012), (4656-4656), (5900-5900), (6441-6441)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = (5605-5604),
		LayoutOrder = NextOrder(),
		ZIndex = (7422-7417),
		Parent = self.Frame,
	}, { New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { SortOrder = Enum.SortOrder.LayoutOrder }) })

	local _l0llIIIOlI = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((8040-8039), (9118-9118), (1348-1348), (4788-4760)),
		BackgroundTransparency = (6505-6504),
		LayoutOrder = (3337-3336),
		ZIndex = (9052-9047),
		Parent = _IOllI0OOlIOI0,
	})
	RowLabel(_l0llIIIOlI, _IOI00O0O0I0.Name)

	local _00llI000IOO = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.fromOffset((4137-4097), (3226-3204)),
		Position = UDim2.fromScale((1816-1815), (8484-8484).(1926-1921)),
		AnchorPoint = Vector2.new((4860-4859), (3814-3814).(43-38)),
		BackgroundColor3 = _IOI00O0O0I0.Default or Color3.new((5930-5929), (3953-3952), (1051-1050)),
		Text = "",
		AutoButtonColor = false,
		ZIndex = (11-5),
		Parent = _l0llIIIOlI,
	}, { Corner((4121-4115)), Stroke(string.char(83,116,114,111,107,101), (3884-3884).(2084-2081)) })

	local _OIOIl00lIl0I = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((3188-3187), (1588-1588), (8597-8597), (6902-6902)),
		BackgroundTransparency = (3010-3009),
		ClipsDescendants = true,
		Visible = false,
		LayoutOrder = (8093-8091),
		ZIndex = (3442-3437),
		Parent = _IOllI0OOlIOI0,
	})

	local _lllIl0Ol = BuildColorPanel(_OIOIl00lIl0I, _IOI00O0O0I0.Default or Color3.new((683-682), (3193-3192), (2726-2725)), function(_ll0l00OI, _lO0IlII0OlO)
		_00llI000IOO.BackgroundColor3 = _ll0l00OI
		if not _lO0IlII0OlO then
			task.spawn(_0OlIII00lIIIO, _ll0l00OI)
		end
	end)

	Connect(_00llI000IOO.MouseButton1Click, function()
		_I000llOOlO000 = not _I000llOOlO000
		if _I000llOOlO000 then
			_OIOIl00lIl0I.Visible = true
			Tween(_OIOIl00lIl0I, (5477-5477).(9040-9015), { Size = UDim2.new((4339-4338), (61-61), (5794-5794), _00OOlllII) })
		else
			local _IOOIIOllI0l = Tween(_OIOIl00lIl0I, (262-262).(3447-3445), { Size = UDim2.new((4947-4946), (151-151), (225-225), (7106-7106)) })
			_IOOIIOllI0l.Completed:Once(function() if not _I000llOOlO000 then _OIOIl00lIl0I.Visible = false end end)
		end
	end)

	Register(_IOI00O0O0I0.Flag, string.char(99,111,108,111,114), _lllIl0Ol.Get, function(_00lOOlIl0lOI0) _lllIl0Ol.Set(_00lOOlIl0lOI0) end)
	return {
		Set = function(_00lO00l000I0O, _00lOOlIl0lOI0, _lO0IlII0OlO) _lllIl0Ol.Set(_00lOOlIl0lOI0, _lO0IlII0OlO) end,
		Get = _lllIl0Ol.Get,
	}
end



function _O0II0lIlOl:AddColorRow(_IOI00O0O0I0)
	local _ll0OlO0IIl0O0 = NewRow(self, (1209-1181))
	RowLabel(_ll0OlO0IIl0O0, _IOI00O0O0I0.Name, UDim2.new((434-433), -(SwatchesWidth(#_IOI00O0O0I0.Colors) + (3538-3530)), (7945-7944), (7495-7495)))
	return AttachSwatches(self, _ll0OlO0IIl0O0, _IOI00O0O0I0.Colors, _IOI00O0O0I0.Flags, _IOI00O0O0I0.Callback or function() end, (8174-8174))
end


local _lOOIOlO0lIOIO()
	for _00lO00l000I0O, _00IllOOI0I0 in _lOlOll0O.Tabs do
		local _I000ll0ll0IlI = _lOlOll0O.Active == _00IllOOI0I0
		_00IllOOI0I0.Page.Visible = _I000ll0ll0IlI
		Tween(_00IllOOI0I0.Button, (4843-4843).(5136-5134), { BackgroundTransparency = _I000ll0ll0IlI and (7700-7700).(1554-1479) or (102-101) })
		Tween(_00IllOOI0I0.Bar, (9250-9250).(3030-3005), { BackgroundTransparency = _I000ll0ll0IlI and (9618-9618) or (7659-7658), Size = UDim2.fromOffset((5928-5925), _I000ll0ll0IlI and (7780-7762) or (7930-7924)) })
		Tween(_00IllOOI0I0.Label, (2131-2131).(7356-7354), { TextColor3 = _I000ll0ll0IlI and _ll0I00OO.Text or _ll0I00OO.SubText })
		if _00IllOOI0I0.Icon then
			Tween(_00IllOOI0I0.Icon, (9249-9249).(2262-2260), { ImageColor3 = _I000ll0ll0IlI and _ll0I00OO.Text or _ll0I00OO.SubText })
		end
	end
end
OnTheme(RenderTabs)

local _Oll00O0lOlI00(_00IllOOI0I0)
	if _lOlOll0O.Active == _00IllOOI0I0 then
		return
	end
	_lOlOll0O.Active = _00IllOOI0I0
	_OllOO0IlIl.Text = _00IllOOI0I0.Name
	RenderTabs()
	_00IllOOI0I0.Page.Position = UDim2.fromOffset((8931-8931), (3700-3688))
	Tween(_00IllOOI0I0.Page, (1019-1019).(2718-2715), { Position = UDim2.fromOffset((1902-1902), (4557-4557)) })
end

function _lOlOll0O:AddTab(_l0I0IIO00, _IlOlIII0I)
	local _00IllOOI0I0 = { Name = _l0I0IIO00 }

	_00IllOOI0I0.Button = New(string.char(84,101,120,116,66,117,116,116,111,110), {
		Size = UDim2.new((7929-7928), (8251-8251), (7130-7130), (9103-9061)),
		BackgroundColor3 = T(string.char(69,108,101,109,101,110,116)),
		BackgroundTransparency = (11-10),
		Text = "",
		AutoButtonColor = false,
		LayoutOrder = #self.Tabs + (2910-2909),
		ZIndex = (6373-6369),
		Parent = _00lI0OOl0lI,
	}, { Corner((2271-2263)) })

	_00IllOOI0I0.Bar = New(string.char(70,114,97,109,101), {
		Size = UDim2.fromOffset((1468-1465), (9214-9208)),
		Position = UDim2.fromScale((7522-7522), (9815-9815).(1356-1351)),
		AnchorPoint = Vector2.new((5666-5666), (7997-7997).(7836-7831)),
		BackgroundColor3 = T(string.char(65,99,99,101,110,116)),
		BackgroundTransparency = (76-75),
		BorderSizePixel = (9235-9235),
		ZIndex = (214-209),
		Parent = _00IllOOI0I0.Button,
	}, { Round() })

	local _l0II0OlIllOI0 = (2049-2033)
	if _IlOlIII0I then
		_00IllOOI0I0.Icon = New(string.char(73,109,97,103,101,76,97,98,101,108), {
			Size = UDim2.fromOffset((3656-3638), (7232-7214)),
			Position = UDim2.new((4376-4376), (5514-5498), (5507-5507).(5057-5052), (3417-3417)),
			AnchorPoint = Vector2.new((4939-4939), (6634-6634).(4370-4365)),
			BackgroundTransparency = (7121-7120),
			Image = _IlOlIII0I,
			ImageColor3 = _ll0I00OO.SubText,
			ZIndex = (3992-3987),
			Parent = _00IllOOI0I0.Button,
		})
		_l0II0OlIllOI0 = (6563-6517)
	end

	_00IllOOI0I0.Label = New(string.char(84,101,120,116,76,97,98,101,108), {
		Size = UDim2.new((1791-1790), -_l0II0OlIllOI0 - (7741-7733), (6618-6617), (4741-4741)),
		Position = UDim2.fromOffset(_l0II0OlIllOI0, (2839-2839)),
		BackgroundTransparency = (2095-2094),
		Text = _l0I0IIO00,
		Font = Enum.Font.GothamMedium,
		TextSize = (7828-7814),
		TextColor3 = _ll0I00OO.SubText,
		TextXAlignment = Enum.TextXAlignment.Left,
		ZIndex = (9029-9024),
		Parent = _00IllOOI0I0.Button,
	})

	_00IllOOI0I0.Page = New(string.char(83,99,114,111,108,108,105,110,103,70,114,97,109,101), {
		Size = UDim2.fromScale((9384-9383), (7129-7128)),
		BackgroundTransparency = (9953-9952),
		BorderSizePixel = (1023-1023),
		ScrollBarThickness = (5237-5234),
		ScrollBarImageColor3 = T(string.char(83,116,114,111,107,101)),
		ScrollingDirection = Enum.ScrollingDirection.Y,
		CanvasSize = UDim2.new(),
		AutomaticCanvasSize = Enum.AutomaticSize.Y,
		Visible = false,
		ZIndex = (1335-1331),
		Parent = _II0IllIIl0l,
	})

	
	local _OllllI0O00IOI = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((2252-2251), -(3073-3041), (7188-7188), (1142-1142)),
		Position = UDim2.fromOffset((5839-5823), (9271-9255)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = (2866-2865),
		ZIndex = (8228-8224),
		Parent = _00IllOOI0I0.Page,
	}, { New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { SortOrder = Enum.SortOrder.LayoutOrder }) })

	
	local _IOllI0OOlIOI0 = New(string.char(70,114,97,109,101), {
		Size = UDim2.new((7151-7150), (752-752), (7253-7253), (1475-1475)),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = (7748-7747),
		LayoutOrder = (5164-5163),
		ZIndex = (6133-6129),
		Parent = _OllllI0O00IOI,
	}, {
		New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), {
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new((8606-8606), (6322-6310)),
			SortOrder = Enum.SortOrder.LayoutOrder,
		}),
	})

	New(string.char(70,114,97,109,101), { 
		Size = UDim2.new((1663-1662), (1734-1734), (257-257), (5601-5585)),
		BackgroundTransparency = (9020-9019),
		LayoutOrder = (1747-1745),
		Parent = _OllllI0O00IOI,
	})

	_00IllOOI0I0.Columns = {}
	for _0lOOI000l0 = (799-798), (6753-6751) do
		_00IllOOI0I0.Columns[_0lOOI000l0] = New(string.char(70,114,97,109,101), {
			Size = UDim2.new((9991-9991).(705-700), -(1610-1604), (5538-5538), (1746-1746)),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = (4976-4975),
			LayoutOrder = _0lOOI000l0,
			ZIndex = (1143-1139),
			Parent = _IOllI0OOlIOI0,
		}, {
			New(string.char(85,73,76,105,115,116,76,97,121,111,117,116), { Padding = UDim.new((1576-1576), (7426-7414)), SortOrder = Enum.SortOrder.LayoutOrder }),
		})
	end

	function _00IllOOI0I0:AddCard(_OOI0IOO0, _0Ill0OOl00I)
		return NewCard(self.Columns[_OOI0IOO0 or (4227-4226)], _0Ill0OOl00I)
	end

	Connect(_00IllOOI0I0.Button.MouseEnter, function()
		if _lOlOll0O.Active ~= _00IllOOI0I0 then Tween(_00IllOOI0I0.Button, (6935-6935).(281-266), { BackgroundTransparency = (9051-9051).(7347-7259) }) end
	end)
	Connect(_00IllOOI0I0.Button.MouseLeave, function()
		if _lOlOll0O.Active ~= _00IllOOI0I0 then Tween(_00IllOOI0I0.Button, (1050-1050).(659-644), { BackgroundTransparency = (3934-3933) }) end
	end)
	Connect(_00IllOOI0I0.Button.MouseButton1Click, function()
		SelectTab(_00IllOOI0I0)
	end)

	table.insert(self.Tabs, _00IllOOI0I0)
	if not self.Active then
		SelectTab(_00IllOOI0I0)
	end
	return _00IllOOI0I0
end


function _lOlOll0O:SetVisible(_Il0lO0IO)
	if _Il0lO0IO == _0lO000IO000O then
		return
	end
	_0lO000IO000O = _Il0lO0IO

	if _Il0lO0IO then
		_0II00IO0llOO0.Visible = true
		Tween(_0II00IO0llOO0, (580-580).(2377-2374), { GroupTransparency = (6668-6668) }, Enum.EasingStyle.Quad)
		Tween(_OIIOl0l0O0, (7337-7337).(9845-9800), { _OIIOl0l0O0 = _O0OlIllIllI * _Olll0lO0l0 }, Enum.EasingStyle.Back)
	else
		local _I0Il0lOl = Tween(_0II00IO0llOO0, (4830-4830).(7295-7273), { GroupTransparency = (2683-2682) }, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		Tween(_OIIOl0l0O0, (8317-8317).(3650-3625), { _OIIOl0l0O0 = _O0OlIllIllI * _Olll0lO0l0 * (7707-7707).(6685-6593) }, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
		_I0Il0lOl.Completed:Once(function()
			if not _0lO000IO000O then
				_0II00IO0llOO0.Visible = false
			end
		end)
	end
end

function _lOlOll0O:Toggle()
	self:SetVisible(not _0lO000IO000O)
end

function _lOlOll0O:Destroy()
	for _00lO00l000I0O, _00lOOlIl0lOI0 in _lIl0l000I do
		_00lOOlIl0lOI0:Disconnect()
	end
	table.clear(_lIl0l000I)
	_l0Il0II0l0lI0:Destroy()
end

Connect(_OIOIl0ll[(3199-3198)].MouseButton1Click, function()
	_lOlOll0O:SetVisible(false)
end)


Connect(_lOIlIlIllllOO.InputBegan, function(_lOO0lIIII, _I0000llII)
	local _O00IIllll = _lOO0lIIII.UserInputType
	local _lIlI00OlIOOI0 = _O00IIllll == Enum.UserInputType.Keyboard
	if not (_lIlI00OlIOOI0 or _O00IIllll == Enum.UserInputType.MouseButton2 or _O00IIllll == Enum.UserInputType.MouseButton3) then
		return
	end
	local _Oll0000l = _lIlI00OlIOOI0 and _lOO0lIIII.KeyCode or _O00IIllll
	if _O0l0IllIIlII0 then
		local _IIIOOO0O = _O0l0IllIIlII0
		_O0l0IllIIlII0, _l0IOOO0l = nil, nil
		_IIIOOO0O(_Oll0000l)
		return
	end
	if _lIlI00OlIOOI0 then
		if _lOIlIlIllllOO:GetFocusedTextBox() then
			return
		end
		if _lOO0lIIII.KeyCode == _OOIIlOOlI.ToggleKey then
			_lOlOll0O:Toggle()
			return
		end
	end
	if not _I0000llII then
		for _00lO00l000I0O, kb in _0IOO0OIlIOI0 do
			if kb.Key and kb.Key == _Oll0000l then
				task.spawn(kb.Press)
			end
		end
	end
end)

Connect(_lOIlIlIllllOO.InputEnded, function(_lOO0lIIII)
	local _O00IIllll = _lOO0lIIII.UserInputType
	local _Oll0000l = _O00IIllll == Enum.UserInputType.Keyboard and _lOO0lIIII.KeyCode or _O00IIllll
	for _00lO00l000I0O, kb in _0IOO0OIlIOI0 do
		if kb.Key and kb.Key == _Oll0000l then
			task.spawn(kb.Release)
		end
	end
end)


local _I000l0l00l0l()
	for _l0OOOOI0l0, _lllIl0Ol in _llI0IIIOIlOIl.Pickers do
		_lllIl0Ol:Set(_ll0I00OO[_l0OOOOI0l0], true)
	end
	if _llI0IIIOIlOIl.Preset then
		_llI0IIIOIlOIl.Preset:Set(_OOO0O0OO.Preset, true)
	end
end

function _lOlOll0O:SetPreset(_l0I0IIO00)
	local _O0I0lO0l0I0Ol = _I0I0IIOO0l[_l0I0IIO00]
	if not _O0I0lO0l0I0Ol then
		return
	end
	for _l0OOOOI0l0, _ll0l00OI in _O0I0lO0l0I0Ol do
		_ll0I00OO[_l0OOOOI0l0] = _ll0l00OI
	end
	_OOO0O0OO.Preset = _l0I0IIO00
	ApplyTheme(true)
	SyncThemeUI()
end


local _0lIl0IlOl = {}
local _I0l0O0OI0I, _OI00llIl = {}, nil

local _IO0OOlIIIOlI = type(writefile) == string.char(102,117,110,99,116,105,111,110) and type(readfile) == string.char(102,117,110,99,116,105,111,110)
	and type(isfile) == string.char(102,117,110,99,116,105,111,110) and type(isfolder) == string.char(102,117,110,99,116,105,111,110)
	and type(makefolder) == string.char(102,117,110,99,116,105,111,110) and type(listfiles) == string.char(102,117,110,99,116,105,111,110)
	and type(delfile) == string.char(102,117,110,99,116,105,111,110)

local _lIlllIIl = _OOIIlOOlI.FolderName .. string.char(47,99,111,110,102,105,103,115)
local _000OIO0IlI = _OOIIlOOlI.FolderName .. string.char(47,97,117,116,111,108,111,97,100,46,116,120,116)
_0lIl0IlOl.Backend = _IO0OOlIIIOlI and string.char(70,105,108,101,32,115,121,115,116,101,109) or string.char(83,101,115,115,105,111,110,32,109,101,109,111,114,121)

if _IO0OOlIIIOlI then
	pcall(function()
		if not isfolder(_OOIIlOOlI.FolderName) then makefolder(_OOIIlOOlI.FolderName) end
		if not isfolder(_lIlllIIl) then makefolder(_lIlllIIl) end
	end)
end

local _lOOlIllOI0II(_O00IIllll, _OO0Ill00O)
	if _O00IIllll == string.char(99,111,108,111,114) then
		return { math.round(_OO0Ill00O.R * (5735-5480)), math.round(_OO0Ill00O.G * (2382-2127)), math.round(_OO0Ill00O.B * (1850-1595)) }
	elseif _O00IIllll == string.char(107,101,121,98,105,110,100) then
		return _OO0Ill00O and _OO0Ill00O.Name or false
	end
	return _OO0Ill00O
end

local _lIl00I0OO00(_O00IIllll, _l0OIlIOI0Il)
	if _O00IIllll == string.char(99,111,108,111,114) then
		if type(_l0OIlIOI0Il) == string.char(116,97,98,108,101) then
			return Color3.fromRGB(_l0OIlIOI0Il[(5120-5119)], _l0OIlIOI0Il[(4092-4090)], _l0OIlIOI0Il[(7010-7007)])
		end
		return nil
	elseif _O00IIllll == string.char(107,101,121,98,105,110,100) then
		if type(_l0OIlIOI0Il) == string.char(115,116,114,105,110,103) then
			local _O0OlIIOO, _lI0IlIOlIO0 = pcall(function() return Enum.KeyCode[_l0OIlIOI0Il] end)
			if _O0OlIIOO and _lI0IlIOlIO0 then return _lI0IlIOlIO0 end
			local _lOOOO0Ill00, _O00IIllll = pcall(function() return Enum.UserInputType[_l0OIlIOI0Il] end)
			return _lOOOO0Ill00 and _O00IIllll or nil
		end
		return nil
	end
	return _l0OIlIOI0Il
end

function _0lIl0IlOl.Sanitize(_l0I0IIO00)
	_l0I0IIO00 = (tostring(_l0I0IIO00 or ""):gsub(string.char(91,94,37,119,37,45,95,32,93), ""))
	return _l0I0IIO00:match(string.char(94,37,115,42,40,46,45,41,37,115,42,36))
end

function _0lIl0IlOl.Collect()
	local _0O00OIOOI0OI = {}
	for _Il0O0OlI00OO, _lIlOllOOO in _lIlI00OO do
		_0O00OIOOI0OI[_Il0O0OlI00OO] = Serialize(_lIlOllOOO.Kind, _lIlOllOOO.Get())
	end
	local _l0lll0l0l0Il0 = {}
	for _00lO00l000I0O, _l0OOOOI0l0 in _I0OOO000llO do
		_l0lll0l0l0Il0[_l0OOOOI0l0] = Serialize(string.char(99,111,108,111,114), _ll0I00OO[_l0OOOOI0l0])
	end
	return { Version = (1175-1174), Preset = _OOO0O0OO.Preset, _ll0I00OO = _l0lll0l0l0Il0, Flags = _0O00OIOOI0OI }
end

function _0lIl0IlOl.Apply(_0IIO00lII)
	if type(_0IIO00lII) ~= string.char(116,97,98,108,101) then
		return false
	end
	if type(_0IIO00lII._ll0I00OO) == string.char(116,97,98,108,101) then
		for _00lO00l000I0O, _l0OOOOI0l0 in _I0OOO000llO do
			local _l0OIlIOI0Il = _0IIO00lII._ll0I00OO[_l0OOOOI0l0]
			if type(_l0OIlIOI0Il) == string.char(116,97,98,108,101) then
				pcall(function() _ll0I00OO[_l0OOOOI0l0] = Deserialize(string.char(99,111,108,111,114), _l0OIlIOI0Il) end)
			end
		end
		_OOO0O0OO.Preset = type(_0IIO00lII.Preset) == string.char(115,116,114,105,110,103) and _0IIO00lII.Preset or string.char(67,117,115,116,111,109)
		ApplyTheme(true)
		SyncThemeUI()
	end
	if type(_0IIO00lII.Flags) == string.char(116,97,98,108,101) then
		for _Il0O0OlI00OO, _l0OIlIOI0Il in _0IIO00lII.Flags do
			local _lIlOllOOO = _lIlI00OO[_Il0O0OlI00OO]
			if _lIlOllOOO then
				pcall(_lIlOllOOO.Set, Deserialize(_lIlOllOOO.Kind, _l0OIlIOI0Il))
			end
		end
	end
	return true
end

function _0lIl0IlOl.Encode()
	return _O0OllOI0:JSONEncode(_0lIl0IlOl.Collect())
end

function _0lIl0IlOl.Decode(_IOlIOOO0OO)
	local _O0OlIIOO, _0IIO00lII = pcall(function() return _O0OllOI0:JSONDecode(_IOlIOOO0OO) end)
	return _O0OlIIOO and _0IIO00lII or nil
end

function _0lIl0IlOl.List()
	local _I0IOIIlllIO = {}
	if _IO0OOlIIIOlI then
		local _O0OlIIOO, _IllI00IOI00I = pcall(listfiles, _lIlllIIl)
		if _O0OlIIOO then
			for _00lO00l000I0O, path in _IllI00IOI00I do
				local _l0I0IIO00 = tostring(path):match(string.char(40,91,94,47,92,93,43,41,37,46,106,115,111,110,36))
				if _l0I0IIO00 then table.insert(_I0IOIIlllIO, _l0I0IIO00) end
			end
		end
	else
		for _l0I0IIO00 in _I0l0O0OI0I do table.insert(_I0IOIIlllIO, _l0I0IIO00) end
	end
	table.sort(_I0IOIIlllIO)
	return _I0IOIIlllIO
end

function _0lIl0IlOl.Save(_l0I0IIO00)
	local _IOlIOOO0OO = _0lIl0IlOl.Encode()
	if _IO0OOlIIIOlI then
		local _O0OlIIOO, _Ol0IOOO0OlI = pcall(writefile, _lIlllIIl .. string.char(47) .. _l0I0IIO00 .. string.char(46,106,115,111,110), _IOlIOOO0OO)
		return _O0OlIIOO, _Ol0IOOO0OlI
	end
	_I0l0O0OI0I[_l0I0IIO00] = _IOlIOOO0OO
	return true
end

function _0lIl0IlOl.Load(_l0I0IIO00)
	local _IOlIOOO0OO
	if _IO0OOlIIIOlI then
		local path = _lIlllIIl .. string.char(47) .. _l0I0IIO00 .. string.char(46,106,115,111,110)
		local _O0OlIIOO, _0I0Il000 = pcall(isfile, path)
		if not (_O0OlIIOO and _0I0Il000) then return false, string.char(67,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100,46) end
		local _lO0OO0lO00l, _Il0Il0lOI = pcall(readfile, path)
		if not _lO0OO0lO00l then return false, string.char(67,111,117,108,100,32,110,111,116,32,114,101,97,100,32,102,105,108,101,46) end
		_IOlIOOO0OO = _Il0Il0lOI
	else
		_IOlIOOO0OO = _I0l0O0OI0I[_l0I0IIO00]
	end
	if not _IOlIOOO0OO then return false, string.char(67,111,110,102,105,103,32,110,111,116,32,102,111,117,110,100,46) end
	local _0IIO00lII = _0lIl0IlOl.Decode(_IOlIOOO0OO)
	if not _0IIO00lII then return false, string.char(67,111,110,102,105,103,32,100,97,116,97,32,105,115,32,105,110,118,97,108,105,100,46) end
	return _0lIl0IlOl.Apply(_0IIO00lII)
end

function _0lIl0IlOl.Delete(_l0I0IIO00)
	if _IO0OOlIIIOlI then
		return pcall(delfile, _lIlllIIl .. string.char(47) .. _l0I0IIO00 .. string.char(46,106,115,111,110))
	end
	_I0l0O0OI0I[_l0I0IIO00] = nil
	return true
end

function _0lIl0IlOl.SetAutoload(_l0I0IIO00)
	if _IO0OOlIIIOlI then
		if _l0I0IIO00 then pcall(writefile, _000OIO0IlI, _l0I0IIO00)
		else pcall(function() if isfile(_000OIO0IlI) then delfile(_000OIO0IlI) end end) end
	else
		_OI00llIl = _l0I0IIO00
	end
end

function _0lIl0IlOl.GetAutoload()
	if _IO0OOlIIIOlI then
		local _O0OlIIOO, _Il0Il0lOI = pcall(function()
			if isfile(_000OIO0IlI) then return readfile(_000OIO0IlI) end
		end)
		return _O0OlIIOO and _Il0Il0lOI or nil
	end
	return _OI00llIl
end




local _OlO00O0lOl = { Selected = nil, Aimbot = false, _IO000Il00l = false, _lIOOlOIllll0 = false, Map = {} }
_lOlOll0O.AimbotNotify = true 


local _OlOIlI00IIlIO = _lOlOll0O:AddTab(string.char(77,97,105,110))
do
	
	
	
	
	
	
	
	do
		local _0IOO0IIIlO = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
		local _0OOIIlO0I0OI = Color3.new((313-312), (1532-1531), (4723-4722))

		local _I000IOI0 = {
			On = false, Active = true, Method = string.char(67,97,109,101,114,97), HitPart = string.char(72,101,97,100), Priority = string.char(67,117,114,115,111,114), Sticky = true,
			Smoothness = (4174-4154), Speed = (374-366), Strength = (238-138), Radius = (920-570), Prediction = (3032-3032), Humanize = (70-70), Deadzone = (5674-5672),
			TeamCheck = false, WallCheck = true, DeathCheck = true,
			Target = nil, Remainder = Vector2.zero, WarnedMouse = false,
		}
		local _IO000Il00l = {
			On = false, Active = true, Trigger = string.char(65,108,119,97,121,115), HitPart = string.char(72,101,97,100), Priority = string.char(67,117,114,115,111,114),
			HitChance = (9290-9190), Radius = (306-56), Prediction = (9535-9535), PingComp = true,
			TeamCheck = false, WallCheck = true, SkipLow = true,
			Part = nil, Player = nil, Roll = true,
		}
		local _00I0I00OOOllI, _ll0ll0l0O() return _I000IOI0.On and _I000IOI0.Active end
		local _00OO000lIOI() return _IO000Il00l.On and _IO000Il00l.Active end

		
		local _0OlIll0Oll = RaycastParams.new()
		_0OlIll0Oll.FilterType = Enum.RaycastFilterType.Exclude
		_0OlIll0Oll.IgnoreWater = true
		local _I000O00OIl = { string.char(72,101,97,100), string.char(85,112,112,101,114,84,111,114,115,111), string.char(84,111,114,115,111), string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116) }

		local _OOIO0l0lII00l(_Il00ll0llOOIl, _ll0I0OlIOlIIO, _l0I0IOOlOO, _lI000IOlIO)
			if _ll0I0OlIOlIIO == string.char(72,101,97,100) then
				return _Il00ll0llOOIl:FindFirstChild(string.char(72,101,97,100))
			elseif _ll0I0OlIOlIIO == string.char(84,111,114,115,111) then
				return _Il00ll0llOOIl:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) or _Il00ll0llOOIl:FindFirstChild(string.char(84,111,114,115,111))
			elseif _ll0I0OlIOlIIO == string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116) then
				return _Il00ll0llOOIl:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
			end
			local _OOlllIOll, _llIlIIIlOOl, _l0I0IIO00 in _I000O00OIl do
				local _l0IllIlIOlI = _Il00ll0llOOIl:FindFirstChild(_l0I0IIO00)
				if _l0IllIlIOlI and _l0IllIlIOlI:IsA(string.char(66,97,115,101,80,97,114,116)) then
					local _0OI000OO0, _lOIO0lIlO = _l0I0IOOlOO:WorldToViewportPoint(_l0IllIlIOlI.Position)
					if _lOIO0lIlO then
						local _lOIIIl0Il00l = (Vector2.new(_0OI000OO0.X, _0OI000OO0.Y) - _lI000IOlIO).Magnitude
						if not bestDist or _lOIIIl0Il00l < bestDist then
							_OOlllIOll, bestDist = _l0IllIlIOlI, _lOIIIl0Il00l
						end
					end
				end
			end
			return _OOlllIOll
		end

		local _IOO0IlOIIII(_Il00ll0llOOIl, _l0IllIlIOlI, _l0I0IOOlOO)
			local _Ol0Oll0O000l0 = {}
			for _00lO00l000I0O, _OI0I0IIO00 in { _0l0lI0OO.Character, _Il00ll0llOOIl, workspace:FindFirstChild(string.char(80,114,101,115,116,105,103,101,67,104,97,114,109,115)), workspace:FindFirstChild(string.char(80,114,101,115,116,105,103,101,84,117,110,103,84,117,110,103)), workspace:FindFirstChild(string.char(80,114,101,115,116,105,103,101,82,97,105,110)) } do
				table.insert(_Ol0Oll0O000l0, _OI0I0IIO00)
			end
			local _00lO0OI0IO0 = _l0I0IOOlOO.CFrame.Position
			local _0llO00llOIlIO = _l0IllIlIOlI.Position - _00lO0OI0IO0
			for _00lO00l000I0O = (4479-4478), (2701-2693) do
				_0OlIll0Oll.FilterDescendantsInstances = _Ol0Oll0O000l0
				local _IOlOOlIOl = workspace:Raycast(_00lO0OI0IO0, _0llO00llOIlIO, _0OlIll0Oll)
				if not _IOlOOlIOl then
					return true
				end
				local _0l0l0OI0lOll = _IOlOOlIOl.Instance
				if _0l0l0OI0lOll.CanCollide == false or _0l0l0OI0lOll.Transparency >= (7782-7782).(2392-2383) then
					table.insert(_Ol0Oll0O000l0, _0l0l0OI0lOll)
				else
					return false
				end
			end
			return true
		end

		
		local _IlllOlOIIlIO(_Ol0O0Ol0III0, _l00O0lOO0l00, _l0I0IOOlOO, _lI000IOlIO, _OOOOlOOO)
			if _Ol0O0Ol0III0 == _0l0lI0OO then
				return
			end
			local _0lOlIlIl0l = (_l00O0lOO0l00 == _I000IOI0 and _OlO00O0lOl.Aimbot) or (_l00O0lOO0l00 == _IO000Il00l and _OlO00O0lOl._IO000Il00l)
			if _0lOlIlIl0l and _OlO00O0lOl.Selected ~= _Ol0O0Ol0III0 then
				return
			end
			if _l00O0lOO0l00.TeamCheck and _Ol0O0Ol0III0.Team ~= nil and _Ol0O0Ol0III0.Team == _0l0lI0OO.Team then
				return
			end
			local _Il00ll0llOOIl = _Ol0O0Ol0III0.Character
			local _OOO000IOIlll = _Il00ll0llOOIl and _Il00ll0llOOIl:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
			if not (_Il00ll0llOOIl and _OOO000IOIlll and _OOO000IOIlll.Health > (629-629)) then
				return
			end
			if _l00O0lOO0l00.SkipLow and _OOO000IOIlll.Health <= (3843-3842) then
				return
			end
			local _l0IllIlIOlI = GetPart(_Il00ll0llOOIl, _l00O0lOO0l00.HitPart, _l0I0IOOlOO, _lI000IOlIO)
			if not _l0IllIlIOlI then
				return
			end
			local _0OI000OO0, _lOIO0lIlO = _l0I0IOOlOO:WorldToViewportPoint(_l0IllIlIOlI.Position)
			if not _lOIO0lIlO then
				return
			end
			local _O0lOOl0OO0 = Vector2.new(_0OI000OO0.X, _0OI000OO0.Y)
			local _lOIIIl0Il00l = (_O0lOOl0OO0 - _lI000IOlIO).Magnitude
			if _OOOOlOOO and _lOIIIl0Il00l > _l00O0lOO0l00.Radius then
				return
			end
			if _l00O0lOO0l00.WallCheck and not IsVisible(_Il00ll0llOOIl, _l0IllIlIOlI, _l0I0IOOlOO) then
				
				local _lllOIlOOl0lI, _l0I0IIO00 in _I000O00OIl do
					local alt = _Il00ll0llOOIl:FindFirstChild(_l0I0IIO00)
					if alt and alt ~= _l0IllIlIOlI and alt:IsA(string.char(66,97,115,101,80,97,114,116)) and IsVisible(_Il00ll0llOOIl, alt, _l0I0IOOlOO) then
						found = alt
						break
					end
				end
				if not found then
					return
				end
				_l0IllIlIOlI = found
				local _00lIIOOI0l0O, _lOII00OI0l = _l0I0IOOlOO:WorldToViewportPoint(_l0IllIlIOlI.Position)
				if not _lOII00OI0l then
					return
				end
				_O0lOOl0OO0 = Vector2.new(_00lIIOOI0l0O.X, _00lIIOOI0l0O.Y)
				_lOIIIl0Il00l = (_O0lOOl0OO0 - _lI000IOlIO).Magnitude
			end
			return _l0IllIlIOlI, _OOO000IOIlll, _lOIIIl0Il00l, _O0lOOl0OO0
		end

		
		local _O00ll0I0OO0O(_l00O0lOO0l00, _l0I0IOOlOO, _lI000IOlIO)
			local _lIIl00lOIll, _0IOl0IIOll, _lIOIOlIOl0lO, _IO0IOIO0O, _lIlOl0OIO0, _Ol0O0Ol0III0 in _IlIlIOOl0I0O:GetPlayers() do
				local _l0IllIlIOlI, _OOO000IOIlll, _lOIIIl0Il00l, _O0lOOl0OO0 = Evaluate(_Ol0O0Ol0III0, _l00O0lOO0l00, _l0I0IOOlOO, _lI000IOlIO, true)
				if _l0IllIlIOlI then
					local _OOll00l0 = _lOIIIl0Il00l
					if _l00O0lOO0l00.Priority == string.char(68,105,115,116,97,110,99,101) then
						_OOll00l0 = (_l0IllIlIOlI.Position - _l0I0IOOlOO.CFrame.Position).Magnitude
					elseif _l00O0lOO0l00.Priority == string.char(72,101,97,108,116,104) then
						_OOll00l0 = _OOO000IOIlll.Health
					end
					if not _lIIl00lOIll or _OOll00l0 < _lIIl00lOIll then
						_lIIl00lOIll, _0IOl0IIOll, _lIOIOlIOl0lO, _IO0IOIO0O, bestScreen = _OOll00l0, _Ol0O0Ol0III0, _l0IllIlIOlI, _OOO000IOIlll, _O0lOOl0OO0
					end
				end
			end
			return _0IOl0IIOll, _lIOIOlIOl0lO, _IO0IOIO0O, bestScreen
		end

		
		local _0II0IOOI(_l0IllIlIOlI, _l00O0lOO0l00, _IIlOllOIIOI)
			local _OIOII0O0l = _l0IllIlIOlI.Position
			_IIlOllOIIOI = _IIlOllOIIOI or _l00O0lOO0l00.Prediction
			if _IIlOllOIIOI and _IIlOllOIIOI > (3294-3294) then
				_OIOII0O0l += _l0IllIlIOlI.AssemblyLinearVelocity * _IIlOllOIIOI
			end
			return _OIOII0O0l
		end

		
		local _lO0IOI0l0O = Instance.new(string.char(83,99,114,101,101,110,71,117,105))
		_lO0IOI0l0O.Name = string.char(80,114,101,115,116,105,103,101,70,79,86)
		_lO0IOI0l0O.ResetOnSpawn = false
		_lO0IOI0l0O.IgnoreGuiInset = true
		_lO0IOI0l0O.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		_lO0IOI0l0O.DisplayOrder = (8112-8109)
		_lO0IOI0l0O.Parent = _0l0lI0OO:WaitForChild(string.char(80,108,97,121,101,114,71,117,105))

		local _III0lIIlOIO0O(_Illl0IIOIlI0O)
			return ColorSequence.new({
				ColorSequenceKeypoint.new((803-803), _Illl0IIOIlI0O[(5929-5928)]),
				ColorSequenceKeypoint.new((1545-1544) / (3492-3489), _Illl0IIOIlI0O[(7454-7452)]),
				ColorSequenceKeypoint.new((2888-2886) / (4326-4323), _Illl0IIOIlI0O[(7537-7534)]),
				ColorSequenceKeypoint.new((8335-8334), _Illl0IIOIlI0O[(158-157)]),
			})
		end

		local _0lOllOOl00(_Illl0IIOIlI0O, _I0OlOOll0Il)
			local _OllI0OlIO = {
				Show = false, Fill = false, Dirty = true,
				Colors = table.clone(_Illl0IIOIlI0O), FillColors = table.clone(_I0OlOOll0Il),
				Thickness = (2892-2891).(7146-7141), FillTransparency = (4549-4549).(967-882), Speed = (6988-6987),
			}
			local _Ol00O0Il0OlO = Instance.new(string.char(70,114,97,109,101))
			_Ol00O0Il0OlO.AnchorPoint = Vector2.new((9108-9108).(4967-4962), (6187-6187).(4153-4148))
			_Ol00O0Il0OlO.BackgroundTransparency = (3171-3170)
			_Ol00O0Il0OlO.BorderSizePixel = (4922-4922)
			_Ol00O0Il0OlO.Visible = false
			_Ol00O0Il0OlO.Parent = _lO0IOI0l0O
			local _IOl0IlIIOO00O = Instance.new(string.char(85,73,67,111,114,110,101,114))
			_IOl0IlIIOO00O.CornerRadius = UDim.new((7986-7985), (6993-6993))
			_IOl0IlIIOO00O.Parent = _Ol00O0Il0OlO
			local _0OlIlllIl = Instance.new(string.char(85,73,83,116,114,111,107,101))
			_0OlIlllIl.Color = _0OOIIlO0I0OI
			_0OlIlllIl.Thickness = _OllI0OlIO.Thickness
			_0OlIlllIl.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			_0OlIlllIl.Parent = _Ol00O0Il0OlO
			local _I0lOllO0IIl0O = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
			_I0lOllO0IIl0O.Parent = _0OlIlllIl
			local _00I00OOO = Instance.new(string.char(70,114,97,109,101))
			_00I00OOO.Size = UDim2.fromScale((7915-7914), (7060-7059))
			_00I00OOO.BackgroundColor3 = _0OOIIlO0I0OI
			_00I00OOO.BorderSizePixel = (9470-9470)
			_00I00OOO.Visible = false
			_00I00OOO.Parent = _Ol00O0Il0OlO
			local _OOl0OlIlI0llI = Instance.new(string.char(85,73,67,111,114,110,101,114))
			_OOl0OlIlI0llI.CornerRadius = UDim.new((9041-9040), (6810-6810))
			_OOl0OlIlI0llI.Parent = _00I00OOO
			local _00OOllOIO = Instance.new(string.char(85,73,71,114,97,100,105,101,110,116))
			_00OOllOIO.Parent = _00I00OOO

			function _OllI0OlIO:Update(_0O0lOllOIlI, _lI000IOlIO, _lOl0OOlOI0, _IOOIIOllI0l)
				local _I0lOI0I0OI0O = _0O0lOllOIlI and self.Show
				_Ol00O0Il0OlO.Visible = _I0lOI0I0OI0O
				if not _I0lOI0I0OI0O then
					return
				end
				if self.Dirty then
					self.Dirty = false
					_I0lOllO0IIl0O.Color = Seq(self.Colors)
					_00OOllOIO.Color = Seq(self.FillColors)
					_00I00OOO.BackgroundTransparency = self.FillTransparency
					_0OlIlllIl.Thickness = self.Thickness
				end
				_Ol00O0Il0OlO.Size = UDim2.fromOffset(_lOl0OOlOI0 * (32-30), _lOl0OOlOI0 * (4276-4274))
				_Ol00O0Il0OlO.Position = UDim2.fromOffset(_lI000IOlIO.X, _lI000IOlIO.Y)
				local _l0l00lOlIOI = (_IOOIIOllI0l * self.Speed * (6668-6578)) % (3464-3104)
				_I0lOllO0IIl0O.Rotation = _l0l00lOlIOI
				_00OOllOIO.Rotation = (610-250) - _l0l00lOlIOI
				_00I00OOO.Visible = self.Fill
			end
			return _OllI0OlIO
		end

		local _OlllllOII0 = MakeFov(
			{ rgb((8371-8285), (9402-9246), (5339-5084)), rgb((4073-3905), (178-58), (10116-9861)), rgb((9532-9452), (3703-3483), (2451-2196)) },
			{ rgb((5191-5105), (5576-5420), (5402-5147)), rgb((8548-8380), (3697-3577), (1879-1624)), rgb((1066-986), (9491-9271), (3197-2942)) }
		)
		local _00I0IlI0OO = MakeFov(
			{ rgb((7946-7691), (560-475), (4229-4109)), rgb((5415-5160), (392-222), (8609-8519)), rgb((3796-3541), (2022-1937), (1846-1646)) },
			{ rgb((4733-4478), (5753-5668), (9858-9738)), rgb((4664-4409), (7696-7526), (9797-9707)), rgb((4758-4503), (2833-2748), (8575-8375)) }
		)

		Connect(_0IOO0IIIlO.RenderStepped, function()
			local _lI000IOlIO = _lOIlIlIllllOO:GetMouseLocation()
			local _IOOIIOllI0l = os.clock()
			_OlllllOII0:Update(LegitLive(), _lI000IOlIO, _I000IOI0.Radius, _IOOIIOllI0l)
			_00I0IlI0OO:Update(SilentLive(), _lI000IOlIO, _IO000Il00l.Radius, _IOOIIOllI0l)
		end)

		
		
		local _00IOll000IlO = false
		local _0IOOOO0OOllIl()
			local _IO0l0IlIOll = LegitLive()
			if _IO0l0IlIOll == _00IOll000IlO then
				return
			end
			_00IOll000IlO = _IO0l0IlIOll
			if _lOlOll0O.AimbotNotify then
				_lOlOll0O:Notify(string.char(65,105,109,98,111,116), _IO0l0IlIOll and string.char(65,105,109,98,111,116,32,105,115,32,79,78) or string.char(65,105,109,98,111,116,32,105,115,32,79,70,70), (1802-1801).(7068-7063), true)
			end
		end

		local _0l0lOOIOllI(_Il000lI0lIOIl)
			_00IOll000IlO = false
			_I000IOI0.On = false
			_I000IOI0.Target = nil
			_I000IOI0.Remainder = Vector2.zero
			if _00I0I00OOOllI then
				_00I0I00OOOllI:Set(false, true)
			end
			_lOlOll0O:Notify(string.char(76,101,103,105,116), _Il000lI0lIOIl, (9507-9504), true)
		end

		local _IOlI0OII(_lOIOlOllI)
			if not LegitLive() then
				return
			end
			local _l0I0IOOlOO = workspace.CurrentCamera
			if not _l0I0IOOlOO then
				return
			end
			local _0lIlII0I = _0l0lI0OO.Character
			local _IO0lIIIl0l = _0lIlII0I and _0lIlII0I:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
			if not (_IO0lIIIl0l and _IO0lIIIl0l.Health > (219-219)) then
				_I000IOI0.Target = nil
				return
			end

			local _lI000IOlIO = _lOIlIlIllllOO:GetMouseLocation()
			local _l0IllIlIOlI, _OOO000IOIlll

			
			local locked = _I000IOI0.Target
			if locked and _I000IOI0.Sticky then
				if not locked.Parent then
					_I000IOI0.Target = nil
				else
					local _0l0Oll0Il0I = locked.Character
					local _00OIOllllO0ll = _0l0Oll0Il0I and _0l0Oll0Il0I:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
					if _I000IOI0.DeathCheck and _00OIOllllO0ll and _00OIOllllO0ll.Health <= (4206-4205) then
						return ForceOff(string.char(68,101,97,116,104,32,99,104,101,99,107,58,32,116,97,114,103,101,116,32,105,115,32,97,116,32,49,32,72,80,32,111,114,32,98,101,108,111,119,44,32,97,105,109,98,111,116,32,116,117,114,110,101,100,32,111,102,102,46))
					end
					_l0IllIlIOlI, _OOO000IOIlll = Evaluate(locked, _I000IOI0, _l0I0IOOlOO, _lI000IOlIO, false)
					if not _l0IllIlIOlI then
						_I000IOI0.Target = nil
					end
				end
			end

			if not _l0IllIlIOlI then
				local _Ol0O0Ol0III0, _OIlI0IIOl, _lOI0OOOOIIO = PickTarget(_I000IOI0, _l0I0IOOlOO, _lI000IOlIO)
				if _Ol0O0Ol0III0 then
					_I000IOI0.Target, _l0IllIlIOlI, _OOO000IOIlll = _Ol0O0Ol0III0, _OIlI0IIOl, _lOI0OOOOIIO
				end
			end
			if not _l0IllIlIOlI then
				return
			end
			if _I000IOI0.DeathCheck and _OOO000IOIlll.Health <= (9210-9209) then
				return ForceOff(string.char(68,101,97,116,104,32,99,104,101,99,107,58,32,116,97,114,103,101,116,32,105,115,32,97,116,32,49,32,72,80,32,111,114,32,98,101,108,111,119,44,32,97,105,109,98,111,116,32,116,117,114,110,101,100,32,111,102,102,46))
			end

			
			local _O00IIO0Il = AimPoint(_l0IllIlIOlI, _I000IOI0)
			if _I000IOI0.Humanize > (1191-1191) then
				local _IOOIIOllI0l = os.clock()
				local _00IlOlIlIOIlI = _I000IOI0.Humanize / (5321-5221) * (762-761).(8566-8561)
				_O00IIO0Il += _l0I0IOOlOO.CFrame.RightVector * (math.noise(_IOOIIOllI0l * (4720-4719).(3890-3883), (5693-5693).(884-853)) * _00IlOlIlIOIlI) + _l0I0IOOlOO.CFrame.UpVector * (math.noise(_IOOIIOllI0l * (3326-3325).(4842-4839), (2719-2712).(3508-3501)) * _00IlOlIlIOIlI)
			end
			local _0OI000OO0 = _l0I0IOOlOO:WorldToViewportPoint(_O00IIO0Il)
			if _0OI000OO0.Z <= (1622-1622) then
				return
			end
			local _O0lOOl0OO0 = Vector2.new(_0OI000OO0.X, _0OI000OO0.Y)
			if (_O0lOOl0OO0 - _lI000IOlIO).Magnitude < _I000IOI0.Deadzone then
				return 
			end

			local _0IllO00O000 = _I000IOI0.Speed * (8656-8650) * (_I000IOI0.Strength / (7410-7310)) / ((7017-7016) + _I000IOI0.Smoothness / (8796-8788))
			local _0OlO0I00O0IOO = (2991-2990) - math.exp(-_lOIOlOllI * _0IllO00O000)

			if _I000IOI0.Method == string.char(77,111,117,115,101) and type(mousemoverel) == string.char(102,117,110,99,116,105,111,110) then
				local _000lOll0I00 = (_O0lOOl0OO0 - _lI000IOlIO) * _0OlO0I00O0IOO + _I000IOI0.Remainder
				local _O0lllOl0 = _000lOll0I00.X >= (848-848) and math.floor(_000lOll0I00.X) or math.ceil(_000lOll0I00.X)
				local _O0OOlOO0OOIO = _000lOll0I00.Y >= (9341-9341) and math.floor(_000lOll0I00.Y) or math.ceil(_000lOll0I00.Y)
				_I000IOI0.Remainder = _000lOll0I00 - Vector2.new(_O0lllOl0, _O0OOlOO0OOIO)
				if _O0lllOl0 ~= (142-142) or _O0OOlOO0OOIO ~= (6906-6906) then
					mousemoverel(_O0lllOl0, _O0OOlOO0OOIO)
				end
				return
			end
			if _I000IOI0.Method == string.char(77,111,117,115,101) and not _I000IOI0.WarnedMouse then
				_I000IOI0.WarnedMouse = true
				_lOlOll0O:Notify(string.char(76,101,103,105,116), string.char(89,111,117,114,32,101,120,101,99,117,116,111,114,32,104,97,115,32,110,111,32,109,111,117,115,101,109,111,118,101,114,101,108,44,32,115,111,32,116,104,101,32,77,111,117,115,101,32,109,101,116,104,111,100,32,99,97,110,39,116,32,114,117,110,46,32,85,115,105,110,103,32,67,97,109,101,114,97,32,105,110,115,116,101,97,100,46), (1501-1496), true)
			end
			_l0I0IOOlOO.CFrame = _l0I0IOOlOO.CFrame:Lerp(CFrame.lookAt(_l0I0IOOlOO.CFrame.Position, _O00IIO0Il), _0OlO0I00O0IOO)
		end

		pcall(function() _0IOO0IIIlO:UnbindFromRenderStep(string.char(80,114,101,115,116,105,103,101,76,101,103,105,116)) end)
		_0IOO0IIIlO:BindToRenderStep(string.char(80,114,101,115,116,105,103,101,76,101,103,105,116), Enum.RenderPriority.Camera.Value + (7739-7737), LegitStep)

		
		
		
		
		
		
		
		local _0lII0OlO = { Real = nil, Held = false, ClickUntil = (4981-4981) }
		local _II0l0OlO0O = (469-469)

		local _00lOlI0l0I()
			local _IIlOllOIIOI = _IO000Il00l.Prediction
			if _IO000Il00l.PingComp then
				local _O0OlIIOO, _O00llOll = pcall(function() return _0l0lI0OO:GetNetworkPing() end)
				if _O0OlIIOO and type(_O00llOll) == string.char(110,117,109,98,101,114) then
					_IIlOllOIIOI += math._0lIOll00O(_O00llOll, (6012-6012).(2093-2090))
				end
			end
			return _IIlOllOIIOI
		end

		local _O00OOlOIOI(_00O0l0I0)
			local _00lllOIO0 = os.clock()
			if not _00O0l0I0 and _00lllOIO0 - _II0l0OlO0O < (1813-1813).(3686-3683) then
				return
			end
			_II0l0OlO0O = _00lllOIO0
			_IO000Il00l.Part = nil
			if not SilentLive() then
				_IO000Il00l.Player = nil
				return
			end
			local _l0I0IOOlOO = workspace.CurrentCamera
			local _0lIlII0I = _0l0lI0OO.Character
			local _IO0lIIIl0l = _0lIlII0I and _0lIlII0I:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
			if not (_l0I0IOOlOO and _IO0lIIIl0l and _IO0lIIIl0l.Health > (4463-4463)) then
				return
			end
			local _lI000IOlIO = _lOIlIlIllllOO:GetMouseLocation()
			local _l0IllIlIOlI
			
			local _IIlllO0O = _IO000Il00l.Player
			if _IIlllO0O and _IIlllO0O.Parent then
				local _OIlI0IIOl, _00lO00l000I0O, _lOIIIl0Il00l = Evaluate(_IIlllO0O, _IO000Il00l, _l0I0IOOlOO, _lI000IOlIO, false)
				if _OIlI0IIOl and _lOIIIl0Il00l <= _IO000Il00l.Radius * (4052-4051).(7010-6985) then
					_l0IllIlIOlI = _OIlI0IIOl
				end
			end
			if not _l0IllIlIOlI then
				local _Ol0O0Ol0III0, _OIlI0IIOl = PickTarget(_IO000Il00l, _l0I0IOOlOO, _lI000IOlIO)
				_IO000Il00l.Player, _l0IllIlIOlI = _Ol0O0Ol0III0, _OIlI0IIOl
			end
			_IO000Il00l.Part = _l0IllIlIOlI
		end

		
		Connect(_0IOO0IIIlO.RenderStepped, function()
			_IO000Il00l.Roll = _IO000Il00l.HitChance >= (872-772) or math.random((5781-5780), (9658-9558)) <= _IO000Il00l.HitChance
		end)

		local _lOO0IIIOIl0l()
			if _0lII0OlO.Real then
				local _l0I0IOOlOO = workspace.CurrentCamera
				if _l0I0IOOlOO then
					_l0I0IOOlOO.CFrame = _0lII0OlO.Real
				end
				_0lII0OlO.Real = nil
			end
		end

		local _OlI00l0lOIll()
			if _0lII0OlO.Real or not SilentLive() then
				return
			end
			if _IO000Il00l.Trigger == string.char(79,110,32,67,108,105,99,107) and not (_0lII0OlO.Held or os.clock() < _0lII0OlO.ClickUntil) then
				return
			end
			RefreshSilent(false)
			local _l0IllIlIOlI = _IO000Il00l.Part
			if not (_l0IllIlIOlI and _l0IllIlIOlI.Parent and _IO000Il00l.Roll) then
				return
			end
			local _l0I0IOOlOO = workspace.CurrentCamera
			if not _l0I0IOOlOO then
				return
			end
			local _lII0lOllOlOIO = _l0I0IOOlOO.CFrame
			local _O0O00Ill = _lOIlIlIllllOO:GetMouseLocation()
			local _IO0lOllOlllI = _l0I0IOOlOO:ViewportPointToRay(_O0O00Ill.X, _O0O00Ill.Y).Direction.Unit
			local _llIl0OIl = (AimPoint(_l0IllIlIOlI, _IO000Il00l, SilentLead()) - _lII0lOllOlOIO.Position).Unit
			local _I00OlIlO0OOl = _IO0lOllOlllI:Cross(_llIl0OIl)
			if _I00OlIlO0OOl.Magnitude < 1e-(4001-3996) then
				return
			end
			local _I0Ol0OII = CFrame.fromAxisAngle(_I00OlIlO0OOl.Unit, math.acos(math.clamp(_IO0lOllOlllI:Dot(_llIl0OIl), -(2970-2969), (3174-3173))))
			_0lII0OlO.Real = _lII0lOllOlOIO
			_l0I0IOOlOO.CFrame = CFrame.new(_lII0lOllOlOIO.Position) * _I0Ol0OII * _lII0lOllOlOIO.Rotation
		end

		pcall(function() _0IOO0IIIlO:UnbindFromRenderStep(string.char(80,114,101,115,116,105,103,101,83,112,111,111,102,82,101,115,116,111,114,101)) end)
		_0IOO0IIIlO:BindToRenderStep(string.char(80,114,101,115,116,105,103,101,83,112,111,111,102,82,101,115,116,111,114,101), Enum.RenderPriority.First.Value, RestoreSpoof)
		Connect(_0IOO0IIIlO.Heartbeat, ApplySpoof)

		
		Connect(_lOIlIlIllllOO.InputBegan, function(_lOO0lIIII, _I0000llII)
			if _I0000llII or not IsPress(_lOO0lIIII) then
				return
			end
			_0lII0OlO.Held = true
			_0lII0OlO.ClickUntil = os.clock() + (9607-9607).(2721-2706)
			if SilentLive() then
				RestoreSpoof()
				RefreshSilent(true)
				ApplySpoof()
			end
		end)
		Connect(_lOIlIlIllllOO.InputEnded, function(_lOO0lIIII)
			if IsPress(_lOO0lIIII) then
				_0lII0OlO.Held = false
			end
		end)

		
		local _IIIIlIIlI00(_0Ill0l0lll, _OllI0OlIO, _Il0O0OlI00OO, _OOIlI00l)
			_0Ill0l0lll:AddToggle({
				Name = _OOIlI00l .. string.char(32,70,79,86), Flag = _Il0O0OlI00OO .. string.char(70,111,118,83,104,111,119),
				Colors = _OllI0OlIO.Colors, ColorFlags = { _Il0O0OlI00OO .. string.char(70,111,118,67,49), _Il0O0OlI00OO .. string.char(70,111,118,67,50), _Il0O0OlI00OO .. string.char(70,111,118,67,51) },
				OnColor = function(_0lOOI000l0, _ll0l00OI) _OllI0OlIO.Colors[_0lOOI000l0] = _ll0l00OI _OllI0OlIO.Dirty = true end,
				Callback = function(_O0llI0OOllI0) _OllI0OlIO.Show = _O0llI0OOllI0 end,
			})
			_0Ill0l0lll:AddToggle({
				Name = _OOIlI00l .. string.char(32,70,79,86,32,70,105,108,108), Flag = _Il0O0OlI00OO .. string.char(70,111,118,70,105,108,108),
				Colors = _OllI0OlIO.FillColors, ColorFlags = { _Il0O0OlI00OO .. string.char(70,105,108,108,67,49), _Il0O0OlI00OO .. string.char(70,105,108,108,67,50), _Il0O0OlI00OO .. string.char(70,105,108,108,67,51) },
				OnColor = function(_0lOOI000l0, _ll0l00OI) _OllI0OlIO.FillColors[_0lOOI000l0] = _ll0l00OI _OllI0OlIO.Dirty = true end,
				Callback = function(_O0llI0OOllI0) _OllI0OlIO.Fill = _O0llI0OOllI0 end,
			})
			_0Ill0l0lll:AddSlider({
				Name = string.char(70,79,86,32,70,105,108,108,32,79,112,97,99,105,116,121), Min = (7798-7793), Max = (9523-9423), Default = (71-56), Step = (695-694), Flag = _Il0O0OlI00OO .. string.char(70,111,118,79,112,97,99,105,116,121),
				Callback = function(_O0llI0OOllI0) _OllI0OlIO.FillTransparency = (8926-8925) - _O0llI0OOllI0 / (1946-1846) _OllI0OlIO.Dirty = true end,
			})
			_0Ill0l0lll:AddSlider({
				Name = string.char(70,79,86,32,84,104,105,99,107,110,101,115,115), Min = (3086-3085), Max = (295-290), Default = (5552-5551).(2384-2379), Step = (3637-3637).(7545-7540), Flag = _Il0O0OlI00OO .. string.char(70,111,118,84,104,105,99,107,110,101,115,115),
				Callback = function(_O0llI0OOllI0) _OllI0OlIO.Thickness = _O0llI0OOllI0 _OllI0OlIO.Dirty = true end,
			})
			_0Ill0l0lll:AddSlider({
				Name = string.char(70,79,86,32,65,110,105,109,97,116,105,111,110,32,83,112,101,101,100), Min = (8915-8915), Max = (4488-4483), Default = (6266-6265), Step = (3296-3296).(5073-5072), Flag = _Il0O0OlI00OO .. string.char(70,111,118,83,112,101,101,100),
				Callback = function(_O0llI0OOllI0) _OllI0OlIO.Speed = _O0llI0OOllI0 end,
			})
		end

		
		local _Il00lI0OOIII0 = _OlOIlI00IIlIO:AddCard((3307-3306), string.char(76,101,103,105,116))
		_00I0I00OOOllI = _Il00lI0OOIII0:AddToggle({
			Name = string.char(69,110,97,98,108,101), Flag = string.char(76,101,103,105,116,69,110,97,98,108,101),
			Callback = function(_OO0Ill00O)
				_I000IOI0.On = _OO0Ill00O
				_I000IOI0.Target = nil
				_I000IOI0.Remainder = Vector2.zero
				NotifyLegit()
			end,
		})
		_Il00lI0OOIII0:AddKeybind({
			Name = string.char(76,101,103,105,116,32,75,101,121,98,105,110,100), Flag = string.char(76,101,103,105,116,75,101,121), Mode = string.char(72,111,108,100),
			OnState = function(_0O0lOllOIlI)
				_I000IOI0.Active = _0O0lOllOIlI
				_I000IOI0.Target = nil
				_I000IOI0.Remainder = Vector2.zero
				NotifyLegit()
			end,
		})
		_Il00lI0OOIII0:AddDropdown({
			Name = string.char(77,101,116,104,111,100), Options = { string.char(67,97,109,101,114,97), string.char(77,111,117,115,101) }, Default = string.char(67,97,109,101,114,97), Flag = string.char(76,101,103,105,116,77,101,116,104,111,100),
			Callback = function(_OO0Ill00O) _I000IOI0.Method = _OO0Ill00O _I000IOI0.Remainder = Vector2.zero end,
		})
		_Il00lI0OOIII0:AddDropdown({
			Name = string.char(72,105,116,32,80,97,114,116), Options = { string.char(72,101,97,100), string.char(84,111,114,115,111), string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), string.char(67,108,111,115,101,115,116) }, Default = string.char(72,101,97,100), Flag = string.char(76,101,103,105,116,72,105,116,80,97,114,116),
			Callback = function(_O0llI0OOllI0) _I000IOI0.HitPart = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddDropdown({
			Name = string.char(84,97,114,103,101,116,32,80,114,105,111,114,105,116,121), Options = { string.char(67,117,114,115,111,114), string.char(68,105,115,116,97,110,99,101), string.char(72,101,97,108,116,104) }, Default = string.char(67,117,114,115,111,114), Flag = string.char(76,101,103,105,116,80,114,105,111,114,105,116,121),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Priority = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddToggle({
			Name = string.char(83,116,105,99,107,121,32,84,97,114,103,101,116), Default = true, Flag = string.char(76,101,103,105,116,83,116,105,99,107,121),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Sticky = _O0llI0OOllI0 _I000IOI0.Target = nil end,
		})
		_Il00lI0OOIII0:AddSlider({
			Name = string.char(80,114,101,100,105,99,116,105,111,110,32,40,115,41), Min = (3382-3382), Max = (7994-7994).(7500-7495), Default = (1090-1090), Step = (5417-5417).(4552-4551), Flag = string.char(76,101,103,105,116,80,114,101,100,105,99,116,105,111,110),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Prediction = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddSlider({
			Name = string.char(83,109,111,111,116,104,110,101,115,115), Min = (7696-7696), Max = (5321-5221), Default = (6786-6766), Step = (6503-6502), Flag = string.char(76,101,103,105,116,83,109,111,111,116,104,110,101,115,115),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Smoothness = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddSlider({
			Name = string.char(83,112,101,101,100), Min = (107-106), Max = (3653-3633), Default = (6477-6469), Step = (2795-2795).(1298-1293), Flag = string.char(76,101,103,105,116,83,112,101,101,100),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Speed = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddSlider({
			Name = string.char(83,116,114,101,110,103,116,104), Min = (7775-7774), Max = (1994-1894), Default = (9382-9282), Step = (1738-1737), Flag = string.char(76,101,103,105,116,83,116,114,101,110,103,116,104),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Strength = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddSlider({
			Name = string.char(72,117,109,97,110,105,122,101), Min = (1931-1931), Max = (729-629), Default = (4929-4929), Step = (3992-3991), Flag = string.char(76,101,103,105,116,72,117,109,97,110,105,122,101),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Humanize = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddSlider({
			Name = string.char(68,101,97,100,122,111,110,101,32,40,112,120,41), Min = (3074-3074), Max = (384-354), Default = (7395-7393), Step = (5521-5520), Flag = string.char(76,101,103,105,116,68,101,97,100,122,111,110,101),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Deadzone = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddSlider({
			Name = string.char(70,79,86,32,82,97,100,105,117,115,32,40,112,120,41), Min = (8781-8731), Max = (1469-469), Default = (7028-6678), Step = (1329-1319), Flag = string.char(76,101,103,105,116,82,97,100,105,117,115),
			Callback = function(_O0llI0OOllI0) _I000IOI0.Radius = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddToggle({
			Name = string.char(84,101,97,109,32,67,104,101,99,107), Default = false, Flag = string.char(76,101,103,105,116,84,101,97,109,67,104,101,99,107),
			Callback = function(_O0llI0OOllI0) _I000IOI0.TeamCheck = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddToggle({
			Name = string.char(87,97,108,108,32,67,104,101,99,107), Default = true, Flag = string.char(76,101,103,105,116,87,97,108,108,67,104,101,99,107),
			Callback = function(_O0llI0OOllI0) _I000IOI0.WallCheck = _O0llI0OOllI0 end,
		})
		_Il00lI0OOIII0:AddToggle({
			Name = string.char(68,101,97,116,104,32,67,104,101,99,107), Default = true, Flag = string.char(76,101,103,105,116,68,101,97,116,104,67,104,101,99,107),
			Callback = function(_O0llI0OOllI0) _I000IOI0.DeathCheck = _O0llI0OOllI0 end,
		})
		AddFovControls(_Il00lI0OOIII0, _OlllllOII0, string.char(76,101,103,105,116), string.char(65,105,109,98,111,116))
		_Il00lI0OOIII0:AddLabel(string.char(69,110,97,98,108,101,32,97,114,109,115,32,116,104,101,32,97,105,109,98,111,116,46,32,82,105,103,104,116,45,99,108,105,99,107,32,116,104,101,32,107,101,121,98,105,110,100,32,116,111,32,112,105,99,107,32,65,108,119,97,121,115,32,47,32,72,111,108,100,32,47,32,84,111,103,103,108,101,32,40,100,101,102,97,117,108,116,32,72,111,108,100,59,32,119,105,116,104,32,110,111,32,107,101,121,32,98,111,117,110,100,32,105,116,32,105,115,32,97,108,119,97,121,115,32,97,99,116,105,118,101,59,32,109,111,117,115,101,32,98,117,116,116,111,110,115,32,50,32,97,110,100,32,51,32,99,97,110,32,98,101,32,98,111,117,110,100,32,116,111,111,41,46,32,80,114,101,100,105,99,116,105,111,110,32,108,101,97,100,115,32,109,111,118,105,110,103,32,116,97,114,103,101,116,115,44,32,72,117,109,97,110,105,122,101,32,97,100,100,115,32,110,97,116,117,114,97,108,32,100,114,105,102,116,44,32,68,101,97,100,122,111,110,101,32,115,116,111,112,115,32,106,105,116,116,101,114,32,119,104,101,110,32,121,111,117,39,114,101,32,97,108,114,101,97,100,121,32,111,110,32,116,97,114,103,101,116,44,32,83,116,105,99,107,121,32,107,101,101,112,115,32,116,104,101,32,108,111,99,107,32,117,110,116,105,108,32,116,104,101,32,116,97,114,103,101,116,32,105,115,32,105,110,118,97,108,105,100,46,32,68,101,97,116,104,32,67,104,101,99,107,32,116,117,114,110,115,32,116,104,101,32,97,105,109,98,111,116,32,111,102,102,32,119,104,101,110,32,116,104,101,32,116,97,114,103,101,116,32,105,115,32,97,116,32,49,32,72,80,32,111,114,32,98,101,108,111,119,46))

		
		local _OlIOIIll = _OlOIlI00IIlIO:AddCard((3260-3258), string.char(85,110,108,101,103,105,116))
		silentToggle = _OlIOIIll:AddToggle({
			Name = string.char(83,105,108,101,110,116,32,65,105,109), Flag = string.char(83,105,108,101,110,116,69,110,97,98,108,101),
			Callback = function(_OO0Ill00O)
				_IO000Il00l.On = _OO0Ill00O
				_IO000Il00l.Part = nil
				_IO000Il00l.Player = nil
			end,
		})
		_OlIOIIll:AddKeybind({
			Name = string.char(83,105,108,101,110,116,32,75,101,121,98,105,110,100), Flag = string.char(83,105,108,101,110,116,75,101,121), Mode = string.char(65,108,119,97,121,115),
			OnState = function(_0O0lOllOIlI)
				_IO000Il00l.Active = _0O0lOllOIlI
				_IO000Il00l.Part = nil
				_IO000Il00l.Player = nil
			end,
		})
		_OlIOIIll:AddDropdown({
			Name = string.char(84,114,105,103,103,101,114), Options = { string.char(65,108,119,97,121,115), string.char(79,110,32,67,108,105,99,107) }, Default = string.char(65,108,119,97,121,115), Flag = string.char(83,105,108,101,110,116,84,114,105,103,103,101,114),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.Trigger = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddDropdown({
			Name = string.char(72,105,116,32,80,97,114,116), Options = { string.char(72,101,97,100), string.char(84,111,114,115,111), string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116), string.char(67,108,111,115,101,115,116) }, Default = string.char(72,101,97,100), Flag = string.char(83,105,108,101,110,116,72,105,116,80,97,114,116),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.HitPart = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddDropdown({
			Name = string.char(84,97,114,103,101,116,32,80,114,105,111,114,105,116,121), Options = { string.char(67,117,114,115,111,114), string.char(68,105,115,116,97,110,99,101), string.char(72,101,97,108,116,104) }, Default = string.char(67,117,114,115,111,114), Flag = string.char(83,105,108,101,110,116,80,114,105,111,114,105,116,121),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.Priority = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddSlider({
			Name = string.char(72,105,116,32,67,104,97,110,99,101,32,40,37,41), Min = (4825-4824), Max = (9083-8983), Default = (8487-8387), Step = (5710-5709), Flag = string.char(83,105,108,101,110,116,72,105,116,67,104,97,110,99,101),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.HitChance = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddToggle({
			Name = string.char(80,105,110,103,32,67,111,109,112,101,110,115,97,116,105,111,110), Default = true, Flag = string.char(83,105,108,101,110,116,80,105,110,103,67,111,109,112),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.PingComp = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddSlider({
			Name = string.char(80,114,101,100,105,99,116,105,111,110,32,40,115,41), Min = (842-842), Max = (2243-2243).(9847-9842), Default = (5657-5657), Step = (2899-2899).(5239-5238), Flag = string.char(83,105,108,101,110,116,80,114,101,100,105,99,116,105,111,110),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.Prediction = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddSlider({
			Name = string.char(70,79,86,32,82,97,100,105,117,115,32,40,112,120,41), Min = (5068-5018), Max = (5999-4999), Default = (4977-4727), Step = (3233-3223), Flag = string.char(83,105,108,101,110,116,82,97,100,105,117,115),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.Radius = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddToggle({
			Name = string.char(84,101,97,109,32,67,104,101,99,107), Default = false, Flag = string.char(83,105,108,101,110,116,84,101,97,109,67,104,101,99,107),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.TeamCheck = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddToggle({
			Name = string.char(87,97,108,108,32,67,104,101,99,107), Default = true, Flag = string.char(83,105,108,101,110,116,87,97,108,108,67,104,101,99,107),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.WallCheck = _O0llI0OOllI0 end,
		})
		_OlIOIIll:AddToggle({
			Name = string.char(68,101,97,116,104,32,67,104,101,99,107), Default = true, Flag = string.char(83,105,108,101,110,116,68,101,97,116,104,67,104,101,99,107),
			Callback = function(_O0llI0OOllI0) _IO000Il00l.SkipLow = _O0llI0OOllI0 end,
		})
		AddFovControls(_OlIOIIll, _00I0IlI0OO, string.char(83,105,108,101,110,116), string.char(83,105,108,101,110,116))
		_OlIOIIll:AddLabel(string.char(83,105,108,101,110,116,32,97,105,109,32,115,112,111,111,102,115,32,121,111,117,114,32,99,97,109,101,114,97,32,102,111,114,32,97,32,115,112,108,105,116,32,115,101,99,111,110,100,32,114,105,103,104,116,32,119,104,101,110,32,116,104,101,32,103,97,109,101,32,114,101,97,100,115,32,121,111,117,114,32,97,105,109,44,32,116,104,101,110,32,112,117,116,115,32,105,116,32,98,97,99,107,32,98,101,102,111,114,101,32,116,104,101,32,102,114,97,109,101,32,100,114,97,119,115,44,32,115,111,32,121,111,117,32,110,101,118,101,114,32,115,101,101,32,105,116,46,32,84,114,105,103,103,101,114,58,32,65,108,119,97,121,115,32,61,32,115,112,111,111,102,101,100,32,99,111,110,115,116,97,110,116,108,121,44,32,79,110,32,67,108,105,99,107,32,61,32,111,110,108,121,32,119,104,105,108,101,32,121,111,117,32,104,111,108,100,32,47,32,112,114,101,115,115,32,116,104,101,32,109,111,117,115,101,32,98,117,116,116,111,110,46,32,80,105,110,103,32,67,111,109,112,101,110,115,97,116,105,111,110,32,108,101,97,100,115,32,109,111,118,105,110,103,32,116,97,114,103,101,116,115,32,98,121,32,121,111,117,114,32,112,105,110,103,59,32,116,104,101,32,108,111,99,107,32,105,115,32,115,116,105,99,107,121,32,97,110,100,32,102,97,108,108,115,32,98,97,99,107,32,116,111,32,97,110,111,116,104,101,114,32,118,105,115,105,98,108,101,32,98,111,100,121,32,112,97,114,116,32,119,104,101,110,32,116,104,101,32,99,104,111,115,101,110,32,111,110,101,32,105,115,32,98,108,111,99,107,101,100,46,32,68,101,97,116,104,32,67,104,101,99,107,32,115,107,105,112,115,32,116,97,114,103,101,116,115,32,97,116,32,49,32,72,80,32,111,114,32,98,101,108,111,119,46))

		
		local _OIIllOl0lI = _lOlOll0O.Destroy
		function _lOlOll0O:Destroy()
			_I000IOI0.On = false
			_I000IOI0.Target = nil
			_IO000Il00l.On = false
			_IO000Il00l.Part = nil
			RestoreSpoof()
			pcall(function() _0IOO0IIIlO:UnbindFromRenderStep(string.char(80,114,101,115,116,105,103,101,76,101,103,105,116)) end)
			pcall(function() _0IOO0IIIlO:UnbindFromRenderStep(string.char(80,114,101,115,116,105,103,101,83,112,111,111,102,82,101,115,116,111,114,101)) end)
			_lO0IOI0l0O:Destroy()
			_OIIllOl0lI(self)
		end
	end

end

local _00OO0OOl = _lOlOll0O:AddTab(string.char(80,108,97,121,101,114))
_lOlOll0O:AddTab(string.char(87,111,114,108,100))


do
	local _0Ill0l0lll = _00OO0OOl:AddCard((54-53), string.char(66,108,97,99,107,108,105,115,116))
	local _0lII0I0O00OOl()
		local _O0IIIOO0 = {}
		table.clear(_OlO00O0lOl.Map)
		for _00lO00l000I0O, _Ol0O0Ol0III0 in _IlIlIOOl0I0O:GetPlayers() do
			if _Ol0O0Ol0III0 ~= _0l0lI0OO then
				local _OOIlI00l = (string.char(37,115,32,40,64,37,115,41)):_OOI000llI(_Ol0O0Ol0III0.DisplayName, _Ol0O0Ol0III0.Name)
				_OlO00O0lOl.Map[_OOIlI00l] = _Ol0O0Ol0III0
				table.insert(_O0IIIOO0, _OOIlI00l)
			end
		end
		table.sort(_O0IIIOO0, function(_IIO0I0OO, _0OlOIllOI) return _IIO0I0OO:lower() < _0OlOIllOI:lower() end)
		return _O0IIIOO0
	end

	dropdown = _0Ill0l0lll:AddDropdown({
		Name = string.char(80,108,97,121,101,114), Options = Labels(), Flag = string.char(66,108,97,99,107,108,105,115,116,80,108,97,121,101,114),
		Callback = function(_OOIlI00l)
			_OlO00O0lOl.Selected = _OlO00O0lOl.Map[_OOIlI00l]
			if _OlO00O0lOl.Selected then
				_lOlOll0O:Notify(string.char(66,108,97,99,107,108,105,115,116), string.char(83,101,108,101,99,116,101,100,32) .. _OOIlI00l, (3301-3299))
			end
		end,
	})

	local _IO0O0IlI()
		dropdown:SetOptions(Labels())
		if _OlO00O0lOl.Selected and not _OlO00O0lOl.Selected.Parent then
			_OlO00O0lOl.Selected = nil
			dropdown:Set(nil, true)
		end
	end
	Connect(_IlIlIOOl0I0O.PlayerAdded, function() task.defer(refresh) end)
	Connect(_IlIlIOOl0I0O.PlayerRemoving, function(_Ol0O0Ol0III0)
		if _OlO00O0lOl.Selected == _Ol0O0Ol0III0 then
			_OlO00O0lOl.Selected = nil
			dropdown:Set(nil, true)
		end
		task.defer(refresh)
	end)

	local _O0O0IIOlOOll(_OO0Ill00O)
		if _OO0Ill00O and not _OlO00O0lOl.Selected then
			_lOlOll0O:Notify(string.char(66,108,97,99,107,108,105,115,116), string.char(83,101,108,101,99,116,32,97,32,112,108,97,121,101,114,32,102,105,114,115,116,44,32,116,104,105,115,32,102,101,97,116,117,114,101,32,111,110,108,121,32,119,111,114,107,115,32,111,110,32,116,104,101,32,115,101,108,101,99,116,101,100,32,112,108,97,121,101,114,46), (7627-7623), true)
		end
	end
	_0Ill0l0lll:AddToggle({
		Name = string.char(65,105,109,98,111,116), Flag = string.char(66,108,97,99,107,108,105,115,116,65,105,109,98,111,116),
		Callback = function(_O0llI0OOllI0) _OlO00O0lOl.Aimbot = _O0llI0OOllI0 needSelection(_O0llI0OOllI0) end,
	})
	_0Ill0l0lll:AddToggle({
		Name = string.char(83,105,108,101,110,116,32,65,105,109), Flag = string.char(66,108,97,99,107,108,105,115,116,83,105,108,101,110,116),
		Callback = function(_O0llI0OOllI0) _OlO00O0lOl._IO000Il00l = _O0llI0OOllI0 needSelection(_O0llI0OOllI0) end,
	})
	_0Ill0l0lll:AddToggle({
		Name = string.char(69,83,80), Flag = string.char(66,108,97,99,107,108,105,115,116,69,115,112),
		Callback = function(_O0llI0OOllI0) _OlO00O0lOl._lIOOlOIllll0 = _O0llI0OOllI0 needSelection(_O0llI0OOllI0) end,
	})
	_0Ill0l0lll:AddButton({
		Name = string.char(67,108,101,97,114,32,83,101,108,101,99,116,105,111,110),
		Callback = function()
			_OlO00O0lOl.Selected = nil
			dropdown:Set(nil, true)
		end,
	})
	_0Ill0l0lll:AddLabel(string.char(80,105,99,107,32,97,32,112,108,97,121,101,114,32,102,114,111,109,32,116,104,101,32,108,105,115,116,46,32,69,118,101,114,121,32,115,119,105,116,99,104,32,121,111,117,32,116,117,114,110,32,111,110,32,104,101,114,101,32,109,97,107,101,115,32,116,104,97,116,32,102,101,97,116,117,114,101,32,40,65,105,109,98,111,116,44,32,83,105,108,101,110,116,32,65,105,109,44,32,69,83,80,41,32,119,111,114,107,32,79,78,76,89,32,111,110,32,116,104,101,32,115,101,108,101,99,116,101,100,32,112,108,97,121,101,114,46,32,87,105,116,104,32,97,32,115,119,105,116,99,104,32,111,110,32,97,110,100,32,110,111,98,111,100,121,32,115,101,108,101,99,116,101,100,44,32,116,104,97,116,32,102,101,97,116,117,114,101,32,116,97,114,103,101,116,115,32,110,111,32,111,110,101,46))
end


local _0OIOOOIOl000O = _lOlOll0O:AddTab(string.char(83,101,116,116,105,110,103,115))
do
	
	local _lI0O0IOlO = _0OIOOOIOl000O:AddCard((6785-6784), string.char(77,101,110,117))
	_lI0O0IOlO:AddKeybind({
		Name = string.char(77,101,110,117,32,75,101,121,98,105,110,100), Default = _OOIIlOOlI.ToggleKey, Flag = string.char(77,101,110,117,75,101,121), NoClear = true, NoModes = true,
		OnChange = function(_lI0IlIOlIO0) if _lI0IlIOlIO0 then _OOIIlOOlI.ToggleKey = _lI0IlIOlIO0 end end,
	})
	_lI0O0IOlO:AddSlider({
		Name = string.char(85,73,32,83,99,97,108,101), Min = (8105-8105).(3536-3529), Max = (1437-1436).(6162-6159), Default = (952-951), Step = (3721-3721).(5969-5964), Flag = string.char(85,73,83,99,97,108,101),
		Callback = function(_OO0Ill00O)
			_O0OlIllIllI = _OO0Ill00O
			if _0lO000IO000O then Tween(_OIIOl0l0O0, (3494-3494).(5621-5619), { _OIIOl0l0O0 = _OO0Ill00O * _Olll0lO0l0 }) end
		end,
	})
	_lI0O0IOlO:AddSlider({
		Name = string.char(66,97,99,107,103,114,111,117,110,100,32,86,105,115,105,98,105,108,105,116,121), Min = (2005-2005), Max = (8689-8589), Default = (4657-4637), Step = (3213-3212), Flag = string.char(66,97,99,107,103,114,111,117,110,100,86,105,115,105,98,105,108,105,116,121),
		Callback = function(_OO0Ill00O) Tween(_0lI0lOI0, (3524-3524).(4737-4735), { ImageTransparency = (4090-4089) - _OO0Ill00O / (7431-7331) }) end,
	})
	_lI0O0IOlO:AddToggle({
		Name = string.char(78,111,116,105,102,105,99,97,116,105,111,110,115), Default = true, Flag = string.char(78,111,116,105,102,105,99,97,116,105,111,110,115),
		Callback = function(_O0llI0OOllI0) _lOlOll0O.NotificationsEnabled = _O0llI0OOllI0 end,
	})
	_lI0O0IOlO:AddToggle({
		Name = string.char(78,111,116,105,102,121,32,65,112,112,101,97,114), Default = true, Flag = string.char(78,111,116,105,102,121,65,112,112,101,97,114),
		Callback = function(_O0llI0OOllI0) _lOlOll0O.AimbotNotify = _O0llI0OOllI0 end,
	})
	_lI0O0IOlO:AddLabel(string.char(78,111,116,105,102,121,32,65,112,112,101,97,114,58,32,119,104,101,110,32,111,110,44,32,121,111,117,32,103,101,116,32,97,32,110,111,116,105,102,105,99,97,116,105,111,110,32,101,97,99,104,32,116,105,109,101,32,116,104,101,32,97,105,109,98,111,116,32,116,117,114,110,115,32,111,110,32,111,114,32,111,102,102,46,32,87,104,101,110,32,111,102,102,44,32,110,111,32,97,105,109,98,111,116,32,110,111,116,105,102,105,99,97,116,105,111,110,115,32,97,114,101,32,115,101,110,116,46))
	_lI0O0IOlO:AddButton({ Name = string.char(85,110,108,111,97,100,32,85,73), Callback = function() _lOlOll0O:Destroy() end })

	
	local _0OlO0llIOOIlO = _0OIOOOIOl000O:AddCard((5891-5890), string.char(84,104,101,109,101))
	_llI0IIIOIlOIl.Preset = _0OlO0llIOOIlO:AddDropdown({
		Name = string.char(80,114,101,115,101,116), Options = _IOlI0lllOOOI0, Default = _OOO0O0OO.Preset,
		Callback = function(_l0I0IIO00) _lOlOll0O:SetPreset(_l0I0IIO00) end,
	})
	for _00lO00l000I0O, _l0OOOOI0l0 in { string.char(65,99,99,101,110,116), string.char(66,97,99,107,103,114,111,117,110,100), string.char(83,105,100,101,98,97,114), string.char(67,97,114,100), string.char(69,108,101,109,101,110,116), string.char(84,101,120,116) } do
		_llI0IIIOIlOIl.Pickers[_l0OOOOI0l0] = _0OlO0llIOOIlO:AddColorPicker({
			Name = _l0OOOOI0l0, Default = _ll0I00OO[_l0OOOOI0l0],
			Callback = function(_ll0l00OI)
				_ll0I00OO[_l0OOOOI0l0] = _ll0l00OI
				if _l0OOOOI0l0 == string.char(65,99,99,101,110,116) then
					local _0lI0II0llO = (1570-1570).(9008-8709) * _ll0l00OI.R + (8579-8579).(5890-5303) * _ll0l00OI.G + (6450-6450).(9579-9465) * _ll0l00OI.B
					_ll0I00OO.OnAccent = _0lI0II0llO > (3869-3869).(9567-9512) and rgb((9301-9288), (6480-6467), (8637-8622)) or rgb((9337-9082), (8821-8566), (8199-7944))
				end
				_OOO0O0OO.Preset = string.char(67,117,115,116,111,109)
				_llI0IIIOIlOIl.Preset:Set(string.char(67,117,115,116,111,109), true)
				ApplyTheme(false)
			end,
		})
	end
	_0OlO0llIOOIlO:AddButton({ Name = string.char(82,101,115,101,116,32,84,104,101,109,101), Callback = function() _lOlOll0O:SetPreset(_OOIIlOOlI.DefaultPreset) end })

	
	local _l00O0lOO0l00 = _0OIOOOIOl000O:AddCard((219-217), string.char(67,111,110,102,105,103,115))
	local _0OIOOll0 = _l00O0lOO0l00:AddInput({ Name = string.char(67,111,110,102,105,103,32,78,97,109,101), Placeholder = string.char(109,121,45,99,111,110,102,105,103) })
	local _l000I0I0Il = _l00O0lOO0l00:AddDropdown({ Name = string.char(83,97,118,101,100), Options = _0lIl0IlOl.List() })
	local _I0IlOO00Olll = _l00O0lOO0l00:AddLabel("")

	local _OO0I0l0l00O()
		_I0IlOO00Olll:SetText((string.char(83,116,111,114,97,103,101,58,32,37,115,32,32,8226,32,32,65,117,116,111,108,111,97,100,58,32,37,115)):_OOI000llI(_0lIl0IlOl.Backend, _0lIl0IlOl.GetAutoload() or string.char(110,111,110,101)))
	end
	local _0lO0IlOllIlI(select)
		_l000I0I0Il:SetOptions(_0lIl0IlOl.List())
		if select then _l000I0I0Il:Set(select, true) end
		refreshInfo()
	end
	local _ll0IOOlII0l0()
		local _l0I0IIO00 = _0lIl0IlOl.Sanitize(_0OIOOll0:Get())
		if _l0I0IIO00 == "" then _l0I0IIO00 = _l000I0I0Il:Get() end
		return _l0I0IIO00
	end

	_l00O0lOO0l00:AddButtons({
		{ Name = string.char(83,97,118,101), Callback = function()
			local _l0I0IIO00 = _I000Ol00II()
			if not _l0I0IIO00 or _l0I0IIO00 == "" then return _lOlOll0O:Notify(string.char(67,111,110,102,105,103), string.char(69,110,116,101,114,32,97,32,99,111,110,102,105,103,32,110,97,109,101,32,102,105,114,115,116,46), (8465-8462), true) end
			local _O0OlIIOO, _Ol0IOOO0OlI = _0lIl0IlOl.Save(_l0I0IIO00)
			if _O0OlIIOO then
				refreshList(_l0I0IIO00)
				_lOlOll0O:Notify(string.char(67,111,110,102,105,103,32,115,97,118,101,100), _l0I0IIO00, (7008-7005), true)
			else
				_lOlOll0O:Notify(string.char(83,97,118,101,32,102,97,105,108,101,100), tostring(_Ol0IOOO0OlI), (4821-4817), true)
			end
		end },
		{ Name = string.char(76,111,97,100), Callback = function()
			local _l0I0IIO00 = _l000I0I0Il:Get()
			if not _l0I0IIO00 then return _lOlOll0O:Notify(string.char(67,111,110,102,105,103), string.char(83,101,108,101,99,116,32,97,32,99,111,110,102,105,103,32,102,105,114,115,116,46), (4774-4771), true) end
			local _O0OlIIOO, _Ol0IOOO0OlI = _0lIl0IlOl.Load(_l0I0IIO00)
			_lOlOll0O:Notify(_O0OlIIOO and string.char(67,111,110,102,105,103,32,108,111,97,100,101,100) or string.char(76,111,97,100,32,102,97,105,108,101,100), _O0OlIIOO and _l0I0IIO00 or tostring(_Ol0IOOO0OlI), (7647-7644), true)
		end },
	})
	_l00O0lOO0l00:AddButtons({
		{ Name = string.char(68,101,108,101,116,101), Callback = function()
			local _l0I0IIO00 = _l000I0I0Il:Get()
			if not _l0I0IIO00 then return _lOlOll0O:Notify(string.char(67,111,110,102,105,103), string.char(83,101,108,101,99,116,32,97,32,99,111,110,102,105,103,32,102,105,114,115,116,46), (3144-3141), true) end
			_0lIl0IlOl.Delete(_l0I0IIO00)
			if _0lIl0IlOl.GetAutoload() == _l0I0IIO00 then _0lIl0IlOl.SetAutoload(nil) end
			_l000I0I0Il:Set(nil, true)
			refreshList()
			_lOlOll0O:Notify(string.char(67,111,110,102,105,103,32,100,101,108,101,116,101,100), _l0I0IIO00, (2908-2905), true)
		end },
		{ Name = string.char(82,101,102,114,101,115,104), Callback = function() refreshList() end },
	})
	_l00O0lOO0l00:AddButtons({
		{ Name = string.char(83,101,116,32,65,117,116,111,108,111,97,100), Callback = function()
			local _l0I0IIO00 = _l000I0I0Il:Get()
			if not _l0I0IIO00 then return _lOlOll0O:Notify(string.char(67,111,110,102,105,103), string.char(83,101,108,101,99,116,32,97,32,99,111,110,102,105,103,32,102,105,114,115,116,46), (2239-2236), true) end
			_0lIl0IlOl.SetAutoload(_l0I0IIO00)
			refreshInfo()
			_lOlOll0O:Notify(string.char(65,117,116,111,108,111,97,100,32,115,101,116), _l0I0IIO00, (2153-2150), true)
		end },
		{ Name = string.char(67,108,101,97,114,32,65,117,116,111,108,111,97,100), Callback = function()
			_0lIl0IlOl.SetAutoload(nil)
			refreshInfo()
			_lOlOll0O:Notify(string.char(65,117,116,111,108,111,97,100,32,99,108,101,97,114,101,100), string.char(78,111,32,99,111,110,102,105,103,32,119,105,108,108,32,108,111,97,100,32,111,110,32,115,116,97,114,116,46), (9442-9439), true)
		end },
	})
	refreshInfo()

	
	local _0IO0IOIllOII = _0OIOOOIOl000O:AddCard((1854-1852), string.char(83,104,97,114,101))
	local _I0IIOO00 = _0IO0IOIllOII:AddInput({ Name = string.char(67,111,110,102,105,103,32,74,83,79,78), Placeholder = string.char(112,97,115,116,101,32,104,101,114,101) })
	_0IO0IOIllOII:AddButtons({
		{ Name = string.char(69,120,112,111,114,116), Callback = function()
			local _IOlIOOO0OO = _0lIl0IlOl.Encode()
			if type(setclipboard) == string.char(102,117,110,99,116,105,111,110) then
				setclipboard(_IOlIOOO0OO)
				_lOlOll0O:Notify(string.char(69,120,112,111,114,116,101,100), string.char(67,111,110,102,105,103,32,99,111,112,105,101,100,32,116,111,32,99,108,105,112,98,111,97,114,100,46), (7073-7070), true)
			else
				_I0IIOO00:Set(_IOlIOOO0OO, true)
				_lOlOll0O:Notify(string.char(69,120,112,111,114,116,101,100), string.char(74,83,79,78,32,112,108,97,99,101,100,32,105,110,32,116,104,101,32,98,111,120,44,32,99,111,112,121,32,105,116,32,102,114,111,109,32,116,104,101,114,101,46), (9255-9251), true)
			end
		end },
		{ Name = string.char(73,109,112,111,114,116), Callback = function()
			local _0IIO00lII = _0lIl0IlOl.Decode(_I0IIOO00:Get())
			if _0IIO00lII and _0lIl0IlOl.Apply(_0IIO00lII) then
				_lOlOll0O:Notify(string.char(73,109,112,111,114,116,101,100), string.char(67,111,110,102,105,103,32,97,112,112,108,105,101,100,46), (2479-2476), true)
			else
				_lOlOll0O:Notify(string.char(73,109,112,111,114,116,32,102,97,105,108,101,100), string.char(84,104,97,116,32,74,83,79,78,32,105,115,32,110,111,116,32,97,32,118,97,108,105,100,32,99,111,110,102,105,103,46), (4189-4185), true)
			end
		end },
	})
end


local _0IlIlI0O = _lOlOll0O:AddTab(string.char(77,111,118,101,109,101,110,116,115))
do
	local _0Ill0l0lll = _0IlIlI0O:AddCard((7913-7912), string.char(77,111,118,101,109,101,110,116,115))
	_0Ill0l0lll:AddLabel(string.char(78,111,32,109,111,118,101,109,101,110,116,32,102,101,97,116,117,114,101,115,32,121,101,116,46))
end












do
	local _0IOO0IIIlO = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
	local _0OOIIlO0I0OI = Color3.new((9791-9790), (9648-9647), (5762-5761))

	local _lIOOlOIllll0 = {
		
		Enabled = false,

		
		Box = false,
		Fill = false,
		Name = false,
		Skeleton = false,
		Health = false,
		Distance = false,
		Tracer = false,
		Chams = false,

		
		NameMode = string.char(85,115,101,114,110,97,109,101), 
		FillTransparency = (9194-9194).(6025-5960),
		Speed = (1155-1154),
		BoneThickness = (8815-8814).(2823-2818),
		NameColor = _0OOIIlO0I0OI,
		BoneColor = _0OOIIlO0I0OI,
		TracerColor = _0OOIIlO0I0OI,
		TracerFrom = string.char(66,111,116,116,111,109), 
		ChamsFill = Color3.fromRGB((1799-1544), (4267-4182), (6984-6864)),
		ChamsOutline = _0OOIIlO0I0OI,
		ChamsTransparency = (2013-2013).(3912-3907),
		TeamCheck = false,
		MaxDistance = (5909-3909),
		BoxColors = { Color3.fromRGB((9161-8906), (4000-3915), (2015-1895)), Color3.fromRGB((3471-3331), (5543-5453), (588-333)), Color3.fromRGB((7191-7111), (1623-1423), (1958-1703)) },
		FillColors = { Color3.fromRGB((2219-1964), (6984-6899), (5548-5428)), Color3.fromRGB((3688-3548), (142-52), (6365-6110)), Color3.fromRGB((7070-6990), (6217-6017), (6945-6690)) },

		
		Version = (4066-4066),
		Objects = {},   
		Tracked = {},   
		_lIl0l000I = {},
		Drawing = false,
		SweepAt = (8-8),
	}

	
	local _lO0II0OOl0(_I0lI0OO0l0, _0lI00OOIOlOOl, _llO0IlOIlll)
		local _OI0I0IIO00 = Instance.new(_I0lI0OO0l0)
		for _lI0IlIOlIO0, _OO0Ill00O in _0lI00OOIOlOOl do
			_OI0I0IIO00[_lI0IlIOlIO0] = _OO0Ill00O
		end
		_OI0I0IIO00.Parent = _llO0IlOIlll
		return _OI0I0IIO00
	end

	local _I00lOllII(_0lO0l0II, _Il0IO0I0l00I0)
		table.insert(_lIOOlOIllll0._lIl0l000I, _0lO0l0II:Connect(_Il0IO0I0l00I0))
	end

	
	local _ll0l00OlI0l(_Illl0IIOIlI0O)
		return ColorSequence.new({
			ColorSequenceKeypoint.new((4399-4399), _Illl0IIOIlI0O[(5085-5084)]),
			ColorSequenceKeypoint.new((554-553) / (6950-6947), _Illl0IIOIlI0O[(2011-2009)]),
			ColorSequenceKeypoint.new((7473-7471) / (6933-6930), _Illl0IIOIlI0O[(1293-1290)]),
			ColorSequenceKeypoint.new((6455-6454), _Illl0IIOIlI0O[(2885-2884)]),
		})
	end

	
	
	local _0lOOlIOIlOI(_IIO0I0OO, _OlllIIlIlI0l, _0OlOIllOI, _0lIIIOO0l)
		return { { _IIO0I0OO, _OlllIIlIlI0l }, { _0OlOIllOI, _0lIIIOO0l } }
	end

	local _0O0IO0lO0lO00 = {
		Bone(string.char(72,101,97,100), (1077-1077), string.char(85,112,112,101,114,84,111,114,115,111), (4687-4687)), Bone(string.char(85,112,112,101,114,84,111,114,115,111), (7216-7216), string.char(76,111,119,101,114,84,111,114,115,111), (5503-5503)),
		Bone(string.char(85,112,112,101,114,84,111,114,115,111), (8261-8261), string.char(76,101,102,116,85,112,112,101,114,65,114,109), (5816-5816)), Bone(string.char(76,101,102,116,85,112,112,101,114,65,114,109), (2338-2338), string.char(76,101,102,116,76,111,119,101,114,65,114,109), (7665-7665)), Bone(string.char(76,101,102,116,76,111,119,101,114,65,114,109), (1825-1825), string.char(76,101,102,116,72,97,110,100), (3034-3034)),
		Bone(string.char(85,112,112,101,114,84,111,114,115,111), (6348-6348), string.char(82,105,103,104,116,85,112,112,101,114,65,114,109), (3848-3848)), Bone(string.char(82,105,103,104,116,85,112,112,101,114,65,114,109), (3418-3418), string.char(82,105,103,104,116,76,111,119,101,114,65,114,109), (1767-1767)), Bone(string.char(82,105,103,104,116,76,111,119,101,114,65,114,109), (8312-8312), string.char(82,105,103,104,116,72,97,110,100), (4228-4228)),
		Bone(string.char(76,111,119,101,114,84,111,114,115,111), (895-895), string.char(76,101,102,116,85,112,112,101,114,76,101,103), (5997-5997)), Bone(string.char(76,101,102,116,85,112,112,101,114,76,101,103), (5111-5111), string.char(76,101,102,116,76,111,119,101,114,76,101,103), (7985-7985)), Bone(string.char(76,101,102,116,76,111,119,101,114,76,101,103), (5694-5694), string.char(76,101,102,116,70,111,111,116), (1946-1946)),
		Bone(string.char(76,111,119,101,114,84,111,114,115,111), (4553-4553), string.char(82,105,103,104,116,85,112,112,101,114,76,101,103), (7081-7081)), Bone(string.char(82,105,103,104,116,85,112,112,101,114,76,101,103), (9105-9105), string.char(82,105,103,104,116,76,111,119,101,114,76,101,103), (126-126)), Bone(string.char(82,105,103,104,116,76,111,119,101,114,76,101,103), (8480-8480), string.char(82,105,103,104,116,70,111,111,116), (8964-8964)),
	}
	local _0OOl0lI0I = {
		Bone(string.char(72,101,97,100), (8766-8766), string.char(84,111,114,115,111), (4592-4591)), Bone(string.char(84,111,114,115,111), (75-74), string.char(84,111,114,115,111), -(3764-3763)),
		Bone(string.char(84,111,114,115,111), (3513-3512), string.char(76,101,102,116,32,65,114,109), (9317-9316)), Bone(string.char(76,101,102,116,32,65,114,109), (6037-6036), string.char(76,101,102,116,32,65,114,109), -(1429-1428)),
		Bone(string.char(84,111,114,115,111), (7272-7271), string.char(82,105,103,104,116,32,65,114,109), (1409-1408)), Bone(string.char(82,105,103,104,116,32,65,114,109), (7993-7992), string.char(82,105,103,104,116,32,65,114,109), -(3700-3699)),
		Bone(string.char(84,111,114,115,111), -(2299-2298), string.char(76,101,102,116,32,76,101,103), (2247-2246)), Bone(string.char(76,101,102,116,32,76,101,103), (7536-7535), string.char(76,101,102,116,32,76,101,103), -(6899-6898)),
		Bone(string.char(84,111,114,115,111), -(4064-4063), string.char(82,105,103,104,116,32,76,101,103), (5453-5452)), Bone(string.char(82,105,103,104,116,32,76,101,103), (9829-9828), string.char(82,105,103,104,116,32,76,101,103), -(1955-1954)),
	}

	local _l0OOIIIl0(_Il00ll0llOOIl, _I00O0OOIllO)
		local _l0IllIlIOlI = _Il00ll0llOOIl:FindFirstChild(_I00O0OOIllO[(9538-9537)])
		if _l0IllIlIOlI and _l0IllIlIOlI:IsA(string.char(66,97,115,101,80,97,114,116)) then
			return _l0IllIlIOlI.CFrame:PointToWorldSpace(Vector3.new((7406-7406), _l0IllIlIOlI.Size.Y / (3637-3635) * _I00O0OOIllO[(8484-8482)], (5805-5805)))
		end
		return nil
	end

	
	_lIOOlOIllll0._l0Il0II0l0lI0 = Make(string.char(83,99,114,101,101,110,71,117,105), {
		Name = string.char(80,114,101,115,116,105,103,101,69,83,80),
		ResetOnSpawn = false,
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = (6907-6906),
	}, _0l0lI0OO:WaitForChild(string.char(80,108,97,121,101,114,71,117,105)))

	function _lIOOlOIllll0:Refresh()
		self.BoxSequence = Sequence(self.BoxColors)
		self.FillSequence = Sequence(self.FillColors)
		self.Version += (9660-9659)
	end

	
	
	function _lIOOlOIllll0:Create(_Ol0O0Ol0III0)
		if self.Objects[_Ol0O0Ol0III0] then
			self:Remove(_Ol0O0Ol0III0)
		end

		local _lOIlOO0lOIII = Make(string.char(70,114,97,109,101), { BackgroundTransparency = (2445-2444), BorderSizePixel = (2553-2553), Visible = false, ZIndex = (6625-6623) }, self._l0Il0II0l0lI0)
		local _0OlIlllIl = Make(string.char(85,73,83,116,114,111,107,101), {
			Color = _0OOIIlO0I0OI, Thickness = (9575-9574).(7778-7773), ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
		}, _lOIlOO0lOIII)
		local _00I00OOO = Make(string.char(70,114,97,109,101), {
			Size = UDim2.fromScale((8191-8190), (8535-8534)), BackgroundColor3 = _0OOIIlO0I0OI, BorderSizePixel = (5848-5848), Visible = false,
		}, _lOIlOO0lOIII)

		local _IlIOllOIOI0Il = Make(string.char(70,114,97,109,101), {
			BackgroundColor3 = Color3.new((7131-7131), (5309-5309), (4857-4857)), BackgroundTransparency = (9928-9928).(9394-9359), BorderSizePixel = (9683-9683), Visible = false, ZIndex = (1452-1449),
		}, self._l0Il0II0l0lI0)
		local _0Il0lO0OOI = Make(string.char(70,114,97,109,101), {
			AnchorPoint = Vector2.new((9987-9987), (6975-6974)), Position = UDim2.fromScale((3460-3460), (6604-6603)), Size = UDim2.fromScale((1952-1951), (6101-6100)),
			BackgroundColor3 = Color3.fromRGB((3365-3285), (9469-9214), (7083-6963)), BorderSizePixel = (4237-4237), ZIndex = (1339-1335),
		}, _IlIOllOIOI0Il)

		local _lIll0II0Il = {
			Player = _Ol0O0Ol0III0,
			Version = -(3012-3011),
			Box = _lOIlOO0lOIII,
			Fill = _00I00OOO,
			StrokeGradient = Make(string.char(85,73,71,114,97,100,105,101,110,116), {}, _0OlIlllIl),
			FillGradient = Make(string.char(85,73,71,114,97,100,105,101,110,116), {}, _00I00OOO),
			HealthBack = _IlIOllOIOI0Il,
			HealthFill = _0Il0lO0OOI,
			Tag = Make(string.char(84,101,120,116,76,97,98,101,108), {
				Size = UDim2.fromOffset((9390-9170), (8569-8553)),
				AnchorPoint = Vector2.new((6777-6777).(3635-3630), (5146-5145)),
				BackgroundTransparency = (8389-8388),
				Font = Enum.Font.GothamBold,
				TextSize = (5501-5488),
				TextColor3 = _0OOIIlO0I0OI,
				TextStrokeTransparency = (9414-9414).(6631-6627),
				Visible = false,
				ZIndex = (7817-7813),
			}, self._l0Il0II0l0lI0),
			Dist = Make(string.char(84,101,120,116,76,97,98,101,108), {
				Size = UDim2.fromOffset((617-497), (6049-6035)),
				AnchorPoint = Vector2.new((9788-9788).(6407-6402), (4900-4900)),
				BackgroundTransparency = (9362-9361),
				Font = Enum.Font.GothamMedium,
				TextSize = (5839-5827),
				TextColor3 = _0OOIIlO0I0OI,
				TextStrokeTransparency = (7498-7498).(8434-8430),
				Visible = false,
				ZIndex = (8113-8109),
			}, self._l0Il0II0l0lI0),
			Tracer = Make(string.char(70,114,97,109,101), {
				AnchorPoint = Vector2.new((1039-1039).(346-341), (7901-7901).(6648-6643)), BackgroundColor3 = _0OOIIlO0I0OI, BorderSizePixel = (7147-7147), Visible = false, ZIndex = (7911-7909),
			}, self._l0Il0II0l0lI0),
			Highlight = Make(string.char(72,105,103,104,108,105,103,104,116), {
				Enabled = false, DepthMode = Enum.HighlightDepthMode.AlwaysOnTop,
			}, self._l0Il0II0l0lI0),
			Bones = {},
		}
		for _0lOOI000l0 = (4372-4371), #_0O0IO0lO0lO00 do
			_lIll0II0Il.Bones[_0lOOI000l0] = Make(string.char(70,114,97,109,101), {
				AnchorPoint = Vector2.new((60-60).(5267-5262), (9495-9495).(4373-4368)),
				BackgroundColor3 = _0OOIIlO0I0OI,
				BorderSizePixel = (9213-9213),
				Visible = false,
				ZIndex = (3360-3357),
			}, self._l0Il0II0l0lI0)
		end

		self.Objects[_Ol0O0Ol0III0] = _lIll0II0Il
	end

	function _lIOOlOIllll0:Remove(_Ol0O0Ol0III0)
		local _lIll0II0Il = self.Objects[_Ol0O0Ol0III0]
		if not _lIll0II0Il then
			return
		end
		_lIll0II0Il.Box:Destroy()
		_lIll0II0Il.Tag:Destroy()
		_lIll0II0Il.Dist:Destroy()
		_lIll0II0Il.Tracer:Destroy()
		_lIll0II0Il.HealthBack:Destroy()
		_lIll0II0Il.Highlight:Destroy()
		for _00lO00l000I0O, bone in _lIll0II0Il.Bones do
			bone:Destroy()
		end
		self.Objects[_Ol0O0Ol0III0] = nil
	end

	function _lIOOlOIllll0:Hide(_lIll0II0Il)
		_lIll0II0Il.Box.Visible = false
		_lIll0II0Il.Tag.Visible = false
		_lIll0II0Il.Dist.Visible = false
		_lIll0II0Il.Tracer.Visible = false
		_lIll0II0Il.HealthBack.Visible = false
		_lIll0II0Il.Highlight.Enabled = false
		for _00lO00l000I0O, bone in _lIll0II0Il.Bones do
			bone.Visible = false
		end
	end

	
	function _lIOOlOIllll0:Track(_Ol0O0Ol0III0)
		if _Ol0O0Ol0III0 == _0l0lI0OO or self.Tracked[_Ol0O0Ol0III0] then
			return
		end
		local _l00IllO0lI = {}
		self.Tracked[_Ol0O0Ol0III0] = _l00IllO0lI
		self:Create(_Ol0O0Ol0III0)

		
		local _OOOlIOIl0(_Il00ll0llOOIl)
			local _OOO000IOIlll = _Il00ll0llOOIl:WaitForChild(string.char(72,117,109,97,110,111,105,100), (908-898))
			if _OOO000IOIlll and self.Tracked[_Ol0O0Ol0III0] == _l00IllO0lI then
				table.insert(_l00IllO0lI, _OOO000IOIlll.Died:Connect(function()
					local _OllOO0llO = self.Objects[_Ol0O0Ol0III0]
					if _OllOO0llO then self:Hide(_OllOO0llO) end
				end))
			end
		end

		table.insert(_l00IllO0lI, _Ol0O0Ol0III0.CharacterRemoving:Connect(function()
			local _OllOO0llO = self.Objects[_Ol0O0Ol0III0]
			if _OllOO0llO then self:Hide(_OllOO0llO) end
		end))

		
		table.insert(_l00IllO0lI, _Ol0O0Ol0III0.CharacterAdded:Connect(function(_Il00ll0llOOIl)
			if self.Tracked[_Ol0O0Ol0III0] ~= _l00IllO0lI then
				return
			end
			self:Create(_Ol0O0Ol0III0)
			task.spawn(hookHumanoid, _Il00ll0llOOIl)
		end))

		if _Ol0O0Ol0III0.Character then
			task.spawn(hookHumanoid, _Ol0O0Ol0III0.Character)
		end
	end

	
	function _lIOOlOIllll0:Untrack(_Ol0O0Ol0III0)
		local _l00IllO0lI = self.Tracked[_Ol0O0Ol0III0]
		if _l00IllO0lI then
			for _00lO00l000I0O, _IOI0IOlIOO0 in _l00IllO0lI do
				_IOI0IOlIOO0:Disconnect()
			end
			self.Tracked[_Ol0O0Ol0III0] = nil
		end
		self:Remove(_Ol0O0Ol0III0)
	end

	
	function _lIOOlOIllll0:RefreshAll()
		local _O0IIIOO0 = {}
		for _Ol0O0Ol0III0 in self.Tracked do
			table.insert(_O0IIIOO0, _Ol0O0Ol0III0)
		end
		for _00lO00l000I0O, _Ol0O0Ol0III0 in _O0IIIOO0 do
			if _Ol0O0Ol0III0.Parent then
				self:Create(_Ol0O0Ol0III0)
			else
				self:Untrack(_Ol0O0Ol0III0)
			end
		end
		for _00lO00l000I0O, _Ol0O0Ol0III0 in _IlIlIOOl0I0O:GetPlayers() do
			self:Track(_Ol0O0Ol0III0) 
		end
	end

	
	function _lIOOlOIllll0:Sweep()
		for _Ol0O0Ol0III0 in self.Tracked do
			if not _Ol0O0Ol0III0.Parent then
				self:Untrack(_Ol0O0Ol0III0)
			end
		end
		for _00lO00l000I0O, _Ol0O0Ol0III0 in _IlIlIOOl0I0O:GetPlayers() do
			if _Ol0O0Ol0III0 ~= _0l0lI0OO and not self.Tracked[_Ol0O0Ol0III0] then
				self:Track(_Ol0O0Ol0III0)
			end
		end
		local _IIlllO0O = {}
		for _00lO00l000I0O, _lIll0II0Il in self.Objects do
			_IIlllO0O[_lIll0II0Il.Box], _IIlllO0O[_lIll0II0Il.Tag], _IIlllO0O[_lIll0II0Il.Dist], _IIlllO0O[_lIll0II0Il.Tracer] = true, true, true, true
			_IIlllO0O[_lIll0II0Il.HealthBack], _IIlllO0O[_lIll0II0Il.Highlight] = true, true
			for _00lO00l000I0O, bone in _lIll0II0Il.Bones do
				_IIlllO0O[bone] = true
			end
		end
		for _00lO00l000I0O, _0lIOll00I in self._l0Il0II0l0lI0:GetChildren() do
			if not _IIlllO0O[_0lIOll00I] then
				_0lIOll00I:Destroy()
			end
		end
	end

	
	function _lIOOlOIllll0:Sync(_lIll0II0Il)
		_lIll0II0Il.Version = self.Version
		_lIll0II0Il.StrokeGradient.Color = self.BoxSequence
		_lIll0II0Il.FillGradient.Color = self.FillSequence
		_lIll0II0Il.Fill.BackgroundTransparency = self.FillTransparency
		_lIll0II0Il.Tag.TextColor3 = self.NameColor
		_lIll0II0Il.Dist.TextColor3 = self.NameColor
		_lIll0II0Il.Tracer.BackgroundColor3 = self.TracerColor
		_lIll0II0Il.Highlight.FillColor = self.ChamsFill
		_lIll0II0Il.Highlight.OutlineColor = self.ChamsOutline
		_lIll0II0Il.Highlight.FillTransparency = self.ChamsTransparency
		for _00lO00l000I0O, bone in _lIll0II0Il.Bones do
			bone.BackgroundColor3 = self.BoneColor
		end
	end

	
	
	
	function _lIOOlOIllll0:Geometry(_OOIOOlOII, _0l0lIIOllI0lI)
		local _llII0l0IlI = _OOIOOlOII.Size.Y / (7088-7086)
		local _O0llI0I0l = _0l0lIIOllI0lI:WorldToViewportPoint(_OOIOOlOII.Position + Vector3.new((7844-7844), (4045-4043).(3117-3109) * _llII0l0IlI, (2153-2153)))
		local _lII0IOOlO = _0l0lIIOllI0lI:WorldToViewportPoint(_OOIOOlOII.Position - Vector3.new((2092-2092), (9159-9156).(9503-9502) * _llII0l0IlI, (269-269)))
		if _O0llI0I0l.Z <= (8256-8256) or _lII0IOOlO.Z <= (5044-5044) then
			return nil
		end
		local _lll0l0I0ll = math.abs(_lII0IOOlO.Y - _O0llI0I0l.Y)
		return _O0llI0I0l.X, math._0lIOll00O(_O0llI0I0l.Y, _lII0IOOlO.Y), _lll0l0I0ll * (1675-1675).(4983-4928), _lll0l0I0ll
	end

	function _lIOOlOIllll0:DrawBox(_lIll0II0Il, _OllIO0IlOOl0I, _0lII0000, _lll0IIlI, _lOI0OOOOIIO, _IOOIIOllI0l)
		local _I0lOI0I0OI0O = self.Box and _OllIO0IlOOl0I ~= nil
		if _I0lOI0I0OI0O then
			_lIll0II0Il.Box.Position = UDim2.fromOffset(_OllIO0IlOOl0I - _lll0IIlI / (4310-4308), _0lII0000)
			_lIll0II0Il.Box.Size = UDim2.fromOffset(_lll0IIlI, _lOI0OOOOIIO)
			local _l0l00lOlIOI = (_IOOIIOllI0l * self.Speed * (6616-6526)) % (8359-7999)
			_lIll0II0Il.StrokeGradient.Rotation = _l0l00lOlIOI
			_lIll0II0Il.FillGradient.Rotation = (3354-2994) - _l0l00lOlIOI
		end
		_lIll0II0Il.Box.Visible = _I0lOI0I0OI0O
		_lIll0II0Il.Fill.Visible = _I0lOI0I0OI0O and self.Fill
	end

	function _lIOOlOIllll0:DrawHealth(_lIll0II0Il, _OOO000IOIlll, _OllIO0IlOOl0I, _0lII0000, _lll0IIlI, _lOI0OOOOIIO)
		local _I0lOI0I0OI0O = self.Health and _OllIO0IlOOl0I ~= nil
		if _I0lOI0I0OI0O then
			local _IlOI00I0 = math.clamp(_OOO000IOIlll.Health / math._IIIOlI00II0OO(_OOO000IOIlll.MaxHealth, (4166-4165)), (8386-8386), (553-552))
			_lIll0II0Il.HealthBack.Position = UDim2.fromOffset(_OllIO0IlOOl0I - _lll0IIlI / (863-861) - (8330-8324), _0lII0000)
			_lIll0II0Il.HealthBack.Size = UDim2.fromOffset((848-845), _lOI0OOOOIIO)
			_lIll0II0Il.HealthFill.Size = UDim2.fromScale((8861-8860), _IlOI00I0)
			_lIll0II0Il.HealthFill.BackgroundColor3 = Color3.fromHSV(_IlOI00I0 * (6054-6054).(5191-5158), (5966-5966).(9309-9300), (9046-9045))
		end
		_lIll0II0Il.HealthBack.Visible = _I0lOI0I0OI0O
	end

	function _lIOOlOIllll0:DrawDistance(_lIll0II0Il, _lOIIIl0Il00l, _OllIO0IlOOl0I, _0lII0000, _lOI0OOOOIIO)
		local _I0lOI0I0OI0O = self.Distance and _OllIO0IlOOl0I ~= nil
		if _I0lOI0I0OI0O then
			_lIll0II0Il.Dist.Position = UDim2.fromOffset(_OllIO0IlOOl0I, _0lII0000 + _lOI0OOOOIIO + (7586-7584))
			_lIll0II0Il.Dist.Text = (string.char(91,37,100,93)):_OOI000llI(math.floor(_lOIIIl0Il00l))
		end
		_lIll0II0Il.Dist.Visible = _I0lOI0I0OI0O
	end

	function _lIOOlOIllll0:DrawTag(_lIll0II0Il, _Il00ll0llOOIl, _0l0lIIOllI0lI)
		local _I0lOI0I0OI0O = false
		local _l00lI0ll = self.Name and _Il00ll0llOOIl:FindFirstChild(string.char(72,101,97,100))
		if _l00lI0ll and _l00lI0ll:IsA(string.char(66,97,115,101,80,97,114,116)) then
			local _OIlI0IIOl = _0l0lIIOllI0lI:WorldToViewportPoint(_l00lI0ll.Position + Vector3.new((2194-2194), _l00lI0ll.Size.Y / (6018-6016) + (8215-8215).(5386-5379), (3260-3260)))
			if _OIlI0IIOl.Z > (1770-1770) then
				_I0lOI0I0OI0O = true
				_lIll0II0Il.Tag.Position = UDim2.fromOffset(_OIlI0IIOl.X, _OIlI0IIOl.Y)
				_lIll0II0Il.Tag.Text = self.NameMode == string.char(68,105,115,112,108,97,121,32,78,97,109,101) and _lIll0II0Il.Player.DisplayName or _lIll0II0Il.Player.Name
			end
		end
		_lIll0II0Il.Tag.Visible = _I0lOI0I0OI0O
	end

	function _lIOOlOIllll0:DrawTracer(_lIll0II0Il, _OllIO0IlOOl0I, _0lII0000, _lOI0OOOOIIO, _0l0lIIOllI0lI)
		local _I0lOI0I0OI0O = self.Tracer and _OllIO0IlOOl0I ~= nil
		if _I0lOI0I0OI0O then
			local _IIIlOO00Ol = _0l0lIIOllI0lI.ViewportSize
			local _OIlIlO00O0l.TracerFrom == string.char(67,101,110,116,101,114) then
				from = Vector2.new(_IIIlOO00Ol.X / (7995-7993), _IIIlOO00Ol.Y / (8539-8537))
			elseif self.TracerFrom == string.char(77,111,117,115,101) then
				from = _lOIlIlIllllOO:GetMouseLocation()
			else
				from = Vector2.new(_IIIlOO00Ol.X / (4557-4555), _IIIlOO00Ol.Y)
			end
			local _0O0OIOOOO = Vector2.new(_OllIO0IlOOl0I, _0lII0000 + _lOI0OOOOIIO)
			local _000lOll0I00 = _0O0OIOOOO - from
			_lIll0II0Il.Tracer.Size = UDim2.fromOffset(_000lOll0I00.Magnitude, (3378-3377).(8773-8768))
			_lIll0II0Il.Tracer.Position = UDim2.fromOffset((from.X + _0O0OIOOOO.X) / (353-351), (from.Y + _0O0OIOOOO.Y) / (9841-9839))
			_lIll0II0Il.Tracer.Rotation = math.deg(math.atan2(_000lOll0I00.Y, _000lOll0I00.X))
		end
		_lIll0II0Il.Tracer.Visible = _I0lOI0I0OI0O
	end

	function _lIOOlOIllll0:DrawSkeleton(_lIll0II0Il, _Il00ll0llOOIl, _0l0lIIOllI0lI)
		local _OllII00l0llI = self.Skeleton and (_Il00ll0llOOIl:FindFirstChild(string.char(85,112,112,101,114,84,111,114,115,111)) and _0O0IO0lO0lO00 or _0OOl0lI0I) or {}
		for _0lOOI000l0, bone in _lIll0II0Il.Bones do
			local _I0lOI0I0OI0O = false
			local _IOI0IOlIOO0 = _OllII00l0llI[_0lOOI000l0]
			if _IOI0IOlIOO0 then
				local _IIO0I0OO, _0OlOIllOI = PartPoint(_Il00ll0llOOIl, _IOI0IOlIOO0[(1450-1449)]), PartPoint(_Il00ll0llOOIl, _IOI0IOlIOO0[(7376-7374)])
				if _IIO0I0OO and _0OlOIllOI then 
					local _ll0IlO0II00I, _IlIO0I0lI00 = _0l0lIIOllI0lI:WorldToViewportPoint(_IIO0I0OO), _0l0lIIOllI0lI:WorldToViewportPoint(_0OlOIllOI)
					if _ll0IlO0II00I.Z > (4965-4965) and _IlIO0I0lI00.Z > (1782-1782) then
						local _OllOIllll, _lI0IlllIII0 = _IlIO0I0lI00.X - _ll0IlO0II00I.X, _IlIO0I0lI00.Y - _ll0IlO0II00I.Y
						bone.Size = UDim2.fromOffset(math.sqrt(_OllOIllll * _OllOIllll + _lI0IlllIII0 * _lI0IlllIII0), self.BoneThickness)
						bone.Position = UDim2.fromOffset((_ll0IlO0II00I.X + _IlIO0I0lI00.X) / (8990-8988), (_ll0IlO0II00I.Y + _IlIO0I0lI00.Y) / (9606-9604))
						bone.Rotation = math.deg(math.atan2(_lI0IlllIII0, _OllOIllll))
						_I0lOI0I0OI0O = true
					end
				end
			end
			bone.Visible = _I0lOI0I0OI0O
		end
	end

	function _lIOOlOIllll0:DrawChams(_lIll0II0Il, _Il00ll0llOOIl)
		if _lIll0II0Il.Highlight.Adornee ~= _Il00ll0llOOIl then
			_lIll0II0Il.Highlight.Adornee = _Il00ll0llOOIl
		end
		_lIll0II0Il.Highlight.Enabled = self.Chams
	end

	function _lIOOlOIllll0:Update(_lIll0II0Il, _0l0lIIOllI0lI, _IOOIIOllI0l)
		local _Ol0O0Ol0III0 = _lIll0II0Il.Player
		local _Il00ll0llOOIl = _Ol0O0Ol0III0.Character
		local _OOO000IOIlll = _Il00ll0llOOIl and _Il00ll0llOOIl.Parent and _Il00ll0llOOIl:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100))
		local _OOIOOlOII = _Il00ll0llOOIl and _Il00ll0llOOIl:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
		if not (_OOO000IOIlll and _OOO000IOIlll.Health > (977-977) and _OOIOOlOII) then
			self:Hide(_lIll0II0Il)
			return
		end
		if self.TeamCheck and _Ol0O0Ol0III0.Team ~= nil and _Ol0O0Ol0III0.Team == _0l0lI0OO.Team then
			self:Hide(_lIll0II0Il)
			return
		end
		if _OlO00O0lOl._lIOOlOIllll0 and _OlO00O0lOl.Selected ~= _Ol0O0Ol0III0 then
			self:Hide(_lIll0II0Il)
			return
		end
		local _lOIIIl0Il00l = (_0l0lIIOllI0lI.CFrame.Position - _OOIOOlOII.Position).Magnitude
		if _lOIIIl0Il00l > self.MaxDistance then
			self:Hide(_lIll0II0Il)
			return
		end
		if _lIll0II0Il.Version ~= self.Version then
			self:Sync(_lIll0II0Il)
		end
		local _OllIO0IlOOl0I, _0lII0000, _lll0IIlI, _lOI0OOOOIIO = self:Geometry(_OOIOOlOII, _0l0lIIOllI0lI)
		self:DrawBox(_lIll0II0Il, _OllIO0IlOOl0I, _0lII0000, _lll0IIlI, _lOI0OOOOIIO, _IOOIIOllI0l)
		self:DrawHealth(_lIll0II0Il, _OOO000IOIlll, _OllIO0IlOOl0I, _0lII0000, _lll0IIlI, _lOI0OOOOIIO)
		self:DrawDistance(_lIll0II0Il, _lOIIIl0Il00l, _OllIO0IlOOl0I, _0lII0000, _lOI0OOOOIIO)
		self:DrawTag(_lIll0II0Il, _Il00ll0llOOIl, _0l0lIIOllI0lI)
		self:DrawTracer(_lIll0II0Il, _OllIO0IlOOl0I, _0lII0000, _lOI0OOOOIIO, _0l0lIIOllI0lI)
		self:DrawSkeleton(_lIll0II0Il, _Il00ll0llOOIl, _0l0lIIOllI0lI)
		self:DrawChams(_lIll0II0Il, _Il00ll0llOOIl)
	end

	function _lIOOlOIllll0:AnyOn()
		return self.Enabled and (self.Box or self.Name or self.Skeleton or self.Health or self.Distance or self.Tracer or self.Chams)
	end

	function _lIOOlOIllll0:Step()
		local _0l0lIIOllI0lI = workspace.CurrentCamera
		if not _0l0lIIOllI0lI then
			return
		end
		local _00lllOIO0 = os.clock()
		if _00lllOIO0 >= self.SweepAt then
			self.SweepAt = _00lllOIO0 + (4552-4551)
			self:Sweep()
		end
		if not self:AnyOn() then
			if self.Drawing then 
				for _00lO00l000I0O, _lIll0II0Il in self.Objects do
					self:Hide(_lIll0II0Il)
				end
				self.Drawing = false
			end
			return
		end
		self.Drawing = true
		local _IOOIIOllI0l = os.clock()
		for _00lO00l000I0O, _lIll0II0Il in self.Objects do
			self:Update(_lIll0II0Il, _0l0lIIOllI0lI, _IOOIIOllI0l)
		end
	end

	function _lIOOlOIllll0:Unload()
		for _00lO00l000I0O, connection in self._lIl0l000I do
			connection:Disconnect()
		end
		table.clear(self._lIl0l000I)
		local _O0IIIOO0 = {}
		for _Ol0O0Ol0III0 in self.Tracked do
			table.insert(_O0IIIOO0, _Ol0O0Ol0III0)
		end
		for _00lO00l000I0O, _Ol0O0Ol0III0 in _O0IIIOO0 do
			self:Untrack(_Ol0O0Ol0III0)
		end
		self._l0Il0II0l0lI0:Destroy()
	end

	
	_lIOOlOIllll0:Refresh()
	for _00lO00l000I0O, _Ol0O0Ol0III0 in _IlIlIOOl0I0O:GetPlayers() do
		_lIOOlOIllll0:Track(_Ol0O0Ol0III0)
	end
	Bind(_IlIlIOOl0I0O.PlayerAdded, function(_Ol0O0Ol0III0)
		_lIOOlOIllll0:Track(_Ol0O0Ol0III0) 
	end)
	Bind(_IlIlIOOl0I0O.PlayerRemoving, function(_Ol0O0Ol0III0)
		_lIOOlOIllll0:Untrack(_Ol0O0Ol0III0) 
	end)
	Bind(_0IOO0IIIlO.RenderStepped, function()
		_lIOOlOIllll0:Step()
	end)

	
	local _OIIllOl0lI = _lOlOll0O.Destroy
	function _lOlOll0O:Destroy()
		_lIOOlOIllll0:Unload()
		_OIIllOl0lI(self)
	end

	
	local worldTab
	for _00lO00l000I0O, _00IllOOI0I0 in _lOlOll0O.Tabs do
		if _00IllOOI0I0.Name == string.char(87,111,114,108,100) then
			worldTab = _00IllOOI0I0
			break
		end
	end
	worldTab = worldTab or _lOlOll0O:AddTab(string.char(87,111,114,108,100))

	local _0Ill0l0lll = worldTab:AddCard((748-747), string.char(77,97,105,110,32,69,115,112))
	local _lOII0O0ll000O = {}
	local _lOIIll00O, _lOOllIIIOOIIO, _l0ll0l0O, _OlIOIlllIOI, chamsSettings

	
	
	_0Ill0l0lll:AddToggle({
		Name = string.char(80,108,97,121,101,114,32,69,115,112), Flag = string.char(80,108,97,121,101,114,69,115,112),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Enabled = _OO0Ill00O end,
	})
	_0Ill0l0lll:AddLabel(string.char(84,117,114,110,32,80,108,97,121,101,114,32,69,115,112,32,111,110,44,32,116,104,101,110,32,115,119,105,116,99,104,32,111,110,32,111,110,108,121,32,119,104,97,116,32,121,111,117,32,119,97,110,116,32,98,101,108,111,119,46,32,82,105,103,104,116,45,99,108,105,99,107,32,66,111,120,32,47,32,78,97,109,101,32,84,97,103,32,47,32,83,107,101,108,101,116,111,110,32,47,32,84,114,97,99,101,114,115,32,47,32,67,104,97,109,115,32,102,111,114,32,116,104,101,105,114,32,115,101,116,116,105,110,103,115,46,32,69,83,80,32,114,101,102,114,101,115,104,101,115,32,98,121,32,105,116,115,101,108,102,32,111,110,32,100,101,97,116,104,44,32,114,101,115,112,97,119,110,44,32,106,111,105,110,44,32,108,101,97,118,101,32,97,110,100,32,114,101,106,111,105,110,46))

	
	_lOII0O0ll000O.Box = _0Ill0l0lll:AddToggle({
		Name = string.char(66,111,120,32,69,115,112), Flag = string.char(66,111,120,69,115,112),
		Colors = _lIOOlOIllll0.BoxColors, ColorFlags = { string.char(66,111,120,67,111,108,111,114,49), string.char(66,111,120,67,111,108,111,114,50), string.char(66,111,120,67,111,108,111,114,51) },
		OnColor = function(_0lOOI000l0, _ll0l00OI)
			_lIOOlOIllll0.BoxColors[_0lOOI000l0] = _ll0l00OI
			_lIOOlOIllll0:Refresh()
		end,
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Box = _OO0Ill00O end,
		OnRightClick = function() _lOIIll00O:Toggle() end,
	})
	_lOIIll00O = _0Ill0l0lll:AddSettings()
	_lOIIll00O:AddToggle({
		Name = string.char(70,105,108,108), Flag = string.char(66,111,120,70,105,108,108),
		Colors = _lIOOlOIllll0.FillColors, ColorFlags = { string.char(70,105,108,108,67,111,108,111,114,49), string.char(70,105,108,108,67,111,108,111,114,50), string.char(70,105,108,108,67,111,108,111,114,51) },
		OnColor = function(_0lOOI000l0, _ll0l00OI)
			_lIOOlOIllll0.FillColors[_0lOOI000l0] = _ll0l00OI
			_lIOOlOIllll0:Refresh()
		end,
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Fill = _OO0Ill00O end,
	})
	_lOIIll00O:AddSlider({
		Name = string.char(70,105,108,108,32,79,112,97,99,105,116,121), Min = (162-157), Max = (9542-9442), Default = (9566-9531), Step = (3109-3108), Flag = string.char(70,105,108,108,79,112,97,99,105,116,121),
		Callback = function(_OO0Ill00O)
			_lIOOlOIllll0.FillTransparency = (5505-5504) - _OO0Ill00O / (9909-9809)
			_lIOOlOIllll0:Refresh()
		end,
	})
	_lOIIll00O:AddSlider({
		Name = string.char(65,110,105,109,97,116,105,111,110,32,83,112,101,101,100), Min = (828-828), Max = (292-287), Default = (961-960), Step = (5276-5276).(3719-3718), Flag = string.char(69,115,112,65,110,105,109,83,112,101,101,100),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Speed = _OO0Ill00O end,
	})

	
	_lOII0O0ll000O.Name = _0Ill0l0lll:AddToggle({
		Name = string.char(78,97,109,101,32,84,97,103,32,69,115,112), Flag = string.char(78,97,109,101,69,115,112),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Name = _OO0Ill00O end,
		OnRightClick = function() _lOOllIIIOOIIO:Toggle() end,
	})
	_lOOllIIIOOIIO = _0Ill0l0lll:AddSettings()
	_lOOllIIIOOIIO:AddDropdown({
		Name = string.char(83,104,111,119), Options = { string.char(85,115,101,114,110,97,109,101), string.char(68,105,115,112,108,97,121,32,78,97,109,101) }, Default = string.char(85,115,101,114,110,97,109,101), Flag = string.char(78,97,109,101,77,111,100,101),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.NameMode = _OO0Ill00O end,
	})
	_lOOllIIIOOIIO:AddColorPicker({
		Name = string.char(84,101,120,116,32,67,111,108,111,114), Default = _lIOOlOIllll0.NameColor, Flag = string.char(78,97,109,101,67,111,108,111,114),
		Callback = function(_ll0l00OI)
			_lIOOlOIllll0.NameColor = _ll0l00OI
			_lIOOlOIllll0:Refresh()
		end,
	})

	
	_lOII0O0ll000O.Skeleton = _0Ill0l0lll:AddToggle({
		Name = string.char(83,107,101,108,101,116,111,110,32,69,115,112), Flag = string.char(83,107,101,108,101,116,111,110,69,115,112),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Skeleton = _OO0Ill00O end,
		OnRightClick = function() _l0ll0l0O:Toggle() end,
	})
	_l0ll0l0O = _0Ill0l0lll:AddSettings()
	_l0ll0l0O:AddColorPicker({
		Name = string.char(66,111,110,101,32,67,111,108,111,114), Default = _lIOOlOIllll0.BoneColor, Flag = string.char(66,111,110,101,67,111,108,111,114),
		Callback = function(_ll0l00OI)
			_lIOOlOIllll0.BoneColor = _ll0l00OI
			_lIOOlOIllll0:Refresh()
		end,
	})
	_l0ll0l0O:AddSlider({
		Name = string.char(84,104,105,99,107,110,101,115,115), Min = (1138-1137), Max = (2629-2625), Default = (9439-9438).(4857-4852), Step = (6294-6294).(2150-2145), Flag = string.char(66,111,110,101,84,104,105,99,107,110,101,115,115),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.BoneThickness = _OO0Ill00O end,
	})

	
	_lOII0O0ll000O.Health = _0Ill0l0lll:AddToggle({
		Name = string.char(72,101,97,108,116,104,32,66,97,114), Flag = string.char(72,101,97,108,116,104,69,115,112),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Health = _OO0Ill00O end,
	})
	_lOII0O0ll000O.Distance = _0Ill0l0lll:AddToggle({
		Name = string.char(68,105,115,116,97,110,99,101), Flag = string.char(68,105,115,116,97,110,99,101,69,115,112),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Distance = _OO0Ill00O end,
	})

	
	_lOII0O0ll000O.Tracer = _0Ill0l0lll:AddToggle({
		Name = string.char(84,114,97,99,101,114,115), Flag = string.char(84,114,97,99,101,114,69,115,112),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Tracer = _OO0Ill00O end,
		OnRightClick = function() _OlIOIlllIOI:Toggle() end,
	})
	_OlIOIlllIOI = _0Ill0l0lll:AddSettings()
	_OlIOIlllIOI:AddDropdown({
		Name = string.char(70,114,111,109), Options = { string.char(66,111,116,116,111,109), string.char(67,101,110,116,101,114), string.char(77,111,117,115,101) }, Default = string.char(66,111,116,116,111,109), Flag = string.char(84,114,97,99,101,114,70,114,111,109),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.TracerFrom = _OO0Ill00O end,
	})
	_OlIOIlllIOI:AddColorPicker({
		Name = string.char(84,114,97,99,101,114,32,67,111,108,111,114), Default = _lIOOlOIllll0.TracerColor, Flag = string.char(84,114,97,99,101,114,67,111,108,111,114),
		Callback = function(_ll0l00OI)
			_lIOOlOIllll0.TracerColor = _ll0l00OI
			_lIOOlOIllll0:Refresh()
		end,
	})

	
	_lOII0O0ll000O.Chams = _0Ill0l0lll:AddToggle({
		Name = string.char(67,104,97,109,115), Flag = string.char(67,104,97,109,115,69,115,112),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.Chams = _OO0Ill00O end,
		OnRightClick = function() chamsSettings:Toggle() end,
	})
	chamsSettings = _0Ill0l0lll:AddSettings()
	chamsSettings:AddColorPicker({
		Name = string.char(70,105,108,108,32,67,111,108,111,114), Default = _lIOOlOIllll0.ChamsFill, Flag = string.char(67,104,97,109,115,70,105,108,108),
		Callback = function(_ll0l00OI)
			_lIOOlOIllll0.ChamsFill = _ll0l00OI
			_lIOOlOIllll0:Refresh()
		end,
	})
	chamsSettings:AddColorPicker({
		Name = string.char(79,117,116,108,105,110,101,32,67,111,108,111,114), Default = _lIOOlOIllll0.ChamsOutline, Flag = string.char(67,104,97,109,115,79,117,116,108,105,110,101),
		Callback = function(_ll0l00OI)
			_lIOOlOIllll0.ChamsOutline = _ll0l00OI
			_lIOOlOIllll0:Refresh()
		end,
	})
	chamsSettings:AddSlider({
		Name = string.char(70,105,108,108,32,79,112,97,99,105,116,121), Min = (5168-5168), Max = (4919-4819), Default = (615-565), Step = (1145-1144), Flag = string.char(67,104,97,109,115,79,112,97,99,105,116,121),
		Callback = function(_OO0Ill00O)
			_lIOOlOIllll0.ChamsTransparency = (1345-1344) - _OO0Ill00O / (9572-9472)
			_lIOOlOIllll0:Refresh()
		end,
	})

	
	_0Ill0l0lll:AddToggle({
		Name = string.char(84,101,97,109,32,67,104,101,99,107), Flag = string.char(69,115,112,84,101,97,109,67,104,101,99,107),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.TeamCheck = _OO0Ill00O end,
	})
	_0Ill0l0lll:AddSlider({
		Name = string.char(77,97,120,32,68,105,115,116,97,110,99,101), Min = (9183-9083), Max = (12062-7062), Default = (2168-168), Step = (7742-7692), Flag = string.char(69,115,112,77,97,120,68,105,115,116,97,110,99,101),
		Callback = function(_OO0Ill00O) _lIOOlOIllll0.MaxDistance = _OO0Ill00O end,
	})

	_0Ill0l0lll:AddButton({
		Name = string.char(82,101,102,114,101,115,104,32,69,115,112),
		Callback = function()
			_lIOOlOIllll0:RefreshAll()
			_lOlOll0O:Notify(string.char(69,83,80), string.char(82,101,98,117,105,108,116,32,69,83,80,32,102,111,114,32,101,118,101,114,121,32,112,108,97,121,101,114,46), (2822-2820), true)
		end,
	})

	_lOlOll0O._lIOOlOIllll0 = _lIOOlOIllll0
end



do
	local _0IOO0IIIlO = game:GetService(string.char(82,117,110,83,101,114,118,105,99,101))
	local _IlII0lIllO = game:GetService(string.char(76,105,103,104,116,105,110,103))

	local _llllOlOIOll = Color3.fromRGB((6785-6530), (3334-3229), (8278-8098))
	local _0OOIIlO0I0OI = Color3.new((9711-9710), (5983-5982), (8957-8956))

	local worldTab
	for _00lO00l000I0O, _00IllOOI0I0 in _lOlOll0O.Tabs do
		if _00IllOOI0I0.Name == string.char(87,111,114,108,100) then
			worldTab = _00IllOOI0I0
			break
		end
	end
	worldTab = worldTab or _lOlOll0O:AddTab(string.char(87,111,114,108,100))

	
	
	
	
	
	
	
	
	local _OIl0O000l00 = { On = false, Fade = (5532-5531).(9842-9837), Color = _llllOlOIOll, Opacity = (6034-6034).(5864-5799), _lOlOll0O = (190-189).(92-92), Range = (6372-5872), Mode = string.char(77,121,32,72,105,116,115), Last = {} }
	local _OllOIIlO0OO = Instance.new(string.char(70,111,108,100,101,114))
	_OllOIIlO0OO.Name = string.char(80,114,101,115,116,105,103,101,67,104,97,114,109,115)
	_OllOIIlO0OO.Parent = workspace
	local _ll0lOIO0000O0 = (4877-4877)

	local _lllllI00l0I()
		local _O0OlIIOO, _O00llOll = pcall(function() return _0l0lI0OO:GetNetworkPing() end)
		return (_O0OlIIOO and type(_O00llOll) == string.char(110,117,109,98,101,114)) and math._0lIOll00O(_O00llOll, (4872-4872).(8193-8190)) or (1978-1978)
	end

	local _OOOIlI0lIO(_Il00ll0llOOIl)
		local _lIIIOO0I0Oll = Instance.new(string.char(70,111,108,100,101,114))
		_lIIIOO0I0Oll.Name = string.char(67,104,97,114,109)
		local _lOlOO0lO0I0 = {}

		for _00lO00l000I0O, _OI0l0l0lIOO0 in _Il00ll0llOOIl:GetDescendants() do
			if _OI0l0l0lIOO0:IsA(string.char(66,97,115,101,80,97,114,116)) and _OI0l0l0lIOO0.Name ~= string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116) and _OI0l0l0lIOO0.Transparency < (8755-8755).(7671-7572) and not _OI0l0l0lIOO0:FindFirstAncestorOfClass(string.char(84,111,111,108)) then
				local _0IO00OllI0 = _OI0l0l0lIOO0.Archivable
				_OI0l0l0lIOO0.Archivable = true
				local _O0OlIIOO, _l0O00lOOlI = pcall(_OI0l0l0lIOO0.Clone, _OI0l0l0lIOO0)
				_OI0l0l0lIOO0.Archivable = was
				if _O0OlIIOO and _l0O00lOOlI then
					clone = _l0O00lOOlI
				else
					clone = Instance.new(string.char(80,97,114,116)) 
					clone.Size = _OI0l0l0lIOO0.Size
				end
				for _00lO00l000I0O, _0lIOll00I in clone:GetChildren() do
					if _0lIOll00I:IsA(string.char(83,112,101,99,105,97,108,77,101,115,104)) then
						_0lIOll00I.TextureId = ""
					else
						_0lIOll00I:Destroy() 
					end
				end
				clone.CFrame = _OI0l0l0lIOO0.CFrame
				clone.Anchored = true
				clone.CanCollide = false
				clone.CanQuery = false
				clone.CanTouch = false
				clone.CastShadow = false
				clone.Massless = true
				clone.Material = Enum.Material.Neon
				clone.Color = _OIl0O000l00.Color
				clone.Transparency = (2626-2625) - _OIl0O000l00.Opacity
				if clone:IsA(string.char(77,101,115,104,80,97,114,116)) then
					clone.TextureID = ""
				end
				clone.Parent = _lIIIOO0I0Oll
				table.insert(_lOlOO0lO0I0, clone)
			end
		end

		if #_lOlOO0lO0I0 == (1548-1548) then
			_lIIIOO0I0Oll:Destroy()
			return
		end
		_lIIIOO0I0Oll.Parent = _OllOIIlO0OO
		for _00lO00l000I0O, _l0IllIlIOlI in _lOlOO0lO0I0 do
			Tween(_l0IllIlIOlI, _OIl0O000l00.Fade, { Transparency = (5657-5656) }, Enum.EasingStyle.Linear)
		end
		task.delay(_OIl0O000l00.Fade + (5565-5565).(4371-4346), function()
			_lIIIOO0I0Oll:Destroy()
		end)
	end

	local _0O00OIOOIOlO0(_Il00ll0llOOIl)
		local _0lIlII0I = _0l0lI0OO.Character
		local _00lO0OI0IO0 = _0lIlII0I and _0lIlII0I:GetPivot().Position
		if not _00lO0OI0IO0 then
			local _l0I0IOOlOO = workspace.CurrentCamera
			_00lO0OI0IO0 = _l0I0IOOlOO and _l0I0IOOlOO.CFrame.Position
		end
		if not _00lO0OI0IO0 then
			return true
		end
		return (_Il00ll0llOOIl:GetPivot().Position - _00lO0OI0IO0).Magnitude <= _OIl0O000l00.Range
	end

	local _0IlI0OO0I(_Ol0O0Ol0III0, _Il00ll0llOOIl)
		local _OOO000IOIlll = _Il00ll0llOOIl:WaitForChild(string.char(72,117,109,97,110,111,105,100), (3006-2996))
		if not _OOO000IOIlll then
			return
		end
		local _I0llOOII0I0 = _OOO000IOIlll.Health
		_OOO000IOIlll.HealthChanged:Connect(function(_lOIl00IOllO0O)
			local _Ol00I0I0l = _lOIl00IOllO0O < _I0llOOII0I0
			_I0llOOII0I0 = _lOIl00IOllO0O
			if not (_Ol00I0I0l and _OIl0O000l00.On) then
				return
			end
			if _OIl0O000l00.Mode == string.char(77,121,32,72,105,116,115) and os.clock() - _ll0lOIO0000O0 > _OIl0O000l00._lOlOll0O + PingSeconds() then
				return
			end
			if not WithinRange(_Il00ll0llOOIl) then
				return
			end
			local _00lllOIO0 = os.clock()
			if _00lllOIO0 - (_OIl0O000l00.Last[_Ol0O0Ol0III0] or (1365-1365)) < (9459-9459).(7857-7845) then
				return 
			end
			_OIl0O000l00.Last[_Ol0O0Ol0III0] = _00lllOIO0
			SpawnCharm(_Il00ll0llOOIl)
		end)
	end

	local _00ll000I(_Ol0O0Ol0III0)
		if _Ol0O0Ol0III0 == _0l0lI0OO then
			return
		end
		if _Ol0O0Ol0III0.Character then
			task.spawn(HookCharacter, _Ol0O0Ol0III0, _Ol0O0Ol0III0.Character)
		end
		Connect(_Ol0O0Ol0III0.CharacterAdded, function(_Il00ll0llOOIl)
			HookCharacter(_Ol0O0Ol0III0, _Il00ll0llOOIl)
		end)
	end
	for _00lO00l000I0O, _Ol0O0Ol0III0 in _IlIlIOOl0I0O:GetPlayers() do
		HookPlayer(_Ol0O0Ol0III0)
	end
	Connect(_IlIlIOOl0I0O.PlayerAdded, HookPlayer)
	Connect(_IlIlIOOl0I0O.PlayerRemoving, function(_Ol0O0Ol0III0)
		_OIl0O000l00.Last[_Ol0O0Ol0III0] = nil
	end)

	
	
	Connect(_lOIlIlIllllOO.InputBegan, function(_lOO0lIIII)
		if _lOO0lIIII.UserInputType == Enum.UserInputType.MouseButton1 or _lOO0lIIII.UserInputType == Enum.UserInputType.Touch then
			_ll0lOIO0000O0 = os.clock()
		end
	end)
	Connect(_0IOO0IIIlO.RenderStepped, function()
		if _lOIlIlIllllOO:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) then
			_ll0lOIO0000O0 = os.clock()
		end
	end)
	local _lOOIOOIlI(_Il00ll0llOOIl)
		local _IIII00lIIO0O(_IOIIlIOll0)
			if _IOIIlIOll0:IsA(string.char(84,111,111,108)) then
				Connect(_IOIIlIOll0.Activated, function() _ll0lOIO0000O0 = os.clock() end)
			end
		end
		for _00lO00l000I0O, _00lOOlIl0lOI0 in _Il00ll0llOOIl:GetChildren() do watch(_00lOOlIl0lOI0) end
		Connect(_Il00ll0llOOIl.ChildAdded, watch)
	end
	if _0l0lI0OO.Character then WatchTools(_0l0lI0OO.Character) end
	Connect(_0l0lI0OO.CharacterAdded, WatchTools)

	
	local _00lO0IOl = worldTab:AddCard((6402-6401), string.char(72,105,116,32,67,104,97,114,109,115))
	local charmSettings
	_00lO0IOl:AddToggle({
		Name = string.char(72,105,116,32,67,104,97,114,109,115), Flag = string.char(72,105,116,67,104,97,114,109,115),
		Callback = function(_O0llI0OOllI0) _OIl0O000l00.On = _O0llI0OOllI0 end,
		OnRightClick = function() charmSettings:Toggle() end,
	})
	charmSettings = _00lO0IOl:AddSettings()
	charmSettings:AddDropdown({
		Name = string.char(68,101,116,101,99,116), Options = { string.char(77,121,32,72,105,116,115), string.char(65,110,121,32,68,97,109,97,103,101) }, Default = string.char(77,121,32,72,105,116,115), Flag = string.char(67,104,97,114,109,77,111,100,101),
		Callback = function(_O0llI0OOllI0) _OIl0O000l00.Mode = _O0llI0OOllI0 end,
	})
	charmSettings:AddSlider({
		Name = string.char(82,97,110,103,101,32,40,115,116,117,100,115,41), Min = (1419-1399), Max = (10005-8005), Default = (3204-2704), Step = (856-846), Flag = string.char(67,104,97,114,109,82,97,110,103,101),
		Callback = function(_O0llI0OOllI0) _OIl0O000l00.Range = _O0llI0OOllI0 end,
	})
	charmSettings:AddSlider({
		Name = string.char(72,105,116,32,87,105,110,100,111,119,32,40,115,41), Min = (3120-3120).(2003-2001), Max = (1073-1070), Default = (7478-7477).(7414-7414), Step = (8678-8678).(5102-5101), Flag = string.char(67,104,97,114,109,87,105,110,100,111,119),
		Callback = function(_O0llI0OOllI0) _OIl0O000l00._lOlOll0O = _O0llI0OOllI0 end,
	})
	charmSettings:AddSlider({
		Name = string.char(70,97,100,101,32,84,105,109,101,32,40,115,41), Min = (2161-2161).(3927-3925), Max = (649-643), Default = (5808-5807).(8831-8826), Step = (1170-1170).(9986-9985), Flag = string.char(67,104,97,114,109,70,97,100,101),
		Callback = function(_O0llI0OOllI0) _OIl0O000l00.Fade = _O0llI0OOllI0 end,
	})
	charmSettings:AddColorPicker({
		Name = string.char(67,104,97,114,109,32,67,111,108,111,114), Default = _llllOlOIOll, Flag = string.char(67,104,97,114,109,67,111,108,111,114),
		Callback = function(_00lOOlIl0lOI0) _OIl0O000l00.Color = _00lOOlIl0lOI0 end,
	})
	charmSettings:AddSlider({
		Name = string.char(79,112,97,99,105,116,121), Min = (1806-1796), Max = (7693-7593), Default = (124-59), Step = (1242-1241), Flag = string.char(67,104,97,114,109,79,112,97,99,105,116,121),
		Callback = function(_O0llI0OOllI0) _OIl0O000l00.Opacity = _O0llI0OOllI0 / (9981-9881) end,
	})
	_00lO0IOl:AddLabel(string.char(65,32,99,111,108,111,114,101,100,32,99,111,112,121,32,111,102,32,116,104,101,32,112,108,97,121,101,114,32,97,112,112,101,97,114,115,32,119,104,101,110,32,121,111,117,32,100,97,109,97,103,101,32,116,104,101,109,46,32,82,105,103,104,116,45,99,108,105,99,107,32,102,111,114,32,115,101,116,116,105,110,103,115,46,32,77,121,32,72,105,116,115,32,61,32,100,97,109,97,103,101,32,114,105,103,104,116,32,97,102,116,101,114,32,121,111,117,32,99,108,105,99,107,32,40,112,105,110,103,32,105,115,32,97,100,100,101,100,32,116,111,32,116,104,101,32,119,105,110,100,111,119,41,44,32,65,110,121,32,68,97,109,97,103,101,32,61,32,97,110,121,32,104,105,116,32,111,110,32,97,110,121,111,110,101,32,105,110,32,114,97,110,103,101,46,32,82,97,105,115,101,32,116,104,101,32,72,105,116,32,87,105,110,100,111,119,32,102,111,114,32,115,108,111,119,32,112,114,111,106,101,99,116,105,108,101,115,46))

	
	
	
	local _Il0l0Ill = string.char(57,56,55,48,48,57,48,56,49,54,51,54,54,50)
	local _00000Oll = { On = false, _OIIOl0l0O0 = (7305-7304), Stored = {}, Link = nil, Folder = nil }
	local _I0IlOOlIO00 = { string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114), string.char(84,114,97,105,108), string.char(66,101,97,109), string.char(70,105,114,101), string.char(83,109,111,107,101), string.char(83,112,97,114,107,108,101,115), string.char(66,105,108,108,98,111,97,114,100,71,117,105), string.char(83,117,114,102,97,99,101,71,117,105), string.char(72,105,103,104,108,105,103,104,116) }

	local _lI0llIO0II(_OI0l0l0lIOO0)
		if _00000Oll.Stored[_OI0l0l0lIOO0] ~= nil then
			return
		end
		if _OI0l0l0lIOO0:IsA(string.char(66,97,115,101,80,97,114,116)) or _OI0l0l0lIOO0:IsA(string.char(68,101,99,97,108)) then
			if _OI0l0l0lIOO0.Transparency < (5134-5133) then
				_00000Oll.Stored[_OI0l0l0lIOO0] = { string.char(84,114,97,110,115,112,97,114,101,110,99,121), _OI0l0l0lIOO0.Transparency }
				_OI0l0l0lIOO0.Transparency = (1264-1263)
			end
		else
			for _00lO00l000I0O, _I0lI0OO0l0 in _I0IlOOlIO00 do
				if _OI0l0l0lIOO0:IsA(_I0lI0OO0l0) then
					_00000Oll.Stored[_OI0l0l0lIOO0] = { string.char(69,110,97,98,108,101,100), _OI0l0l0lIOO0.Enabled }
					_OI0l0l0lIOO0.Enabled = false
					break
				end
			end
		end
	end

	local _0IllOIOl0I0II()
		if _00000Oll.Folder then
			_00000Oll.Folder:Destroy()
			_00000Oll.Folder = nil
		end
	end

	local _Il0lIlI0O(_Il00ll0llOOIl)
		ClearOverlay()
		local _OOIOOlOII = _Il00ll0llOOIl:FindFirstChild(string.char(72,117,109,97,110,111,105,100,82,111,111,116,80,97,114,116))
		if not _OOIOOlOII then
			return
		end
		local _OlII00OlO0O0 = Instance.new(string.char(70,111,108,100,101,114))
		_OlII00OlO0O0.Name = string.char(80,114,101,115,116,105,103,101,84,117,110,103,84,117,110,103)
		_OlII00OlO0O0.Parent = workspace
		_00000Oll.Folder = _OlII00OlO0O0

		
		local _0lOIIO0OIII0O = Instance.new(string.char(66,105,108,108,98,111,97,114,100,71,117,105))
		_0lOIIO0OIII0O.Adornee = _OOIOOlOII
		_0lOIIO0OIII0O.Size = UDim2.new((5133-5129) * _00000Oll._OIIOl0l0O0, (6846-6846), (336-330) * _00000Oll._OIIOl0l0O0, (4630-4630))
		_0lOIIO0OIII0O.StudsOffset = Vector3.new((5303-5303), (5791-5791).(8059-8054), (1344-1344))
		_0lOIIO0OIII0O.LightInfluence = (2583-2583)
		_0lOIIO0OIII0O.ResetOnSpawn = false
		_0lOIIO0OIII0O.Parent = _OlII00OlO0O0
		local _OOOllIlIll = Instance.new(string.char(73,109,97,103,101,76,97,98,101,108))
		_OOOllIlIll.Size = UDim2.fromScale((6149-6148), (5075-5074))
		_OOOllIlIll.BackgroundTransparency = (1411-1410)
		_OOOllIlIll.ScaleType = Enum.ScaleType.Fit
		_OOOllIlIll.Parent = _0lOIIO0OIII0O

		LoadImage(_OOOllIlIll, _Il0l0Ill, "", function(_O0OlIIOO)
			if _O0OlIIOO or _00000Oll.Folder ~= _OlII00OlO0O0 then
				return
			end
			_0lOIIO0OIII0O:Destroy()
			
			local _l0lOlIIlI0, _lO00OlOl0O = pcall(function() return game:GetObjects(string.char(114,98,120,97,115,115,101,116,105,100,58,47,47) .. _Il0l0Ill) end)
			if not (_l0lOlIIlI0 and _lO00OlOl0O and _lO00OlOl0O[(5209-5208)]) then
				local _IOOlOIO0000, _0IlIIl0IOOO = pcall(function() return _ll0O0IlOII0:LoadAsset(tonumber(_Il0l0Ill)) end)
				_lO00OlOl0O = _IOOlOIO0000 and _0IlIIl0IOOO and _0IlIIl0IOOO:GetChildren() or nil
			end
			local _00OlIIl0I = _lO00OlOl0O and _lO00OlOl0O[(6869-6868)]
			if not _00OlIIl0I then
				_lOlOll0O:Notify(string.char(84,117,110,103,32,84,117,110,103), string.char(67,111,117,108,100,32,110,111,116,32,108,111,97,100,32,116,104,97,116,32,97,115,115,101,116,32,40,110,111,116,32,97,110,32,105,109,97,103,101,32,97,110,100,32,110,111,116,32,108,111,97,100,97,98,108,101,32,97,115,32,97,32,109,111,100,101,108,41,46), (2486-2480), true)
				return
			end
			_00OlIIl0I.Parent = _OlII00OlO0O0
			if _00OlIIl0I:IsA(string.char(77,111,100,101,108)) then
				_00OlIIl0I:ScaleTo(_00000Oll._OIIOl0l0O0)
				_00OlIIl0I:PivotTo(_OOIOOlOII.CFrame * CFrame.new((638-638), -(776-776).(888-883), (821-821)))
			elseif _00OlIIl0I:IsA(string.char(66,97,115,101,80,97,114,116)) then
				_00OlIIl0I.CFrame = _OOIOOlOII.CFrame
			end
			local _O0IIIOO0 = _00OlIIl0I:IsA(string.char(66,97,115,101,80,97,114,116)) and { _00OlIIl0I } or _00OlIIl0I:GetDescendants()
			for _00lO00l000I0O, _OI0l0l0lIOO0 in _O0IIIOO0 do
				if _OI0l0l0lIOO0:IsA(string.char(66,97,115,101,80,97,114,116)) then
					_OI0l0l0lIOO0.Anchored, _OI0l0l0lIOO0.CanCollide, _OI0l0l0lIOO0.CanQuery, _OI0l0l0lIOO0.CanTouch, _OI0l0l0lIOO0.Massless = false, false, false, false, true
					local _0l0I0lI00 = Instance.new(string.char(87,101,108,100,67,111,110,115,116,114,97,105,110,116))
					_0l0I0lI00.Part0, _0l0I0lI00.Part1 = _OOIOOlOII, _OI0l0l0lIOO0
					_0l0I0lI00.Parent = _OI0l0l0lIOO0
				elseif _OI0l0l0lIOO0:IsA(string.char(83,99,114,105,112,116)) or _OI0l0l0lIOO0:IsA(string.char(76,111,99,97,108,83,99,114,105,112,116)) then
					_OI0l0l0lIOO0:Destroy()
				end
			end
		end)
	end

	local _IO000IIOIO0(_Il00ll0llOOIl)
		if _00000Oll.Link then
			_00000Oll.Link:Disconnect()
			_00000Oll.Link = nil
		end
		_00000Oll.Stored = {}
		if not (_00000Oll.On and _Il00ll0llOOIl) then
			ClearOverlay()
			return
		end
		for _00lO00l000I0O, _OI0l0l0lIOO0 in _Il00ll0llOOIl:GetDescendants() do
			HideInstance(_OI0l0l0lIOO0)
		end
		_00000Oll.Link = _Il00ll0llOOIl.DescendantAdded:Connect(function(_OI0l0l0lIOO0)
			task.defer(HideInstance, _OI0l0l0lIOO0)
		end)
		BuildOverlay(_Il00ll0llOOIl)
	end

	local _II0OOIIO0O(_OO0Ill00O)
		_00000Oll.On = _OO0Ill00O
		if _OO0Ill00O then
			TungApply(_0l0lI0OO.Character)
		else
			if _00000Oll.Link then
				_00000Oll.Link:Disconnect()
				_00000Oll.Link = nil
			end
			for _OI0I0IIO00, _0IIO00lII in _00000Oll.Stored do
				if _OI0I0IIO00.Parent then
					pcall(function() _OI0I0IIO00[_0IIO00lII[(3666-3665)]] = _0IIO00lII[(2963-2961)] end)
				end
			end
			_00000Oll.Stored = {}
			ClearOverlay()
		end
	end

	Connect(_0l0lI0OO.CharacterAdded, function(_Il00ll0llOOIl)
		if _00000Oll.On then
			task.wait((8837-8837).(1441-1435)) 
			if _00000Oll.On then
				TungApply(_Il00ll0llOOIl)
			end
		end
	end)

	local _Il0O00lO = worldTab:AddCard((1851-1850), string.char(84,117,110,103,32,84,117,110,103))
	_Il0O00lO:AddToggle({ Name = string.char(84,117,110,103,32,84,117,110,103), Flag = string.char(84,117,110,103,84,117,110,103), Callback = TungSet })
	_Il0O00lO:AddSlider({
		Name = string.char(83,105,122,101), Min = (9453-9453).(3439-3434), Max = (9865-9862), Default = (8775-8774), Step = (646-646).(8886-8885), Flag = string.char(84,117,110,103,83,105,122,101),
		Callback = function(_O0llI0OOllI0)
			_00000Oll._OIIOl0l0O0 = _O0llI0OOllI0
			if _00000Oll.On and _0l0lI0OO.Character then
				BuildOverlay(_0l0lI0OO.Character)
			end
		end,
	})
	_Il0O00lO:AddLabel(string.char(72,105,100,101,115,32,121,111,117,114,32,119,104,111,108,101,32,99,104,97,114,97,99,116,101,114,32,111,110,32,121,111,117,114,32,115,99,114,101,101,110,32,97,110,100,32,115,104,111,119,115,32,116,104,101,32,84,117,110,103,32,84,117,110,103,32,97,115,115,101,116,32,105,110,115,116,101,97,100,46,32,79,110,108,121,32,121,111,117,32,115,101,101,32,105,116,46))

	
	
	
	local _lIO000000O0l0 = workspace.CurrentCamera
	local _Il0l0lIlO = {
		Fov = _lIO000000O0l0 and _lIO000000O0l0.FieldOfView or (447-377),
		Ambient = _IlII0lIllO.Ambient, OutdoorAmbient = _IlII0lIllO.OutdoorAmbient,
		Brightness = _IlII0lIllO.Brightness, ClockTime = _IlII0lIllO.ClockTime,
		FogEnd = _IlII0lIllO.FogEnd, FogStart = _IlII0lIllO.FogStart, FogColor = _IlII0lIllO.FogColor,
	}
	local _O00Ol00Ol = {
		Fov = false, FovValue = (1242-1152),
		Light = false, Ambient = Color3.fromRGB((1418-1298), (8452-8332), (1019-879)), Outdoor = Color3.fromRGB((618-468), (9688-9538), (7473-7303)), Brightness = (3515-3513), Time = (1733-1719),
		Fog = false, FogEnd = (7944-7544), FogColor = Color3.fromRGB((6041-5861), (3467-3287), (3617-3427)),
	}

	_0IOO0IIIlO:BindToRenderStep(string.char(80,114,101,115,116,105,103,101,70,111,118), Enum.RenderPriority.Camera.Value + (9671-9670), function()
		local _l0I0IOOlOO = workspace.CurrentCamera
		if _O00Ol00Ol.Fov and _l0I0IOOlOO then
			_l0I0IOOlOO.FieldOfView = _O00Ol00Ol.FovValue
		end
	end)

	Connect(_0IOO0IIIlO.Heartbeat, function()
		if _O00Ol00Ol.Light then
			_IlII0lIllO.Ambient = _O00Ol00Ol.Ambient
			_IlII0lIllO.OutdoorAmbient = _O00Ol00Ol.Outdoor
			_IlII0lIllO.Brightness = _O00Ol00Ol.Brightness
			_IlII0lIllO.ClockTime = _O00Ol00Ol.Time
		end
		if _O00Ol00Ol.Fog then
			_IlII0lIllO.FogStart = (1045-1045)
			_IlII0lIllO.FogEnd = _O00Ol00Ol.FogEnd
			_IlII0lIllO.FogColor = _O00Ol00Ol.FogColor
		end
	end)

	local _O0l0OOO0IOIl0 = worldTab:AddCard((2854-2852), string.char(87,111,114,108,100,32,86,105,115,117,97,108,115))
	_O0l0OOO0IOIl0:AddToggle({
		Name = string.char(67,117,115,116,111,109,32,70,79,86), Flag = string.char(67,117,115,116,111,109,70,111,118),
		Callback = function(_O0llI0OOllI0)
			_O00Ol00Ol.Fov = _O0llI0OOllI0
			if not _O0llI0OOllI0 and workspace.CurrentCamera then workspace.CurrentCamera.FieldOfView = _Il0l0lIlO.Fov end
		end,
	})
	_O0l0OOO0IOIl0:AddSlider({
		Name = string.char(70,79,86), Min = (1545-1515), Max = (6462-6342), Default = (6896-6806), Step = (9141-9140), Flag = string.char(70,111,118,86,97,108,117,101),
		Callback = function(_O0llI0OOllI0) _O00Ol00Ol.FovValue = _O0llI0OOllI0 end,
	})
	_O0l0OOO0IOIl0:AddToggle({
		Name = string.char(67,117,115,116,111,109,32,76,105,103,104,116,105,110,103), Flag = string.char(67,117,115,116,111,109,76,105,103,104,116,105,110,103),
		Callback = function(_O0llI0OOllI0)
			_O00Ol00Ol.Light = _O0llI0OOllI0
			if not _O0llI0OOllI0 then
				_IlII0lIllO.Ambient, _IlII0lIllO.OutdoorAmbient = _Il0l0lIlO.Ambient, _Il0l0lIlO.OutdoorAmbient
				_IlII0lIllO.Brightness, _IlII0lIllO.ClockTime = _Il0l0lIlO.Brightness, _Il0l0lIlO.ClockTime
			end
		end,
	})
	_O0l0OOO0IOIl0:AddColorRow({
		Name = string.char(65,109,98,105,101,110,116,32,47,32,79,117,116,100,111,111,114), Colors = { _O00Ol00Ol.Ambient, _O00Ol00Ol.Outdoor }, Flags = { string.char(65,109,98,105,101,110,116,67,111,108,111,114), string.char(79,117,116,100,111,111,114,67,111,108,111,114) },
		Callback = function(_0lOOI000l0, _ll0l00OI)
			if _0lOOI000l0 == (2719-2718) then _O00Ol00Ol.Ambient = _ll0l00OI else _O00Ol00Ol.Outdoor = _ll0l00OI end
		end,
	})
	_O0l0OOO0IOIl0:AddSlider({
		Name = string.char(66,114,105,103,104,116,110,101,115,115), Min = (6794-6794), Max = (9337-9331), Default = (599-597), Step = (496-496).(676-675), Flag = string.char(76,105,103,104,116,66,114,105,103,104,116,110,101,115,115),
		Callback = function(_O0llI0OOllI0) _O00Ol00Ol.Brightness = _O0llI0OOllI0 end,
	})
	_O0l0OOO0IOIl0:AddSlider({
		Name = string.char(84,105,109,101,32,111,102,32,68,97,121), Min = (8327-8327), Max = (864-840), Default = (3790-3776), Step = (4359-4359).(5625-5624), Flag = string.char(84,105,109,101,79,102,68,97,121),
		Callback = function(_O0llI0OOllI0) _O00Ol00Ol.Time = _O0llI0OOllI0 end,
	})
	_O0l0OOO0IOIl0:AddToggle({
		Name = string.char(67,117,115,116,111,109,32,70,111,103), Flag = string.char(67,117,115,116,111,109,70,111,103),
		Callback = function(_O0llI0OOllI0)
			_O00Ol00Ol.Fog = _O0llI0OOllI0
			if not _O0llI0OOllI0 then
				_IlII0lIllO.FogEnd, _IlII0lIllO.FogStart, _IlII0lIllO.FogColor = _Il0l0lIlO.FogEnd, _Il0l0lIlO.FogStart, _Il0l0lIlO.FogColor
			end
		end,
	})
	_O0l0OOO0IOIl0:AddSlider({
		Name = string.char(70,111,103,32,68,105,115,116,97,110,99,101), Min = (7216-7166), Max = (11646-8646), Default = (5374-4974), Step = (5418-5408), Flag = string.char(70,111,103,68,105,115,116,97,110,99,101),
		Callback = function(_O0llI0OOllI0) _O00Ol00Ol.FogEnd = _O0llI0OOllI0 end,
	})
	_O0l0OOO0IOIl0:AddColorPicker({
		Name = string.char(70,111,103,32,67,111,108,111,114), Default = _O00Ol00Ol.FogColor, Flag = string.char(70,111,103,67,111,108,111,114),
		Callback = function(_00lOOlIl0lOI0) _O00Ol00Ol.FogColor = _00lOOlIl0lOI0 end,
	})

	
	
	
	
	
	
	
	
	local _IIlOOIlO0lOO = {
		Bk = string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,115,107,121,47,115,107,121,53,49,50,95,98,107,46,116,101,120), Dn = string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,115,107,121,47,115,107,121,53,49,50,95,100,110,46,116,101,120),
		Ft = string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,115,107,121,47,115,107,121,53,49,50,95,102,116,46,116,101,120), Lf = string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,115,107,121,47,115,107,121,53,49,50,95,108,102,46,116,101,120),
		Rt = string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,115,107,121,47,115,107,121,53,49,50,95,114,116,46,116,101,120), Up = string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,115,107,121,47,115,107,121,53,49,50,95,117,112,46,116,101,120),
	}
	local _0OllO0IlOl0I0(_ll0l00OI, _lIIl000l, _IO0IIOII, _O0IOlllll, _IIOlOO0ll, _lIIIlII00Il0l)
		return { Color = _ll0l00OI, Decay = _lIIl000l, Density = _IO0IIOII, Offset = _O0IOlllll, Glare = _IIOlOO0ll, Haze = _lIIIlII00Il0l }
	end
	local _IIII00l0I(_0I0OIIO0IOO, _0O0OO0ll, _Il00OII0, _l0l00OOOO)
		return { Tint = _0I0OIIO0IOO, Sat = _0O0OO0ll, Contrast = _Il00OII0, Bright = _l0l00OOOO or (8832-8832) }
	end
	local _OI00OOIllO = {
		Default = { Faces = string.char(100,101,102,97,117,108,116), Time = (2584-2570), Stars = (11745-8745), Celestial = true },
		Sunset = { Faces = string.char(100,101,102,97,117,108,116), Time = (8947-8930).(7845-7836), Stars = (2577-2077), Celestial = true,
			Top = rgb((7351-7096), (8686-8546), (1129-1039)), Bottom = rgb((740-620), (782-722), (5660-5550)),
			Atmo = Atmo(rgb((6347-6092), (9880-9730), (1749-1649)), rgb((2853-2598), (6084-5994), (5727-5677)), (3621-3621).(2315-2310), (7274-7274).(549-546), (2586-2585), (8402-8400).(6216-6211)),
			Grade = Grade(rgb((7035-6780), (8412-8202), (9866-9686)), (6117-6117).(7078-7076), (4112-4112).(8778-8773)), Bloom = { (5795-5795).(8789-8784), (9339-9315), (7421-7421).(4621-4536) }, Rays = (1903-1903).(10003-9988) },
		[string.char(71,111,108,100,101,110,32,72,111,117,114)] = { Faces = string.char(100,101,102,97,117,108,116), Time = (1600-1584).(8825-8822), Stars = (5450-5450), Celestial = true,
			Atmo = Atmo(rgb((1919-1664), (3434-3229), (9246-9116)), rgb((2354-2099), (903-733), (2592-2512)), (4072-4072).(999-995), (5249-5249).(4346-4344), (5488-5487), (9172-9170)),
			Grade = Grade(rgb((3398-3143), (9693-9465), (3730-3555)), (4701-4701).(7444-7429), (7288-7288).(5819-5814)), Bloom = { (7306-7306).(8126-8122), (2598-2574), (2197-2197).(6751-6742) }, Rays = (4925-4925).(5893-5891) },
		Night = { Faces = string.char(100,101,102,97,117,108,116), Time = (524-524), Stars = (6008-1508), Celestial = true,
			Atmo = Atmo(rgb((8930-8915), (3829-3809), (2532-2487)), rgb((7173-7163), (5387-5377), (8590-8560)), (3315-3315).(4763-4718), (802-802), (7306-7306), (4107-4106)),
			Grade = Grade(rgb((1397-1227), (7404-7219), (10225-9970)), -(8969-8969).(7594-7589), (7343-7343).(7296-7295), -(5001-5001).(9548-9543)) },
		Space = { Faces = string.char(98,108,97,99,107), Time = (8047-8047), Stars = (12569-7569), Celestial = false,
			Grade = Grade(rgb((7352-7152), (482-272), (4814-4559)), (7136-7136).(507-506), (1701-1701).(6907-6892)) },
		Void = { Faces = string.char(98,108,97,99,107), Time = (742-742), Stars = (404-404), Celestial = false,
			Atmo = Atmo(rgb((5208-5208), (6155-6155), (9441-9441)), rgb((9483-9483), (1584-1584), (5414-5414)), (3-3).(8136-8127), (5725-5725), (750-750), (4514-4504)),
			Grade = Grade(rgb((4544-4289), (3895-3640), (6359-6104)), -(12-12).(1026-1020), (7904-7904).(3383-3381), -(7106-7106).(1766-1765)) },
		[string.char(80,117,114,112,108,101,32,68,114,101,97,109)] = { Faces = string.char(100,101,102,97,117,108,116), Time = (8726-8707), Stars = (7498-4498), Celestial = false,
			Top = rgb((9151-8981), (4967-4877), (3061-2806)), Bottom = rgb((4521-4266), (5514-5394), (1921-1721)),
			Atmo = Atmo(rgb((447-267), (5281-5161), (625-370)), rgb((5746-5491), (3605-3505), (3087-2867)), (7865-7865).(197-142), (8126-8126).(4345-4342), (1291-1291).(9395-9390), (7172-7169)),
			Grade = Grade(rgb((5232-5002), (9059-8869), (562-307)), (9904-9904).(2233-2230), (8513-8513).(6476-6471)), Bloom = { (9567-9567).(6543-6535), (8407-8379), (9748-9748).(5767-5759) } },
		Overcast = { Faces = string.char(100,101,102,97,117,108,116), Time = (3633-3621), Stars = (1643-1643), Celestial = false,
			Atmo = Atmo(rgb((3217-3047), (810-635), (5852-5667)), rgb((2893-2743), (206-51), (7288-7123)), (3735-3735).(1855-1849), (9387-9387), (8330-8330), (1564-1559)),
			Grade = Grade(rgb((917-697), (10208-9983), (9359-9124)), -(288-288).(7205-7202), -(3829-3829).(7800-7795)) },
		[string.char(66,108,111,111,100,32,77,111,111,110)] = { Faces = string.char(100,101,102,97,117,108,116), Time = (2099-2099), Stars = (4647-2147), Celestial = true,
			Top = rgb((2997-2742), (8682-8642), (5826-5786)), Bottom = rgb((2682-2592), (4183-4183), (6621-6621)),
			Atmo = Atmo(rgb((2946-2786), (8424-8394), (5482-5452)), rgb((1879-1789), (2398-2388), (9320-9310)), (5810-5810).(8750-8695), (607-607).(7357-7356), (581-581), (2699-2696)),
			Grade = Grade(rgb((5480-5225), (4892-4722), (7725-7555)), (2024-2024).(4729-4728), (1079-1079).(7017-7002), -(5582-5582).(5103-5098)) },
		Toxic = { Faces = string.char(100,101,102,97,117,108,116), Time = (6392-6371), Stars = (9698-8198), Celestial = false,
			Atmo = Atmo(rgb((2208-2088), (2851-2596), (9959-9869)), rgb((2198-2138), (4257-4077), (3893-3853)), (5785-5785).(1843-1788), (7065-7065).(7029-7028), (8353-8353), (9433-9430)),
			Grade = Grade(rgb((8537-8347), (5602-5347), (9571-9401)), (8964-8964).(7832-7829), (3309-3309).(2964-2963)), Bloom = { (9031-9031).(283-277), (3494-3470), (9276-9276).(465-380) } },
		Ice = { Faces = string.char(100,101,102,97,117,108,116), Time = (9316-9303), Stars = (263-263), Celestial = true,
			Atmo = Atmo(rgb((4644-4484), (5004-4784), (3029-2774)), rgb((8805-8685), (6117-5927), (4176-3921)), (4690-4690).(5027-4982), (4546-4546), (3371-3371).(7776-7773), (2220-2218).(9567-9562)),
			Grade = Grade(rgb((622-432), (8156-7921), (9242-8987)), (4197-4197).(7959-7958), (4454-4454).(3183-3178)), Rays = (9811-9811).(8895-8894) },
	}
	local _Oll0I00O = { string.char(68,101,102,97,117,108,116), string.char(83,117,110,115,101,116), string.char(71,111,108,100,101,110,32,72,111,117,114), string.char(78,105,103,104,116), string.char(83,112,97,99,101), string.char(86,111,105,100), string.char(80,117,114,112,108,101,32,68,114,101,97,109), string.char(79,118,101,114,99,97,115,116), string.char(66,108,111,111,100,32,77,111,111,110), string.char(84,111,120,105,99), string.char(73,99,101), string.char(67,117,115,116,111,109) }
	local _l0O0lllIlOlI = { string.char(66,107), string.char(68,110), string.char(70,116), string.char(76,102), string.char(82,116), string.char(85,112) }
	local _I000llIOOl0O = {
		On = false, Preset = string.char(68,101,102,97,117,108,116), Custom = {}, All = "", Celestial = true, Stars = (5790-2790), Lock = true, Spin = (5653-5653),
		Obj = nil, Fx = {}, Stash = {}, _Il0l0lIlO = nil, Token = (6157-6157), Cache = {},
	}

	local _OIIOIOOIO(_OlIOlIIO)
		local _I00l0II00Il00 = (tostring(_OlIOlIIO or ""):gsub(string.char(37,115), ""))
		if _I00l0II00Il00 == "" then return "" end
		if tonumber(_I00l0II00Il00) then return string.char(114,98,120,97,115,115,101,116,105,100,58,47,47) .. _I00l0II00Il00 end
		return _I00l0II00Il00
	end

	
	local _lIO0OOlll(_OlIOlIIO, _0OlIII00lIIIO)
		local _I00l0II00Il00 = (tostring(_OlIOlIIO or ""):gsub(string.char(37,115), ""))
		if _I00l0II00Il00 == "" then return _0OlIII00lIIIO("") end
		local _0Ol0IOIIlOOll = (_I00l0II00Il00:gsub(string.char(37,68), ""))
		if _0Ol0IOIIlOOll == "" or _I00l0II00Il00:find(string.char(94,114,98,120,97,115,115,101,116,58,47,47)) then return _0OlIII00lIIIO(ToContent(_I00l0II00Il00)) end
		if _I000llIOOl0O.Cache[_0Ol0IOIIlOOll] then return _0OlIII00lIIIO(_I000llIOOl0O.Cache[_0Ol0IOIIlOOll]) end
		task.spawn(function()
			local _I0OI0O0I0 = ResolveImageContent(_0Ol0IOIIlOOll)
			local _ll0IOIIIl = _I0OI0O0I0 and _I0OI0O0I0[(1692-1691)] or (string.char(114,98,120,97,115,115,101,116,105,100,58,47,47) .. _0Ol0IOIIlOOll)
			_I000llIOOl0O.Cache[_0Ol0IOIIlOOll] = _ll0IOIIIl
			_0OlIII00lIIIO(_ll0IOIIIl)
		end)
	end

	local _l0OI00l0IlIll(_I0lI0OO0l0, _l0I0IIO00)
		local _OI0I0IIO00 = _I000llIOOl0O.Fx[_l0I0IIO00]
		if _OI0I0IIO00 and _OI0I0IIO00.Parent == _IlII0lIllO then return _OI0I0IIO00 end
		if _OI0I0IIO00 then _OI0I0IIO00:Destroy() end
		_OI0I0IIO00 = Instance.new(_I0lI0OO0l0)
		_OI0I0IIO00.Name = string.char(80,114,101,115,116,105,103,101) .. _l0I0IIO00
		_OI0I0IIO00.Parent = _IlII0lIllO
		_I000llIOOl0O.Fx[_l0I0IIO00] = _OI0I0IIO00
		return _OI0I0IIO00
	end

	local _I0OOlOIOIOOI(_l0I0IIO00)
		local _OI0I0IIO00 = _I000llIOOl0O.Fx[_l0I0IIO00]
		if _OI0I0IIO00 then
			_OI0I0IIO00:Destroy()
			_I000llIOOl0O.Fx[_l0I0IIO00] = nil
		end
	end

	
	local _0lO0IOOOOIlO(_I0lI0OO0l0)
		for _00lO00l000I0O, _0lIOll00I in _IlII0lIllO:GetChildren() do
			if _0lIOll00I:IsA(_I0lI0OO0l0) and _0lIOll00I ~= _I000llIOOl0O.Obj and _0lIOll00I ~= _I000llIOOl0O.Fx.Atmo then
				_I000llIOOl0O.Stash[_0lIOll00I] = true
				_0lIOll00I.Parent = nil
			end
		end
	end

	local _lI0IlIIOIO0O()
		_I000llIOOl0O.Token += (9701-9700)
		if _I000llIOOl0O.Obj then _I000llIOOl0O.Obj:Destroy() _I000llIOOl0O.Obj = nil end
		for _00lO00l000I0O, _l0I0IIO00 in { string.char(65,116,109,111), string.char(71,114,97,100,101), string.char(66,108,111,111,109), string.char(82,97,121,115) } do FxDrop(_l0I0IIO00) end
		for _OI0I0IIO00 in _I000llIOOl0O.Stash do _OI0I0IIO00.Parent = _IlII0lIllO end
		table.clear(_I000llIOOl0O.Stash)
		if _I000llIOOl0O._Il0l0lIlO then
			_IlII0lIllO.ColorShift_Top, _IlII0lIllO.ColorShift_Bottom = _I000llIOOl0O._Il0l0lIlO.Top, _I000llIOOl0O._Il0l0lIlO.Bottom
			if not _O00Ol00Ol.Light then _IlII0lIllO.ClockTime = _I000llIOOl0O._Il0l0lIlO.Time end
			_I000llIOOl0O._Il0l0lIlO = nil
		end
	end

	local _0OIIOlIIll()
		if not _I000llIOOl0O.On then
			RestoreSky()
			return
		end
		_I000llIOOl0O.Token += (134-133)
		local _0IlIll0ll = _I000llIOOl0O.Token
		local _II0lO0lOIlll = _I000llIOOl0O.Preset == string.char(67,117,115,116,111,109)
		local _O0I0lO0l0I0Ol = _OI00OOIllO[_I000llIOOl0O.Preset] or _OI00OOIllO.Default

		if not _I000llIOOl0O._Il0l0lIlO then
			_I000llIOOl0O._Il0l0lIlO = { Top = _IlII0lIllO.ColorShift_Top, Bottom = _IlII0lIllO.ColorShift_Bottom, Time = _IlII0lIllO.ClockTime }
		end
		if not _I000llIOOl0O.Obj or _I000llIOOl0O.Obj.Parent ~= _IlII0lIllO then
			if _I000llIOOl0O.Obj then _I000llIOOl0O.Obj:Destroy() end
			local _I0ll0II0OI0 = Instance.new(string.char(83,107,121))
			_I0ll0II0OI0.Name = string.char(80,114,101,115,116,105,103,101,83,107,121)
			_I0ll0II0OI0.Parent = _IlII0lIllO
			_I000llIOOl0O.Obj = _I0ll0II0OI0
		end
		StashOthers(string.char(83,107,121))
		local _llIOl0OOlI0I = _I000llIOOl0O.Obj

		
		if _II0lO0lOIlll then
			for _00lO00l000I0O, face in _l0O0lllIlOlI do
				local _Il0OOO0I0O = _I000llIOOl0O.Custom[face]
				if not _Il0OOO0I0O or (tostring(_Il0OOO0I0O):gsub(string.char(37,115), "")) == "" then
					_Il0OOO0I0O = _I000llIOOl0O.All
				end
				ResolveFace(_Il0OOO0I0O, function(_ll0IOIIIl)
					if _I000llIOOl0O.Token == _0IlIll0ll and _I000llIOOl0O.Obj == _llIOl0OOlI0I then
						_llIOl0OOlI0I[string.char(83,107,121,98,111,120) .. face] = _ll0IOIIIl ~= "" and _ll0IOIIIl or _IIlOOIlO0lOO[face]
					end
				end)
			end
			_llIOl0OOlI0I.CelestialBodiesShown = _I000llIOOl0O.Celestial
			_llIOl0OOlI0I.StarCount = _I000llIOOl0O.Stars
		else
			local _O0llO0II0Ol0 = _O0I0lO0l0I0Ol.Faces == string.char(98,108,97,99,107) and {} or (type(_O0I0lO0l0I0Ol.Faces) == string.char(116,97,98,108,101) and _O0I0lO0l0I0Ol.Faces or _IIlOOIlO0lOO)
			for _00lO00l000I0O, face in _l0O0lllIlOlI do
				_llIOl0OOlI0I[string.char(83,107,121,98,111,120) .. face] = ToContent(_O0llO0II0Ol0[face])
			end
			_llIOl0OOlI0I.CelestialBodiesShown = _I000llIOOl0O.Celestial and _O0I0lO0l0I0Ol.Celestial ~= false
			_llIOl0OOlI0I.StarCount = _O0I0lO0l0I0Ol.Stars or _I000llIOOl0O.Stars
		end

		
		local _I0lllIOI0IOIl = (not _II0lO0lOIlll) and _O0I0lO0l0I0Ol.Atmo or nil
		if _I0lllIOI0IOIl then
			local _IIO0I0OO = FxGet(string.char(65,116,109,111,115,112,104,101,114,101), string.char(65,116,109,111))
			StashOthers(string.char(65,116,109,111,115,112,104,101,114,101))
			_IIO0I0OO.Color, _IIO0I0OO.Decay, _IIO0I0OO.Density, _IIO0I0OO.Offset, _IIO0I0OO.Glare, _IIO0I0OO.Haze = _I0lllIOI0IOIl.Color, _I0lllIOI0IOIl.Decay, _I0lllIOI0IOIl.Density, _I0lllIOI0IOIl.Offset, _I0lllIOI0IOIl.Glare, _I0lllIOI0IOIl.Haze
		else
			FxDrop(string.char(65,116,109,111))
			for _OI0I0IIO00 in _I000llIOOl0O.Stash do
				if _OI0I0IIO00:IsA(string.char(65,116,109,111,115,112,104,101,114,101)) then
					_OI0I0IIO00.Parent = _IlII0lIllO
					_I000llIOOl0O.Stash[_OI0I0IIO00] = nil
				end
			end
		end

		
		local _ll0ll0IIlO0O = (not _II0lO0lOIlll) and _O0I0lO0l0I0Ol.Grade or nil
		if _ll0ll0IIlO0O then
			local _0l0Oll0IO = FxGet(string.char(67,111,108,111,114,67,111,114,114,101,99,116,105,111,110,69,102,102,101,99,116), string.char(71,114,97,100,101))
			_0l0Oll0IO.TintColor, _0l0Oll0IO.Saturation, _0l0Oll0IO.Contrast, _0l0Oll0IO.Brightness = _ll0ll0IIlO0O.Tint, _ll0ll0IIlO0O.Sat, _ll0ll0IIlO0O.Contrast, _ll0ll0IIlO0O.Bright
		else
			FxDrop(string.char(71,114,97,100,101))
		end
		local _00OlO00I0IO0 = (not _II0lO0lOIlll) and _O0I0lO0l0I0Ol.Bloom or nil
		if _00OlO00I0IO0 then
			local _0OlOIllOI = FxGet(string.char(66,108,111,111,109,69,102,102,101,99,116), string.char(66,108,111,111,109))
			_0OlOIllOI.Intensity, _0OlOIllOI.Size, _0OlOIllOI.Threshold = _00OlO00I0IO0[(607-606)], _00OlO00I0IO0[(6663-6661)], _00OlO00I0IO0[(9781-9778)]
		else
			FxDrop(string.char(66,108,111,111,109))
		end
		local _000lIOl0O0 = (not _II0lO0lOIlll) and _O0I0lO0l0I0Ol.Rays or nil
		if _000lIOl0O0 then
			local _II0OI0Illl = FxGet(string.char(83,117,110,82,97,121,115,69,102,102,101,99,116), string.char(82,97,121,115))
			_II0OI0Illl.Intensity, _II0OI0Illl.Spread = _000lIOl0O0, (427-427).(7044-7038)
		else
			FxDrop(string.char(82,97,121,115))
		end

		_IlII0lIllO.ColorShift_Top = (not _II0lO0lOIlll and _O0I0lO0l0I0Ol.Top) or _I000llIOOl0O._Il0l0lIlO.Top
		_IlII0lIllO.ColorShift_Bottom = (not _II0lO0lOIlll and _O0I0lO0l0I0Ol.Bottom) or _I000llIOOl0O._Il0l0lIlO.Bottom
		if not _II0lO0lOIlll and _O0I0lO0l0I0Ol.Time and not _O00Ol00Ol.Light then
			_IlII0lIllO.ClockTime = _O0I0lO0l0I0Ol.Time
		end
	end

	
	Connect(_IlII0lIllO.ChildAdded, function(_0lIOll00I)
		task.defer(function()
			if not _I000llIOOl0O.On then return end
			if _0lIOll00I:IsA(string.char(83,107,121)) and _0lIOll00I ~= _I000llIOOl0O.Obj then
				_I000llIOOl0O.Stash[_0lIOll00I] = true
				_0lIOll00I.Parent = nil
			elseif _0lIOll00I:IsA(string.char(65,116,109,111,115,112,104,101,114,101)) and _I000llIOOl0O.Fx.Atmo and _0lIOll00I ~= _I000llIOOl0O.Fx.Atmo then
				_I000llIOOl0O.Stash[_0lIOll00I] = true
				_0lIOll00I.Parent = nil
			end
		end)
	end)

	
	Connect(_0IOO0IIIlO.Heartbeat, function(_lOIOlOllI)
		if not _I000llIOOl0O.On then return end
		if _I000llIOOl0O.Lock and not _O00Ol00Ol.Light then
			local _O0I0lO0l0I0Ol = _OI00OOIllO[_I000llIOOl0O.Preset]
			if _O0I0lO0l0I0Ol and _O0I0lO0l0I0Ol.Time then _IlII0lIllO.ClockTime = _O0I0lO0l0I0Ol.Time end
		end
		local _llIOl0OOlI0I = _I000llIOOl0O.Obj
		if _llIOl0OOlI0I then
			if _llIOl0OOlI0I.Parent ~= _IlII0lIllO then _llIOl0OOlI0I.Parent = _IlII0lIllO end
			if _I000llIOOl0O.Spin ~= (2231-2231) then
				pcall(function()
					local _OllOO0llO = _llIOl0OOlI0I.SkyboxOrientation
					_llIOl0OOlI0I.SkyboxOrientation = Vector3.new(_OllOO0llO.X, (_OllOO0llO.Y + _I000llIOOl0O.Spin * _lOIOlOllI) % (3349-2989), _OllOO0llO.Z)
				end)
			end
		end
	end)

	local _0lOlOlO0lOI = worldTab:AddCard((362-360), string.char(83,107,121,98,111,120))
	local skySettings
	_0lOlOlO0lOI:AddToggle({
		Name = string.char(67,117,115,116,111,109,32,83,107,121), Flag = string.char(67,117,115,116,111,109,83,107,121),
		Callback = function(_O0llI0OOllI0) _I000llIOOl0O.On = _O0llI0OOllI0 ApplySky() end,
		OnRightClick = function() skySettings:Toggle() end,
	})
	_0lOlOlO0lOI:AddDropdown({
		Name = string.char(83,107,121,32,80,114,101,115,101,116), Options = _Oll0I00O, Default = string.char(68,101,102,97,117,108,116), Flag = string.char(83,107,121,80,114,101,115,101,116),
		Callback = function(_O0llI0OOllI0) _I000llIOOl0O.Preset = _O0llI0OOllI0 ApplySky() end,
	})
	skySettings = _0lOlOlO0lOI:AddSettings()
	skySettings:AddToggle({
		Name = string.char(76,111,99,107,32,84,105,109,101), Default = true, Flag = string.char(83,107,121,76,111,99,107,84,105,109,101),
		Callback = function(_O0llI0OOllI0) _I000llIOOl0O.Lock = _O0llI0OOllI0 end,
	})
	skySettings:AddToggle({
		Name = string.char(83,117,110,32,47,32,77,111,111,110), Default = true, Flag = string.char(83,107,121,67,101,108,101,115,116,105,97,108),
		Callback = function(_O0llI0OOllI0) _I000llIOOl0O.Celestial = _O0llI0OOllI0 if _I000llIOOl0O.On then ApplySky() end end,
	})
	skySettings:AddSlider({
		Name = string.char(83,116,97,114,115,32,40,67,117,115,116,111,109,41), Min = (4243-4243), Max = (14341-9341), Default = (6319-3319), Step = (7283-7183), Flag = string.char(83,107,121,83,116,97,114,115),
		Callback = function(_O0llI0OOllI0) _I000llIOOl0O.Stars = _O0llI0OOllI0 if _I000llIOOl0O.On then ApplySky() end end,
	})
	skySettings:AddSlider({
		Name = string.char(83,112,105,110,32,83,112,101,101,100), Min = (2364-2364), Max = (5149-5119), Default = (8391-8391), Step = (3721-3720), Flag = string.char(83,107,121,83,112,105,110),
		Callback = function(_O0llI0OOllI0) _I000llIOOl0O.Spin = _O0llI0OOllI0 end,
	})
	skySettings:AddInput({
		Name = string.char(65,108,108,32,70,97,99,101,115,32,73,68), Placeholder = string.char(111,110,101,32,105,109,97,103,101,32,105,100), Flag = string.char(83,107,121,65,108,108,70,97,99,101,115),
		Callback = function(_OlIOlIIO)
			_I000llIOOl0O.All = _OlIOlIIO
			if _I000llIOOl0O.On and _I000llIOOl0O.Preset == string.char(67,117,115,116,111,109) then ApplySky() end
		end,
	})
	for _00lO00l000I0O, face in _l0O0lllIlOlI do
		skySettings:AddInput({
			Name = string.char(67,117,115,116,111,109,32) .. face, Placeholder = string.char(105,109,97,103,101,32,105,100), Flag = string.char(83,107,121,67,117,115,116,111,109) .. face,
			Callback = function(_OlIOlIIO)
				_I000llIOOl0O.Custom[face] = _OlIOlIIO
				if _I000llIOOl0O.On and _I000llIOOl0O.Preset == string.char(67,117,115,116,111,109) then ApplySky() end
			end,
		})
	end
	_0lOlOlO0lOI:AddLabel(string.char(80,105,99,107,32,97,32,116,104,101,109,101,44,32,110,111,32,105,100,115,32,110,101,101,100,101,100,32,40,115,117,110,115,101,116,44,32,110,105,103,104,116,44,32,115,112,97,99,101,44,32,118,111,105,100,44,32,116,111,120,105,99,44,32,105,99,101,46,46,46,41,46,32,82,105,103,104,116,45,99,108,105,99,107,32,102,111,114,32,76,111,99,107,32,84,105,109,101,44,32,115,117,110,47,109,111,111,110,44,32,115,112,105,110,44,32,97,110,100,32,67,117,115,116,111,109,58,32,112,97,115,116,101,32,111,110,101,32,105,109,97,103,101,32,105,100,32,105,110,32,65,108,108,32,70,97,99,101,115,32,40,111,114,32,112,101,114,45,102,97,99,101,32,105,100,115,41,46,32,68,101,99,97,108,32,105,100,115,32,97,114,101,32,99,111,110,118,101,114,116,101,100,32,97,117,116,111,109,97,116,105,99,97,108,108,121,46))

	
	
	
	
	local _lIOlIlIIII = { On = false, Type = string.char(87,97,116,101,114), Custom = "", Amount = (5536-5416), Speed = (1828-1827), Size = (6562-6561), Tint = _0OOIIlO0I0OI, TintSet = false, _OOOIl0IO = {} }
	local _Il0lI0IIl00l = string.char(114,98,120,97,115,115,101,116,58,47,47,116,101,120,116,117,114,101,115,47,112,97,114,116,105,99,108,101,115,47,115,112,97,114,107,108,101,115,95,109,97,105,110,46,100,100,115)
	local _IOl0IIllI = {
		Water = { Texture = _Il0lI0IIl00l, Color = Color3.fromRGB((7706-7536), (877-672), (6388-6133)), Size = (5452-5452).(1210-1185), Speed = (3006-2926), RateMul = (4304-4300), Orientation = Enum.ParticleOrientation.VelocityParallel, Rot = NumberRange.new((7927-7927)) },
		Snow = { Texture = _Il0lI0IIl00l, Color = _0OOIIlO0I0OI, Size = (3480-3480).(8865-8830), Speed = (5655-5645), RateMul = (5381-5380), Orientation = Enum.ParticleOrientation.FacingCamera, Rot = NumberRange.new(-(5844-5754), (615-525)) },
		Xmas = { ID = string.char(55,55,57,57,50,48,55,52,52,55,51,51,52,55), Color = _0OOIIlO0I0OI, Size = (8721-8720).(5834-5833), Speed = (6865-6853), RateMul = (8030-8030).(5309-5303), Orientation = Enum.ParticleOrientation.FacingCamera, Rot = NumberRange.new(-(1796-1736), (5608-5548)) },
		Custom = { Color = _0OOIIlO0I0OI, Size = (5747-5746), Speed = (7515-7501), RateMul = (7930-7930).(9363-9357), Orientation = Enum.ParticleOrientation.FacingCamera, Rot = NumberRange.new(-(6073-6013), (777-717)) },
	}
	local _IOlOOlOOOII0, _I0OOIllI0(_O00IIllll, _0OlIII00lIIIO)
		local _I00O0OOIllO = _IOl0IIllI[_O00IIllll]
		local _0Ol0IOIIlOOll = _O00IIllll == string.char(67,117,115,116,111,109) and _lIOlIlIIII.Custom or _I00O0OOIllO.ID
		if not _0Ol0IOIIlOOll then
			return _0OlIII00lIIIO(_I00O0OOIllO.Texture)
		end
		_0Ol0IOIIlOOll = (tostring(_0Ol0IOIIlOOll):gsub(string.char(37,68), ""))
		if _0Ol0IOIIlOOll == "" then
			return _0OlIII00lIIIO("")
		end
		if _lIOlIlIIII._OOOIl0IO[_0Ol0IOIIlOOll] then
			return _0OlIII00lIIIO(_lIOlIlIIII._OOOIl0IO[_0Ol0IOIIlOOll])
		end
		task.spawn(function()
			local _I0OI0O0I0, _I00OlIOO = ResolveImageContent(_0Ol0IOIIlOOll) 
			if _I0OI0O0I0 then
				_lIOlIlIIII._OOOIl0IO[_0Ol0IOIIlOOll] = _I0OI0O0I0[(1897-1896)]
				_0OlIII00lIIIO(_I0OI0O0I0[(2065-2064)])
			else
				_lOlOll0O:Notify(string.char(82,97,105,110), _I00OlIOO or string.char(67,111,117,108,100,32,110,111,116,32,108,111,97,100,32,116,104,97,116,32,105,109,97,103,101,46), (5112-5107), true)
			end
		end)
	end

	local _O00Ol0IOO0IOI()
		if not _lIOlIlIIII.On then
			if _IOlOOlOOOII0 then
				_IOlOOlOOOII0:Destroy()
				_IOlOOlOOOII0, RainEmitter = nil, nil
			end
			return
		end
		if not _IOlOOlOOOII0 then
			_IOlOOlOOOII0 = Instance.new(string.char(80,97,114,116))
			_IOlOOlOOOII0.Name = string.char(80,114,101,115,116,105,103,101,82,97,105,110)
			_IOlOOlOOOII0.Size = Vector3.new((7913-7823), (7082-7081), (8161-8071))
			_IOlOOlOOOII0.Anchored, _IOlOOlOOOII0.CanCollide, _IOlOOlOOOII0.CanQuery, _IOlOOlOOOII0.CanTouch = true, false, false, false
			_IOlOOlOOOII0.Transparency = (6263-6262)
			_IOlOOlOOOII0.Parent = workspace
			RainEmitter = Instance.new(string.char(80,97,114,116,105,99,108,101,69,109,105,116,116,101,114))
			RainEmitter.EmissionDirection = Enum.NormalId.Bottom
			RainEmitter.SpreadAngle = Vector2.new((250-247), (5821-5818))
			RainEmitter.LockedToPart = false
			RainEmitter.LightEmission = (5086-5086).(394-392)
			RainEmitter.Transparency = NumberSequence.new((2773-2773).(9014-9013))
			RainEmitter.Acceleration = Vector3.zero
			RainEmitter.Parent = _IOlOOlOOOII0
		end
		local _O00IIllll = _lIOlIlIIII.Type
		local _I00O0OOIllO = _IOl0IIllI[_O00IIllll]
		RainTexture(_O00IIllll, function(_IO0llO00O)
			if not (RainEmitter and _lIOlIlIIII.On and _lIOlIlIIII.Type == _O00IIllll) then
				return
			end
			local _0OOlO0OlOOO = _I00O0OOIllO.Speed * _lIOlIlIIII.Speed
			RainEmitter.Texture = _IO0llO00O
			RainEmitter.Color = ColorSequence.new(_lIOlIlIIII.TintSet and _lIOlIlIIII.Tint or _I00O0OOIllO.Color)
			RainEmitter.LightEmission = _lIOlIlIIII.TintSet and (2519-2519) or (665-665).(9586-9584) 
			RainEmitter.Size = NumberSequence.new(_I00O0OOIllO.Size * _lIOlIlIIII.Size)
			RainEmitter.Speed = NumberRange.new(_0OOlO0OlOOO)
			RainEmitter.Lifetime = NumberRange.new((4869-4799) / _0OOlO0OlOOO) 
			RainEmitter.Rate = _lIOlIlIIII.Amount * _I00O0OOIllO.RateMul
			RainEmitter.Orientation = _I00O0OOIllO.Orientation
			RainEmitter.RotSpeed = _I00O0OOIllO.Rot
		end)
	end

	Connect(_0IOO0IIIlO.RenderStepped, function()
		local _l0I0IOOlOO = workspace.CurrentCamera
		if _IOlOOlOOOII0 and _l0I0IOOlOO then
			_IOlOOlOOOII0.CFrame = CFrame.new(_l0I0IOOlOO.CFrame.Position + Vector3.new((5984-5984), (7728-7683), (6332-6332)))
		end
	end)

	local _O000IIIlI0OO0 = worldTab:AddCard((7526-7524), string.char(87,101,97,116,104,101,114))
	_O000IIIlI0OO0:AddToggle({ Name = string.char(82,97,105,110), Flag = string.char(82,97,105,110,79,110), Callback = function(_O0llI0OOllI0) _lIOlIlIIII.On = _O0llI0OOllI0 RainApply() end })
	_O000IIIlI0OO0:AddDropdown({
		Name = string.char(82,97,105,110,32,84,121,112,101), Options = { string.char(87,97,116,101,114), string.char(83,110,111,119), string.char(88,109,97,115), string.char(67,117,115,116,111,109) }, Default = string.char(87,97,116,101,114), Flag = string.char(82,97,105,110,84,121,112,101),
		Callback = function(_O0llI0OOllI0) _lIOlIlIIII.Type = _O0llI0OOllI0 RainApply() end,
	})
	_O000IIIlI0OO0:AddInput({
		Name = string.char(67,117,115,116,111,109,32,73,109,97,103,101,32,73,68), Placeholder = string.char(117,115,101,100,32,98,121,32,67,117,115,116,111,109), Flag = string.char(82,97,105,110,67,117,115,116,111,109,73,100),
		Callback = function(_OlIOlIIO) _lIOlIlIIII.Custom = _OlIOlIIO if _lIOlIlIIII.Type == string.char(67,117,115,116,111,109) then RainApply() end end,
	})
	_O000IIIlI0OO0:AddSlider({ Name = string.char(65,109,111,117,110,116), Min = (508-498), Max = (10119-9719), Default = (6875-6755), Step = (2373-2368), Flag = string.char(82,97,105,110,65,109,111,117,110,116), Callback = function(_O0llI0OOllI0) _lIOlIlIIII.Amount = _O0llI0OOllI0 RainApply() end })
	_O000IIIlI0OO0:AddSlider({ Name = string.char(83,112,101,101,100), Min = (8324-8324).(5117-5114), Max = (4249-4246), Default = (5557-5556), Step = (9076-9076).(8595-8594), Flag = string.char(82,97,105,110,83,112,101,101,100), Callback = function(_O0llI0OOllI0) _lIOlIlIIII.Speed = _O0llI0OOllI0 RainApply() end })
	_O000IIIlI0OO0:AddSlider({ Name = string.char(83,105,122,101), Min = (1659-1659).(2805-2802), Max = (7504-7501), Default = (2934-2933), Step = (9594-9594).(9769-9768), Flag = string.char(82,97,105,110,83,105,122,101), Callback = function(_O0llI0OOllI0) _lIOlIlIIII.Size = _O0llI0OOllI0 RainApply() end })
	local _OIIlI0OOOO0 = _O000IIIlI0OO0:AddColorPicker({
		Name = string.char(84,105,110,116), Default = _0OOIIlO0I0OI, Flag = string.char(82,97,105,110,84,105,110,116),
		Callback = function(_00lOOlIl0lOI0) _lIOlIlIIII.Tint = _00lOOlIl0lOI0 _lIOlIlIIII.TintSet = true RainApply() end,
	})
	_O000IIIlI0OO0:AddButton({ Name = string.char(82,101,115,101,116,32,84,105,110,116), Callback = function()
		_lIOlIlIIII.TintSet = false
		_OIIlI0OOOO0:Set(_0OOIIlO0I0OI, true)
		RainApply()
	end })

	
	
	
	
	
	
	local _I000l0llII = { Minecraft = "" }
	local _l0lllIOIlIIl0 = { On = false, Mode = string.char(77,105,110,101,99,114,97,102,116), Custom = "", Tile = (1395-1391), _OOOIl0IO = nil, Blocks = false,
		Applied = {}, Saved = {}, Terrain = {}, Token = (3019-3019) }
	local _II0OIII0IOOll = Enum.NormalId:GetEnumItems()
	local _0OIOO0I0I = {
		[Enum.Material.Grass] = rgb((2503-2408), (2269-2110), (9736-9683)), [Enum.Material.Ground] = rgb((3299-3165), (3537-3441), (6328-6261)),
		[Enum.Material.Rock] = rgb((586-461), (8872-8747), (3357-3232)), [Enum.Material.Sand] = rgb((9430-9211), (9752-9541), (6456-6296)),
	}

	local _00IIlO00l(_l0IllIlIOlI)
		if _l0IllIlIOlI:IsA(string.char(84,101,114,114,97,105,110)) or _l0IllIlIOlI.Transparency >= (8302-8302).(2226-2131) or _l0IllIlIOlI.Size.Magnitude < (6323-6322).(4623-4618) then return true end
		if _l0IllIlIOlI:IsDescendantOf(_OllOIIlO0OO) or (_00000Oll.Folder and _l0IllIlIOlI:IsDescendantOf(_00000Oll.Folder)) then return true end
		if _IOlOOlOOOII0 and _l0IllIlIOlI == _IOlOOlOOOII0 then return true end
		local _0IlIIl0IOOO = _l0IllIlIOlI:FindFirstAncestorOfClass(string.char(77,111,100,101,108))
		return _0IlIIl0IOOO ~= nil and _0IlIIl0IOOO:FindFirstChildOfClass(string.char(72,117,109,97,110,111,105,100)) ~= nil 
	end

	
	local _0llI0lOl(_l0IllIlIOlI)
		local _lOI0OOOOIIO, _0I0OIl000I, _O0llI0OOllI0 = _l0IllIlIOlI.Color:ToHSV()
		if _0I0OIl000I < (7948-7948).(268-250) then
			if _O0llI0OOllI0 < (3042-3042).(9768-9743) then return Enum.Material.Slate, rgb((437-377), (379-319), (5555-5490)) end
			return Enum.Material.Cobblestone, rgb((9937-9812), (1224-1099), (778-653))
		elseif _lOI0OOOOIIO >= (2535-2535).(2205-2203) and _lOI0OOOOIIO <= (9849-9849).(2963-2918) then
			return Enum.Material.Grass, rgb((9256-9161), (6394-6235), (7962-7909))
		elseif _lOI0OOOOIIO < (3787-3787).(5539-5527) or _lOI0OOOOIIO > (9848-9848).(6058-5963) then
			if _O0llI0OOllI0 < (4715-4715).(6503-6497) then return Enum.Material.Ground, rgb((3422-3288), (8904-8808), (8128-8061)) end
			return Enum.Material.WoodPlanks, rgb((6768-6606), (4306-4176), (3116-3038))
		elseif _lOI0OOOOIIO < (6796-6796).(7486-7484) then
			return Enum.Material.Sand, rgb((7366-7147), (4854-4643), (1391-1231))
		end
		return nil
	end

	local _IOIIIIOlOOl(_l0IllIlIOlI)
		if _l0lllIOIlIIl0.Blocks then
			if _l0lllIOIlIIl0.Saved[_l0IllIlIOlI] then return end
			local _lIOIOO000OIOO, _lIOlI0lIIO0 = BlockStyle(_l0IllIlIOlI)
			if _lIOIOO000OIOO then
				_l0lllIOIlIIl0.Saved[_l0IllIlIOlI] = { _l0IllIlIOlI.Material, _l0IllIlIOlI.Color }
				_l0IllIlIOlI.Material, _l0IllIlIOlI.Color = _lIOIOO000OIOO, _lIOlI0lIIO0
			end
		elseif _l0IllIlIOlI:IsA(string.char(80,97,114,116)) or _l0IllIlIOlI:IsA(string.char(87,101,100,103,101,80,97,114,116)) then
			if _l0IllIlIOlI:FindFirstChild(string.char(80,114,101,115,116,105,103,101,84,101,120)) then return end
			for _00lO00l000I0O, face in _II0OIII0IOOll do
				local _IOOIIOllI0l = Instance.new(string.char(84,101,120,116,117,114,101))
				_IOOIIOllI0l.Name = string.char(80,114,101,115,116,105,103,101,84,101,120)
				_IOOIIOllI0l.Face = face
				_IOOIIOllI0l.Texture = _l0lllIOIlIIl0._OOOIl0IO
				_IOOIIOllI0l.StudsPerTileU, _IOOIIOllI0l.StudsPerTileV = _l0lllIOIlIIl0.Tile, _l0lllIOIlIIl0.Tile
				_IOOIIOllI0l.Parent = _l0IllIlIOlI
				table.insert(_l0lllIOIlIIl0.Applied, _IOOIIOllI0l)
			end
		end
	end

	local _OI0000OOIO()
		_l0lllIOIlIIl0.Token += (9346-9345)
		for _00lO00l000I0O, _IOOIIOllI0l in _l0lllIOIlIIl0.Applied do _IOOIIOllI0l:Destroy() end
		table.clear(_l0lllIOIlIIl0.Applied)
		for _l0IllIlIOlI, saved in _l0lllIOIlIIl0.Saved do
			if _l0IllIlIOlI.Parent then _l0IllIlIOlI.Material, _l0IllIlIOlI.Color = saved[(9952-9951)], saved[(1093-1091)] end
		end
		table.clear(_l0lllIOIlIIl0.Saved)
		for _lIOIOO000OIOO, _ll0l00OI in _l0lllIOIlIIl0.Terrain do
			pcall(function() workspace.Terrain:SetMaterialColor(_lIOIOO000OIOO, _ll0l00OI) end)
		end
		table.clear(_l0lllIOIlIIl0.Terrain)
		_l0lllIOIlIIl0._OOOIl0IO, _l0lllIOIlIIl0.Blocks = nil, false
	end

	local _IOll0Ol000Il()
		ClearTextures()
		if not _l0lllIOIlIIl0.On then return end
		local _0Ol0IOIIlOOll = (tostring(_l0lllIOIlIIl0.Mode == string.char(67,117,115,116,111,109) and _l0lllIOIlIIl0.Custom or _I000l0llII[_l0lllIOIlIIl0.Mode] or ""):gsub(string.char(37,68), ""))
		if _0Ol0IOIIlOOll == "" and _l0lllIOIlIIl0.Mode == string.char(67,117,115,116,111,109) then
			_lOlOll0O:Notify(string.char(84,101,120,116,117,114,101), string.char(84,121,112,101,32,97,110,32,105,109,97,103,101,32,105,100,32,105,110,32,116,104,101,32,84,101,120,116,117,114,101,32,73,68,32,98,111,120,32,102,111,114,32,67,117,115,116,111,109,46), (927-922), true)
			return
		end
		local _0IlIll0ll = _l0lllIOIlIIl0.Token
		task.spawn(function()
			if _0Ol0IOIIlOOll == "" then
				_l0lllIOIlIIl0.Blocks = true 
				for _lIOIOO000OIOO, _ll0l00OI in _0OIOO0I0I do
					pcall(function()
						_l0lllIOIlIIl0.Terrain[_lIOIOO000OIOO] = workspace.Terrain:GetMaterialColor(_lIOIOO000OIOO)
						workspace.Terrain:SetMaterialColor(_lIOIOO000OIOO, _ll0l00OI)
					end)
				end
			else
				local _I0OI0O0I0, _I00OlIOO = ResolveImageContent(_0Ol0IOIIlOOll)
				if not _I0OI0O0I0 then
					_lOlOll0O:Notify(string.char(84,101,120,116,117,114,101), _I00OlIOO, (5286-5281), true)
					return
				end
				if _l0lllIOIlIIl0.Token ~= _0IlIll0ll then return end
				_l0lllIOIlIIl0._OOOIl0IO = _I0OI0O0I0[(1383-1382)]
			end
			local _ll0l00IOlO = (4306-4306)
			for _00lO00l000I0O, _OI0l0l0lIOO0 in workspace:GetDescendants() do
				if _l0lllIOIlIIl0.Token ~= _0IlIll0ll then return end
				if _OI0l0l0lIOO0:IsA(string.char(66,97,115,101,80,97,114,116)) and not SkipPart(_OI0l0l0lIOO0) then
					Decorate(_OI0l0l0lIOO0)
					_ll0l00IOlO += (6349-6348)
					if _ll0l00IOlO % (8806-8656) == (4985-4985) then task.wait() end 
				end
			end
		end)
	end

	Connect(workspace.DescendantAdded, function(_OI0l0l0lIOO0)
		if _l0lllIOIlIIl0.On and (_l0lllIOIlIIl0._OOOIl0IO or _l0lllIOIlIIl0.Blocks) and _OI0l0l0lIOO0:IsA(string.char(66,97,115,101,80,97,114,116)) then
			task.defer(function()
				if _OI0l0l0lIOO0.Parent and not SkipPart(_OI0l0l0lIOO0) then Decorate(_OI0l0l0lIOO0) end
			end)
		end
	end)

	local _lOOO0OIllO = worldTab:AddCard((5975-5973), string.char(87,111,114,108,100,32,84,101,120,116,117,114,101))
	_lOOO0OIllO:AddToggle({ Name = string.char(87,111,114,108,100,32,84,101,120,116,117,114,101), Flag = string.char(87,111,114,108,100,84,101,120,116,117,114,101), Callback = function(_O0llI0OOllI0) _l0lllIOIlIIl0.On = _O0llI0OOllI0 ApplyTextures() end })
	_lOOO0OIllO:AddDropdown({
		Name = string.char(84,101,120,116,117,114,101), Options = { string.char(77,105,110,101,99,114,97,102,116), string.char(67,117,115,116,111,109) }, Default = string.char(77,105,110,101,99,114,97,102,116), Flag = string.char(84,101,120,116,117,114,101,77,111,100,101),
		Callback = function(_O0llI0OOllI0) _l0lllIOIlIIl0.Mode = _O0llI0OOllI0 if _l0lllIOIlIIl0.On then ApplyTextures() end end,
	})
	_lOOO0OIllO:AddInput({
		Name = string.char(84,101,120,116,117,114,101,32,73,68), Placeholder = string.char(102,111,114,32,67,117,115,116,111,109), Flag = string.char(84,101,120,116,117,114,101,73,100),
		Callback = function(_OlIOlIIO) _l0lllIOIlIIl0.Custom = _OlIOlIIO if _l0lllIOIlIIl0.On and _l0lllIOIlIIl0.Mode == string.char(67,117,115,116,111,109) then ApplyTextures() end end,
	})
	_lOOO0OIllO:AddSlider({
		Name = string.char(84,105,108,101,32,83,105,122,101), Min = (1082-1081), Max = (6575-6559), Default = (6235-6231), Step = (4811-4810), Flag = string.char(84,101,120,116,117,114,101,84,105,108,101),
		Callback = function(_O0llI0OOllI0)
			_l0lllIOIlIIl0.Tile = _O0llI0OOllI0
			for _00lO00l000I0O, _IOOIIOllI0l in _l0lllIOIlIIl0.Applied do
				if _IOOIIOllI0l.Parent then _IOOIIOllI0l.StudsPerTileU, _IOOIIOllI0l.StudsPerTileV = _O0llI0OOllI0, _O0llI0OOllI0 end
			end
		end,
	})
	_lOOO0OIllO:AddLabel(string.char(77,105,110,101,99,114,97,102,116,32,119,111,114,107,115,32,111,117,116,32,111,102,32,116,104,101,32,98,111,120,32,119,105,116,104,32,97,32,98,108,111,99,107,121,32,112,97,108,101,116,116,101,46,32,80,97,115,116,101,32,97,32,98,108,111,99,107,32,105,109,97,103,101,32,105,100,32,105,110,116,111,32,84,101,120,116,117,114,101,73,100,115,46,77,105,110,101,99,114,97,102,116,32,102,111,114,32,114,101,97,108,32,116,101,120,116,117,114,101,115,32,40,84,105,108,101,32,83,105,122,101,32,111,110,108,121,32,97,102,102,101,99,116,115,32,105,109,97,103,101,32,116,101,120,116,117,114,101,115,41,46))

	
	
	
	local _0lll0OO00 = _lOlOll0O.Destroy
	function _lOlOll0O:Destroy()
		_OIl0O000l00.On = false
		pcall(function() _0IOO0IIIlO:UnbindFromRenderStep(string.char(80,114,101,115,116,105,103,101,70,111,118)) end)
		if workspace.CurrentCamera and _O00Ol00Ol.Fov then workspace.CurrentCamera.FieldOfView = _Il0l0lIlO.Fov end
		if _O00Ol00Ol.Light then
			_IlII0lIllO.Ambient, _IlII0lIllO.OutdoorAmbient = _Il0l0lIlO.Ambient, _Il0l0lIlO.OutdoorAmbient
			_IlII0lIllO.Brightness, _IlII0lIllO.ClockTime = _Il0l0lIlO.Brightness, _Il0l0lIlO.ClockTime
		end
		if _O00Ol00Ol.Fog then
			_IlII0lIllO.FogEnd, _IlII0lIllO.FogStart, _IlII0lIllO.FogColor = _Il0l0lIlO.FogEnd, _Il0l0lIlO.FogStart, _Il0l0lIlO.FogColor
		end
		_O00Ol00Ol.Fov, _O00Ol00Ol.Light, _O00Ol00Ol.Fog = false, false, false
		_I000llIOOl0O.On = false
		ApplySky()
		_lIOlIlIIII.On = false
		RainApply()
		_l0lllIOIlIIl0.On = false
		ClearTextures()
		TungSet(false)
		_OllOIIlO0OO:Destroy()
		_0lll0OO00(self)
	end
end


task.defer(function()
	local _O00OlOlIOOO = _0lIl0IlOl.GetAutoload()
	if _O00OlOlIOOO and _O00OlOlIOOO ~= "" then
		local _O0OlIIOO = _0lIl0IlOl.Load(_O00OlOlIOOO)
		if _O0OlIIOO then
			_lOlOll0O:Notify(string.char(65,117,116,111,108,111,97,100), string.char(76,111,97,100,101,100,32,99,111,110,102,105,103,58,32) .. _O00OlOlIOOO, (2792-2789), true)
		end
	end
	_lOlOll0O:SetVisible(true)

	task.delay((9769-9765), function()
		if #_OlIOIII0Ol > (347-347) then
			_lOlOll0O:Notify(string.char(73,109,97,103,101,115,32,110,111,116,32,108,111,97,100,105,110,103), string.char(67,104,101,99,107,32,116,104,101,32,79,117,116,112,117,116,32,119,105,110,100,111,119,32,102,111,114,32,116,104,101,32,101,120,97,99,116,32,114,101,97,115,111,110,46), (5725-5719), true)
		end
	end)
end)

_Illl0l000.PrestigeRemake = _lOlOll0O
return _lOlOll0O
