--       _________ __                 __
--      /   _____//  |_1____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--			  T H E   W A R   B E G I N S
--	   Stratagus - A free fantasy real time strategy game engine
--
--	units.lua	-	Define the used elites unit-types.
--
--	(c) Copyright 2001 - 2005 by Fran�ois Beerten, Lutz Sammer and Crestez Leonard
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
--	$Id$

--=============================================================================
--	Define unit-types.
--
--	NOTE: Save can generate this table.
--


DefineUnitType("unit-apcs", {
	Name = "APC Smolder",
	Image = {"file", "elites/units/unit_apcs.png", "size", {96, 96}},
	Shadow = {"file", "elites/units/unit_apcs_s.png", "size", {96, 96}},
	Animations = "animations-apcs", Icon = "icon-apcs",
	Costs = {"time", 100, "titanium", 200, "crystal", 50},
	Speed = 15, HitPoints = 200, DrawLevel = 25, TileSize = {1, 1},
	BoxSize = {96, 96}, SightRange = 5,
	ComputerReactionRange = 5, PersonReactionRange = 5,
	Armor = 10, BasicDamage = 5, PiercingDamage = 5, Missile = "missile-none",
	MaxAttackRange = 4, Priority = 60, Points = 50,
	CanTransport = {"organic", "only"}, AttackFromTransporter = true, MaxOnBoard = 6,
	Type = "land", RepairHp = 2, RepairCosts = {titanium, 2},
	RightMouseAction = "attack",
	ExplodeWhenKilled = "missile-160x128-explosion",
	LandUnit = true, Demand = 0, CanAttack = true, CanTargetLand = true,
	SelectableByRectangle = true,
	Sounds = {
		"selected", "apcs-selected",
		"acknowledge", "apcs-acknowledge",
		"ready", "apcs-ready",
		"help", "apcs-help",
		"dead", "apcs-die"}
	})

DefineUnitType("unit-bazoo", {
	Name = "Bazoo",
	Image = {"file", "elites/units/unit_bazoo.png", "size", {64, 64}},
	Shadow = {"file", "elites/units/unit_bazoo_s.png", "size", {64, 64}},
	Animations = "animations-bazoo", Icon = "icon-bazoo",
	Costs = {"time", 40, "titanium", 50, "crystal", 100},
	Speed = 8, HitPoints = 50, DrawLevel = 25,
	TileSize = {1, 1}, BoxSize = {17, 28},
	SightRange = 7, ComputerReactionRange = 6, PersonReactionRange = 6,
	Armor = 2, BasicDamage = 5, PiercingDamage = 15, Missile = "missile-bazoo",
	MaxAttackRange = 6, Priority = 60, Points = 50,
	Corpse = {"unit-dead-body4", 0},
	Type = "land", Demand = 0, 
	RightMouseAction = "attack",
	CanAttack = true, CanTargetLand = true, CanTargetAir = true,
	LandUnit = true, organic = true, SelectableByRectangle = true,
	Sounds = {
		"selected", "bazoo-selected",
		"acknowledge", "bazoo-acknowledge",
		"ready", "bazoo-ready",
		"help", "bazoo-help",
		"dead", "bazoo-die"}
	})

DefineUnitType("unit-assault", {
	Name = "Assault Unit",
	Image = {"file", "elites/units/unit_assault.png", "size", {64, 64}},
	Shadow = {"file", "elites/units/unit_assault_s.png", "size", {64, 64}},
	Animations = "animations-assault", Icon = "icon-assault",
	Costs = {"time", 30, "titanium", 25, "crystal", 50},
	Speed = 10, HitPoints = 30, DrawLevel = 25,
	TileSize = {1, 1}, BoxSize = {17, 28},
	RightMouseAction = "attack",
	SightRange = 6, ComputerReactionRange = 6, PersonReactionRange = 6,
	Armor = 3, BasicDamage = 4, PiercingDamage = 0, Missile = "missile-none",
	MaxAttackRange = 5, Priority = 60, Points = 50,
	Corpse = {"unit-dead-body1", 0}, Type = "land", Demand = 0,
	CanAttack = true, CanTargetLand = true,
	LandUnit = true, organic = true, SelectableByRectangle = true,
	Sounds = {
		"selected", "assault-selected",
		"acknowledge", "assault-acknowledge",
		"ready", "assault-ready",
		"help", "assault-help",
		"dead", "assault-die"}
	})

DefineUnitType("unit-grenadier", {
	Name = "Grenadier",
	Image = {"file", "elites/units/unit_grenadier.png", "size", {64, 64}},
	Shadow  = {"file", "elites/units/unit_grenadier_s.png", "size", {64, 64}},
	Animations = "animations-grenadier", Icon = "icon-grenadier",
	Costs = {"time", 40, "titanium", 25, "crystal", 100},
	Speed = 10, HitPoints = 50, DrawLevel = 25,
	TileSize = {1, 1}, BoxSize = {17, 28}, SightRange = 6,
	ComputerReactionRange = 6, PersonReactionRange = 6,
	RightMouseAction = "attack",
	Armor = 2, BasicDamage = 15, PiercingDamage = 15, Missile = "missile-grenadier",
	MaxAttackRange = 5, Priority = 60, Points = 50, Corpse = {"unit-dead-body3", 0},
	Type = "land", CanAttack = true, CanTargetLand = true,
	LandUnit = true, organic = true, Demand = 0, SelectableByRectangle = true,
	Sounds = {
		"selected", "grenadier-selected",
		"acknowledge", "grenadier-acknowledge",
		"ready", "grenadier-ready",
		"help", "grenadier-help",
		"dead", "grenadier-die"}
	})

DefineUnitType("unit-engineer", {
	Name = "Engineer",
	Image = {"file", "elites/units/unit_engineer.png", "size", {64, 64}},
	Shadow = {"file", "elites/units/unit_engineer_s.png", "size", {64, 64}},
	DrawLevel = 19, Animations = "animations-engineer", Icon = "icon-engineer",
	Costs = {"time", 50, "titanium", 50, "crystal", 100},
	Speed = 8, HitPoints = 30, DrawLevel = 25,
	TileSize = {1, 1}, BoxSize = {17, 28},
	SightRange = 5, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 1, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	MaxAttackRange = 1, Priority = 50, Points = 30, Corpse = {"unit-dead-body2", 0},
	Type = "land", Demand = 0, RightMouseAction = "harvest", RepairRange = 1,
	CanTargetLand = true, LandUnit = true, Coward = true,
	CanGatherResources = {{
		"file-when-loaded", "elites/units/unit_engineer.png",
		"resource-id", "titanium",
		"resource-capacity", 50,
		"wait-at-resource", 7,
		"wait-at-depot", 1,
		"resource-step", 1,
		"harvest-from-outside"}, 
		{"file-when-loaded", "elites/units/unit_engineer.png",
			"resource-id", "crystal",
			"resource-capacity", 50,
			"wait-at-resource", 7,
			"wait-at-depot", 1,
			"resource-step", 1,
			"harvest-from-outside"}},
	organic = true, SelectableByRectangle = true,
	Sounds = {
		"selected", "engineer-selected",
		"acknowledge", "engineer-acknowledge",
		"ready", "engineer-ready",
		"repair", "engineer-repair",
		"harvest", "crystal", "engineer-harvest",
		"harvest", "titanium", "engineer-harvest",
		"help", "engineer-help",
		"dead", "engineer-die"}
	})

DefineUnitType("unit-harvester", {
	Name = "Harvester",
	Image = {"file", "elites/units/unit_harv.png", "size", {96, 96}},
	Shadow = {"file", "elites/units/unit_harv_s.png", "size", {96, 96}},
	DrawLevel = 25, Animations = "animations-harvester", Icon = "icon-harvester",
	Costs = {'time', 75, 'titanium', 250, 'crystal', 100},
	RepairHp = 2, RepairCosts = {"titanium", 2},
	ExplodeWhenKilled = "missile-160x128-explosion",
	Speed = 10, HitPoints = 200, DrawLevel = 40, TileSize = {1, 1}, BoxSize = {63, 63},
	SightRange = 5, ComputerReactionRange = 6, PersonReactionRange = 4,
	Armor = 25, BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	MaxAttackRange = 0, Priority = 50, Points = 30, Type = "land",
	Demand = 50, RightMouseAction = "harvest", CanAttack = true, CanTargetLand = true,
	LandUnit = true, Coward = true,
	CanGatherResources = {{
		"file-when-loaded", "elites/units/unit_harv.png",
		"resource-id", "titanium",
		"resource-capacity", 100,
		"wait-at-resource", 2,
		"wait-at-depot", 1,
		"resource-step", 2,
		"harvest-from-outside"}, 
		{"file-when-loaded", "elites/units/unit_harv.png",
		"resource-id", "crystal",
		"resource-capacity", 100,
		"wait-at-resource", 2,
		"wait-at-depot", 1,
		"resource-step", 2,
		"harvest-from-outside"}},
	SelectableByRectangle = true,
	Sounds = {
		"selected", "harvester-selected",
		"acknowledge", "harvester-acknowledge",
		"ready", "harvester-ready",
		"harvest", "crystal", "harvester-harvest",
		"harvest", "titanium", "harvester-harvest",
		"help", "harvester-help",
		"dead", "harvester-die"}
	})

DefineUnitType("unit-rfac", {
	Name = "Research Facility",
	Image = {"file", "elites/build/research_facility.png", "size", {128, 128}},
	Shadow = {"file", "elites/build/research_facility_s.png", "size", {128, 128}},
	Animations = "animations-rfac", Icon = "icon-rfac",
	Costs = {"time", 125, "titanium", 300, "crystal", 300},
	RepairHp = 2, RepairCosts = {"titanium", 2}, Construction = "construction-rfac",
	Speed = 0, HitPoints = 350, DrawLevel = 25, TileSize = {4, 4}, BoxSize = {124, 124},
	SightRange = 1, Armor = 30, BasicDamage = 0, PiercingDamage = 0,
	Missile = "missile-none", Priority = 35, AnnoyComputerFactor = 45,
	Demand = 300, Points = 200, ExplodeWhenKilled = "missile-160x128-explosion",
	Corpse = {"build-dead-body4", 0}, Type = "land",
	Building = true, BuilderOutside = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "rfac-selected",
		"ready", "rfac-ready",
		"help", "rfac-help",
		"dead", "rfac-dead"}
	})

DefineUnitType("unit-hosp", {
	Name = "Hospital",
	Image = {"file", "elites/build/hospital.png", "size", {128, 96}},
	Shadow = {"file", "elites/build/hospital_s.png", "size", {128, 96}},
	Animations = "animations-hosp", Icon = "icon-hosp",
	Costs = {"time", 125, "titanium", 500, "crystal", 100},
	RepairHp = 2, RepairCosts = {"titanium", 2}, Construction = "construction-hosp",
	Speed = 0, HitPoints = 350, DrawLevel = 25, TileSize = {4, 3},
	BoxSize = {124, 92}, SightRange = 2, Armor = 30, BasicDamage = 0,
	PiercingDamage = 0, Missile = "missile-none", Priority = 35,
	AnnoyComputerFactor = 45, Demand = 200, Points = 200,
	ExplodeWhenKilled = "missile-160x128-explosion", Corpse = {"build-dead-body5", 0},
	Type = "land", Building = true, BuilderOutside = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "hosp-selected",
		"ready", "hosp-ready",
		"help", "hosp-help",
		"dead", "hosp-dead"}
	})

DefineUnitType("unit-vfac", {
	Name = "Vehicle Factory",
	Image = {"file", "elites/build/vehicle_factory.png", "size", {224, 160}},
	Shadow = {"file", "elites/build/vehicle_factory_s.png", "size", {224, 160}},
	Animations = "animations-vfac", Icon = "icon-vfac",
	Costs = {"time", 200, "titanium", 750, "crystal", 100},
	RepairHp = 2, RepairCosts = {"titanium", 2}, Construction = "construction-vfac",
	Speed = 0, HitPoints = 550, DrawLevel = 25, TileSize = {7, 5},
	BoxSize = {220, 156}, SightRange = 2, Armor = 30, BasicDamage = 0,
	PiercingDamage = 0, Missile = "missile-none", Priority = 35,
	AnnoyComputerFactor = 45, Demand = 400, Points = 200,
	ExplodeWhenKilled = "missile-160x128-explosion", Corpse = {"build-dead-body6", 0},
	Type = "land",  Building = true, BuilderOutside = true, VisibleUnderFog = true,
	Sounds = {
		"selected", "vfac-selected",
		"ready", "vfac-ready",
		"help", "vfac-help",
		"dead", "vfac-dead"}
	})

local CorpseTable = {"assault", "engineer", "grenadier", "bazoo"}
for i = 1, table.getn(CorpseTable) do
	DefineUnitType("unit-dead-body" .. i, {
		Name = CorpseTable[i] .. "body",
		Image = {"file", "elites/units/unit_" .. CorpseTable[i] .. "_c.png", "size", {64, 64}},
		Animations = "animations-elitecorpse1", Icon = "icon-cancel",
		Speed = 0, HitPoints = 999, DrawLevel = 10, TileSize = {1, 1},
		BoxSize = {31, 31}, SightRange = 1, BasicDamage = 0,
		PiercingDamage = 0, Missile = "missile-none",
		Priority = 0, Type = "land", Vanishes = true})
end

DefineUnitType("build-dead-body4", {
	Name = "RfacCrater",
	Image = {"file", "elites/build/research_facility.png", "size", {128, 128}},
	Animations = "animations-elitebuild4", Icon = "icon-cancel",
	Speed = 0, HitPoints = 999, DrawLevel = 10,
	TileSize = {4, 4}, BoxSize = {124, 124}, SightRange = 1,
	BasicDamage = 0, PiercingDamage = 0, Missile = "missile-none",
	Priority = 0, Type = "land", Building = true, Vanishes = true
	})

DefineUnitType("build-dead-body5", {
	Name = "HospCrater",
	Image = {"file", "elites/build/hospital.png", "size", {128, 96}},
	Animations = "animations-elitebuild5", Icon = "icon-cancel",
	Speed = 0, HitPoints = 999, DrawLevel = 10, TileSize = {4, 3},
	BoxSize = {124, 92}, SightRange = 1, BasicDamage = 0,
	PiercingDamage = 0, Missile = "missile-none",
	Priority = 0, Type = "land", Building = true, Vanishes = true
	})

DefineUnitType("build-dead-body6", {
	Name = "FactoryCrater",
	Image = {"file", "elites/build/vehicle_factory.png", "size", {224, 160}},
	Animations = "animations-elitebuild6", Icon = "icon-cancel",
	Speed = 0, HitPoints = 999, DrawLevel = 10, TileSize = {7, 5},
	BoxSize = {220, 156}, SightRange = 1, BasicDamage = 0,
	PiercingDamage = 0, Missile = "missile-none",
	Priority = 0, Type = "land", Building = true, Vanishes = true
	})



