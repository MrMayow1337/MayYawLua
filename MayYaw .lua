local ScriptName=GetScriptName()
local Version="1.4"
local LastVersion= string.gsub(http.Get("https://raw.githubusercontent.com/MrMayow1337/MayYawLua/main/Version.txt"), "\n", "")
local LastScript=http.Get("https://raw.githubusercontent.com/MrMayow1337/MayYawLua/main/MayYaw%20.lua")
if LastVersion~=Version then
	file.Delete(ScriptName)
	file.Open(ScriptName,"w")
	file.Write(ScriptName,LastScript)
end
local MayYaw = gui.Tab(gui.Reference("Settings"), "mayyaw", "MayYaw");
local MainYaw=gui.Groupbox(MayYaw, "Enable MayYaw", 5, 10, 175, 0)
local EnableYaw=gui.Checkbox(MainYaw, "Enableyaw", "Enable", 1)
local ComboboxMenuMode=gui.Combobox(MainYaw, "ComboxMenuMode", "Mode","Anti-Aim","Visuals","Misc")
local GroupboxMain=gui.Groupbox(MayYaw, "Press 'Enable'", 190, 10, 410, 0)
local GroupboxAntiAim=gui.Groupbox(MayYaw, "MayYaw Anti-Aim", 190, 10, 410, 0)
local GroupboxVisuals=gui.Groupbox(MayYaw, "MayYaw Visuals", 190, 10, 410, 0)
local EnableIndicators=gui.Checkbox(GroupboxVisuals, "EnableIndocators", "Indicators", 0)
local EnableKeybinds=gui.Checkbox(GroupboxVisuals, "EnableKeybinds", "Keybinds", 0)
local EnableDesyncInvertIndicator=gui.Checkbox(GroupboxVisuals, "EnableDesyncInvertIndicator", "Desync Indicator", 0)
local EnableWatermark=gui.Checkbox(GroupboxVisuals,"EnableWatermark","Watermark",0)
local EnableClantag=gui.Checkbox(GroupboxVisuals,"EnableClantag","Clantag",0)
local AspectRatioDefValSlider=gui.Slider(GroupboxVisuals,"AspectRatioVal","Aspect Ratio",0,0,200)
local GroupboxMisc=gui.Groupbox(MayYaw, "MayYaw Misc", 190, 10, 190, 0)
local GroupboxAutoBuy=gui.Groupbox(MayYaw, "AutoBuy", 190, 250, 190, 0)
local ComboboxAutoBuyPrimaryWeapon=gui.Combobox(GroupboxAutoBuy, "ComboxAutoBuyPrimaryWeapon", "Primary Weapon","None","Auto","Ssg08","AWP")
local ComboboxAutoBuySecondaryWeapon=gui.Combobox(GroupboxAutoBuy, "ComboxAutoBuySecondaryWeapon", "Secondary Weapon","None","Deagle R8","Dual","Tec9/Five Seven")
local ComboboxAutoBuyArmor=gui.Combobox(GroupboxAutoBuy, "ComboxAutoBuyArmor", "Armor","None","Kevlar","Kevlar + Helmet")
local EnableDmg=gui.Checkbox(GroupboxMisc,"EnableDmg","DamageOverride",0)
local EnableEngineRadar=gui.Checkbox(GroupboxMisc,"EnableEngineRadar","EngineRadar",0)
local EnableJumpScoutFix=gui.Checkbox(GroupboxMisc,"EnableJumpScoutFix","Jump Scout Fix",0)
local EnableAutoBuy=gui.Checkbox(GroupboxMisc,"EnableAutoBuy","AutoBuy",0)
local EnableHitLog=gui.Checkbox(GroupboxMisc,"EnableHitLog","Advanced Damage Log",0)
local GroupboxDMG=gui.Groupbox(MayYaw, "Damage Override", 390, 10, 240, 0)
local AwpDMGOverrideSlider=gui.Slider(GroupboxDMG, "awpdmgoverrideslider", "Awp Override Min Damage", 0, 1, 100 )
local AutoDMGOverrideSlider=gui.Slider(GroupboxDMG, "autodmgoverrideslider", "Auto Override Min Damage", 0, 1, 100 )
local Ssg08DMGOverrideSlider=gui.Slider(GroupboxDMG, "ssg08dmgoverrideslider", "Scout Override Min Damage", 0, 1, 100 )
local HeavyPistolDMGOverrideSlider=gui.Slider(GroupboxDMG, "heavypistoldmgoverrideslider", "Heavy Pistol Override Min Damage", 0, 1, 100 )
local ComboboxDMGmode=gui.Combobox(GroupboxDMG, "ComboboxDMGmode", "Mode","Hold","Toggle")
local DMGKey=gui.Keybox(GroupboxDMG,"DMGKey","Key", 0 )
local EnableMayYawAA=gui.Checkbox(GroupboxAntiAim,"EnableMayYawAA","MayYawAA",0)
local EnableCustomMayYawAA=gui.Checkbox(GroupboxAntiAim,"EbableCustomMayYawAA","Custom MayYawAA",0)
local EnableLagitAAonUse=gui.Checkbox(GroupboxAntiAim,"EnableLagitAAonUse","Legit AA on Use",0)
local GroupboxCustomMayYawAA=gui.Groupbox(MayYaw, "Custom MayYaw AA",  190, 175, 410, 0)
local RotationSliderCustom=gui.Slider(GroupboxCustomMayYawAA, "RotationSliderCustom", "Rotation Offset", 0, -58, 58 )
local LBYSliderCustom=gui.Slider(GroupboxCustomMayYawAA, "LBYSliderCustom", "LBY Offset", 0, -180, 180 )
local BaseYawSliderCustom=gui.Slider(GroupboxCustomMayYawAA,"BaseYawSliderCustom","Base Yaw Offset",0,-180,180)
local EnableLowDelta=gui.Checkbox(GroupboxCustomMayYawAA, "EnableLowDelta", "LowDelta",0)
local EnbaleAutoSwitchDesync=gui.Checkbox(GroupboxCustomMayYawAA,"EnbaleAutoSwitchDesync","Auto Desync Switch",0)
local ComboboxAutoDesyncInvertMode=gui.Combobox(GroupboxCustomMayYawAA, "ComboboxAutoDesyncInvertMode", "Desync Switch Mode","Distance","Local Player Velocity","Near crosshair")
local DesyncSwitchKey=gui.Keybox(GroupboxCustomMayYawAA,"DesyncSwitchKey","Desync Switch Key", 0 )
local DescriptionGroupbox=gui.Groupbox(MayYaw, "MayYaw Description", 5, 160, 175, 0)
local Descriptionmaintext=gui.Text(DescriptionGroupbox,"MayYaw lua for aimware")
local Descriptionversiontext=gui.Text(DescriptionGroupbox,"Version: "..Version)
local Descriptionavtortext=gui.Text(DescriptionGroupbox,"Created by Maybe")
local DescriptionDiscordtext=gui.Text(DescriptionGroupbox,"Discord: MrMaybe#2990")

local LastUpdGroupboxNotLatUpd=gui.Groupbox(MayYaw, "Last Update", 5, 335, 175, 0)
local LastUpdGroupbox=gui.Groupbox(MayYaw, "Last Update", 5, 335, 175, 0)
local LastUpddatetext=gui.Text(LastUpdGroupbox,"19.06.2021")
local LastUpdlog1text=gui.Text(LastUpdGroupbox,"[+] Auto Update")
local LastUpdlog2text=gui.Text(LastUpdGroupbox,"[+] Advanced DmgLog")
local LastUpdlog3text=gui.Text(LastUpdGroupbox,"[+] AspectRatio")
local LastUpdlog4text=gui.Text(LastUpdGroupbox,"[+] ClanTag")
local LastUpdlog5text=gui.Text(LastUpdGroupbox,"[+] 3 mode of AutoDSwitch")
local LastUpdlog6text=gui.Text(LastUpdGroupbox,"[=] Reworked MayYawAA")
local LastUpdlog7text=gui.Text(LastUpdGroupbox,"[=] Reworked DmgOverride")
local LastUpdlog8text=gui.Text(LastUpdGroupbox,"[=] Reworked Watermark")
local LastUpdlog9text=gui.Text(LastUpdGroupbox,"[=] Script Optimized ")
local UpdateText=gui.Text(LastUpdGroupboxNotLatUpd,"PLEASE RELOAD SCRIPT".."\n\n New version: "..LastVersion.."\n\n Your Version:"..Version)
local WatermarkColor=gui.ColorPicker(EnableWatermark,"Colorwatermark","Watermark Color", 56,56, 165, 255 )
local KeybindsColor=gui.ColorPicker(EnableKeybinds,"Colorwatermark","Keybinds Color", 56,56, 165, 255 )
local DesyncInvertActiveColor=gui.ColorPicker(EnableDesyncInvertIndicator,"DesyncInvertActiveColor","Active Arrow Color", 0,255, 0, 255 )
--[All ffi
ffi.cdef [[
    void* GetProcAddress(void* hModule, const char* lpProcName);
    void* GetModuleHandleA(const char* lpModuleName);

    typedef struct {
        uint8_t r;
        uint8_t g;
        uint8_t b;
        uint8_t a;
    } color_struct_t;

    typedef void (*console_color_print)(const color_struct_t&, const char*, ...);

    typedef void* (__thiscall* get_client_entity_t)(void*, int);
]]
local ffi_log = ffi.cast("console_color_print", ffi.C.GetProcAddress(ffi.C.GetModuleHandleA("tier0.dll"), "?ConColorMsg@@YAXABVColor@@PBDZZ"))
local SetClantag= ffi.cast('int(__fastcall*)(const char*, const char*)', mem.FindPattern('engine.dll', '53 56 57 8B DA 8B F9 FF 15'))
--]All ffi
--Fuctions:
	--Render GradientRect
function GradientRect(x,y,hight,wight,r,g,b,a)
	hight=a/hight
	if hight > 0 then
		for i=a, 0, -hight do
			draw.Color(r,g,b,i)
			draw.FilledRect(x,y,x+2,wight)
			x=x+1
		end
	elseif hight < 0 then
		for i=0, a, -hight do
			draw.Color(r,g,b,i)
			draw.FilledRect(x,y,x+2,wight)
			x=x+1
		end
	end
end
	--Color Log
	function client.color_log(r, g, b, msg, ...)
	    for k, v in pairs({...}) do
	        msg = tostring(msg .. v)
	    end
	    local clr = ffi.new("color_struct_t")
	   	clr.r, clr.g, clr.b, clr.a = r, g, b, 255
	    ffi_log(clr, msg)
	end
	--HitGroup for Damagelog
	function HitGroup(HitGroup)
	    if HitGroup == nil then
	        return;
	    elseif HitGroup == 0 then
	        return "body";
	    elseif HitGroup == 1 then
	        return "head";
	    elseif HitGroup == 2 then
	        return "chest";
	    elseif HitGroup== 3 then
	        return "stomach";
	    elseif HitGroup == 4 then
	        return "left arm";
	    elseif HitGroup == 5 then
	        return "right arm";
	    elseif HitGroup == 6 then
	        return "left leg";
	    elseif HitGroupP == 7 then
	        return "right leg";
	    elseif HitGroup == 10 then
	        return "body";
	    end
	end

--Default Presets
local AspectRatioDefVal=0
local HitScore=1
local DesyncSide="Left"
max=100000000
mindist=max
Font1=draw.CreateFont("Arial Black", 15)
Font2 = draw.CreateFont("Verdana", 13)
Font3 = draw.CreateFont("Verdana", 12)
Font4=draw.CreateFont("Verdana", 15)
defhcscout=gui.GetValue("rbot.accuracy.weapon.scout.hitchance")
defRotation=gui.GetValue("rbot.antiaim.base")
awpdefdmg=gui.GetValue("rbot.accuracy.weapon.sniper.mindmg")
autodefdmg=gui.GetValue("rbot.accuracy.weapon.asniper.mindmg")
ssgdefdmg=gui.GetValue("rbot.accuracy.weapon.scout.mindmg")
heavydefdmg=gui.GetValue("rbot.accuracy.weapon.hpistol.mindmg")
local toggle
=1
local DesyncSwitchToggle=-1
local x1=100; local y1=100; local wight=230;local hight=200
--Version
if LastVersion~=Version then
	LastUpdGroupboxNotLatUpd:SetInvisible(false)
	LastUpdGroupbox:SetInvisible(true)
else
	LastUpdGroupboxNotLatUpd:SetInvisible(true)
	LastUpdGroupbox:SetInvisible(false)
end
--Function for gui elements
function GuiElements()
	if EnableYaw:GetValue() then
		ComboboxMenuMode:SetDisabled(false)
	else
		ComboboxMenuMode:SetDisabled(true)
	end
	if EnableYaw:GetValue() and ComboboxMenuMode:GetValue()==0 then
		if EnableMayYawAA:GetValue() then
			if EnableCustomMayYawAA:GetValue() then
				if EnbaleAutoSwitchDesync:GetValue() then

					ComboboxAutoDesyncInvertMode:SetInvisible(false)

					DesyncSwitchKey:SetInvisible(true)
				else
					DesyncSwitchKey:SetInvisible(false)
					ComboboxAutoDesyncInvertMode:SetInvisible(true)

				end
			end
			EnableCustomMayYawAA:SetInvisible(false)
		else
			EnableCustomMayYawAA:SetInvisible(true)
			EnableCustomMayYawAA:SetValue(false)
		end
		if EnableCustomMayYawAA:GetValue() then
			GroupboxCustomMayYawAA:SetInvisible(false)
		else
			GroupboxCustomMayYawAA:SetInvisible(true)
		end
		GroupboxAntiAim:SetInvisible(false)
		EnableLowDelta:SetInvisible(false)
	else
		GroupboxCustomMayYawAA:SetInvisible(true)
		GroupboxAntiAim:SetInvisible(true)
		EnableLowDelta:SetInvisible(true)
	end
	if EnableYaw:GetValue() and ComboboxMenuMode:GetValue()==1 then
		GroupboxVisuals:SetInvisible(false)
	else
		GroupboxVisuals:SetInvisible(true)
	end
	if EnableYaw:GetValue() and ComboboxMenuMode:GetValue()==2 then
		if EnableAutoBuy:GetValue() then
			GroupboxAutoBuy:SetInvisible(false)

		else
			GroupboxAutoBuy:SetInvisible(true)

		end
		if EnableDmg:GetValue() then
			GroupboxDMG:SetInvisible(false)
		else
			GroupboxDMG:SetInvisible(true)
		end
		GroupboxMisc:SetInvisible(false)
	else
		GroupboxDMG:SetInvisible(true)
		GroupboxMisc:SetInvisible(true)
		GroupboxAutoBuy:SetInvisible(true)
	end
	if EnableYaw:GetValue()==false then
		GroupboxMain:SetInvisible(false)
	else
		GroupboxMain:SetInvisible(true)
	end
end
--function Usmd for Velocity
callbacks.Register("CreateMove", function(ucmd)
vel=ucmd.sidemove
end);
--function for Check is DmgOverride active
function isDmgEnable()
	local dmgovkey=gui.GetValue("mayyaw.DMGKey")
	if EnableYaw:GetValue() and EnableDmg:GetValue() and dmgovkey~=0 then
		if ComboboxDMGmode:GetValue() == 0 then
			if input.IsButtonDown(dmgovkey) then
				return true
			else
				return false
			end
		elseif ComboboxDMGmode:GetValue() == 1 then
			if toggle == 1 then
				return false
			elseif toggle == -1 then
				return true
			end
		end
	end
end
--function for Check is DT enable in active weapon
function IsDtEnable()
	local lp=entities.GetLocalPlayer()
	if lp~=nil and lp:IsAlive() then
		local AwpDtEnable=gui.GetValue("rbot.accuracy.weapon.sniper.doublefire")
		local Ssg08DtEnable=gui.GetValue("rbot.accuracy.weapon.scout.doublefire")
		local PistolDtEnable=gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")
		local AutoDtEnable=gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")
		local HeavypistolDtEnable=gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")
		local SmgDtEnable=gui.GetValue("rbot.accuracy.weapon.smg.doublefire")
		local RifleDtEnable=gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")
		local ShotgunDtEnable=gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")
		local Lightmgenable=gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")
		local lpaw=lp:GetWeaponID()
		if lpaw==2 or lapw==3 or lpaw==4 or lpaw==30 or lpaw==32 or lpaw==36 or lpaw==61 or lpaw==63 then
			wclass="pistol"
		elseif lpaw==9 then
			wclass="awp"
		elseif lpaw==40 then
			wclass="scout"
		elseif lpaw==1 then
			wclass="heavy pistol deagle"
		elseif lpaw==17 or lpaw== 19 or lpaw== 23 or lpaw== 24 or lpaw== 26 or lpaw== 33 or lpaw== 34 then
			wclass="smg"
		elseif lpaw==7 or lpaw==8 or lpaw== 10 or lpaw== 13 or lpaw== 16 or lpaw== 39 or lpaw== 61 then
			wclass="rifle"
		elseif lpaw== 25 or lpaw== 27 or lpaw== 29 or lpaw== 35 then
			wclass="shotgun"
		elseif lpaw == 38 or lpaw== 11 then
			wclass="autosniper"
		elseif lpaw == 28 or lpaw== 14 then
			wclass="Lightmg"
		else
			wclass="other"
		end
		if wclass=="pistol" and (PistolDtEnable==1 or PistolDtEnable==2)  then
			dtguion=true
		elseif wclass=="heavy pistol" and (HeavypistolDtEnable==1 or HeavypistolDtEnable==2) then
			dtguion=true
		elseif wclass=="smg" and (SmgDtEnable==1 or SmgDtEnable==2) then
			dtguion=true
		elseif wclass=="awp" and (AwpDtEnable==1 or AwpDtEnable==2) then
			dtguion=true
		elseif wclass=="scout" and (Ssg08DtEnable==1 or Ssg08DtEnable==2) then
			dtguion=true
		elseif wclass=="rifle" and (RifleDtEnable==1 or RifleDtEnable==2) then
			dtguion=true
		elseif wclass=="shotgun" and (ShotgunDtEnable==1 or ShotgunDtEnable==2) then
			dtguion=true
		elseif wclass=="autosniper" and (AutoDtEnable==1 or AutoDtEnable==2) then
			dtguion=true
		elseif wclass=="lightmg" and (Lightmgenable==1 or Lightmgenable==2) then
			dtguion=true
		else
			dtguion=false
		end
		return(dtguion)
	end
end
--function Keybinds
function Keybinds()
	local xmouse,ymouse=input.GetMousePos()
	if xmouse>x1 and ymouse > y1 and xmouse < wight and ymouse < hight and input.IsButtonDown(1) then
		x1=xmouse-60
		y1=ymouse-50
		wight=x1+130
		hight=y1+100
	end
	draw.SetFont(Font3)
	local FdKey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
	local DtEnable=IsDtEnable()
	local HsEnable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
	local SlowEnable=gui.GetValue("rbot.accuracy.movement.slowkey")
	local SpeedburstEnable=gui.GetValue("misc.speedburst.enable")
	local SpeedburstKey=gui.GetValue("misc.speedburst.key")
	local EnableAutoPeek=gui.GetValue("rbot.accuracy.movement.autopeek")
	local AutoPeekKey=gui.GetValue("rbot.accuracy.movement.autopeekkey")
	draw.Color(1,1,1,120)
	draw.FilledRect(x1,y1,wight,y1+20)
	local rk,gk,bk,ak=KeybindsColor:GetValue()
	draw.Color(rk,gk,bk,ak)
	draw.FilledRect(x1,y1,wight,y1+2)
	draw.Color(1,1,1,255)
	draw.Text(x1+46,y1+6,"keybinds")
	draw.Color(255,255,255,255)
	draw.TextShadow(x1+45,y1+6,"keybinds")
	if DtEnable == true then
		draw.Color(1,1,1,255)
		draw.Text(x1+6,y1+27,"Double Tap  	  [toggled]")
		draw.Color(255,255,255,255)
		draw.TextShadow(x1+5,y1+27,"Double Tap  	  [toggled]")
		dtots=15
	else
		dtots=0
	end
	if HsEnable then
		draw.Color(1,1,1,255)
		draw.Text(x1+6,y1+27+dtots,"Hide shots   	  [toggled]")
		draw.Color(255,255,255,255)
		draw.TextShadow(x1+5,y1+27+dtots,"Hide shots   	  [toggled]")
		hsots=15
	else
		hsots=0
	end
	if input.IsButtonDown(FdKey) then
		draw.Color(1,1,1,255)
		draw.Text(x1+6,y1+27+dtots+hsots,"Fake duck   	   [holding]")
		draw.Color(255,255,255,255)
		draw.Text(x1+5,y1+27+dtots+hsots,"Fake duck   	   [holding]")
		fdost=15
	else
		fdost=0
	end
	if input.IsButtonDown(SlowEnable) then
		draw.Color(1,1,1,255)
		draw.Text(x1+6,y1+27+dtots+hsots+fdost,"Slow walk   	    [holding]")
		draw.Color(255,255,255,255)
		draw.Text(x1+5,y1+27+dtots+hsots+fdost,"Slow walk   	    [holding]")
		slowost=15
	else
		slowost=0
	end
	if isDmgEnable() then
		draw.Color(1,1,1,255)
		draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost,"Dmg Override  [enable]")
		draw.Color(255,255,255,255)
		draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost,"Dmg Override  [enable]")
		dmgost=15
	else
		dmgost=0
	end
	if SpeedburstEnable==true and input.IsButtonDown(SpeedburstKey) then
		draw.Color(1,1,1,255)
		draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost+dmgost,"Speed burst   	[holding]")
		draw.Color(255,255,255,255)
		draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost+dmgost,"Speed burst   	[holding]")
		speedost=15
	else
		speedost=0
	end
	if AutoPeekKey~=0 and EnableAutoPeek==true then
		if input.IsButtonDown(AutoPeeddakKey) then
			draw.Color(1,1,1,255)
			draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost+dmgost+speedost,"Auto Peek   	   [holding]")
			draw.Color(255,255,255,255)
			draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost+dmgost+speedost,"Auto Peek   	   [holding]")
		end
	end
end
--function Indicators
function Indicators()
	local fdkey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
	local hsenable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
	local WightScreen,HightScreen=draw.GetScreenSize()
	local VelocityX = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[0]" )
	local VelocityY = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[1]" )
	local LocalPlayerVelocity=math.sqrt(VelocityX^2 + VelocityY^2)
	--draw.ShadowRect(WightScreen/2+30-LocalPlayerVelocity/35,HightScreen/2+35,WightScreen/2-30+LocalPlayerVelocity/35,HightScreen/2+38,-5)
	GradientRect(WightScreen/2,HightScreen/2+35,30-LocalPlayerVelocity/35,HightScreen/2+38,255,255,255,255)
	GradientRect(WightScreen/2-30+LocalPlayerVelocity/35,HightScreen/2+35,-30+LocalPlayerVelocity/35,HightScreen/2+38,255,255,255,255)
	draw.Color(255,255,255,255)
	draw.SetFont(Font1) draw.Text(WightScreen/2-29,HightScreen/2+20,"MAY YAW")
	local dtguion=IsDtEnable()
	if dtguion and hsenable==false and input.IsButtonDown(fdkey)==false then
		draw.Color(65, 180, 80,255)
		dta=12
		dtx=0
		draw.Text(WightScreen/2-8-dtx,HightScreen/2+53,"DT")
	elseif dtguion and hsenable==true and input.IsButtonDown(fdkey)==false then
		draw.Color(218, 218, 80,255)
		dtx=20
		dta=12
		draw.Text(WightScreen/2-8-dtx,HightScreen/2+53,"DT (slow)")
	elseif dtguion and input.IsButtonDown(fdkey) then
		draw.Color(255,0,00,255)
		dta=12
		dtx=55
		draw.Text(WightScreen/2-8-dtx,HightScreen/2+53,"DESEBELD(fakeduck)")
	else
		dta=0
		dtx=0
	end
	if input.IsButtonDown(fdkey)==true and dtguion==false then
		draw.Color(65,180,80,255)
		draw.Text(WightScreen/2-8,HightScreen/2+53,"FD")
		dta=12
	end
	if hsenable then
		draw.Color(65, 180, 80,255)
		draw.Text(WightScreen/2-8,HightScreen/2+53+dta,"HS")
		hsa=10
	else
		hsa=0
	end
		slowkey = gui.GetValue("rbot.accuracy.movement.slowkey")
	if input.IsButtonDown(slowkey) and EnableMayYawAA:GetValue() and EnableCustomMayYawAA:GetValue()==false then
		draw.Color(255,255,255,255)
		draw.Text(WightScreen/2-35,HightScreen/2+41,"LOW DELTA")
	elseif input.IsButtonDown(slowkey) and EnableMayYawAA:GetValue() and EnableCustomMayYawAA:GetValue() and EnableLowDelta:GetValue() then
		draw.Color(255,255,255,255)
		draw.Text(WightScreen/2-35,HightScreen/2+41,"LOW DELTA")
	else
		draw.Color(174,34,235,255)
		draw.Text(WightScreen/2-30,HightScreen/2+41,"OPPOSITE")
	end
	if isDmgEnable() then
		draw.Color(255, 216, 0,255)
		draw.Text(WightScreen/2-12,HightScreen/2+53+dta+hsa,"dmg")
	end
end
--function Damage Override
function DmgOverride()
	if EnableYaw:GetValue() and EnableDmg:GetValue() then
		local dmgovkey=gui.GetValue("mayyaw.DMGKey")
		if dmgovkey~=0 then
			if ComboboxDMGmode:GetValue() ==0 then
				if input.IsButtonPressed(dmgovkey) then
					awpdefdmg=gui.GetValue("rbot.accuracy.weapon.sniper.mindmg")
					autodefdmg=gui.GetValue("rbot.accuracy.weapon.asniper.mindmg")
					ssgdefdmg=gui.GetValue("rbot.accuracy.weapon.scout.mindmg")
					heavydefdmg=gui.GetValue("rbot.accuracy.weapon.hpistol.mindmg")
				end
				if input.IsButtonDown(dmgovkey) then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("mayyaw.awpdmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("mayyaw.autodmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("mayyaw.ssg08dmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("mayyaw.heavypistoldmgoverrideslider"))
				elseif input.IsButtonReleased( dmgovkey ) then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",awpdefdmg)
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",autodefdmg)
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",ssgdefdmg)
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",heavydefdmg)
				end
			elseif ComboboxDMGmode:GetValue() == 1 then
				if input.IsButtonPressed(dmgovkey) then
					toggle=toggle*-1
				end
				if toggle==-1 and input.IsButtonPressed(dmgovkey) then
					awpdefdmg=gui.GetValue("rbot.accuracy.weapon.sniper.mindmg")
					autodefdmg=gui.GetValue("rbot.accuracy.weapon.asniper.mindmg")
					ssgdefdmg=gui.GetValue("rbot.accuracy.weapon.scout.mindmg")
					heavydefdmg=gui.GetValue("rbot.accuracy.weapon.hpistol.mindmg")
				end 
				if toggle==-1 and input.IsButtonPressed(dmgovkey) then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("mayyaw.awpdmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("mayyaw.autodmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("mayyaw.ssg08dmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("mayyaw.heavypistoldmgoverrideslider"))
				elseif toggle==1 and input.IsButtonPressed(dmgovkey) then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",awpdefdmg)
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",autodefdmg)
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",ssgdefdmg)
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",heavydefdmg)
				end
			end
		end
	end
end
--function for getting desync angle
function DesyncDelta()
	local LocalPlayer=entities.GetLocalPlayer()
	local lby = math.min(58, math.max(-58, (LocalPlayer:GetProp("m_flLowerBodyYawTarget") - LocalPlayer:GetProp("m_angEyeAngles").y + 180) % 360 - 180))
	local rot = nil
	if gui.GetValue("rbot.master") then
		rot = gui.GetValue("rbot.antiaim.base.rotation")
	else
		if lby > 0 then
				rot = -58
		else
				rot = 58
		end
	end
	delta = math.abs(lby - rot)
	if gui.GetValue("rbot.antiaim.condition.use") and input.IsButtonDown(69) then
		delta=0
	end
	return delta
end
--function Watermark
function Watermark()
	local WightScreen,HightScreen=draw.GetScreenSize()
	local LocalPlayer=entities.GetLocalPlayer()
	local UserName=client.GetConVar("name")
	if LocalPlayer ~= nil then
		pr=entities.GetPlayerResources()
		delay = pr:GetPropInt("m_iPing", entities.GetLocalPlayer():GetIndex())
	else
		delay="None"
	end
	server=engine.GetServerIP()
	if server == nil then
		serverip="Menu"
		serverdelay="None "
	elseif server=="loopback" then
		serverip="Local"
		serverdelay="None "
	else
		serverip=server
		serverdelay=delay
	end
	textot=16

draw.SetFont(Font2)
	local text=("MayYaw | " ..UserName .. " | delay: " .. delay .." ms | " ..serverip)
	local textlen=draw.GetTextSize(text)
	local rw,gw,bw,aw=WatermarkColor:GetValue()
	draw.Color(1,1,1,120)
	draw.FilledRect(WightScreen-textlen-2*textot,10,WightScreen-textot,32)
	draw.Color(255,255,255,255)
	draw.Text(WightScreen-textlen-textot*1.5,16,text)
	GradientRect((WightScreen-textlen-2*textot)+(textlen+textot)/2,10,(textot+textlen)/2,13,rw,gw,bw,aw)
	GradientRect((WightScreen-textlen-2*textot),10,-(textot+textlen)/2,13,rw,gw,bw,aw)
	GradientRect((WightScreen-textlen-2*textot)+(textlen+textot)/2,30,(textot+textlen)/2,33,rw,gw,bw,aw)
	GradientRect((WightScreen-textlen-2*textot),30,-(textot+textlen)/2,33,rw,gw,bw,aw)



	if LocalPlayer~=nil then
		Desyncdelta= math.ceil(DesyncDelta())
		if Desyncdelta >= 100 then
			deltaO100=5
		else
			deltaO100=0
		end
		if gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")~=0 or gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")~=0 or gui.GetValue("rbot.accuracy.weapon.smg.doublefire")~=0 or gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")~=0 or gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")~=0 or gui.GetValue("rbot.accuracy.weapon.scout.doublefire")~=0 or gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")~=0  or gui.GetValue("rbot.accuracy.weapon.sniper.doublefire")~=0 or gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")~=0 then
			DTon=true
		else
			DTon=false
		end
		if DTon or gui.GetValue("rbot.antiaim.condition.shiftonshot") or gui.GetValue("misc.speedburst.enable") or gui.GetValue("misc.fakelag.enable")==false then
			DisFLValCor=60
			FL="1 | SHIFTING"
		else
			DisFLValCor=0
			FL=gui.GetValue("misc.fakelag.factor")
		end
		if LocalPlayer:IsAlive() then
			draw.Color(1,1,1,120)
			draw.FilledRect(WightScreen-76-DisFLValCor,38,WightScreen-textot,59)
			draw.FilledRect(WightScreen-176-DisFLValCor,38,WightScreen-85+deltaO100-DisFLValCor,59)
			local textfl=("FL : "..FL)
			local textfllen=draw.GetTextSize(textfl)
			draw.Color(rw,gw,bw,aw)
			GradientRect((WightScreen-76-DisFLValCor)+(WightScreen-textot-WightScreen+76+DisFLValCor)/2-2,38,(WightScreen-textot-WightScreen+76+DisFLValCor)/2,41,rw,gw,bw,aw)
			GradientRect(WightScreen-77-DisFLValCor,38,-(WightScreen-textot-WightScreen+76+DisFLValCor)/2,41,rw,gw,bw,aw)
			GradientRect((WightScreen-176-DisFLValCor)+(WightScreen-85+deltaO100-DisFLValCor-WightScreen+176+DisFLValCor)/2,38,(WightScreen-85+deltaO100-DisFLValCor-WightScreen+176+DisFLValCor)/2,41,rw,gw,bw,aw)
			GradientRect(WightScreen-176-DisFLValCor,38,-(WightScreen-85+deltaO100-DisFLValCor-WightScreen+176+DisFLValCor)/2,41,rw,gw,bw,aw)

			draw.Color(255,255,255,255)
			draw.Text(WightScreen-68-DisFLValCor,45,textfl)
			draw.SetFont(Font2)
			draw.Text(WightScreen-154-DisFLValCor,45,"FAKE ("..Desyncdelta..")")
			local x=WightScreen-165-DisFLValCor;local r=6;local y=50; local y1=0; local t=2
			for i = 0, 360 / 100 * delta do
				angle = i * math.pi / 180
				draw.Color(210, 210, 210, 255)
				ptx, pty = x + r * math.cos(angle), y + y1 + r * math.sin(angle)
				ptx_, pty_ = x + (r-t) * math.cos(angle), y + y1 + (r-t) * math.sin(angle)
				draw.Line(ptx, pty, ptx_, pty_)
			end
			for i = 360 / 100 * delta + 1, 360 do
				angle = i * math.pi / 180
				draw.Color(45, 45, 45, 45)
				ptx, pty = x + r * math.cos(angle), y + y1 + r * math.sin(angle)
				ptx_, pty_ = x + (r-t) * math.cos(angle), y + y1 + (r-t) * math.sin(angle)
				draw.Line(ptx, pty, ptx_, pty_)
			end
		end
	end
end
--function JumpScoutFix
function JumpScoutFix()
	if EnableJumpScoutFix:GetValue() == false then
		defhcscout=gui.GetValue("rbot.accuracy.weapon.scout.hitchance")
	end
	if EnableYaw:GetValue() and EnableJumpScoutFix:GetValue() then
		local lp=entities.GetLocalPlayer()
		if lp ~=nil then
			if lp:IsAlive() then
				playervelocity = math.sqrt(lp:GetPropFloat( "localdata", "m_vecVelocity[0]" )^2 + lp:GetPropFloat( "localdata", "m_vecVelocity[1]" )^2)
				if lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_ssg08" then
					if playervelocity > 5 then
						gui.SetValue("misc.strafe.enable", true)
					else
						gui.SetValue("misc.strafe.enable",false)
					end
				else
					gui.SetValue("misc.strafe.enable",true)
				end
			else
				gui.SetValue("misc.strafe.enable",true)
			end
			if EnableJumpScoutFix:GetValue() and EnableYaw:GetValue() and lp:IsAlive() then
				flags = lp:GetPropInt("m_fFlags")
				if flags ~=nil then
					if lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_ssg08" then
						if bit.band(flags, 1) == 0 then
							gui.SetValue("rbot.accuracy.weapon.scout.hitchance", 40)
						else
							gui.SetValue("rbot.accuracy.weapon.scout.hitchance", defhcscout)
						end
					end
				end
			end
		end
	end
end
--function Engine Radar
function EngineRadar()
	if EnableYaw:GetValue() and EnableEngineRadar:GetValue() then
		for index, Player in pairs(entities.FindByClass("CCSPlayer")) do
			Player:SetProp("m_bSpotted", 1);
		end
	else
		for index, Player in pairs(entities.FindByClass("CCSPlayer")) do
			Player:SetProp("m_bSpotted", 0);
		end
	end
end
--function MayYawAA
function MayYawAA()
	local LocalPlayer=entities.GetLocalPlayer()
	SlowEnable=gui.GetValue("rbot.accuracy.movement.slowkey")
	gui.SetValue("rbot.antiaim.advanced.antialign",1)
	Delta()
	local mode="Distance"
	local DesyncSide=DesyncSideFunc(mode)
	if DesyncSide==nil then
		DesyncSide="Left"
	end
	if DesyncSide == "Right" then
		gui.SetValue("rbot.antiaim.base.lby",delta+11)
		gui.SetValue("rbot.antiaim.base.rotation",-delta)
		gui.SetValue("rbot.antiaim.base",176)
	elseif DesyncSide == "Left" then
		gui.SetValue("rbot.antiaim.base.lby",-delta-11)
		gui.SetValue("rbot.antiaim.base.rotation",delta)
		gui.SetValue("rbot.antiaim.base",-167)
	else
		gui.SetValue("rbot.antiaim.base",177)
	end
end
--function for getting Low delta for desync
function Delta()
	if input.IsButtonDown(SlowEnable) then
		delta=17
	else
		delta=27
	end
	return delta
end
--function CustomMayYawAA
function CustomMayYawAA()
	local LocalPlayer=entities.GetLocalPlayer()
	local RotationOffsetCustom=gui.GetValue("mayyaw.RotationSliderCustom")
	local LbyOffsetCustom=gui.GetValue("mayyaw.LBYSliderCustom")
	local BaseYawOffsetCustom=gui.GetValue("mayyaw.BaseYawSliderCustom")
	if EnableLowDelta:GetValue() and input.IsButtonDown(SlowEnable) then
		if RotationOffsetCustom<0 then
			RotationOffset=-17
		end
		if RotationOffsetCustom>0 then
			RotationOffset=17
		end
		if LbyOffsetCustom > 0 then
			LbyOffset=28
		end
		if LbyOffsetCustom < 0 then
			LbyOffset=-28
		end
	else
		RotationOffset=RotationOffsetCustom
		LbyOffset=LbyOffsetCustom
	end
	if EnbaleAutoSwitchDesync:GetValue() then


if ComboboxAutoDesyncInvertMode:GetValue() == 0 then
			mode="Distance"
		elseif ComboboxAutoDesyncInvertMode:GetValue() == 1 then
			mode="Local Player Velocity"
		elseif ComboboxAutoDesyncInvertMode:GetValue() == 2 then
			mode="Near crosshair"
		end
		local DesyncSide=DesyncSideFunc(mode)
		if DesyncSide=="Right" then
			BaseYawOffset=BaseYawOffsetCustom
			RotationOffset=-math.abs(RotationOffset)
			LbyOffset=math.abs(LbyOffset)
		elseif DesyncSide=="Left" then
			BaseYawOffset=-BaseYawOffsetCustom
			RotationOffset=math.abs(RotationOffset)
			LbyOffset=-math.abs(LbyOffset)
		else
			gui.SetValue("rbot.antiaim.base",177)
		end
	else
		BaseYawOffset=BaseYawOffsetCustom
		DesyncSwitchKeyValue=gui.GetValue("mayyaw.DesyncSwitchKey")
		if DesyncSwitchKeyValue~=0 then
			if input.IsButtonPressed(DesyncSwitchKeyValue) then
				DesyncSwitchToggle=DesyncSwitchToggle*-1
			end
			if DesyncSwitchToggle==1 then
				LbyOffset=LbyOffset*-1
				BaseYawOffset=BaseYawOffset*-1
				RotationOffset=RotationOffset*-1
			elseif DesyncSwitchToggle==-1 then
				LbyOffset=LbyOffset*1
				BaseYawOffset=BaseYawOffset*1
				RotationOffset=RotationOffset*1
			end
		end
	end
	gui.SetValue("rbot.antiaim.base.rotation",RotationOffset)
	gui.SetValue("rbot.antiaim.base.lby",LbyOffset)
	gui.SetValue("rbot.antiaim.base",BaseYawOffset)
end
--function LegitAA
function LegitAAonUse()
	if input.IsButtonDown(69) then
		gui.SetValue("rbot.antiaim.advanced.pitch",0)
		gui.SetValue("rbot.antiaim.base",0)
		gui.SetValue("rbot.antiaim.condition.use",0)
	else
		if EnableMayYawAA:GetValue()==false then
		gui.SetValue("rbot.antiaim.base",defRotation)
		end
		gui.SetValue("rbot.antiaim.advanced.pitch",1)
		gui.SetValue("rbot.antiaim.condition.use",1)
	end
end
--function Desync Indicator
function DesyncInvertIndicator()
	local WightScreen,HightScreen=draw.GetScreenSize()
	if gui.GetValue("rbot.antiaim.base.lby") > 0 then
		DesyncSide="Right"
	end
	if gui.GetValue("rbot.antiaim.base.lby") < 0 then
		DesyncSide="Left"
	end
	if gui.GetValue("rbot.antiaim.base.lby")==0 and gui.GetValue("rbot.antiaim.base.rotation")<0 then
		DesyncSide="Right"
	end
	if gui.GetValue("rbot.antiaim.base.lby")==0 and gui.GetValue("rbot.antiaim.base.rotation")>0 then
		DesyncSide="Left"
	end
	if gui.GetValue("rbot.antiaim.base.lby")>=-180 and gui.GetValue("rbot.antiaim.base.rotation")==-58 then
		DesyncSide="Right"
	end
	if gui.GetValue("rbot.antiaim.base.lby")<=180 and gui.GetValue("rbot.antiaim.base.rotation")==58 then
		DesyncSide="Left"
	end
	if gui.GetValue("rbot.antiaim.base.lby")==0 and gui.GetValue("rbot.antiaim.base.rotation")==0 then
		DesyncSide="Neutral"
	end
	if gui.GetValue("rbot.antiaim.condition.use") and input.IsButtonDown(69) then
		DesyncSide="Neutral"
	end
	if DesyncSide=="Right" then
		Lr,Lg,Lb,Lw=1,1,1,70
		Rr,Rg,Rb,Rw=DesyncInvertActiveColor:GetValue()
	elseif DesyncSide=="Left" then
		Lr,Lg,Lb,Lw=DesyncInvertActiveColor:GetValue()
		Rr,Rg,Rb,Rw=1,1,1,70
	else
		Lr,Lg,Lb,Lw=1,1,1,70
		Rr,Rg,Rb,Rw=1,1,1,70
	end
	draw.Color(1,1,1,70)
	draw.Triangle(WightScreen/2-40, HightScreen/2+9, WightScreen/2-40, HightScreen/2-9, WightScreen/2-55, HightScreen/2 )
	draw.Triangle(WightScreen/2+40, HightScreen/2+9, WightScreen/2+40, HightScreen/2-9, WightScreen/2+55, HightScreen/2 )
	draw.Color(Lr,Lg,Lb,Lw)
	draw.FilledRect(WightScreen/2-35, HightScreen/2+9, WightScreen/2-37, HightScreen/2-9)
	draw.Color(Rr,Rg,Rb,Rw)
	draw.FilledRect(WightScreen/2+35, HightScreen/2+9, WightScreen/2+37, HightScreen/2-9)
end
--function for calling other functions)
function Main()
	local LocalPlayer=entities.GetLocalPlayer()
	if EnableYaw:GetValue() and EnableIndicators:GetValue() and LocalPlayer ~=nil and LocalPlayer:IsAlive() then
		Indicators()
	end
	if EnableYaw:GetValue() and EnableDmg:GetValue() then
		DmgOverride()
	end
	if EnableYaw:GetValue() and EnableWatermark:GetValue() then
		Watermark()
	end
	if EnableYaw:GetValue() and EnableKeybinds:GetValue() and LocalPlayer~=nil then
		Keybinds()
	end
	if EnableYaw:GetValue() and EnableDesyncInvertIndicator:GetValue() and LocalPlayer~=nil then
		if LocalPlayer:IsAlive() then
			DesyncInvertIndicator()
		end
	end
	if EnableYaw:GetValue() and EnableMayYawAA:GetValue() and EnableCustomMayYawAA:GetValue() and LocalPlayer~=nil then
		if LocalPlayer:IsAlive() then
			CustomMayYawAA()
		end
	end
	if EnableYaw:GetValue() and EnableMayYawAA:GetValue() and EnableCustomMayYawAA:GetValue()==false and LocalPlayer~=nil then
		if LocalPlayer:IsAlive() then
			MayYawAA()
		end
	end
	if EnableYaw:GetValue() and EnableLagitAAonUse:GetValue() and LocalPlayer~=nil then
		if LocalPlayer:IsAlive() then
			LegitAAonUse()
		end
	end
	if EnableYaw:GetValue() and LocalPlayer~=nil then
 
		AspectRatio()
	end
end
function AutoBuy(event)
	if event:GetName() == "round_prestart" then
		if EnableYaw:GetValue() then
			if EnableAutoBuy:GetValue() then
				if ComboboxAutoBuyPrimaryWeapon:GetValue()==1 then
					PrimaryWeapon="buy scar20;"
				elseif ComboboxAutoBuyPrimaryWeapon:GetValue()==2 then
					PrimaryWeapon="buy ssg08;"
				elseif ComboboxAutoBuyPrimaryWeapon:GetValue()==3 then
					PrimaryWeapon="buy awp;"
				else
					PrimaryWeapon=""
				end
				if ComboboxAutoBuySecondaryWeapon:GetValue()==1 then
					SecondaryWeapon="buy deagle;"
				elseif ComboboxAutoBuySecondaryWeapon:GetValue()==2 then
					SecondaryWeapon="buy elite;"
				elseif ComboboxAutoBuySecondaryWeapon:GetValue()==3 then
					SecondaryWeapon="buy tec9;"
				else
					SecondaryWeapon=""
				end
				if ComboboxAutoBuyArmor:GetValue()==0 then
					Armor=""
				elseif ComboboxAutoBuyArmor:GetValue()==1 then
					Armor="buy vest;"
				else
					Armor="buy vesthelm;"
				end
				client.Command(PrimaryWeapon..SecondaryWeapon..Armor.." buy incgrenade; buy molotov; buy hegrenade; buy smokegrenade; buy taser", true)
			end
		end
	end
end
function DesyncSideFunc(mode)
	local WightScreen,HightScreen=draw.GetScreenSize()
	local localplayer=entities.GetLocalPlayer()
	players = entities.FindByClass( "CCSPlayer" );
	if localplayer~=nil and table.maxn(players)>1 then
		local localpos=localplayer:GetAbsOrigin()
		local x1=localpos.x
		local y1=localpos.y
		local z1=localpos.z
		for i = 1, #players do
			player=players[i]
			entpos=player:GetAbsOrigin()
			if player:IsAlive() then
				if player:GetIndex() ~=localplayer:GetIndex() and player:GetTeamNumber()~=localplayer:GetTeamNumber() and player:GetTeamNumber()~=1 then
					local x2=entpos.x
					local y2=entpos.y
					local z2=entpos.z
					--At Dist mode
					if mode == "Distance" then
						dist=vector.Distance( { x1, y1, z1 }, { x2, y2, z2 } )
						if dist<mindist then
							mindist=dist
							playerDesync=player
						end
					end
					--near cross
					if mode == "Near crosshair" then
						enemyx,enemyy=client.WorldToScreen(player:GetAbsOrigin()
+Vector3(0,0,50))
						if enemyx~=nil and enemyy~=nil then
							dist=math.sqrt((math.abs(WightScreen/2-enemyx))^2+(math.abs(HightScreen/2-enemyy))^2)
							if dist<mindist then
								mindist=dist
								playerDesync=player
							end
						end
					end
					if mode=="Local Player Velocity" then
						if vel == 450 then
							DesyncSide="Right"
						end
						if vel == -450 then
							DesyncSide="Left"
						end
						return DesyncSide
					end
				end
			end
		end
		mindist=1000000
		if playerDesync~=nil and ComboboxAutoDesyncInvertMode:GetValue()~=1 then
			local EnemyPosX=playerDesync:GetAbsOrigin().x
			local EnemyPosY=playerDesync:GetAbsOrigin().y
			local LocalPosX=localpos.x
			local LocalPosY=localpos.y
			if LocalPosX > 0 and LocalPosY > 0 then
				LocalChet=1
			elseif LocalPosX < 0 and LocalPosY > 0 then
				LocalPChet=2
			elseif LocalPosX < 0 and LocalPosY < 0 then
				LocalPChet=3
			elseif LocalPosX > 0 and LocalPosY < 0 then
				LocalPChet=4
			end
			local ViewAngle=engine.GetViewAngles().y
			if EnemyPosX > LocalPosX and EnemyPosY > LocalPosY then
				if ViewAngle > 0 and ViewAngle < 45 then
					DesyncSide="Left"
				end
				if ViewAngle > 45 and ViewAngle < 90 then
					DesyncSide="Right"
				end
			end
			if EnemyPosX < LocalPosX and EnemyPosY > LocalPosY then
				if ViewAngle > 90 and ViewAngle < 135 then
					DesyncSide="Left"
				end
				if ViewAngle > 135 and ViewAngle < 180 then
					DesyncSide="Right"
				end
			end
			if EnemyPosX < LocalPosX and EnemyPosY < LocalPosY then
				if ViewAngle > -180 and ViewAngle < -135 then
					DesyncSide="Left"
				end
				if ViewAngle > -135 and ViewAngle < -90 then
					DesyncSide="Right"
				end
			end
			if EnemyPosX > LocalPosX and EnemyPosY < LocalPosY then
				if ViewAngle > -90 and ViewAngle < -45 then
					DesyncSide="Left"
				end
				if ViewAngle > -45 and ViewAngle < 0 then
					DesyncSide="Right"
				end
			end
			return DesyncSide
		end
	end
end
animation={"M","M","Ma","Ma","May","May","MayY","MayY","MayYa","MayYa","MayYaw","MayYaw","MayYaw","MayYa","MayYa","MayY","MayY","May","May","Ma","Ma","M","M","",""}
function Clantag()
	if EnableClantag:GetValue() and EnableYaw:GetValue() then
		local CurTime = math.floor(globals.CurTime() * 2.3);
    	if OldTime ~= CurTime then
    	    SetClantag(animation[CurTime % #animation+1], animation[CurTime % #animation+1]);
    	end
    	OldTime = CurTime;
		clantagset = 1;
	else
		if clantagset == 1 then
            clantagset = 0;
            SetClantag("", "");
        end
	end
end
function DamageLog(event)
	local LocalPlayer = entities.GetLocalPlayer();
	if EnableYaw:GetValue() and EnableHitLog:GetValue() and LocalPlayer~=nil and LocalPlayer:IsAlive() then
		if event:GetName()=="player_death" or event:GetName()=="round_start" then
			local UserD=entities.GetByUserID(event:GetInt('userid'))
			if LocalPlayer:GetIndex()==UserD:GetIndex() then
				HitScore=1
			end
		end
		if event:GetName()~="weapon_fire" and event:GetName()~="player_hurt" then
			return
		end
		local user = entities.GetByUserID(event:GetInt('userid'));
		if (LocalPlayer == nil or user == nil) then
			return
		end
		if event:GetName()=="player_hurt" then
			local attacker = entities.GetByUserID(event:GetInt('attacker'));
			local remainingHealth = event:GetInt('health');
			local damageDone = event:GetInt('dmg_health');
			if attacker == nil then
				return
			end
			if (LocalPlayer:GetIndex() == attacker:GetIndex()) then
				local safty=math.floor(100-LocalPlayer:GetWeaponInaccuracy()*500)
				if safty >= 60 then
					safty="true"
				elseif safty < 60 then
					safty="false"
				elseif safty==nil then
					safty="false"
				end
				if gui.GetValue("rbot.antiaim.condition.shiftonshot") and IsDtEnable() then
					Exploits=2
				elseif gui.GetValue("rbot.antiaim.condition.shiftonshot") or IsDtEnable() then
					Exploits=1
				else
					Exploits=0
				end
				local maxticks=gui.Reference('Misc', 'General', 'Server', 'sv_maxusrcmdprocessticks'):GetValue()
				local simtime = globals.TickCount() % maxticks 
				local log=("["..HitScore.."] ".."Hit "..user:GetName().." in the "..HitGroup(event:GetInt('hitgroup')).." for "..damageDone.." damage ("..remainingHealth.." remaining)".." safty="..safty.." ("..simtime..":"..Exploits..")".."\n")
				HitScore=HitScore+1
				client.color_log(0,255,162,"[MayYaw] ")
				client.color_log(94,152,217, log .. "\n")
			end
		end
	end
end
function AspectRatio()
	NewAsp=AspectRatioDefValSlider:GetValue()
	if NewAsp~=AspectRatioDefVal then
		client.SetConVar( "r_aspectratio", NewAsp/100, true)
		AspectRatioDefVal=NewAsp
	end
end
client.AllowListener("round_prestart");
callbacks.Register("CreateMove",JumpScoutFix)
callbacks.Register("Draw",Main)
callbacks.Register("Draw",Clantag)
callbacks.Register( "FireGameEvent",DamageLog)
callbacks.Register( "FireGameEvent", AutoBuy)
callbacks.Register("Draw",GuiElements)
callbacks.Register("Draw",EngineRadar)
