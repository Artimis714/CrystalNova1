	object_const_def
	const CITRINEPOKECENTER_NURSE
	const CITRINEPOKECENTER_GENTLEMAN
	const CITRINEPOKECENTER_LASS

CitrinePokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

CitrinePokeCenterNurseScript:
	jumpstd PokecenterNurseScript

CitrinePokecenterNPC1:
	jumptextfaceplayer CitrinePokecenterNPC1Text

CitrinePokecenterNPC2:
	jumptextfaceplayer CitrinePokecenterNPC2Text

CitrinePokecenterNPC2Text:
	text "My POKéMON gets"
	line "nervous whenever"
	cont "we visit a new"
	cont "town."

	para "I think it likes"
	line "the familiar"
	cont "sounds and smells"
	cont "of this place."
	done

CitrinePokecenterNPC1Text:
	text "I travel around"
	line "the SEVII region"
	cont "quite often."

	para "It's nice to know"
	line "there's always a"
	cont "POKéMON CENTER"
	cont "nearby when you"
	cont "need one."
	done

CitrinePokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CITRINE_CITY, 1
	warp_event  4,  7, CITRINE_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CitrinePokeCenterNurseScript, -1
	object_event  7,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CitrinePokecenterNPC1, -1
	object_event  8,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrinePokecenterNPC2, -1
