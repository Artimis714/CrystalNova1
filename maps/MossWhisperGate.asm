	object_const_def

MossWhisperGate_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

MossWhisperGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, MOSS_ISLE, 6
	warp_event  0,  5, MOSS_ISLE, 7
	warp_event  9,  4, WHISPER_SEA, 1
	warp_event  9,  5, WHISPER_SEA, 2

	def_coord_events

	def_bg_events

	def_object_events
