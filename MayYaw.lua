MayYaw = gui.Tab(gui.Reference("Settings"), "mayyaw", "MayYaw");
ComboxEnable=gui.Groupbox(MayYaw, "Enable MayYaw", 5, 10, 170, 0)
Comboxmain=gui.Groupbox(MayYaw, "MayYaw Features", 190, 10, 410, 0)
Enableyaw=gui.Checkbox(ComboxEnable, "Enableyaw", "Enable", 0)
Enableindicators=gui.Checkbox(Comboxmain, "Enableindicators", "Indicators", 0)
Enablekeybinds=gui.Checkbox(Comboxmain,"Enablekeybinds","Keybinds",0)
Enablewatermark=gui.Checkbox(Comboxmain, "Enablewatermark", "Watermark", 0)
Enableradar=gui.Checkbox(Comboxmain, "Enableradar", "Engine Radar", 0)
Enablerainbowbar=gui.Checkbox(Comboxmain, "Enablerainbowbar", "Rainbow Bar", 0)
Enableascpectratio=gui.Checkbox(Comboxmain, "Enableascpectratio", "Aspect Ratio", 0)
aspectratioslider = gui.Slider(Comboxmain, "aspectratioslider", "Aspect Ratio Value", 100, 1, 199)
aspect_ratio_table = {}
Enabledamageoverride=gui.Checkbox(Comboxmain,"Enabledamageoverride","Damage override",0)
EnableAAAnvanced=gui.Checkbox(Comboxmain, "EnableAAAnvanced", "Advanced AA", 0)
Enablejumpscoutfix=gui.Checkbox(Comboxmain, "Enablejumpscoutfix", "Jump Scout FIX", 0)
Enableautobuy=gui.Checkbox(Comboxmain, "Enableautobuy", "Autobuy", 0)
Comboxautobuy=gui.Combobox(Comboxmain, "Comboxautobuy", "Autobuy items","Scar + Armor","Scout + Armor","AWP + Armor" )
watermarkcolor=gui.ColorPicker(Comboxmain,"Colorwatermark","Watermark Color", 56,56, 165, 255 )
keybindscolor=gui.ColorPicker(Comboxmain,"Colorwatermark","Keybinds Color", 56,56, 165, 255 )
menu=gui.Reference("MENU")
--Description start
DescriptionGroupbox=gui.Groupbox(MayYaw, "MayYaw Description", 5, 100, 170, 0)
Descriptionmaintext=gui.Text(DescriptionGroupbox,"MayYaw lua for aimware")
Descriptionversiontext=gui.Text(DescriptionGroupbox,"Version: 1.1.1")
Descriptionavtortext=gui.Text(DescriptionGroupbox,"Created by Maybe")
DescriptionDiscordtext=gui.Text(DescriptionGroupbox,"Discord: Maybe#2990")
LastUpdGroupbox=gui.Groupbox(MayYaw, "Last Update", 5, 263, 170, 0)
LastUpddatetext=gui.Text(LastUpdGroupbox,"09.04.2021")
LastUpdlog1text=gui.Text(LastUpdGroupbox,"[+] Added Aspect Ratio")
LastUpdlog2text=gui.Text(LastUpdGroupbox,"[+] Added Rainbow bar")
LastUpdlog3text=gui.Text(LastUpdGroupbox,"[-] Removed Nightmode")
--Description end
--Damage override Window start
mindamagewindow=gui.Window("damagewindow","Damage Override", 0, 200, 200, 630 )
mindamagewindow:SetOpenKey(45)
textsliderdefault=gui.Slider(mindamagewindow, "textsliderdefault", "Default Min Damage", 0, 0, 0 )
awpdmgslider=gui.Slider(mindamagewindow, "awpdmgslider", "Awp Min Damage", 0, 1, 100 )
autodmgslider=gui.Slider(mindamagewindow, "autodmgslider", "Auto Min Damage", 0, 1, 100 )
ssg08dmgslider=gui.Slider(mindamagewindow, "ssg08dmgslider", "Scout Min Damage", 0, 1, 100 )
heavypistoldmgslider=gui.Slider(mindamagewindow, "heavypistoldmgslider", "Heavy Pistol Min Damage", 0, 1, 100 )
overdmgslider=gui.Slider(mindamagewindow, "overdmgslider", "Override Min Damage", 0, 0, 0 )
awpdmgoverrideslider=gui.Slider(mindamagewindow, "awpdmgoverrideslider", "Awp Override Min Damage", 0, 1, 100 )
autodmgoverrideslider=gui.Slider(mindamagewindow, "autodmgoverrideslider", "Auto Override Min Damage", 0, 1, 100 )
ssg08dmgoverrideslider=gui.Slider(mindamagewindow, "ssg08dmgoverrideslider", "Scout Override Min Damage", 0, 1, 100 )
heavypistoldmgoverrideslider=gui.Slider(mindamagewindow, "heavypistoldmgoverrideslider", "Heavy Pistol Override Min Damage", 0, 1, 100 )
dmgoverridemode=gui.Combobox(mindamagewindow, "dmgoverridemode", "Mode","Hold","Toggle")
dmgoverridekeybox=gui.Keybox(mindamagewindow,"dmgoverridekeybox","Damage overrride", 0 )
gui.SetValue("damagewindow.awpdmgslider",gui.GetValue("rbot.accuracy.weapon.sniper.mindmg"))
gui.SetValue("damagewindow.autodmgslider",gui.GetValue("rbot.accuracy.weapon.asniper.mindmg"))
gui.SetValue("damagewindow.ssg08dmgslider",gui.GetValue("rbot.accuracy.weapon.scout.mindmg"))
gui.SetValue("damagewindow.heavypistoldmgslider",gui.GetValue("rbot.accuracy.weapon.hpistol.mindmg"))
toggle=-1
x1=100;y1=100;wight=230;hight=200
defhcscout=gui.GetValue("rbot.accuracy.weapon.scout.hitchance")
--Damage override Window end
font1=draw.CreateFont("Arial Black", 15)
font2 = draw.CreateFont("Verdana", 12)
font3 = draw.CreateFont("Verdana", 15)
function isdtenable()
	local lp=entities.GetLocalPlayer()
	if lp~=nil and lp:IsAlive() then
		pistoldtenable=gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")
		autodtenable=gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")
		heavypistoldtenable=gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")
		smgdtenable=gui.GetValue("rbot.accuracy.weapon.smg.doublefire")
		rifledtenable=gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")
		shotgundtenable=gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")
		lightmgenable=gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")
		local lpaw=lp:GetWeaponID()
		if lpaw==2 or lapw==3 or lpaw==4 or lpaw==
30 or lpaw==32 or lpaw==36 or lpaw==61 or lpaw==63 then
			wclass="pistol"
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
		if wclass=="pistol" and (pistoldtenable==1 or pistoldtenable==2)  then
			dtguion=true
		elseif wclass=="heavy pistol" and (heavypistoldtenable==1 or heavypistoldtenable==2) then
			dtguion=true
		elseif wclass=="smg" and (smgdtenable==1 or smgdtenable==2) then
			dtguion=true
		elseif wclass=="rifle" and (rifledtenable==1 or rifledtenable==2) then
			dtguion=true
		elseif wclass=="shotgun" and (shotgundtenable==1 or shotgundtenable==2) then
			dtguion=true
		elseif wclass=="autosniper" and (autodtenable==1 or autodtenable==2) then
			dtguion=true
		elseif wclass=="lightmg" and (lightmgenable==1 or lightmgenable==2) then
			dtguion=true
		else
			dtguion=false
		end
		return(dtguion)
	end
end
function guielements()
	if Enableyaw:GetValue() then
		Enableindicators:SetInvisible(false)
		EnableAAAnvanced:SetInvisible(false)
		Enablewatermark:SetInvisible(false)
		Enableautobuy:SetInvisible(false)
		Enablejumpscoutfix:SetInvisible(false)
		Enabledamageoverride:SetInvisible(false)
		Enablekeybinds:SetInvisible(false)
		Enableradar:SetInvisible(false)
		Enableascpectratio:SetInvisible(false)
		Enablerainbowbar:SetInvisible(false)
	else
		Enableindicators:SetInvisible(true)
		EnableAAAnvanced:SetInvisible(true)
		Enablewatermark:SetInvisible(true)
		Enableautobuy:SetInvisible(true)
		Enablejumpscoutfix:SetInvisible(true)
		Enabledamageoverride:SetInvisible(true)
		Enablekeybinds:SetInvisible(true)
		Enableradar:SetInvisible(true)
		Enableascpectratio:SetInvisible(true)
		Enablerainbowbar:SetInvisible(true)
	end
	if Enableyaw:GetValue() and Enablewatermark:GetValue() then
		watermarkcolor:SetInvisible(false)
	else
		watermarkcolor:SetInvisible(true)
	end
	if Enableyaw:GetValue() and Enableautobuy:GetValue() then
		Comboxautobuy:SetInvisible(false)
	else
		Comboxautobuy:SetInvisible(true)
	end
	if Enableyaw:GetValue() and Enablekeybinds:GetValue() then
		keybindscolor:SetInvisible(false)
	else
		keybindscolor:SetInvisible(true)
	end
	if Enableyaw:GetValue() and Enabledamageoverride:GetValue() and menu:IsActive() then
		mindamagewindow:SetActive(true)
	else
		mindamagewindow:SetActive(false)
	end
	if Enableyaw:GetValue() and Enableascpectratio:GetValue() then
		aspectratioslider:SetInvisible(false)
	else
		aspectratioslider:SetInvisible(true)
	end
end
function AAAdvance()
	local lp=entities.GetLocalPlayer()
	if lp~=nil then
		local slowkey = gui.GetValue("rbot.accuracy.movement.slowkey")
		if Enableyaw:GetValue() and EnableAAAnvanced:GetValue() and lp:IsAlive() then
			if input.IsButtonDown(slowkey) then
				gui.SetValue("rbot.antiaim.base.rotation",21)
				gui.SetValue("rbot.antiaim.base.lby",-32)
				gui.SetValue("rbot.antiaim.left.rotation",21)
				gui.SetValue("rbot.antiaim.left.lby",-32)
				gui.SetValue("rbot.antiaim.right.rotation",21)
				gui.SetValue("rbot.antiaim.right.lby",-32)
			else
				gui.SetValue("rbot.antiaim.base.lby",-75)
				gui.SetValue("rbot.antiaim.base.rotation",40)
				gui.SetValue("rbot.antiaim.left.rotation",40)
				gui.SetValue("rbot.antiaim.left.lby",-75)
				gui.SetValue("rbot.antiaim.right.rotation",40)
				gui.SetValue("rbot.antiaim.right.lby",-75)
			end
		end
	end
end
function indicators()
	local lp=entities.GetLocalPlayer()
	if lp ~=nil then
		if Enableyaw:GetValue() and Enableindicators:GetValue() and lp:IsAlive() then
			wightscreen,hightscreen=draw.GetScreenSize()
			local VelocityX = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[0]" )
			local VelocityY = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[1]" )
			local VelocityZ = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[2]" )
			fdkey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
			hsenable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
			speed = math.sqrt(VelocityX^2 + VelocityY^2)
			draw.ShadowRect(wightscreen/2+30-speed/35,hightscreen/2+35,wightscreen/2-30+speed/35,hightscreen/2+38,-5)
			draw.SetFont(font1)
			draw.Text(wightscreen/2-30,hightscreen/2+20,"MAY YAW")
			dtguion=isdtenable()
			if dtguion and hsenable==false and input.IsButtonDown(fdkey)==false then
				draw.Color(65, 180, 80,255)
				dta=12
				dtx=0
				draw.Text(wightscreen/2-8-dtx,hightscreen/2+53,"DT")
			elseif dtguion and hsenable==true and input.IsButtonDown(fdkey)==false then
				draw.Color(218, 218, 80,255)
				dtx=20
				dta=12
				draw.Text(wightscreen/2-8-dtx,hightscreen/2+53,"DT (slow)")
			elseif dtguion and input.IsButtonDown(fdkey) then
				draw.Color(255,0,00,255)
				dta=12
				dtx=55
				draw.Text(wightscreen/2-8-dtx,hightscreen/2+53,"DESEBELD(fakeduck)")
			else
				dta=0
				dtx=0
			end
			if input.IsButtonDown(fdkey)==true and dtguion==false then
				draw.Color(65,180,80,255)
				draw.Text(wightscreen/2-8,hightscreen/2+53,"FD")
				dta=12
			end
			if hsenable then
				draw.Color(65, 180, 80,255)
				draw.Text(wightscreen/2-8,hightscreen/2+53+dta,"HS")
				hsa=10
			else
				hsa=0
			end
			slowkey = gui.GetValue("rbot.accuracy.movement.slowkey")
			if input.IsButtonDown(slowkey) and EnableAAAnvanced:GetValue() then
				draw.Color(255,255,255,255)
				draw.Text(wightscreen/2-35,hightscreen/2+41,"LOW DELTA")
			else
				draw.Color(174,34,235,255)
				draw.Text(wightscreen/2-30,hightscreen/2+41,"OPPOSITE")
			end
			if isdmgactive() then
				draw.Color(255, 216, 0,255)
				draw.Text(wightscreen/2-12,hightscreen/2+53+dta+hsa,"dmg")
			end
		end
	end
end
function watermark()
	if Enableyaw:GetValue() and Enablewatermark:GetValue() then
		local lp=entities.GetLocalPlayer()
		local name=client.GetConVar("name")
		if lp ~= nil then
			pr=entities.GetPlayerResources()
			delay = pr:GetPropInt("m_iPing", entities.GetLocalPlayer():GetIndex())
		else
			delay="None "
		end
		server=engine.GetServerIP()
		if server == nil then
			serverip="Menu"
			serverdelay="None"
		elseif server=="loopback" then
			serverip="Local"
			serverdelay="None "
		else
			serverip=server
			serverdelay=delay
		end
		wightscreen,hightscreen=draw.GetScreenSize()
		text=("MayYaw | " ..name .. " | delay: " .. delay .."ms | " ..serverip )
		textlen=string.len(text)
		rw,gw,bw,aw=watermarkcolor:GetValue()
		draw.Color(1,1,1,120)
		draw.FilledRect(wightscreen-textlen*7-25,13,wightscreen-14,29)
		draw.Color(255,255,255,255)
		draw.SetFont(font3)
		draw.Text(wightscreen-textlen*7-18,16,"MayYaw | " ..name .. " | delay: " .. delay .."ms | " ..serverip)
		draw.Color(rw,gw,bw,aw)
		draw.OutlinedRect(wightscreen-textlen*7-25,13,wightscreen-14,13)
	end
end
function autobuy(event)
	if event:GetName() == "round_prestart" then
		if Enableyaw:GetValue() then
			if Enableautobuy:GetValue() then
				autobuymode=gui.GetValue("mayyaw.Comboxautobuy")
				if autobuymode== 0 then
					client.Command("buy scar20; buy deagle; buy vest; buy vesthelm; buy incgrenade; buy molotov; buy hegrenade; buy smokegrenade; buy taser", true)
				elseif autobuymode==1 then
					client.Command("buy ssg08; buy deagle; buy vest; buy vesthelm; buy incgrenade; buy molotov; buy hegrenade; buy smokegrenade; buy taser", true)
				elseif autobuymode ==2 then
					client.Command("buy awp; buy deagle; buy vest; buy vesthelm; buy incgrenade; buy molotov; buy hegrenade; buy smokegrenade; buy taser", true)
				end
			end
		end
	end
end
function jumpscoutfix()
	if Enablejumpscoutfix:GetValue() == false then
		defhcscout=gui.GetValue("rbot.accuracy.weapon.scout.hitchance")
	end
	if Enableyaw:GetValue() and Enablejumpscoutfix:GetValue() then
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

			if Enablejumpscoutfix:GetValue() and Enableyaw:GetValue() and lp:IsAlive() then
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
function dmgoverride()
	if Enableyaw:GetValue() and Enabledamageoverride:GetValue() then
		dmgovkey=gui.GetValue("damagewindow.dmgoverridekeybox")
		if dmgovkey~=0 then

			if dmgoverridemode:GetValue() ==0 then

				if input.IsButtonDown(dmgovkey) then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("damagewindow.awpdmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("damagewindow.autodmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("damagewindow.ssg08dmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("damagewindow.heavypistoldmgoverrideslider"))
				else
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("damagewindow.awpdmgslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("damagewindow.autodmgslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("damagewindow.ssg08dmgslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("damagewindow.heavypistoldmgslider"))
				end
			elseif dmgoverridemode:GetValue() == 1 then
				if input.IsButtonPressed(dmgovkey) then
					toggle=toggle*-1
				end
				if toggle==1 then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("damagewindow.awpdmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("damagewindow.autodmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("damagewindow.ssg08dmgoverrideslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("damagewindow.heavypistoldmgoverrideslider"))
				elseif toggle==-1 then
					gui.SetValue("rbot.accuracy.weapon.sniper.mindmg",gui.GetValue("damagewindow.awpdmgslider"))
					gui.SetValue("rbot.accuracy.weapon.asniper.mindmg",gui.GetValue("damagewindow.autodmgslider"))
					gui.SetValue("rbot.accuracy.weapon.scout.mindmg",gui.GetValue("damagewindow.ssg08dmgslider"))
					gui.SetValue("rbot.accuracy.weapon.hpistol.mindmg",gui.GetValue("damagewindow.heavypistoldmgslider"))
				end
			end
		end
	end
end
function isdmgactive()
	dmgovkey=gui.GetValue("damagewindow.dmgoverridekeybox")
	if Enableyaw:GetValue() and Enabledamageoverride:GetValue() and dmgovkey~=0 then
		if dmgoverridemode:GetValue() == 0 then
			if input.IsButtonDown(dmgovkey) then
				return true
			else
				return false
			end
		elseif dmgoverridemode:GetValue() == 1 then
			if toggle == 1 then
				return true
			elseif toggle == -1 then
				return false
			end
		end
	end
end
function keybinds()
	local lp=entities.GetLocalPlayer()
	if lp~=nil then
		if Enableyaw:GetValue() and Enablekeybinds:GetValue() then

				xmouse,ymouse=input.GetMousePos()
				if xmouse>x1 and ymouse > y1 and xmouse < wight and ymouse < hight and input.IsButtonDown(1) then
					x1=xmouse-60
					y1=ymouse-50
					wight=x1+130
					hight=y1+100
				end

			draw.SetFont(font2)
			fdkey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
			dtenable=isdtenable()
			hsenable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
			slowenable=gui.GetValue("rbot.accuracy.movement.slowkey")
			speedburstkey=gui.GetValue("misc.speedburst.key")
			draw.Color(1,1,1,120)
			draw.FilledRect(x1,y1,wight,y1+20)
			rk,gk,bk,ak=keybindscolor:GetValue()
			draw.Color(rk,gk,bk,ak)
			draw.FilledRect(x1,y1,wight,y1+2)
			draw.Color(1,1,1,255)
			draw.Text(x1+46,y1+6,"keybinds")
			draw.Color(255,255,255,255)
			draw.TextShadow(x1+45,y1+6,"keybinds")
			if dtenable == true then
				draw.Color(1,1,1,255)
				draw.Text(x1+6,y1+27,"Double Tap  	  [toggled]")
				draw.Color(255,255,255,255)
				draw.TextShadow(x1+5,y1+27,"Double Tap  	  [toggled]")
				dtots=15
			else
				dtots=0
			end
			if hsenable then
				draw.Color(1,1,1,255)
				draw.Text(x1+6,y1+27+dtots,"Hide shots   	  [toggled]")
				draw.Color(255,255,255,255)
				draw.TextShadow(x1+5,y1+27+dtots,"Hide shots   	  [toggled]")
				hsots=15
			else
				hsots=0
			end
			if input.IsButtonDown(fdkey) then
				draw.Color(1,1,1,255)
				draw.Text(x1+6,y1+27+dtots+hsots,"Fake duck   	   [holding]")
				draw.Color(255,255,255,255)
				draw.Text(x1+5,y1+27+dtots+hsots,"Fake duck   	   [holding]")
				fdost=15
			else
				fdost=0
			end
			if input.IsButtonDown(slowenable) then
				draw.Color(1,1,1,255)
				draw.Text(x1+6,y1+27+dtots+hsots+fdost,"Slow walk   	    [holding]")
				draw.Color(255,255,255,255)
				draw.Text(x1+5,y1+27+dtots+hsots+fdost,"Slow walk   	    [holding]")
				slowost=15
			else
				slowost=0
			end
			if isdmgactive() then
				draw.Color(1,1,1,255)
				draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost,"Dmg Override  [enable]")
				draw.Color(255,255,255,255)
				draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost,"Dmg Override  [enable]")
				dmgost=15
			else
				dmgwost=0
			end
			if speedburst==true and input.IsButtonDown(speedburstkey) then
				draw.Color(1,1,1,255)
				draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost+dmgost,"Speed burst   	[holding]")
				draw.Color(255,255,255,255)
				draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost+dmgost,"Speed burst   	[holding]")
			end
		end
	end
end
function radar()
	if Enableyaw:GetValue() and Enableradar:GetValue() then
		for index, Player in pairs(entities.FindByClass("CCSPlayer")) do
			Player:SetProp("m_bSpotted", 1);
		end
	else
		for index, Player in pairs(entities.FindByClass("CCSPlayer")) do
			Player:SetProp("m_bSpotted", 0);
		end
	end
end
function gcd(m, n)
	while m ~= 0 do
		m, n = math.fmod(n, m), m;
	end
return n
end
function set_aspect_ratio(aspect_ratio_multiplier)
	screen_width, screen_height = draw.GetScreenSize();
	aspectratio_value = (screen_width*aspect_ratio_multiplier)/screen_height;
	if Enableyaw:GetValue() == false then
		aspectratio_value = 0;
	end
	if aspect_ratio_multiplier == 1 or not Enableascpectratio:GetValue() then
		aspectratio_value = 0;
	end

	client.SetConVar( "r_aspectratio", tonumber(aspectratio_value), true);
end
function aspectratio()
	screen_width, screen_height = draw.GetScreenSize();
	for i=1, 200 do
		i2=i*0.01;    i2 = 2 - i2;
		divisor = gcd(screen_width*i2, screen_height);
		if screen_width*i2/divisor < 100 or i2 == 1 then
			aspect_ratio_table[i] = screen_width*i2/divisor .. ":" .. screen_height/divisor;
		end
	end
	aspect_ratio = aspectratioslider:GetValue()*0.01;
	aspect_ratio = 2 - aspect_ratio;
	set_aspect_ratio(aspect_ratio);
end

function rainbowbar()
	if Enableyaw:GetValue() and Enablerainbowbar:GetValue() then
		local screenSize = draw.GetScreenSize();
        local r = math.floor(math.sin(globals.RealTime() * 1) * 127 + 128);
        local g = math.floor(math.sin(globals.RealTime() * 1 + 2) * 127 + 128);
        local b = math.floor(math.sin(globals.RealTime() * 1 + 4) * 127 + 128);
        draw.Color(r, g, b, 255);
        draw.FilledRect(0, 0, screenSize, 2.5);
	end
end

client.AllowListener("round_prestart");
callbacks.Register("Draw",guielements)
callbacks.Register("CreateMove",AAAdvance)
callbacks.Register("Draw",indicators)
callbacks.Register("Draw",watermark)
callbacks.Register( "FireGameEvent", autobuy)
callbacks.Register("CreateMove",jumpscoutfix)
callbacks.Register("Draw",dmgoverride)
callbacks.Register("Draw",keybinds)
callbacks.Register("Draw",radar)
callbacks.Register('Draw',aspectratio)
callbacks.Register('Draw',rainbowbar)

