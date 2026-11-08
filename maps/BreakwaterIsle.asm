	object_const_def

BreakwaterIsle_MapScripts:
	def_scene_scripts

	def_callbacks

BreakwaterPokeSign:
	jumpstd PokecenterSignScript

BreakwaterMartSign:
	jumpstd MartSignScript

BreakwaterIsleSign: 
	jumptext BreakwaterIsleText

BreakwaterIsleGymSign: 
	jumptext BreakwaterGymText

BreakwaterLighthouseSign:
	jumptext BreakwaterLighthouseText

BreakwaterIsleText:
	text "BREAKWATER ISLE"
	
	para "First line of"
	line "defense against"
	cont "JOHTO!"
	done

BreakwaterGymText: 
	text "BREAKWATER GYM"
	line "LEADER BLAINE"
	done

BreakwaterLighthouseText:
	text "BREAKWATER"
	line "LIGHTHOUSE"
	done

BreakwaterIsle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 30,  5, BREAKWATER_CAVE_1, 2
	warp_event 23,  7, BREAKWATER_POKECENTER, 1
	warp_event 27, 17, BREAKWATER_MART, 1
	warp_event 15,  7, BREAKWATER_HOUSE1, 1
	warp_event 21, 17, BREAKWATER_HOUSE2, 1

	def_coord_events

	def_bg_events
	bg_event 24,  7, BGEVENT_READ, BreakwaterPokeSign
	bg_event 28, 17, BGEVENT_READ, BreakwaterMartSign
	bg_event 29,  7, BGEVENT_READ, BreakwaterIsleSign
	bg_event 17, 15, BGEVENT_READ, BreakwaterIsleGymSign
	bg_event  7, 25, BGEVENT_READ, BreakwaterLighthouseSign

	def_object_events
