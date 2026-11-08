	object_const_def
	const CitrineMart_CLERK
	const CitrineMart_POKEFAN

CitrineMart_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

CitrineMartNPC:
	jumptextfaceplayer CitrineMartNPCText

CitrineMartNPCText:
	text "I always buy"
	line "more POTIONS than"
	cont "I think I'll need."

	para "But the one time"
	line "I don't, I'll"
	cont "probably regret"
	cont "it!"
	done

CitrineMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CITRINE_CITY, 6
	warp_event  3,  7, CITRINE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CitrineMartClerkScript, -1
	object_event  8,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CitrineMartNPC, -1
