SWEP.Author = "" -- ClavusElite
SWEP.Contact = ""
SWEP.Purpose = ""
SWEP.Instructions = "Swing at enemies. Disorients (read: fucks up screen) them on hit."

SWEP.ViewModel = "models/weapons/v_crowbar.mdl"
SWEP.WorldModel = "models/weapons/w_crowbar.mdl"

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Damage = 30
SWEP.Primary.Ammo = "none"
SWEP.Primary.Delay = 1

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = true
SWEP.Secondary.Ammo = "none"

function SWEP:Reload()
	return false
end

function SWEP:Initialize()
	self:SetWeaponHoldType("melee")
end

function SWEP:Precache()
	util.PrecacheSound("weapons/iceaxe/iceaxe_swing1.wav")
	util.PrecacheSound("physics/flesh/flesh_impact_bullet1.wav")
	util.PrecacheSound("physics/flesh/flesh_impact_bullet2.wav")
	util.PrecacheSound("physics/flesh/flesh_impact_bullet3.wav")
	util.PrecacheSound("physics/flesh/flesh_impact_bullet4.wav")
	util.PrecacheSound("physics/flesh/flesh_impact_bullet5.wav")
	util.PrecacheSound("weapons/crowbar/crowbar_impact1.wav")
	util.PrecacheSound("weapons/crowbar/crowbar_impact2.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet1.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet2.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet3.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet4.wav")
	util.PrecacheSound("physics/cardboard/cardboard_box_impact_bullet1.wav")
	util.PrecacheSound("physics/cardboard/cardboard_box_impact_bullet2.wav")
	util.PrecacheSound("physics/cardboard/cardboard_box_impact_bullet3.wav")
	util.PrecacheSound("physics/cardboard/cardboard_box_impact_bullet4.wav")
	util.PrecacheSound("physics/cardboard/cardboard_box_impact_bullet5.wav")
	util.PrecacheSound("npc/antlion/shell_impact1.wav")
	util.PrecacheSound("npc/antlion/shell_impact2.wav")
	util.PrecacheSound("npc/antlion/shell_impact3.wav")
	util.PrecacheSound("npc/antlion/shell_impact4.wav")
	util.PrecacheSound("physics/flesh/flesh_squishy_impact_hard1.wav")
	util.PrecacheSound("physics/flesh/flesh_squishy_impact_hard2.wav")
	util.PrecacheSound("physics/flesh/flesh_squishy_impact_hard3.wav")
	util.PrecacheSound("physics/flesh/flesh_squishy_impact_hard4.wav")
	util.PrecacheSound("physics/wood/wood_solid_impact_bullet1.wav")
	util.PrecacheSound("physics/wood/wood_solid_impact_bullet2.wav")
	util.PrecacheSound("physics/wood/wood_solid_impact_bullet3.wav")
	util.PrecacheSound("physics/wood/wood_solid_impact_bullet4.wav")
	util.PrecacheSound("physics/wood/wood_solid_impact_bullet5.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet1.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet2.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet3.wav")
	util.PrecacheSound("physics/concrete/concrete_impact_bullet4.wav")
	util.PrecacheSound("physics/metal/metal_solid_impact_bullet1.wav")
	util.PrecacheSound("physics/metal/metal_solid_impact_bullet2.wav")
	util.PrecacheSound("physics/metal/metal_solid_impact_bullet3.wav")
	util.PrecacheSound("physics/metal/metal_solid_impact_bullet4.wav")
	util.PrecacheSound("physics/surfaces/sand_impact_bullet1.wav")
	util.PrecacheSound("physics/surfaces/sand_impact_bullet2.wav")
	util.PrecacheSound("physics/surfaces/sand_impact_bullet3.wav")
	util.PrecacheSound("physics/surfaces/sand_impact_bullet4.wav")
	util.PrecacheSound("physics/surfaces/tile_impact_bullet1.wav")
	util.PrecacheSound("physics/surfaces/tile_impact_bullet2.wav")
	util.PrecacheSound("physics/surfaces/tile_impact_bullet3.wav")
	util.PrecacheSound("physics/surfaces/tile_impact_bullet4.wav")
	util.PrecacheSound("physics/metal/metal_box_impact_bullet1.wav")
	util.PrecacheSound("physics/metal/metal_box_impact_bullet2.wav")
	util.PrecacheSound("physics/metal/metal_box_impact_bullet3.wav")
	util.PrecacheSound("physics/metal/metal_computer_impact_bullet1.wav")
	util.PrecacheSound("physics/metal/metal_computer_impact_bullet2.wav")
	util.PrecacheSound("physics/metal/metal_computer_impact_bullet3.wav")
	util.PrecacheSound("physics/glass/glass_impact_bullet1.wav")
	util.PrecacheSound("physics/glass/glass_impact_bullet2.wav")
	util.PrecacheSound("physics/glass/glass_impact_bullet3.wav")
	util.PrecacheSound("physics/glass/glass_impact_bullet4.wav")
	util.PrecacheSound("physics/plastic/plastic_box_impact_bullet1.wav")
	util.PrecacheSound("physics/plastic/plastic_box_impact_bullet2.wav")
	util.PrecacheSound("physics/plastic/plastic_box_impact_bullet3.wav")
	util.PrecacheSound("physics/plastic/plastic_box_impact_bullet4.wav")
	util.PrecacheSound("physics/plastic/plastic_box_impact_bullet5.wav")
end

function SWEP:SetFleshMaterial( apply )
	local vm = self.Owner:GetViewModel()
	if vm and vm:IsValid() then
		vm:SetColor(255, 255, 255, 255)
		if apply then
			vm:SetMaterial("models/flesh")
		else
			vm:SetMaterial("")
		end		
	end	
end

function SWEP:Deploy()
	if SERVER then
		self.Owner:DrawWorldModel(true)
	end
	self:SetFleshMaterial(true)
	self:SetColor(255, 255, 255, 255)
	self.Owner:SetColor(255, 255, 255, 255)
end
