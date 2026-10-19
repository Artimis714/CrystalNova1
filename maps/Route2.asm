	object_const_def

Route2_MapScripts:
	def_scene_scripts

	def_callbacks

Route2Sign:
	jumptext Route2SignText

Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText

Route2SignText:
	text "ROUTE 2"

	para "VIRIDIAN CITY -"
	line "PEWTER CITY"
	done

Route2DiglettsCaveSignText:
	text "REBEL's PASS"
	done

Route2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  3, ROUTE_2_NUGGET_HOUSE, 1
	warp_event  3, 11, ROUTE_2_GATE, 3
	warp_event  4,  7, ROUTE_2_GATE, 1
	warp_event  5,  7, ROUTE_2_GATE, 2
	warp_event 12,  7, DIGLETTS_CAVE, 3

	def_coord_events

	def_bg_events
	bg_event 17, 11, BGEVENT_READ, Route2Sign
	bg_event 11,  9, BGEVENT_READ, Route2DiglettsCaveSign

	def_object_events

