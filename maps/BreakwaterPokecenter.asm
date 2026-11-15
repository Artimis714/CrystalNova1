	object_const_def
	const BREAKWATERPOKECENTER_NURSE
	const BREAKCENTER_TRAINER
	const BREAKCENTER_SAILOR

BreakwaterPokecenter_MapScripts:
	def_scene_scripts

	def_callbacks

BreakwaterPokeCenterNurseScript:
	jumpstd PokecenterNurseScript

BreakCenterTrainer:
	jumptextfaceplayer BreakCenterTrainerText

BreakCenterSailor:
	jumptextfaceplayer BreakCenterSailorText

BreakCenterTrainerText:
	text "I've been training"
	line "around BREAKWATER"
	cont "for a few days."

	para "The TRAINERS here"
	line "are tougher than"
	cont "I expected."

	para "I thought I'd be"
	line "ready for the"
	cont "LIGHTHOUSE by now."

	para "Maybe I'll spend"
	line "another day"
	cont "recovering first."
	done

BreakCenterSailorText:
	text "I've travelled"
	line "quite a bit since"
	cont "the war ended."

	para "A lot of places"
	line "are still trying"
	cont "to recover."

	para "But BREAKWATER"
	line "might be the most"
	cont "determined place"
	cont "I've seen yet."

	para "People here don't"
	line "give up easily."
	done

BreakwaterPokecenter_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, BREAKWATER_ISLE, 2
	warp_event  4,  7, BREAKWATER_ISLE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BreakwaterPokeCenterNurseScript, -1
	object_event  7,  5, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BreakCenterTrainer, -1
	object_event  8,  7, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BreakCenterSailor, -1
