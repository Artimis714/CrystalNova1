	object_const_def

TanobyRuinsItemRoom_MapScripts:
	def_scene_scripts

	def_callbacks

TanobyWhirlUnown:
	opentext
	writetext strangmarkingstanoby3Text
	setval UNOWNWORDS_WHIRL
	special DisplayUnownWords
	closetext
	end

TanobyIlexUnown:
	opentext
	writetext strangmarkingstanoby3Text
	setval UNOWNWORDS_ILEX
	special DisplayUnownWords
	closetext
	end


TanobySilverWing:
	itemball SILVER_WING

TanobyGSBall:
	itemball GS_BALL

strangmarkingstanoby3Text:
	text "I've seen markings"
	line "like this before"
	cont "in Alph."
	done

TanobyRuinsItemRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  6, TANOBY_RUINS_2F, 2
	warp_event  4,  6, TANOBY_RUINS_2F, 2

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_READ, TanobyWhirlUnown
	bg_event  5,  0, BGEVENT_READ, TanobyIlexUnown

	def_object_events
	object_event  2,  2, SPRITE_FEATHER, SPRITEMOVEDATA_STILL,  0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_ITEMBALL, 0, TanobySilverWing, EVENT_TANOBY_SILVER_WING
	object_event  5,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL,  0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, TanobyGSBall, EVENT_TANOBY_GS_BALL