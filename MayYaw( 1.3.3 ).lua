if TimeLib == nil then http.Get("https://raw.githubusercontent.com/MrMayow1337/MayYawLua/main/TimeModul.lua", function(body) load(body)() end) end
;LastVersion=nil
LastVersion= string.gsub(http.Get("https://raw.githubusercontent.com/MrMayow1337/MayYawLua/main/Version.txt"), "\n", "")
Version="1.3.3"
MayYaw = gui.Tab(gui.Reference("Settings"), "mayyaw", "MayYaw");
MainYaw=gui.Groupbox(MayYaw, "Enable MayYaw", 5, 10, 175, 0)
EnableYaw=gui.Checkbox(MainYaw, "Enableyaw", "Enable", 0)
ComboboxMenuMode=gui.Combobox(MainYaw, "ComboxMenuMode", "Mode","Anti-Aim","Visuals","Misc")
GroupboxMain=gui.Groupbox(MayYaw, "Press 'Enable'", 190, 10, 410, 0)
GroupboxAntiAim=gui.Groupbox(MayYaw, "MayYaw Anti-Aim", 190, 10, 410, 0)
GroupboxVisuals=gui.Groupbox(MayYaw, "MayYaw Visuals", 190, 10, 410, 0)
EnableIndicators=gui.Checkbox(GroupboxVisuals, "EnableIndocators", "Indicators", 0)
EnableKeybinds=gui.Checkbox(GroupboxVisuals, "EnableKeybinds", "Keybinds", 0)
EnableDesyncInvertIndicator=gui.Checkbox(GroupboxVisuals, "EnableDesyncInvertIndicator", "Desync Indicator", 0)
EnableWatermark=gui.Checkbox(GroupboxVisuals,"EnableWatermark","Watermark",0)
GroupboxMisc=gui.Groupbox(MayYaw, "MayYaw Misc", 190, 10, 190, 0)
GroupboxAutoBuy=gui.Groupbox(MayYaw, "AutoBuy", 190, 210, 190, 0)
ComboboxAutoBuyPrimaryWeapon=gui.Combobox(GroupboxAutoBuy, "ComboxAutoBuyPrimaryWeapon", "Primary Weapon","None","Auto","Ssg08","AWP")
ComboboxAutoBuySecondaryWeapon=gui.Combobox(GroupboxAutoBuy, "ComboxAutoBuySecondaryWeapon", "Secondary Weapon","None","Deagle R8","Dual","Tec9/Five Seven")
ComboboxAutoBuyArmor=gui.Combobox(GroupboxAutoBuy, "ComboxAutoBuyArmor", "Armor","None","Kevlar","Kevlar + Helmet")
EnableDmg=gui.Checkbox(GroupboxMisc,"EnableDmg","DamageOverride",0)
EnableEngineRadar=gui.Checkbox(GroupboxMisc,"EnableEngineRadar","EngineRadar",0)
EnableJumpScoutFix=gui.Checkbox(GroupboxMisc,"EnableJumpScoutFix","Jump Scout Fix",0)
EnableAutoBuy=gui.Checkbox(GroupboxMisc,"EnableAutoBuy","AutoBuy",0)
GroupboxDMG=gui.Groupbox(MayYaw, "Damage Override", 390, 10, 240, 0)
AwpDMGSlider=gui.Slider(GroupboxDMG, "awpdmgslider", "Awp Min Damage", 0, 1, 110 )
AutoDMGSlider=gui.Slider(GroupboxDMG, "autodmgslider", "Auto Min Damage", 0, 1, 100 )
Ssg08DMGSlider=gui.Slider(GroupboxDMG, "ssg08dmgslider", "Scout Min Damage", 0, 1, 110 )
HeavypistolDMGSlider=gui.Slider(GroupboxDMG, "heavypistoldmgslider", "Heavy Pistol Min Damage", 0, 1, 100 )
AwpDMGOverrideSlider=gui.Slider(GroupboxDMG, "awpdmgoverrideslider", "Awp Override Min Damage", 0, 1, 100 )
AutoDMGOverrideSlider=gui.Slider(GroupboxDMG, "autodmgoverrideslider", "Auto Override Min Damage", 0, 1, 100 )
Ssg08DMGOverrideSlider=gui.Slider(GroupboxDMG, "ssg08dmgoverrideslider", "Scout Override Min Damage", 0, 1, 100 )
HeavyPistolDMGOverrideSlider=gui.Slider(GroupboxDMG, "heavypistoldmgoverrideslider", "Heavy Pistol Override Min Damage", 0, 1, 100 )
ComboboxDMGmode=gui.Combobox(GroupboxDMG, "ComboboxDMGmode", "Mode","Hold","Toggle")
DMGKey=gui.Keybox(GroupboxDMG,"DMGKey","Key", 0 )
EnableMayYawAA=gui.Checkbox(GroupboxAntiAim,"EnableMayYawAA","MayYawAA",0)
EnableCustomMayYawAA=gui.Checkbox(GroupboxAntiAim,"EbableCustomMayYawAA","Custom MayYawAA",0)
EnableLagitAAonUse=gui.Checkbox(GroupboxAntiAim,"EnableLagitAAonUse","Legit AA on Use",0)
GroupboxCustomMayYawAA=gui.Groupbox(MayYaw, "Custom MayYaw AA",  190, 175, 410, 0)
RotationSliderCustom=gui.Slider(GroupboxCustomMayYawAA, "RotationSliderCustom", "Rotation Offset", 0, -58, 58 )
LBYSliderCustom=gui.Slider(GroupboxCustomMayYawAA, "LBYSliderCustom", "LBY Offset", 0, -180, 180 )
BaseYawSliderCustom=gui.Slider(GroupboxCustomMayYawAA,"BaseYawSliderCustom","Base Yaw Offset",0,-180,180)
EnableLowDelta=gui.Checkbox(GroupboxCustomMayYawAA, "EnableLowDelta", "LowDelta",0)
EnbaleAutoSwitchDesync=gui.Checkbox(GroupboxCustomMayYawAA,"EnbaleAutoSwitchDesync","Auto Desync Switch",0)
DesyncSwitchKey=gui.Keybox(GroupboxCustomMayYawAA,"DesyncSwitchKey","Desync Switch Key", 0 )
DescriptionGroupbox=gui.Groupbox(MayYaw, "MayYaw Description", 5, 160, 175, 0)
Descriptionmaintext=gui.Text(DescriptionGroupbox,"MayYaw lua for aimware")
Descriptionversiontext=gui.Text(DescriptionGroupbox,"Version: "..Version)
Descriptionavtortext=gui.Text(DescriptionGroupbox,"Created by Maybe")
DescriptionDiscordtext=gui.Text(DescriptionGroupbox,"Discord: Maybe#2990")
LastUpdGroupbox=gui.Groupbox(MayYaw, "Last Update", 5, 335, 175, 0)
LastUpddatetext=gui.Text(LastUpdGroupbox,"3.06.2021")
LastUpdlog1text=gui.Text(LastUpdGroupbox,"[+] Added FAKE indicator\n(watermark)")
LastUpdlog2text=gui.Text(LastUpdGroupbox,"[+] Added FL indicator\n(watermark)")
UpdateText=gui.Text(LastUpdGroupbox,"PLEASE DOWNLOAD \n 	 NEW VERSION".."\n\n New version: "..LastVersion.."\n\n Your Version:"..Version)



WatermarkColor=gui.ColorPicker(EnableWatermark,"Colorwatermark","Watermark Color", 56,56, 165, 255 )
KeybindsColor=gui.ColorPicker(EnableKeybinds,"Colorwatermark","Keybinds Color", 56,56, 165, 255 )
DesyncInvertActiveColor=gui.ColorPicker(EnableDesyncInvertIndicator,"DesyncInvertActiveColor","Active Arrow Color", 0,255, 0, 255 )

--------------------

Font1=draw.CreateFont("Arial Black", 15)
Font2 = draw.CreateFont("Verdana", 13)
Font3 = draw.CreateFont("Verdana", 12)
Font4=draw.CreateFont("Verdana", 15)

defhcscout=gui.GetValue("rbot.accuracy.weapon.scout.hitchance")

defRotation=gui.GetValue("rbot.antiaim.base")
gui.SetValue("mayyaw.awpdmgslider",gui.GetValue("rbot.accuracy.weapon.sniper.mindmg"))
gui.SetValue("mayyaw.autodmgslider",gui.GetValue("rbot.accuracy.weapon.asniper.mindmg"))
gui.SetValue("mayyaw.ssg08dmgslider",gui.GetValue("rbot.accuracy.weapon.scout.mindmg"))
gui.SetValue("mayyaw.heavypistoldmgslider",gui.GetValue("rbot.accuracy.weapon.hpistol.mindmg"))
toggle
=-1
DesyncSwitchToggle=-1
x1=100;y1=100;wight=230;hight=200
-------------------------------------Version start
if LastVersion~=Version then
	LastUpddatetext:SetInvisible(true)
	LastUpdlog1text:SetInvisible(true)
	LastUpdlog2text:SetInvisible(true)
else
	UpdateText:SetInvisible(true)
end	 
-------------------------------------Version end
-------------------------------------MenuElementStart
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
					DesyncSwitchKey:SetDisabled(true)
				else
					DesyncSwitchKey:SetDisabled(false)
				end	 	
			end
			EnableCustomMayYawAA:SetDisabled(false)
		else
			EnableCustomMayYawAA:SetDisabled(true)
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
			GroupboxAutoBuy:SetDisabled(false)	
		else
			GroupboxAutoBuy:SetDisabled(true)		
		end
		if EnableDmg:GetValue() then
			GroupboxDMG:SetDisabled(false)
		else	
			GroupboxDMG:SetDisabled(true)
		end 
		GroupboxDMG:SetInvisible(false)
		GroupboxMisc:SetInvisible(false)
		GroupboxAutoBuy:SetInvisible(false)
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
	
-------------------------------------MainElementsEnd
	
	
end
callbacks.Register("CreateMove", function(ucmd)
vel=ucmd.sidemove
end);
function isDmgEnable()
	dmgovkey=gui.GetValue("mayyaw.DMGKey")
	if EnableYaw:GetValue() and EnableDmg:GetValue() and dmgovkey~=0 then
		if ComboboxDMGmode:GetValue() == 0 then
		
			if input.IsButtonDown(dmgovkey) then
				return true
			else
				return false
			end
		elseif ComboboxDMGmode:GetValue() == 1 then
			if toggle == 1 then
				return true
			elseif toggle == -1 then
				return false
			end
		end
	end

end
function IsDtEnable()
	local lp=entities.GetLocalPlayer()
	if lp~=nil and lp:IsAlive() then
		AwpDtEnable=gui.GetValue("rbot.accuracy.weapon.sniper.doublefire")
		Ssg08DtEnable=gui.GetValue("rbot.accuracy.weapon.scout.doublefire")
		PistolDtEnable=gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")
		AutoDtEnable=gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")
		HeavypistolDtEnable=gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")
		SmgDtEnable=gui.GetValue("rbot.accuracy.weapon.smg.doublefire")
		RifleDtEnable=gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")
		ShotgunDtEnable=gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")
		Lightmgenable=gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")
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
function Keybinds()
	xmouse,ymouse=input.GetMousePos()
	if xmouse>x1 and ymouse > y1 and xmouse < wight and ymouse < hight and input.IsButtonDown(1) then
		x1=xmouse-60
		y1=ymouse-50
		wight=x1+130
		hight=y1+100
	end
	draw.SetFont(Font3)
	FdKey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
	DtEnable=IsDtEnable()
	HsEnable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
	SlowEnable=gui.GetValue("rbot.accuracy.movement.slowkey")
	SpeedburstEnable=gui.GetValue("misc.speedburst.enable")
	SpeedburstKey=gui.GetValue("misc.speedburst.key")
	EnableAutoPeek=gui.GetValue("rbot.accuracy.movement.autopeek")
	AutoPeekKey=gui.GetValue("rbot.accuracy.movement.autopeekkey")
	draw.Color(1,1,1,120)
	draw.FilledRect(x1,y1,wight,y1+20)
	rk,gk,bk,ak=KeybindsColor:GetValue()
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
		if input.IsButtonDown(AutoPeekKey) then
			draw.Color(1,1,1,255)
			draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost+dmgost+speedost,"Auto Peek   	   [holding]")
			draw.Color(255,255,255,255)
			draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost+dmgost+speedost,"Auto Peek   	   [holding]")
		end
	end

end
function Indicators()
	fdkey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
	hsenable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
	WightScreen,HightScreen=draw.GetScreenSize()
	VelocityX = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[0]" )
	VelocityY = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[1]" )
	LocalPlayerVelocity=math.sqrt(VelocityX^2 + VelocityY^2)
	draw.ShadowRect(WightScreen/2+30-LocalPlayerVelocity/35,HightScreen/2+35,WightScreen/2-30+LocalPlayerVelocity/35,HightScreen/2+38,-5)
	draw.SetFont(Font1) draw.Text(WightScreen/2-30,HightScreen/2+20,"MAY YAW")
		IsDtEnable()
	
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
function DmgOverride()
	if EnableYaw:GetValue() and EnableDmg:GetValue() then
		dmgovkey=gui.GetValue("mayyaw.DMGKey")
		
		if dmgovkey~=0 then

			if ComboboxDMGmode:GetValue() ==0 then

				if input.IsButtonDown(dmgovkey) then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("mayyaw.awpdmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("mayyaw.autodmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("mayyaw.ssg08dmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("mayyaw.heavypistoldmgoverrideslider"))
				else
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("mayyaw.awpdmgslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("mayyaw.autodmgslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("mayyaw.ssg08dmgslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("mayyaw.heavypistoldmgslider"))
				end
			elseif ComboboxDMGmode:GetValue() == 1 then
				if input.IsButtonPressed(dmgovkey) then
					toggle=toggle*-1
				end
				if toggle==1 then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("mayyaw.awpdmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("mayyaw.autodmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("mayyaw.ssg08dmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("mayyaw.heavypistoldmgoverrideslider"))
				elseif toggle==-1 then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("mayyaw.awpdmgslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("mayyaw.autodmgslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("mayyaw.ssg08dmgslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("mayyaw.heavypistoldmgslider"))
				end
			end
		end
	end
end
function DesyncDelta()
	LocalPlayer=entities.GetLocalPlayer()
	lby = math.min(58, math.max(-58, (LocalPlayer:GetProp("m_flLowerBodyYawTarget") - LocalPlayer:GetProp("m_angEyeAngles").y + 180) % 360 - 180))
	rot = nil
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

function Watermark()
	
	time = TimeLib:GetTime()
	WightScreen,HightScreen=draw.GetScreenSize()	
	LocalPlayer=entities.GetLocalPlayer()
	UserName=client.GetConVar("name")
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
	
	
	text=("MayYaw | " ..UserName .. " | delay: " .. delay .." ms | " ..serverip.." | "..time.Hours..":"..time.Minutes..":"..time.Seconds)
	textlen=string.len(text)
	draw.SetFont(Font2)

	
	draw.Color(1,1,1,120)
	draw.FilledRect(WightScreen-textlen*6.8,13,WightScreen-16,32)
	draw.Color(255,255,255,255)
	draw.Text(WightScreen-textlen*6.67,18,"MayYaw | " ..UserName .. " | delay: " .. delay .." ms | " ..serverip.." | "..time.Hours..":"..time.Minutes..":"..time.Seconds)
	rw,gw,bw,aw=WatermarkColor:GetValue()
	draw.Color(rw,gw,bw,aw)
	draw.FilledRect(WightScreen-textlen*6.8+1,12,WightScreen-17,14)
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
		draw.Color(rw,gw,bw,aw)
		draw.FilledRect(WightScreen-75-DisFLValCor,37,WightScreen-17,39)
		draw.FilledRect(WightScreen-175-DisFLValCor,37,WightScreen-86+deltaO100-DisFLValCor,39)
		draw.Color(1,1,1,120)
		draw.FilledRect(WightScreen-76-DisFLValCor,37,WightScreen-16,56)
		draw.FilledRect(WightScreen-176-DisFLValCor,37,WightScreen-85+deltaO100-DisFLValCor,56)
		draw.Color(255,255,255,255)
		draw.SetFont(Font4)


		draw.Text(WightScreen-68-DisFLValCor,41,"FL : "..FL )
		draw.SetFont(Font2)


		draw.Text(WightScreen-154-DisFLValCor,42,"FAKE ("..Desyncdelta.."°)")
		local x=WightScreen-165-DisFLValCor;local r=6;local y=47; local y1=0; local t=2
		for i = 0, 360 / 100 * delta do
			local angle = i * math.pi / 180
			draw.Color(210, 210, 210, 255)
			local ptx, pty = x + r * math.cos(angle), y + y1 + r * math.sin(angle)
			local ptx_, pty_ = x + (r-t) * math.cos(angle), y + y1 + (r-t) * math.sin(angle)
			draw.Line(ptx, pty, ptx_, pty_)
		end
		for i = 360 / 100 * delta + 1, 360 do
			local angle = i * math.pi / 180
			draw.Color(45, 45, 45, 45)
			local ptx, pty = x + r * math.cos(angle), y + y1 + r * math.sin(angle)
			local ptx_, pty_ = x + (r-t) * math.cos(angle), y + y1 + (r-t) * math.sin(angle)
			draw.Line(ptx, pty, ptx_, pty_)
		end
		

	end
end
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
function MayYawAA()
	LocalPlayer=entities.GetLocalPlayer()
	
	SlowEnable=gui.GetValue("rbot.accuracy.movement.slowkey")
	gui.SetValue("rbot.antiaim.advanced.antialign",1)
	Delta()
	VelocityX = vel
	if math.ceil(VelocityX) > 100 then
		gui.SetValue("rbot.antiaim.base.lby",delta+11)
		gui.SetValue("rbot.antiaim.base.rotation",-delta)
		gui.SetValue("rbot.antiaim.base",176)
	elseif math.ceil(VelocityX) < -100 then
		gui.SetValue("rbot.antiaim.base.lby",-delta-11)
		gui.SetValue("rbot.antiaim.base.rotation",delta)
		gui.SetValue("rbot.antiaim.base",-167)
	else
		gui.SetValue("rbot.antiaim.base",177)	
	end
end
function Delta()
	if input.IsButtonDown(SlowEnable) then
		delta=17
	else
		delta=27
	end
	return delta
end
function CustomMayYawAA()
	LocalPlayer=entities.GetLocalPlayer()
	RotationOffsetCustom=gui.GetValue("mayyaw.RotationSliderCustom")
	LbyOffsetCustom=gui.GetValue("mayyaw.LBYSliderCustom")
	BaseYawOffsetCustom=gui.GetValue("mayyaw.BaseYawSliderCustom")
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
		VelocityX = vel
		if math.ceil(VelocityX) > 100 then
			BaseYawOffset=BaseYawOffsetCustom
			RotationOffset=-math.abs(RotationOffset)
			LbyOffset=math.abs(LbyOffset)
		elseif math.ceil(VelocityX) < -100 then
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
function DesyncInvertIndicator()
	WightScreen,HightScreen=draw.GetScreenSize()
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
function Main()
	LocalPlayer=entities.GetLocalPlayer()
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
client.AllowListener("round_prestart");
callbacks.Register("CreateMove",JumpScoutFix)
callbacks.Register("Draw",Main)
callbacks.Register( "FireGameEvent", AutoBuy)
callbacks.Register("Draw",GuiElements)
callbacks.Register("Draw",EngineRadar)
