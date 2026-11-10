	object_const_def

MossCaveRuins_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

MossCaveRuins_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  5,  4, MOSS_CAVE, 2
	warp_event  3,  6, MOSS_CAVE, 3
	warp_event  4,  6, MOSS_CAVE, 4
	
	def_coord_events

	def_bg_events

	def_object_events
