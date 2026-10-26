	object_const_def

ThunderSea_MapScripts:
	def_scene_scripts

	def_callbacks

TempestIsleSign:
	jumptext TempestIsleSignText

TempestIsleSignText:
	text "Tempest Isle"
	done


ThunderSea_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 45, TEMPEST_ISLE_CAVE1, 1

	def_coord_events

	def_bg_events
	bg_event  8, 44, BGEVENT_READ, TempestIsleSign

	def_object_events
