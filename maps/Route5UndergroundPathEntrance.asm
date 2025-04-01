	object_const_def
	const ROUTE5UNDERGROUNDPATHENTRANCE_TEACHER

Route5UndergroundPathEntrance_MapScripts:
	def_scene_scripts

	def_callbacks

Route5UndergroundPathEntranceTeacherScript:
	jumptextfaceplayer Route5UndergroundPathEntranceTeacherText

Route5UndergroundPathEntranceTeacherText:
	text "Many cities in"
	line "JOHTO have long"
	cont "histories."

	para "..."
	line "..."
	
	para "I'm an academic."
	line "So I wept when"

	para "I heard they"
	line "burned the famous"
	cont "GOLDENROD ARCHIVES"

	para "..."
	line "..."

	para "No, I'd imagine"
	line "most people over"

	para "here feel diff-"
	line "erent."

	para "Keep your chin"
	line "up kid! You'll"

	para "get your papers"
	line "back!"
	done

Route5UndergroundPathEntrance_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_5, 1
	warp_event  4,  7, ROUTE_5, 1
	warp_event  4,  3, UNDERGROUND_PATH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route5UndergroundPathEntranceTeacherScript, -1
