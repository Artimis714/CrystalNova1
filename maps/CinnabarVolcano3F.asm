	object_const_def

CinnabarVolcano3F_MapScripts:
	def_scene_scripts

	def_callbacks

; Map Scripts

CinnabarVolcano3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 35, 11, CINNABAR_VOLCANO_2F, 4
	warp_event  9, 11, CINNABAR_VOLCANO_2F, 5
	warp_event 22, 29, CINNABAR_VOLCANO_2F, 6
	warp_event 17, 19, CINNABAR_VOLCANO_SUMMIT, 1
	warp_event 14, 23, CINNABAR_VOLCANO_2F, 7

	def_coord_events

	def_bg_events

	def_object_events
