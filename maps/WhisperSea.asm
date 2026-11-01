	object_const_def

WhisperSea_MapScripts:
	def_scene_scripts

	def_callbacks

TanobyRuinsSign:
	jumptext TanobyRuinsSignText

TanobyRuinsSignText:
	text "TANOBY RUINS"
	done

WhisperSea_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6, 24, MOSS_WHISPER_GATE, 3
	warp_event  6, 25, MOSS_WHISPER_GATE, 4
	warp_event 14,  9, WHISPER_SEA, 6
	warp_event 32, 15, WHISPER_SEA, 6
	warp_event 44, 25, WHISPER_SEA, 6
	warp_event 56, 19, WHISPER_SEA, 3

	def_coord_events

	def_bg_events
	bg_event 44, 12, BGEVENT_READ, TanobyRuinsSign

	def_object_events
