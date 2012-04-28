-- ULX UPS_Menu for ULX SVN/ULib SVN by HeLLFox_15

-- CreateClientConVar("ups_clnstr_string", "*", false, false) -- not needed.

function UpsClnStr( player,command,args )

	strArgs = args[1]
	
	if( strArgs == "" or strArgs == nil or strArgs == " " or strArgs == "  " ) then
		strArgs = "*"		
	end
	
	if not ( player:IsValid() ) then return false end 
	
	if(player:IsAdmin() or player:IsSuperAdmin()) then
		
		if(strArgs == "*") then 
			player:ConCommand("gmod_admin_cleanup")
			game.CleanUpMap()
		end
	
		if(strArgs == "help") then ULib.tsay( player,"Input a model string or an entity class." ) end

		ignoreList =
		{
			"player",
			"worldspawn",
			"gmod_anchor",    
			"npc_grenade_frag", 
			"prop_combine_ball", 
			"npc_satchel",
			"class C_PlayerResource",
			"C_PlayerResource",
			"viewmodel",
			"beam",
			"physgun_beam",
			"class C_FogController",
			"class C_Sun",
			"class C_EnvTonemapController",
			"class C_WaterLODControl",
			"class C_SpotlightEnd"
		}
	
		for _, ent in ipairs( ents.GetAll() ) do
			if(ent:IsValid() and ent:GetModel() == strArgs) then
			
				if not (ent:IsWorld()) then
					if not table.HasValue( ignoreList, ent:GetClass() ) then
						ent:Remove()
					end
				end
				
			elseif(ent:IsValid() and ent:GetClass() == strArgs) then
			
				if not table.HasValue( ignoreList, ent:GetClass() ) then
					
					if( ent:IsValid() and ent:GetClass() == strArgs ) then
						
						if not ( ent:IsWorld() ) then
							
							ent:Remove()
						
						end
					end
				end
			end
		end
			
		ULib.tsay( nil, player:GetName().." has removed "..strArgs )
			
	elseif not (strArgs == "" or strArgs == nil or strArgs == " " or strArgs == "  ") then	
		ULib.tsay(	player, "You are not allowed to do that." )	
	end
end
	
concommand.Add( "ups_clnstr", UpsClnStr )