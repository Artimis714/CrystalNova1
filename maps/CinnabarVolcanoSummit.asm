	object_const_def
	const VOLCANOSUMMIT_MOLTRES
	const VOLCANOSUMMIT_RED_ORB

CinnabarVolcanoSummit_MapScripts:
	def_scene_scripts

	def_callbacks

VolcanoMoltresScript:
	opentext
	writetext VolcanoMoltresText
	cry MOLTRES
	pause 15
	closetext
	setevent EVENT_CINNABAR_MOLTRES
	loadwildmon MOLTRES, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	clearevent EVENT_CINNABAR_RED_ORB
	disappear VOLCANOSUMMIT_MOLTRES
	appear VOLCANOSUMMIT_RED_ORB
	reloadmapafterbattle
	end

VolcanoRedOrbScript:
	itemball FIRE_ORB

VolcanoMoltresText:
	text "Ga yaoo!"
	done

CinnabarVolcanoSummit_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 29, CINNABAR_VOLCANO_3F, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event 21,  7, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VolcanoMoltresScript, EVENT_CINNABAR_MOLTRES
	object_event 21,  7, SPRITE_ORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_ITEMBALL, 0, VolcanoRedOrbScript, EVENT_CINNABAR_RED_ORB