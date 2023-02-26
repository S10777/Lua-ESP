print("\n\nChargement du menu. . .\n")
MsgC(HSVToColor( CurTime() % 6 * 60, 1, 1 ),[[   
                              ▄▄▀▀▀⌠"""▀▀#▄
                            ▄█▀¡    ,   ,,  ▀█
                       ,▄▄▄▀    ▐²  ▄  *,    "█▀▀▀▄
                   ▄▄▀▀' ╛     /▄═,^╛ `═ \         █
                 ▄▀`   ╒M    ¿╜ ,' ▐    ╘╒     '   ▐▌
               ▄▀     r▐    ╔═"""^~▄     M    Æ    ▐▌
              █▀    ," ▐    M       \ ,*    ,╛    ,█▄▀▀▀▀▀▀▀▀&▄
             ▐▌     ' ╛ ▀╕  W      ,^'    ,^     ,█∞══¬.       ▀▀▄
             █       ╒   'à }    /  ═`  ¿"      / █    .═  ,'╕  .=█▄
             █⌐     ²▐      `"'^""""  r"      ⌐`  "█ / ⌐^` ▀W ╘⌐   ▀█,
              ▀▄      ",           ,¿    ,.⌐'     ╒██▌"    ▌".*╬     ▀▀#▄
                ▀▀▄▄,    ╚""""`    /             ▄██▐█     '  , ▀     ▌  ▀█,
                    ▀▀▄ⁿ.  ╕      ╒             ╩▀╛ █ ²  ⌐"     ⁿφ    ║    ▀█
                     ▄█▌  ╕╘      Γ          >"⌐'  █▌,  ╘        ⌠    ╛╘     █
                   ▄▀    '═▄L     L       ▄A^`   ▄█"\  ', \      '  ╔▀L l     █
                  j█,▄▄#ªRª#▄▄^═~..A¬╓╤^▄▄▄▄▄▄#▀▀    "¿`*═,)    ╛ d═  ▐       █W
                    └         █▄▄"^╜   ,██▄      `^            "      ▐ Æ     ▐▌
                                 ▀█▄▄▄█▌ Y▀,           ▐ "═.         ▄═       █
                                    █ ██  "╕\                 `"^p═"        ▄█"
                                    ▐▌ ██▄   ═▄                /   .⌐▄▄▄▄R▀▀
                                     █ ▐▌'▀&▄, "═      ƒ      ╛¿^  ▄▀'
                                     ▐▌ █    '▀█▌xJs═∞Ç     ,▄W═^``▀█
                                      █ █       ▀▄   ╚═^Ç,▄A▀▀4▄▄▄   █   
                                ▄▄▄▄, ▐W▐▌ ╙██▄  ▐█▄▄▄█▀▀▀'       ▀&▄█      
                                 '▀▀█▓▀▌▐▌   ▀█▀█▀,█
                                      ▀█▐▌    ,█ ╓█
                                       █▐M   ,█ ▄▀
                                       ██M  ┌█ ▄
,ggg,         gg                                                                              
dP""Y8a        88                     ,dPYb,                          ,dPYb, ,dPYb,            
Yb, `88        88                     IP'`Yb                          IP'`Yb IP'`Yb            
`"   88        88                     I8  8I                          I8  8I I8  8I            
     88        88                     I8  8'                          I8  8' I8  8'            
     88        88   ,ggg,,ggg,,ggg,   I8 dP        ,gggggg,   ,ggg,   I8 dP  I8 dP    ,gggg,gg 
     88        88  ,8" "8P" "8P" "8,  I8dP   88gg  dP""""8I  i8" "8i  I8dP   I8dP    dP"  "Y8I 
     88        88  I8   8I   8I   8I  I8P    8I   ,8'    8I  I8, ,8I  I8P    I8P    i8'    ,8I 
     Y8b,____,d88,,dP   8I   8I   Yb,,d8b,  ,8I  ,dP     Y8, `YbadP' ,d8b,_ ,d8b,_ ,d8,   ,d8b,   
      "Y888888P"Y88P'   8I   8I   `Y88P'"Y88P"'  8P      `Y8888P"Y8888P'"Y888P'"Y88P"Y8888P"`Y8  
                                                                                                                    
 
]])

executer = false

local ply = LocalPlayer()
local espName = true
local espRank = true
local espHealth = true
local espBorder = true
local open = false

local ModelList = {
	EnfantM = "models/_Skele_Dragon_/vocaloid/chibi_kuro_ap.mdl",
    EnfantG = "models/captainbigbutt/vocaloid/chibi_miku_ap.mdl",
    Gryffondor1 = "models/spg/femaleblackcurlyblack/gryffindor3.mdl",
    Gryffondor2 = "models/spg/femalewhiteknotbangsbrunette/knotbangs_gryffindor.mdl",
    Gryffondor3 = "models/spg/femalewhitelongblack/whitelongblack_gryffindor.mdl",
    Gryffondor4 = "models/spg/femalewhitelongbangsblonde/longbangsblonde_gryffindor.mdl",
    Gryffondor5 = "models/spg/femalewhitelongbangsginger/longbangsginger_gryffindor.mdl",
    Gryffondor6 = "models/spg/femalewhiteponyblack/gryffindor2.mdl",
    Gryffondor7 = "models/spg/femalewhiteponybrunette/gryffindor1.mdl",
    Gryffondor8 = "models/spg/malebrownlongbrunette/noirgryffondorv1_lod.mdl",
    Gryffondor9 = "models/spg/malebrownshortbrunette/gryffindor3.mdl",
    Gryffondor10 = "models/spg/malewhitelongblack/blackhairboi_gryffindor.mdl",
    Gryffondor11 = "models/spg/malewhitelongblonde/blondgryffondorv1.mdl",
    Gryffondor12 = "models/spg/malewhitelongbrunette/1gryffondorv1.mdl",
    Gryffondor13 = "models/spg/malewhiteshortblack/gryffindor1.mdl",
    Gryffondor14 = "models/spg/malewhiteshortbrunette/gryffindor2.mdl",
    Serpentard1 = "models/spg/femaleblackcurlyblack/slytherin3.mdl",
    Serpentard2 = "models/spg/femalewhiteknotbangsbrunette/knotbangs_slytherin.mdl",
    Serpentard3 = "models/spg/femalewhitelongblack/1serpentardgirl_lod.mdl",
    Serpentard4 = "models/spg/femalewhitelongbangsblonde/longbangsblonde_slytherin.mdl",
    Serpentard5 = "models/spg/femalewhitelongbangsginger/longbangsginger_slytherin.mdl",
    Serpentard6 = "models/spg/femalewhiteponyblack/slytherin2.mdl",
    Serpentard7 = "models/spg/femalewhiteponybrunette/slytherin1.mdl",
    Serpentard8 = "models/spg/malebrownlongbrunette/brownboi_slytherin.mdl",
    Serpentard9 = "models/spg/malewhiteshortblack/slytherin1.mdl",
    Serpentard10 = "models/spg/malewhitelongblack/serpentardguyblack_lod.mdl",
    Serpentard11 = "models/spg/malewhitelongblonde/serpentardblond.mdl",
    Serpentard12 = "models/spg/malewhitelongbrunette/brunetteboi_slytherin.mdl",
    Serpentard13 = "models/spg/malewhiteshortblack/slytherin1.mdl",
    Serpentard14 = "models/spg/malewhiteshortbrunette/slytherin2.mdl",
    Poufsouffle1 = "models/spg/femaleblackcurlyblack/hufflepuff3.mdl",
    Poufsouffle2 = "models/spg/femalewhiteknotbangsbrunette/knotbangs_hufflepuff.mdl",
    Poufsouffle3 = "models/spg/femalewhitelongblack/whitelongblack_hufflepuff.mdl",
    Poufsouffle4 = "models/spg/femalewhitelongbangsblonde/longbangsblonde_hufflepuff.mdl",
    Poufsouffle5 = "models/spg/femalewhitelongbangsginger/longbangsginger_hufflepuff.mdl",
    Poufsouffle6 = "models/spg/femalewhiteponyblack/hufflepuff2.mdl",
    Poufsouffle7 = "models/spg/femalewhiteponybrunette/hufflepuff1.mdl",
    Poufsouffle8 = "models/spg/malebrownlongbrunette/3poufsouflev1_lod.mdl",
    Poufsouffle9 = "models/spg/malebrownshortbrunette/hufflepuff3.mdl",
    Poufsouffle10 = "models/spg/malewhitelongblack/blackhairboi_hufflepuff.mdl",
    Poufsouffle11 = "models/spg/malewhitelongblonde/2poufsouflev1_lod.mdl",
    Poufsouffle12 = "models/spg/malewhitelongbrunette/brunetteboi_hufflepuff.mdl",
    Poufsouffle13 = "models/spg/malewhiteshortblack/hufflepuff1.mdl",
    Poufsouffle14 = "models/spg/malewhiteshortbrunette/hufflepuff2.mdl",
    Serdaigle1 = "models/spg/femaleblackcurlyblack/ravenclaw3.mdl",
    Serdaigle2 = "models/spg/femalewhiteknotbangsbrunette/knotbangs_ravenclaw.mdl",
    Serdaigle3 = "models/spg/femalewhitelongblack/whitelongblack_ravenclaw.mdl",
    Serdaigle4 = "models/spg/femalewhitelongbangsblonde/longbangsblonde_ravenclaw.mdl",
    Serdaigle5 = "models/spg/femalewhitelongbangsginger/longbangsginger_ravenclaw.mdl",
    Serdaigle6 = "models/spg/femalewhiteponyblack/ravenclaw2.mdl",
    Serdaigle7 = "models/spg/femalewhiteponybrunette/ravenclaw1.mdl",
    Serdaigle8 = "models/spg/malebrownlongbrunette/brownboi_ravenclaw.mdl",
    Serdaigle9 = "models/spg/malewhiteshortblack/ravenclaw1.mdl",
    Serdaigle10 = "models/spg/malewhitelongblack/3serdaiglev1_lod.mdl",
    Serdaigle11 = "models/spg/malewhitelongblonde/ravenclaw_blondeboi.mdl",
    Serdaigle12 = "models/spg/malewhitelongbrunette/2serdaiglev1.mdl",
    Serdaigle13 = "models/spg/malewhiteshortblack/ravenclaw1.mdl",
    Serdaigle14 = "models/spg/malewhiteshortbrunette/ravenclaw2.mdl"
}

surface.CreateFont( "Titre", {
    font = "Lato Light",
    size = 50,
    weight = 1000,
    antialias = true,
    strikeout = false,
    additive = true,
} )

surface.CreateFont( "PopupHFont", {
    font = "Segoe UI Light",
    size = 100,
    weight = 1000
})

surface.CreateFont("PopupFont", {
    font = "Segoe UI Light",
    size = 21,
    weight = 300
})

surface.CreateFont("Erreurmdr", {
font = "Segoe UI Light",
size = 40,
weight = 600
})

surface.CreateFont("Guillaume", {
    font = "Segoe UI Light",
    size = 500,
    weight = 300
})

surface.CreateFont("THEMENUOPENING78", {
    font = "Segoe UI Light",
    size = 47,
    weight = 300
})

surface.CreateFont("jspquoimettre", {
    font = "Segoe UI Light",
    size = 27,
    weight = 700
})

surface.CreateFont("fermermenu", {
    font = "Lato Light",
    size = 25,
    weight = 1000
})

surface.CreateFont("menuouvert", {
    font = "Lato Light",
    size = 40,
    weight = 1000
})

local function coordinates( ent )
    local min, max = ent:OBBMins(), ent:OBBMaxs()
    local corners = {
        Vector( min.x, min.y, min.z ),
        Vector( min.x, min.y, max.z ),
        Vector( min.x, max.y, min.z ),
        Vector( min.x, max.y, max.z ),
        Vector( max.x, min.y, min.z ),
        Vector( max.x, min.y, max.z ),
        Vector( max.x, max.y, min.z ),
        Vector( max.x, max.y, max.z )
    }
    local minX, minY, maxX, maxY = ScrW() * 2, ScrH() * 2, 0, 0
    for _, corner in pairs( corners ) do
        local onScreen = ent:LocalToWorld( corner ):ToScreen()
        minX, minY = math.min( minX, onScreen.x ), math.min( minY, onScreen.y )
        maxX, maxY = math.max( maxX, onScreen.x ), math.max( maxY, onScreen.y )
    end
    return minX, minY, maxX, maxY
end

local function FillRGBA(x,y,w,h,col)
    surface.SetDrawColor( col.r, col.g, col.b, col.a );
    surface.DrawRect( x, y, w, h );
end

hook.Add("Think", "BM_Clients_Key", function()
    if input.IsKeyDown(KEY_L) and not open and not ply:IsTyping() and !gui.IsConsoleVisible() and !executer then
        open = true
        local LMAOCEJEUDECANCER = vgui.Create("DFrame")
        LMAOCEJEUDECANCER:SetSize(450,750)
        LMAOCEJEUDECANCER:SetTitle("Version Teamfrench Love ♥")
        LMAOCEJEUDECANCER:MakePopup()
        LMAOCEJEUDECANCER:Center()
        LMAOCEJEUDECANCER:ShowCloseButton(false)
        LMAOCEJEUDECANCER.Paint = function()
            surface.SetDrawColor(0, 0, 0,200)
            surface.DrawRect(4,4,LMAOCEJEUDECANCER:GetWide()-8,LMAOCEJEUDECANCER:GetTall()-8)
            LMAOCEJEUDECANCER.Paint = function( self, w, h )
                draw.RoundedBox(10, 0, 0, w, h, Color(15,15,15,220))
                draw.DrawText( "Teamfrench ♥ ", "Titre", 120, 50, HSVToColor( CurTime() % 6 * 60, 1, 1 ))
            end
        end
        local jadoreetreuncancerdegmod = vgui.Create("DButton", LMAOCEJEUDECANCER)
        jadoreetreuncancerdegmod:SetPos( 200, 5 )
        jadoreetreuncancerdegmod:SetSize( 53, 20 )
        jadoreetreuncancerdegmod:SetFont( "fermermenu" )
        jadoreetreuncancerdegmod:SetText( "X" )
        jadoreetreuncancerdegmod:SetTextColor( rouge )
        function jadoreetreuncancerdegmod:Paint( w, h )
            draw.RoundedBox( 10, 0, 0, w, h, Color(0,0,0, 240) )
        end
        jadoreetreuncancerdegmod.DoClick = function()
            LMAOCEJEUDECANCER:Close()
            open = false
        end

        local SOFUNNY = vgui.Create( "DPropertySheet", LMAOCEJEUDECANCER )
        SOFUNNY:Dock( FILL )
        SOFUNNY:DockPadding( 25, 0, 0, 0)
        SOFUNNY.Paint = function (self, w, h)
            for k, v in pairs(SOFUNNY.Items) do
                if (!v.Tab) then continue end
                v.Tab.Paint = function(self,w,h)
                    draw.RoundedBox(10, 0, 0, w +0, h-1, Color(15,15,15,240))
                end
            end
        end

        local ESP = vgui.Create( "DPanel", SOFUNNY )
        ESP.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,ESP:GetWide()-8,ESP:GetTall()-8)
        end
        ESP.Paint = function( self, w, h )
            draw.RoundedBox(10, 0, 0, w, h, Color(15,15,15,200))
        end
        SOFUNNY:AddSheet( "Esp", ESP, "icon16/eye.png" )
        local ESP = vgui.Create( "DScrollPanel", ESP )
        ESP:Dock( FILL )
        ESP:InnerWidth(100)
        local sbar = ESP:GetVBar()
        function ESP:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w -1000, h , HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end
        function sbar.btnUp:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end
        function sbar.btnDown:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end
        function sbar.btnGrip:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end
        local button1 = ESP:Add( "DButton")
        button1:SetSize(375,25)
        button1:SetPos(27,60)
        button1:SetFont("jspquoimettre")
        button1:SetTextColor(Color ( 0,0,0,255 ))
        button1:SetText("Esp - On")
        button1.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,button1:GetWide()-8,button1:GetTall()-8)
        end
        button1.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button1.DoClick = function ()
            MsgC(color_white, "ESP: ", Color( 0, 255, 0 ), " On\n")
            hook.Add("HUDPaint", "ESP", function()
            for k, v in pairs(ents.GetAll()) do
                if (v ~= LocalPlayer()) then
                    if( v:IsPlayer() ) then
                        local drawColor = team.GetColor(v:Team());
                        local drawPosit = v:GetPos():ToScreen();
                        local offset = {};
                        offset.x = 0;
                        offset.y = 0;
                        if (espName) then
                            local text_name = {}
                            text_name.pos = {}
                            text_name.pos[1] = drawPosit.x + offset.x;
                            text_name.pos[2] = drawPosit.y + offset.y;
                            text_name.color = team.GetColor(v:Team());
                            text_name.text = v:Nick();
                            text_name.font = "DefaultFixed";
                            text_name.xalign = TEXT_ALIGN_CENTER;
                            text_name.yalign = TEXT_ALIGN_CENTER;
                            draw.Text(text_name);
                            offset.y = offset.y + 10;
                        end
                        if (espRank) then
                            local text_rank = {}
                            text_rank.pos = {}
                            text_rank.pos[1] = drawPosit.x + offset.x;
                            text_rank.pos[2] = drawPosit.y + offset.y;
                            if (v:GetUserGroup() == "user") then
                                text_rank.color = Color(255, 255, 255, 255)
                            elseif (v:GetUserGroup() == "vip+") then
                                text_rank.color = Color(255, 255, 0, 255)
                            elseif (v:GetUserGroup() == "epicvip") then
                                text_rank.color = Color(255, 0, 110, 255)
                            elseif (v:IsAdmin() or v:IsSuperAdmin()) then
                                text_rank.color = Color(255, 0, 0, 255)
                            else
                                text_rank.color = Color(255, 255, 255, 255)
                            end
                            text_rank.text = v:GetUserGroup();
                            text_rank.font = "DefaultFixed";
                            text_rank.xalign = TEXT_ALIGN_CENTER;
                            text_rank.yalign = TEXT_ALIGN_CENTER;
                            draw.Text(text_rank);
                            offset.y = offset.y + 10;
                        end
                        if (espHealth) then
                            local max_health = 100;
                            if( v:Health() > max_health ) then
                                max_health = v:Health();
                            end
                            local mx = max_health / 4;
                            local mw = v:Health() / 4;
                            local drawPosHealth = drawPosit;
                            drawPosHealth.x = drawPosHealth.x - ( mx / 2 ) + offset.x;
                            drawPosHealth.y = drawPosHealth.y + offset.y;
                            FillRGBA( drawPosHealth.x - 1, drawPosHealth.y - 1, mx + 2, 4 + 2, Color( 0, 0, 0, 255 ) );
                            FillRGBA( drawPosHealth.x, drawPosHealth.y, mw, 4, drawColor );
                        end
                    end
                end
            end
            if (espBorder) then
                for k,v in pairs(player.GetAll()) do
                    if (v ~= LocalPlayer()) then
                        local x1,y1,x2,y2 = coordinates(v)
                        surface.SetDrawColor(team.GetColor(v:Team()))
                        surface.DrawLine( x1, y1, math.min( x1 + 10, x2 ), y1 )
                        surface.DrawLine( x1, y1, x1, math.min( y1 + 10, y2 ) )
                        surface.DrawLine( x2, y1, math.max( x2 - 10, x1 ), y1 )
                        surface.DrawLine( x2, y1, x2, math.min( y1 + 10, y2 ) )
                        surface.DrawLine( x1, y2, math.min( x1 + 10, x2 ), y2 )
                        surface.DrawLine( x1, y2, x1, math.max( y2 - 10, y1 ) )
                        surface.DrawLine( x2, y2, math.max( x2 - 10, x1 ), y2 )
                        surface.DrawLine( x2, y2, x2, math.max( y2 - 10, y1 ) )
                    end
                end
            end
        end)
        end
        local button2 = ESP:Add( "DButton")
        button2:SetSize(375,25)
        button2:SetPos(27,100)
        button2:SetFont("jspquoimettre")
        button2:SetTextColor(Color ( 0,0,0,255 ))
        button2:SetText("Esp - Off")
        button2.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,button2:GetWide()-8,button2:GetTall()-8)
        end
        button2.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button2.DoClick = function ()
            MsgC(color_white, "ESP: ", Color( 255, 0, 0 ), " Off\n")
            hook.Remove("HUDPaint", "ESP")
        end
        local button3 = ESP:Add( "DButton")
        button3:SetSize(375,25)
        button3:SetPos(27,140)
        button3:SetFont("jspquoimettre")
        button3:SetTextColor(Color ( 0,0,0,255 ))
        button3:SetText("Esp - Name")
        button3.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,button3:GetWide()-8,button3:GetTall()-8)
        end
        button3.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button3.DoClick = function ()
            if (not espName) then
                MsgC(color_white, "ESP - Name: ", Color( 0, 255, 0 ), " On\n")
                espName = true
            else
                MsgC(color_white, "ESP - Name: ", Color( 255, 0, 0 ), " Off\n")
                espName = false
            end
        end
        local button4 = ESP:Add( "DButton")
        button4:SetSize(375,25)
        button4:SetPos(27,180)
        button4:SetFont("jspquoimettre")
        button4:SetTextColor(Color ( 0,0,0,255 ))
        button4:SetText("Esp - Rank")
        button4.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,button4:GetWide()-8,button4:GetTall()-8)
        end
        button4.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button4.DoClick = function ()
            if (not espRank) then
                MsgC(color_white, "ESP - Rank: ", Color( 0, 255, 0 ), " On\n")
                espRank = true
            else
                MsgC(color_white, "ESP - Rank: ", Color( 255, 0, 0 ), " Off\n")
                espRank = false
            end
        end
        local button5 = ESP:Add( "DButton")
        button5:SetSize(375,25)
        button5:SetPos(27,220)
        button5:SetFont("jspquoimettre")
        button5:SetTextColor(Color ( 0,0,0,255 ))
        button5:SetText("Esp - Health")
        button5.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,button5:GetWide()-8,button5:GetTall()-8)
        end
        button5.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button5.DoClick = function ()
            if (not espHealth) then
                MsgC(color_white, "ESP - Health: ", Color( 0, 255, 0 ), " On\n")
                espHealth = true
            else
                MsgC(color_white, "ESP - Health: ", Color( 255, 0, 0 ), " Off\n")
                espHealth = false
            end
        end
        local button6 = ESP:Add( "DButton")
        button6:SetSize(375,25)
        button6:SetPos(27,260)
        button6:SetFont("jspquoimettre")
        button6:SetTextColor(Color ( 0,0,0,255 ))
        button6:SetText("Esp - Border")
        button6.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,button6:GetWide()-8,button6:GetTall()-8)
        end
        button6.Paint = function( self, w, h )
            draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button6.DoClick = function ()
            if (not espBorder) then
                MsgC(color_white, "ESP - Border: ", Color( 0, 255, 0 ), " On\n")
                espBorder = true
            else
                MsgC(color_white, "ESP - Border: ", Color( 255, 0, 0 ), " Off\n")
                espBorder = false
            end
        end

        local PHYS = vgui.Create( "DPanel", SOFUNNY )
        PHYS.Paint = function()
        surface.SetDrawColor(Color ( 0,0,0,255 ))
        surface.DrawRect(4,4,PHYS:GetWide()-8,PHYS:GetTall()-8)
        end
        PHYS.Paint = function( self, w, h )
        draw.RoundedBox(3, 0, 0, w, h, Color(15,15,15,200))
        end
        SOFUNNY:AddSheet( "Physgun", PHYS, "icon16/rainbow.png" )
        local PHYS = vgui.Create( "DScrollPanel", PHYS )
        PHYS:Dock( FILL )
        PHYS:InnerWidth(100)
        local sbar = PHYS:GetVBar()
        function PHYS:Paint( w, h )
        draw.RoundedBox( 0, 0, 0, w -1000, h , HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end
        function sbar.btnUp:Paint( w, h )
        draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end
        function sbar.btnDown:Paint( w, h )
        draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end
        function sbar.btnGrip:Paint( w, h )
        draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
        end

        local button6 = PHYS:Add( "DButton")
        button6:SetSize(375,25)
        button6:SetPos(27,60)
        button6:SetFont("jspquoimettre")
        button6:SetTextColor(Color ( 0,0,0,255 ) )
        button6:SetText("Lent +")
        button6.Paint = function()
        surface.SetDrawColor(Color ( 0,0,0,255 ))
        surface.DrawRect(4,4,button6:GetWide()-8,button6:GetTall()-8)
        end
        button6.Paint = function( self, w, h )
        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button6.DoClick = function ()
            LocalPlayer():ConCommand("physgun_wheelspeed 20")
        end

        local button7 = PHYS:Add( "DButton")
        button7:SetSize(375,25)
        button7:SetPos(27,100)
        button7:SetFont("jspquoimettre")
        button7:SetTextColor(Color ( 0,0,0,255 ) )
        button7:SetText("Moyen ++")
        button7.Paint = function()
        surface.SetDrawColor(Color ( 0,0,0,255 ))
        surface.DrawRect(4,4,button7:GetWide()-8,button7:GetTall()-8)
        end
        button7.Paint = function( self, w, h )
        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button7.DoClick = function ()
            LocalPlayer():ConCommand("physgun_wheelspeed 600")
        end

        local button8 = PHYS:Add( "DButton")
        button8:SetSize(375,25)
        button8:SetPos(27,140)
        button8:SetFont("jspquoimettre")
        button8:SetTextColor(Color ( 0,0,0,255 ) )
        button8:SetText("Rapide +++")
        button8.Paint = function()
        surface.SetDrawColor(Color ( 0,0,0,255 ))
        surface.DrawRect(4,4,button8:GetWide()-8,button8:GetTall()-8)
        end
        button8.Paint = function( self, w, h )
        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button8.DoClick = function ()
            LocalPlayer():ConCommand("physgun_wheelspeed 1500")
        end

        local button9 = PHYS:Add( "DButton")
        button9:SetSize(375,25)
        button9:SetPos(27,180)
        button9:SetFont("jspquoimettre")
        button9:SetTextColor(Color ( 0,0,0,255 ) )
        button9:SetText("Set invisible")
        button9.Paint = function()
        surface.SetDrawColor(Color ( 0,0,0,255 ))
        surface.DrawRect(4,4,button9:GetWide()-8,button9:GetTall()-8)
        end
        button9.Paint = function( self, w, h )
        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
        end
        button9.DoClick = function ()
            LocalPlayer():ConCommand("cl_weaponcolor 0 0 -999999")
        end





        local MENU = vgui.Create( "DPanel", SOFUNNY )
            MENU.Paint = function()
            surface.SetDrawColor(Color ( 0,0,0,255 ))
            surface.DrawRect(4,4,MENU:GetWide()-8,MENU:GetTall()-8)
            end
            MENU.Paint = function( self, w, h )
            draw.RoundedBox(3, 0, 0, w, h, Color(15,15,15,200))
            end
            SOFUNNY:AddSheet( "Menu", MENU, "icon16/application_form.png" )
            local MENU = vgui.Create( "DScrollPanel", MENU )
            MENU:Dock( FILL )
            MENU:InnerWidth(100)
            local sbar = MENU:GetVBar()
            function MENU:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w -1000, h , HSVToColor( CurTime() % 6 * 100, 1, 1 ))
            end
            function sbar.btnUp:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
            end
            function sbar.btnDown:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
            end
            function sbar.btnGrip:Paint( w, h )
            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
            end
            local button1 = MENU:Add( "DButton")
                    button1:SetSize(375,25)
                        button1:SetPos(27,60)
                        button1:SetFont("jspquoimettre")
                        button1:SetTextColor(Color ( 0,0,0,255 ))
                        button1:SetText("JoinerServer")
                        button1.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button1:GetWide()-8,button1:GetTall()-8)
                        end
                        button1.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button1.DoClick = function ()
                            if DSM_ShowDSM then
                                DSM_ShowDSM = false
                                MsgC(color_white, "DSM: ", Color( 255, 0, 0 ), " Off\n")
                            else
                                DSM_ShowDSM = true
                                MsgC(color_white, "DSM: ", Color( 0, 255, 0 ), " On\n")
                            end
                        end
            
                        local button2 = MENU:Add( "DButton")
                        button2:SetSize(375,25)
                        button2:SetPos(27,100)
                        button2:SetFont("jspquoimettre")
                        button2:SetTextColor(Color ( 0,0,0,255 ))
                        button2:SetText("Contexte Menu On/Off")
                        button2.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button2:GetWide()-8,button2:GetTall()-8)
                        end
                        button2.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button2.DoClick = function ()
                            hook.Add('OnContextMenuOpen', 'NewContextMenuOpen', function()
                                if ( IsValid( g_ContextMenu ) && !g_ContextMenu:IsVisible() ) then
                                    g_ContextMenu:Open()
                                    menubar.ParentTo( g_ContextMenu )
                                end
                            end)
                            hook.Add('OnContextMenuClose', 'NewContextMenuClose', function()
                                if ( IsValid( g_ContextMenu ) ) then
                                    g_ContextMenu:Close()
                                end
                            end)
                            concommand.Add( "+menu_context", function()
                                hook.Run( "OnContextMenuOpen" )
                            end, nil, "Opens the context menu", FCVAR_DONTRECORD )
                            
                            concommand.Add( "-menu_context", function()
                                if ( input.IsKeyTrapping() ) then return end
                                hook.Run( "OnContextMenuClose" )
                            end, nil, "Closes the context menu", FCVAR_DONTRECORD )
                        end

                        local button3 = MENU:Add( "DButton")
                        button3:SetSize(375,25)
                        button3:SetPos(27,140)
                        button3:SetFont("jspquoimettre")
                        button3:SetTextColor(Color ( 0,0,0,255 ))
                        button3:SetText("Print Player Info")
                        button3.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button3:GetWide()-8,button3:GetTall()-8)
                        end
                        button3.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button3.DoClick = function ()
                            for k,v in pairs (player.GetAll()) do
                                MsgC(Color(255, 100, 100), v:Nick())
                                MsgC(Color(255, 100, 100), " ")
                                MsgC(Color(255, 100, 100), v:SteamID())
                                MsgC(Color(255, 100, 100), " ")
                                MsgC(Color(255, 100, 100), v:getDarkRPVar('level'))
                                MsgC(Color(255, 100, 100), " ")
                                MsgC(Color(255, 100, 100), v:getDarkRPVar('money'))
								MsgC(Color(255, 100, 100), " ")
								MsgC(Color(255, 100, 100), v:SteamName())
                                MsgC(Color(255, 100, 100), "\n")
                            end
                        end
						
                        local button4 = MENU:Add( "DButton")
                        button4:SetSize(375,25)
                        button4:SetPos(27,180)
                        button4:SetFont("jspquoimettre")
                        button4:SetTextColor(Color ( 0,0,0,255 ))
                        button4:SetText("Cineres")
                        button4.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button4:GetWide()-8,button4:GetTall()-8)
                        end
                        button4.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button4.DoClick = function ()
                            net.Start("hpwrewrite_achievement1")
							net.SendToServer()
                        end



                        local PHYS = vgui.Create( "DPanel", SOFUNNY )
                        PHYS.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,PHYS:GetWide()-8,PHYS:GetTall()-8)
                        end
                        PHYS.Paint = function( self, w, h )
                        draw.RoundedBox(3, 0, 0, w, h, Color(15,15,15,200))
                        end
                        SOFUNNY:AddSheet( "Téléportation", PHYS, "icon16/lightning_go.png" )
                        local PHYS = vgui.Create( "DScrollPanel", PHYS )
                        PHYS:Dock( FILL )
                        PHYS:InnerWidth(100)
                        local sbar = PHYS:GetVBar()
                        function PHYS:Paint( w, h )
                        draw.RoundedBox( 0, 0, 0, w -1000, h , HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
                        function sbar.btnUp:Paint( w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
                        function sbar.btnDown:Paint( w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
                        function sbar.btnGrip:Paint( w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
                
                        local button6 = PHYS:Add( "DButton")
                        button6:SetSize(375,25)
                        button6:SetPos(27,60)
                        button6:SetFont("jspquoimettre")
                        button6:SetTextColor(Color ( 0,0,0,255 ) )
                        button6:SetText("TP - Fontaine")
                        button6.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button6:GetWide()-8,button6:GetTall()-8)
                        end
                        button6.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button6.DoClick = function ()
                            net.Start("Poster1Correct")
                            net.SendToServer()
                        end
                
                        local button7 = PHYS:Add( "DButton")
                        button7:SetSize(375,25)
                        button7:SetPos(27,100)
                        button7:SetFont("jspquoimettre")
                        button7:SetTextColor(Color ( 0,0,0,255 ) )
                        button7:SetText("TP - Quidditch")
                        button7.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button7:GetWide()-8,button7:GetTall()-8)
                        end
                        button7.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button7.DoClick = function ()
                            net.Start("Poster3Correct")
                            net.SendToServer()
                        end
                
                        local button8 = PHYS:Add( "DButton")
                        button8:SetSize(375,25)
                        button8:SetPos(27,140)
                        button8:SetFont("jspquoimettre")
                        button8:SetTextColor(Color ( 0,0,0,255 ) )
                        button8:SetText("TP - Grande Cour")
                        button8.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button8:GetWide()-8,button8:GetTall()-8)
                        end
                        button8.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button8.DoClick = function ()
                            net.Start("Poster2Correct")
                            net.SendToServer()
                        end
                
                        local button9 = PHYS:Add( "DButton")
                        button9:SetSize(375,25)
                        button9:SetPos(27,180)
                        button9:SetFont("jspquoimettre")
                        button9:SetTextColor(Color ( 0,0,0,255 ) )
                        button9:SetText("TP - Chambre Des Secrets")
                        button9.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,button9:GetWide()-8,button9:GetTall()-8)
                        end
                        button9.Paint = function( self, w, h )
                        draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                        end
                        button9.DoClick = function ()
                            net.Start("Poster4Correct")
                            net.SendToServer()
                        end


                        local MODEL = vgui.Create( "DPanel", SOFUNNY )
                        MODEL.Paint = function()
                        surface.SetDrawColor(Color ( 0,0,0,255 ))
                        surface.DrawRect(4,4,MODEL:GetWide()-8,MODEL:GetTall()-8)
                        end
                        MODEL.Paint = function( self, w, h )
                        draw.RoundedBox(10, 0, 0, w, h, Color(15,15,15,200))
                        end
                        SOFUNNY:AddSheet( "Models", MODEL, "icon16/user_gray.png" )
                        local MODEL = vgui.Create( "DScrollPanel", MODEL )
                        MODEL:Dock( FILL )
                        MODEL:InnerWidth(100)
                        local sbar = MODEL:GetVBar()
                        function MODEL:Paint( w, h )
                            draw.RoundedBox( 0, 0, 0, w -1000, h , HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
                        function sbar.btnUp:Paint( w, h )
                            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
                        function sbar.btnDown:Paint( w, h )
                            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
                        function sbar.btnGrip:Paint( w, h )
                            draw.RoundedBox( 0, 0, 0, w, h, HSVToColor( CurTime() % 6 * 100, 1, 1 ))
                        end
							local button1 = MODEL:Add( "DButton")
							button1:SetSize(375,25)
                            button1:SetPos(27,60)
                            button1:SetFont("jspquoimettre")
                            button1:SetTextColor(Color ( 0,0,0,255 ) )
                            button1:SetText("Change Model")
                            button1.Paint = function()
                            surface.SetDrawColor(Color ( 0,0,0,255 ))
                            surface.DrawRect(4,4,button1:GetWide()-8,button1:GetTall()-8)
                            end
                            button1.Paint = function( self, w, h )
                            draw.RoundedBox( 0, 0, 0, w, h, Color(255, 20, 20, 255))
                            end
							button1.DoClick = function ()
								LocalPlayer():ConCommand("RyanStealth_ForceModel " .. CurrentModel)
							end
							local DComboBox1 = MODEL:Add( "DComboBox" )
							DComboBox1:SetPos( 27, 100 )
							DComboBox1:SetSize( 375, 20 )
							DComboBox1:SetValue( "Model Select" )
							DComboBox1:SetSortItems(true)
							for k,v in pairs(ModelList) do
								DComboBox1:AddChoice(k, v)
							end
							DComboBox.OnSelect = function(self, index, value, data )
								CurrentModel = data
							end



    end
end)
