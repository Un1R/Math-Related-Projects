--[[
--------------
CONFIGURATION
--------------
]]

local STR1_LENGHT = 5
local STR2_LENGHT = 5
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

Part1.Transparency = 1
Part2.Transparency = 1
Part3.Transparency = 1

--// FINISHING POSITIONS

CreateBeam(Part1,Part2)
CreateBeam(Part1,Part3)
CreateBeam(Part2,Part3)

Part2.Position = Part1.Position + (Part1.CFrame.LookVector + Vector3.new(STR2_LENGHT,0,0))
Part3.Position = Part1.Position + (Part1.CFrame.LookVector + Vector3.new(STR2_LENGHT/2,STR1_LENGHT,0))
