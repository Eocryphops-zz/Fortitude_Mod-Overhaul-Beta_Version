Script.ReloadScript("scripts/Utils/EntityUtils.lua")

KustomPlatformer = {
    Properties = {
        object_Model = "Objects/KustomPlatform/kustomplatform.cgf"
    },

}

-----------------------------------------------------
function KustomPlatformer:OnInit()
    self:OnReset();
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:OnReset()
    self:SetViewDistRatio(255);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_0_0()
	self:LoadObject(0, 'Objects/KustomPlatform/KustomPlatform.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_0_1()
	self:LoadObject(0, 'Objects/KustomPlatform/KustomPlatform2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_0_2()
	self:LoadObject(0, 'Objects/KustomPlatform/KustomPlatform3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_1_0()
	self:LoadObject(1, 'Objects/KustomPlatform/KustomPlatformBumper1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_1_1()
	self:LoadObject(1, 'Objects/KustomPlatform/KustomPlatformBumper2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_1_2()
	self:LoadObject(1, 'Objects/KustomPlatform/KustomPlatformBumper3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_2_0()
	self:LoadObject(2, 'Objects/KustomPlatform/KustomPlatformGrill1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_2_1()
	self:LoadObject(2, 'Objects/KustomPlatform/KustomPlatformGrill2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_2_2()
	self:LoadObject(2, 'Objects/KustomPlatform/KustomPlatformGrill3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_3_0()
	self:LoadObject(3, 'Objects/KustomPlatform/KustomPlatformHood1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_3_1()
	self:LoadObject(3, 'Objects/KustomPlatform/KustomPlatformHood2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_3_2()
	self:LoadObject(3, 'Objects/KustomPlatform/KustomPlatformHood3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_4_0()
	self:LoadObject(4, 'Objects/KustomPlatform/KustomPlatformWindshield1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_4_1()
	self:LoadObject(4, 'Objects/KustomPlatform/KustomPlatformWindshield2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_4_2()
	self:LoadObject(4, 'Objects/KustomPlatform/KustomPlatformWindshield3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_5_0()
	self:LoadObject(5, 'Objects/KustomPlatform/KustomPlatformRoof1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_5_1()
	self:LoadObject(5, 'Objects/KustomPlatform/KustomPlatformRoof2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_5_2()
	self:LoadObject(5, 'Objects/KustomPlatform/KustomPlatformRoof3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_6_0()
	self:LoadObject(6, 'Objects/KustomPlatform/KustomPlatformWindshieldRear1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_6_1()
	self:LoadObject(6, 'Objects/KustomPlatform/KustomPlatformWindshieldRear2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_6_2()
	self:LoadObject(6, 'Objects/KustomPlatform/KustomPlatformWindshieldRear3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_7_0()
	self:LoadObject(7, 'Objects/KustomPlatform/KustomPlatformTrunk1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_7_1()
	self:LoadObject(7, 'Objects/KustomPlatform/KustomPlatformTrunk2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_7_2()
	self:LoadObject(7, 'Objects/KustomPlatform/KustomPlatformTrunk3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_8_0()
	self:LoadObject(8, 'Objects/KustomPlatform/KustomPlatformBumperRear1.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_8_1()
	self:LoadObject(8, 'Objects/KustomPlatform/KustomPlatformBumperRear2.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_Slot_8_2()
	self:LoadObject(8, 'Objects/KustomPlatform/KustomPlatformBumperRear3.cgf');
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_0()
	self:FreeSlot(0);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_1()
	self:FreeSlot(1);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_2()
	self:FreeSlot(2);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_3()
	self:FreeSlot(3);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_4()
	self:FreeSlot(4);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_5()
	self:FreeSlot(5);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_6()
	self:FreeSlot(6);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_7()
	self:FreeSlot(7);
end

------------------------------------------------------------------------------------------------------
function KustomPlatformer:Event_FreeSlot_8()
	self:FreeSlot(8);
end


KustomPlatformer.FlowEvents =
{
	Inputs =
	{
		Chassis1 = { KustomPlatformer.Event_Slot_0_0, "bool" },
		Chassis2 = { KustomPlatformer.Event_Slot_0_1, "bool" },
		Chassis3 = { KustomPlatformer.Event_Slot_0_2, "bool" },
		Bumper1 = { KustomPlatformer.Event_Slot_1_0, "bool" },
		Bumper2 = { KustomPlatformer.Event_Slot_1_1, "bool" },
		Bumper3 = { KustomPlatformer.Event_Slot_1_2, "bool" },
		Grill1 = { KustomPlatformer.Event_Slot_2_0, "bool" },
		Grill2 = { KustomPlatformer.Event_Slot_2_1, "bool" },
		Grill3 = { KustomPlatformer.Event_Slot_2_2, "bool" },
		Hood1 = { KustomPlatformer.Event_Slot_3_0, "bool" },
		Hood2 = { KustomPlatformer.Event_Slot_3_1, "bool" },
		Hood3 = { KustomPlatformer.Event_Slot_3_2, "bool" },
		Windshield1 = { KustomPlatformer.Event_Slot_4_0, "bool" },
		Windshield2 = { KustomPlatformer.Event_Slot_4_1, "bool" },
		Windshield3 = { KustomPlatformer.Event_Slot_4_2, "bool" },
		Roof1 = { KustomPlatformer.Event_Slot_5_0, "bool" },
		Roof2 = { KustomPlatformer.Event_Slot_5_1, "bool" },
		Roof3 = { KustomPlatformer.Event_Slot_5_2, "bool" },
		WindshieldRear1 = { KustomPlatformer.Event_Slot_6_0, "bool" },
		WindshieldRear2 = { KustomPlatformer.Event_Slot_6_1, "bool" },
		WindshieldRear3 = { KustomPlatformer.Event_Slot_6_2, "bool" },
		Trunk1 = { KustomPlatformer.Event_Slot_7_0, "bool" },
		Trunk2 = { KustomPlatformer.Event_Slot_7_1, "bool" },
		Trunk3 = { KustomPlatformer.Event_Slot_7_2, "bool" },
		BumperRear1 = { KustomPlatformer.Event_Slot_8_0, "bool" },
		BumperRear2 = { KustomPlatformer.Event_Slot_8_1, "bool" },
		BumperRear3 = { KustomPlatformer.Event_Slot_8_2, "bool" },
		ChassisFreeSlot0 = { KustomPlatformer.Event_FreeSlot_0, "bool" },
		BumperFreeSlot1 = { KustomPlatformer.Event_FreeSlot_1, "bool" },
		GrillFreeSlot2 = { KustomPlatformer.Event_FreeSlot_2, "bool" },
		HoodFreeSlot3 = { KustomPlatformer.Event_FreeSlot_3, "bool" },
		WindshieldFreeSlot4 = { KustomPlatformer.Event_FreeSlot_4, "bool" },
		RoofFreeSlot5 = { KustomPlatformer.Event_FreeSlot_5, "bool" },
		WindshieldRearFreeSlot6 = { KustomPlatformer.Event_FreeSlot_6, "bool" },
		TrunkFreeSlot7 = { KustomPlatformer.Event_FreeSlot_7, "bool" },
		BumperRearFreeSlot8 = { KustomPlatformer.Event_FreeSlot_8, "bool" },
	},
	
	Outputs =
	{
		Chassis1 = "bool",
		Chassis2 = "bool",
		Chassis3 = "bool",
		Bumper1 = "bool",
		Bumper2 = "bool",
		Bumper3 = "bool",
		Grill1 = "bool",
		Grill2 = "bool",
		Grill3 = "bool",
		Hood1 = "bool",
		Hood2 = "bool",
		Hood3 = "bool",
		Windshield1 = "bool",
		Windshield2 = "bool",
		Windshield3 = "bool",
		Roof1 = "bool",
		Roof2 = "bool",
		Roof3 = "bool",
		WindshieldRear1 = "bool",
		WindshieldRear2 = "bool",
		WindshieldRear3 = "bool",
		Trunk1 = "bool",
		Trunk2 = "bool",
		Trunk3 = "bool",
		BumperRear1 = "bool",
		BumperRear2 = "bool",
		BumperRear3 = "bool",
		ChassisFreeSlot0 = "bool",
		BumperFreeSlot1 = "bool",
		GrillFreeSlot2 = "bool",
		HoodFreeSlot3 = "bool",
		WindshieldFreeSlot4 = "bool",
		RoofFreeSlot5 = "bool",
		WindshieldRearFreeSlot6 = "bool",
		TrunkFreeSlot7 = "bool",
		BumperRearFreeSlot8 = "bool",
	},
}

-----

