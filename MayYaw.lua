MayYaw = gui.Tab(gui.Reference("Settings"), "mayyaw", "MayYaw");

ComboxEnable=gui.Groupbox(MayYaw, "Enable MayYaw", 5, 10, 160, 0)
Comboxmain=gui.Groupbox(MayYaw, "MayYaw Features", 190, 10, 410, 0)
DescriptionGroupbox=gui.Groupbox(MayYaw, "MayYaw Description", 5, 100, 160, 0)
Descriptionmaintext=gui.Text(DescriptionGroupbox,"MayYaw lua for aimware")
Descriptionversiontext=gui.Text(DescriptionGroupbox,"Version: 1.0")
Descriptionavtortext=gui.Text(DescriptionGroupbox,"Created by Maybe")
DescriptionDiscordtext=gui.Text(DescriptionGroupbox,"Discord: Maybe#2990")
mainmenu=gui.Reference("MENU")
wightscreen,hightscreen=draw.GetScreenSize()
Enableyaw=gui.Checkbox(ComboxEnable, "Enableyaw", "Enable", 0)
Enableindicators=gui.Checkbox(Comboxmain, "Enableindicators", "Indicators", 0)
Enablewatermark=gui.Checkbox(Comboxmain, "Enablewatermark", "Watermark", 0)
Enablekeybinds=gui.Checkbox(Comboxmain,"Enablekeybinds","Keybinds",0)
Enableradar=gui.Checkbox(Comboxmain, "Enableradar", "Engine Radar", 0)
Enablenightmode=gui.Checkbox(Comboxmain, "Enablenightmode", "Night mode", 0)
nightmodeslider=gui.Slider(Comboxmain, "nightmodeslider", "Night mode value", 100, 1, 100 )
Enablelowdelta=gui.Checkbox(Comboxmain, "Enablelowdelta", "Lowdelta", 0)
EnableadvanceDT=gui.Checkbox(Comboxmain, "Enableadvancedt", "Advanced DT", 0)
ComboxDTmode=gui.Combobox(Comboxmain, "ComboxDtmode", "DT mode","Reliable","Faster","Fastest(Inacuracy)" )
Enabledamageoverride=gui.Checkbox(Comboxmain,"Enabledamageoverride","Damage override",0)
mindamagewindow=gui.Window("damagewindow","Damage Override", 0, 200, 200, 600 )
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
dmgoverridekeybox=gui.Keybox(mindamagewindow,"dmgoverridekeybox","Damage overrride", 0 )
Enableautobuy=gui.Checkbox(Comboxmain, "Enableautobuy", "Autobuy", 0)
Comboxautobuy=gui.Combobox(Comboxmain, "Comboxautobuy", "Autobuy items","Scar + Armor","Scout + Armor","AWP + Armor" )
watermarkcolor=gui.ColorPicker(Comboxmain,"Colorwatermark","Watermark Color", 56,56, 165, 255 )
keybindscolor=gui.ColorPicker(Comboxmain,"Colorwatermark","Keybinds Color", 56,56, 165, 255 )
deflby=gui.GetValue("rbot.antiaim.base.lby")
defrotat=gui.GetValue("rbot.antiaim.base.rotation")
speedburst=gui.GetValue("misc.speedburst.enable")
processticks = gui.Reference('Misc', 'General', 'Server', 'sv_maxusrcmdprocessticks')
font1 = draw.CreateFont("Arial Black", 15)
font2 = draw.CreateFont("Verdana", 12)
font3 = draw.CreateFont("Verdana", 15)
defdmgawp=20
x1=100
y1=100
wight=230
hight=200
gui.SetValue("damagewindow.awpdmgslider",gui.GetValue("rbot.accuracy.weapon.sniper.mindmg"))
gui.SetValue("damagewindow.autodmgslider",gui.GetValue("rbot.accuracy.weapon.asniper.mindmg"))
gui.SetValue("damagewindow.ssg08dmgslider",gui.GetValue("rbot.accuracy.weapon.scout.mindmg"))
gui.SetValue("damagewindow.heavypistoldmgslider",gui.GetValue("rbot.accuracy.weapon.hpistol.mindmg"))
function lowdelta()
	if Enableyaw:GetValue() then
		Enablelowdelta:SetInvisible(false)
		local slowkey = gui.GetValue("rbot.accuracy.movement.slowkey")
		if input.IsButtonDown(slowkey) and Enablelowdelta:GetValue() and Enableyaw:GetValue() then
			gui.SetValue("rbot.antiaim.base.rotation",20)
			gui.SetValue("rbot.antiaim.base.lby",-17)
		else
			gui.SetValue("rbot.antiaim.base.lby",80)
			gui.SetValue("rbot.antiaim.base.rotation",-45)
		end
	else
		Enablelowdelta:SetInvisible(true)
		gui.SetValue("rbot.antiaim.base.lby",80)
		gui.SetValue("rbot.antiaim.base.rotation",-45)
	end
end
function dtgetenable()
	server=engine.GetServerIP()
	if server~=nil then
		pistoldtenable=gui.GetValue("rbot.accuracy.weapon.pistol.doublefire")
		autodtenable=gui.GetValue("rbot.accuracy.weapon.asniper.doublefire")
		heavypistoldtenable=gui.GetValue("rbot.accuracy.weapon.hpistol.doublefire")
		smgdtenable=gui.GetValue("rbot.accuracy.weapon.smg.doublefire")
		rifledtenable=gui.GetValue("rbot.accuracy.weapon.rifle.doublefire")
		shotgundtenable=gui.GetValue("rbot.accuracy.weapon.shotgun.doublefire")
		lightmgenable=gui.GetValue("rbot.accuracy.weapon.lmg.doublefire")
		gui.Command("clear")
		lpaw=entities.GetLocalPlayer():GetWeaponID()
		if lpaw == 2 or lpaw== 3 or lpaw== 4 or lpaw== 30 or lpaw== 32 or lpaw== 36 or lpaw== 61 or lpaw== 63 then
			wclass="pistol"
		elseif paw== 1 then
			wclass="heavy pistol"
		elseif lpaw == 17 or lpaw== 19 or lpaw== 23 or lpaw== 24 or lpaw== 26 or lpaw== 33 or lpaw== 34 then
			wclass="smg"
		elseif  lpaw== 7 or lpaw== 8 or lpaw== 10 or lpaw== 13 or lpaw== 16 or lpaw== 39 or lpaw== 61 then
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
		return dtguion
	end
end
function indicators()
	if Enableyaw:GetValue() then
		Enableindicators:SetInvisible(false)
		server=engine.GetServerIP()
		if server ~= nil then
			if Enableindicators:GetValue() then
				VelocityX = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[0]" )
				VelocityY = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[1]" )
				VelocityZ = entities.GetLocalPlayer():GetPropFloat( "localdata", "m_vecVelocity[2]" )
				hsenable=gui.GetValue("rbot.antiaim.condition.shiftonshot")
				fdkey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
				speed = math.sqrt(VelocityX^2 + VelocityY^2)
				if entities.GetLocalPlayer():IsAlive() then
					draw.ShadowRect(wightscreen/2+30-speed/35,hightscreen/2+35,wightscreen/2-30+speed/35,hightscreen/2+38,-5)
					draw.SetFont(font1)
					draw.Text(wightscreen/2-30,hightscreen/2+20,"MAY YAW")
					lpaw=entities.GetLocalPlayer():GetWeaponID()
					dtguion=dtgetenable()
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
					if dmgactive() then
						draw.Color(255, 216, 0,255)
						draw.Text(wightscreen/2-12,hightscreen/2+53+dta+hsa,"dmg")
					else
					end
					slowkey = gui.GetValue("rbot.accuracy.movement.slowkey")
					if input.IsButtonDown(slowkey) and Enablelowdelta:GetValue() then
						draw.Color(255,255,255,255)
						draw.Text(wightscreen/2-35,hightscreen/2+41,"LOW DELTA")
					else
						draw.Color(174,34,235,255)
						draw.Text(wightscreen/2-30,hightscreen/2+41,"OPPOSITE")
					end
				end
			end
		end
	else
		Enableindicators:SetInvisible(true)
	end
end
function watermark()
	if Enableyaw:GetValue() then
		Enablewatermark:SetInvisible(false)
		if Enablewatermark:GetValue() then
			server=engine.GetServerIP()
			if server ~= nil then
				name=entities.GetLocalPlayer():GetName()
				pr=entities.GetPlayerResources()
				delay = pr:GetPropInt("m_iPing", entities.GetLocalPlayer():GetIndex())
				if server ~="loopback" then
					serverip=server
				else
					serverip="Local"
				end
			else
				serverip="None "
				delay="None "
			end
			name=client.GetConVar("name")
			text=("MayYaw | " ..name .. " | delay: " .. delay .."ms | " ..serverip )
			textlen=string.len(text)
			rw,gw,bw,aw=watermarkcolor:GetValue()
			draw.Color(1,1,1,120)
			draw.FilledRect(wightscreen-textlen*7-17,13,wightscreen-14,29)
			draw.Color(255,255,255,255)
			draw.SetFont(font3)
			draw.Text(wightscreen-textlen*7-10,16,"MayYaw | " ..name .. " | delay: " .. delay .."ms | " ..serverip)
			draw.Color(rw,gw,bw,aw)
			draw.OutlinedRect(wightscreen-textlen*7-17,13,wightscreen-14,13)
		end
	else
		Enablewatermark:SetInvisible(true)
	end
	if Enablewatermark:GetValue() and Enableyaw:GetValue() then
		watermarkcolor:SetInvisible(false)
	else
		watermarkcolor:SetInvisible(true)
	end
end
function advanceDT()
	if Enableyaw:GetValue() then
		EnableadvanceDT:SetInvisible(false)
		dtguion=dtgetenable()
		if EnableadvanceDT then
			if ComboxDTmode:GetValue()==0 and dtguion then
				processticks:SetValue(16)
				gui.SetValue("rbot.antiaim.advanced.antialign",1)
			elseif ComboxDTmode:GetValue()==1 and dtguion then
				processticks:SetValue(18)
				gui.SetValue("rbot.antiaim.advanced.antialign",1)
			elseif ComboxDTmode:GetValue()==2 and dtguion then
				processticks:SetValue(25)
				gui.SetValue("rbot.antiaim.advanced.antialign",1)
			else
				gui.SetValue("rbot.antiaim.advanced.antialign",0)
				processticks:SetValue(15)
			end
		end
	else
		EnableadvanceDT:SetInvisible(true)
	end
	if EnableadvanceDT:GetValue() and Enableyaw:GetValue() then
		ComboxDTmode:SetInvisible(false)
	else
		gui.SetValue("rbot.antiaim.advanced.antialign",0)
		processticks:SetValue(15)
		ComboxDTmode:SetInvisible(true)
	end
end
function autobuydraw()
	if Enableyaw:GetValue() then
		Enableautobuy:SetInvisible(false)
		if Enableautobuy:GetValue() then
			Comboxautobuy:SetInvisible(false)
		else
			Comboxautobuy:SetInvisible(true)
		end
	else
		Enableautobuy:SetInvisible(true)
		Comboxautobuy:SetInvisible(true)
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
function keybinds()
	if Enableyaw then
		server=engine.GetServerIP()
		if Enablekeybinds:GetValue() and server ~= nil then
			if entities.GetLocalPlayer():IsAlive() then
				xmouse,ymouse=input.GetMousePos()
				if xmouse>x1 and ymouse > y1 and xmouse < wight and ymouse < hight and input.IsButtonDown(1) then
					x1=xmouse-60
					y1=ymouse-50
					wight=x1+130
					hight=y1+100
				end
				draw.SetFont(font2)
				fdkey=gui.GetValue("rbot.antiaim.extra.fakecrouchkey")
				dtenable=dtgetenable()
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
				if dmgactive() then
					draw.Color(1,1,1,255)
					draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost,"Damage Override  [holding]")
					draw.Color(255,255,255,255)
					draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost,"Dmg Override  [holding]")
					dmgost=15
				else
					dmgwost=0
				end
				if
				speedburst==true and input.IsButtonDown(speedburstkey) then
					draw.Color(1,1,1,255)
					draw.Text(x1+6,y1+27+dtots+hsots+fdost+slowost+dmgost,"Speed burst   	[holding]")
					draw.Color(255,255,255,255)
					draw.Text(x1+5,y1+27+dtots+hsots+fdost+slowost+dmgost,"Speed burst   	[holding]")
				end
			end
		end
	end
	if Enableyaw:GetValue() then
		Enablekeybinds:SetInvisible(false)
	else
		Enablekeybinds:SetInvisible(true)
	end
	if Enableyaw:GetValue() and Enablekeybinds:GetValue() then
		keybindscolor:SetInvisible(false)
	else
		keybindscolor:SetInvisible(true)
	end
end
function damageoverride()
	if Enableyaw:GetValue() then
		Enabledamageoverride:SetInvisible(false)
	else
		Enabledamageoverride:SetInvisible(true)
	end
	if Enableyaw:GetValue() and Enabledamageoverride:GetValue() and mainmenu:IsActive() then
		mindamagewindow:SetActive(true)
	else
		mindamagewindow:SetActive(false)
	end
	if Enableyaw:GetValue() and Enabledamageoverride:GetValue() then
		dmgovkey=gui.GetValue("damagewindow.dmgoverridekeybox")
		if dmgovkey ~=0 then
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
		end
	end
end
function dmgactive()
	dmgovkey=gui.GetValue("damagewindow.dmgoverridekeybox")
	if dmgovkey ~=0 then
		if  Enableyaw:GetValue() and Enabledamageoverride:GetValue() and input.IsButtonDown(dmgovkey) then
			return(true)
		end
	else
		return(false)
	end
end
function radar()
	if Enableyaw:GetValue() then
		Enableradar:SetInvisible(false)
	else
		Enableradar:SetInvisible(true)
	end
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
function nightmode()
	if Enableyaw:GetValue() then
		Enablenightmode:SetInvisible(false)
	else
		Enablenightmode:SetInvisible(true)
	end
	server=engine.GetServerIP()
	if Enableyaw:GetValue() and Enablenightmode:GetValue() and server~=nil then
		modenight = entities.FindByClass("CEnvTonemapController")[1]
		nightmodeslider:SetInvisible(false)
		modenight:SetProp("m_bUseCustomAutoExposureMin", 1);
		modenight:SetProp("m_bUseCustomAutoExposureMax", 1);
		modenight:SetProp("m_flCustomAutoExposureMin", nightmodeslider:GetValue()/100);
		modenight:SetProp("m_flCustomAutoExposureMax", nightmodeslider:GetValue()/100);
	else
		modenight:SetProp("m_bUseCustomAutoExposureMin", 0);
		modenight:SetProp("m_bUseCustomAutoExposureMax", 0);
		nightmodeslider:SetInvisible(true)
	end
end
client.AllowListener("round_prestart");
callbacks.Register("Draw", lowdelta)
callbacks.Register("Draw", indicators)
callbacks.Register("Draw", damageoverride)
callbacks.Register("Draw", keybinds)
callbacks.Register("Draw", watermark)
callbacks.Register("Draw", advanceDT)
callbacks.Register("Draw", autobuydraw)
callbacks.Register("Draw", radar)
callbacks.Register("Draw", nightmode)
callbacks.Register( "FireGameEvent", autobuy)
