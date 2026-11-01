	object_const_def

MossIsle_MapScripts:
	def_scene_scripts

	def_callbacks

MossPokeCenterSign:
	jumpstd PokecenterSignScript

MossCaveSign:
	jumptext MossCaveSignText

MossCaveSignText:
	text "MOSS CAVE"
	done

MossIsle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15,  5, ROUTE_19_FUCHSIA_GATE, 3
	warp_event  7, 17, MOSS_POKECENTER, 1
	warp_event 24, 15, MOSS_CAVE, 1
	warp_event 14, 23, MOSS_GREEN_GATE, 1
	warp_event 15, 23, MOSS_GREEN_GATE, 2
	warp_event 25, 18, MOSS_WHISPER_GATE, 1
	warp_event 25, 19, MOSS_WHISPER_GATE, 2

	def_coord_events

	def_bg_events
	bg_event  8, 17, BGEVENT_READ, MossPokeCenterSign
	bg_event 22, 16, BGEVENT_READ, MossCaveSign

	def_object_events
