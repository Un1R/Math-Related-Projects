--[[
--------------
CONFIGURATION
--------------
]]

local STR1_LENGHT = 120 -- Lenght
local STR2_LENGHT = 120 -- Height
local STR3_LENGHT = 120 -- Other Lenght
local BEAM_WIDTH0 = 1
local BEAM_WIDTH1 = 1

--[[
--------------
GENERATION
--------------
]]

--// CREATING BEAM
local function CreateBeam(Part1,Part2)
	--// CREATING INSTANCES
	local NewBeam = Instance.new("Beam")
	local AT1 = Instance.new("Attachment")
	local AT2 = Instance.new("Attachment")
	
	--// PARENTING
	NewBeam.Attachment0 = AT1
	NewBeam.Attachment1 = AT2
	
	AT1.Parent = Part1
	AT2.Parent = Part2
	
	--// CONFIGURING
	NewBeam.Enabled = true
	NewBeam.Width0 = BEAM_WIDTH0
	NewBeam.Width1 = BEAM_WIDTH1
	
	--// FINISHING
	NewBeam.Parent = Part1
end

--// CREATING PARTS
local Part1 = Instance.new("Part")
local Part2 = Instance.new("Part")
local Part3 = Instance.new("Part")
Part1.Name = "Part1"
Part2.Name = "Part2"
Part3.Name = "Part3"

Part1.Size = Vector3.new(0.5,0.5,0.5)
Part2.Size = Vector3.new(0.5,0.5,0.5)
Part3.Size = Vector3.new(0.5,0.5,0.5)

Part1.Parent = workspace
Part2.Parent = workspace
Part3.Parent = workspace

Part1.Anchored = true
Part2.Anchored = true
Part3.Anchored = true

Part1.CanCollide = false
Part2.CanCollide = false
Part3.CanCollide = false

Part1.Transparency = 0.5
Part2.Transparency = 0.5
Part3.Transparency = 0.5
Part1.Position = Vector3.new(Part1.Position.X,Part1.Position.Y + 4,Part1.Position.Z)
Part2.Position = Vector3.new(Part1.Position.X,Part1.Position.Y + 4,Part1.Position.Z)
Part3.Position = Vector3.new(Part1.Position.X,Part1.Position.Y + 4,Part1.Position.Z)


--// FINISHING POSITIONS

CreateBeam(Part1,Part2)
CreateBeam(Part2,Part3)

Part2.Position = Part1.Position + Vector3.new(STR1_LENGHT,0,0)
Part3.Position = Part2.Position + Vector3.new(0,STR2_LENGHT,0)
local Part4 = Part3:Clone()
Part4.Position = Part3.Position + Vector3.new(-STR2_LENGHT,0,0)
Part4.Parent = workspace
Part4.Name = "Part4"
CreateBeam(Part3,Part4)

local Part1_ = Part1:Clone()
local Part2_ = Part2:Clone()
local Part3_ = Part3:Clone()
local Part4_ = Part4:Clone()
Part1_.Parent = workspace
Part2_.Parent = workspace
Part3_.Parent = workspace
Part4_.Parent = workspace
Part1_.Name = "Part1_"
Part2_.Name = "Part2_"
Part3_.Name = "Part3_"
Part4_.Name = "Part4_"
Part1_:ClearAllChildren()
Part2_:ClearAllChildren()
Part3_:ClearAllChildren()
Part4_:ClearAllChildren()

Part1_.Position = Part1.Position + Vector3.new(0,0,STR3_LENGHT)
Part2_.Position = Part2.Position + Vector3.new(0,0,STR3_LENGHT)
Part3_.Position = Part3.Position + Vector3.new(0,0,STR3_LENGHT)
Part4_.Position = Part4.Position + Vector3.new(0,0,STR3_LENGHT)

CreateBeam(Part1_,Part1)
CreateBeam(Part2_,Part2)
CreateBeam(Part3_,Part3)
CreateBeam(Part4_,Part4)
CreateBeam(Part1,Part4)
CreateBeam(Part1_,Part4_)
CreateBeam(Part2,Part3)
CreateBeam(Part2_,Part3_)
CreateBeam(Part1_,Part2_)
CreateBeam(Part4_,Part3_)
