	object_const_def

CitrineCity_MapScripts:
	def_scene_scripts

	def_callbacks

CitrineFloristSign:
	jumptext CitrineFloristSignText

CitrineMartSign:
	jumpstd MartSignScript

CitrinePokeCenterSign:
	jumpstd PokecenterSignScript

CitrineGameCornerSign: 
	jumptext CitrineGameCornerSignText

CitrineLabsSign: 
	jumptext CitrineLabsSignText

CitrineMayorSign: 
	jumptext CitrineMayorSignText

CitrineFloristSignText:
	text "CITRINE FLORIST"
	line "There's a notice"

	para "Seeking Metalic"
	line "leaves for special"
	cont "arrangement."

	para "Will trade RARE"
	line "CANDIES!"
	done

CitrineGameCornerSignText:
	text "CITRINE CASINO"
	line "Try your luck!"
	done

CitrineLabsSignText: 
	text "KANTO BIOMEDICAL"
	line "RESEARCH FACILITY"
	cont "KEEP OUT"
	done

CitrineMayorSignText:
	text "SEVII REGIONAL"
	line "ADMINISTRATIVE"
	cont "OFFICE"
	done

CitrineCity_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 25, 29, CITRINE_POKECENTER, 1
	warp_event  4, 38, CORAL_CITRINE_GATE, 3
	warp_event  4, 39, CORAL_CITRINE_GATE, 4
	warp_event 35, 38, CITRINE_GREEN_GATE, 1
	warp_event 35, 39, CITRINE_GREEN_GATE, 2
	warp_event 19, 39, CITRINE_MART, 1
	warp_event 31, 15, CITRINE_FLORIST, 1

	def_coord_events

	def_bg_events
	bg_event 32, 16, BGEVENT_READ, CitrineFloristSign
	bg_event 20, 39, BGEVENT_READ, CitrineMartSign
	bg_event 26, 29, BGEVENT_READ, CitrinePokeCenterSign
	bg_event 14, 22, BGEVENT_READ, CitrineGameCornerSign
	bg_event 24, 22, BGEVENT_READ, CitrineLabsSign
	bg_event 20, 12, BGEVENT_READ, CitrineMayorSign

	def_object_events
