	object_const_def
	const SEAFOAM2_BOULDER1
	const SEAFOAM2_BOULDER2
	const SEAFOAM2_ARTICUNO
	const SEAFOAM2_BLUE_ORB

SeafoamCaveB2_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SeafoamCaveB2CurrentCallback

SeafoamCaveB2CurrentCallback:
	checkevent EVENT_SEAFOAM2_BOULDER1
	iftrue .Current
	checkevent EVENT_SEAFOAM2_BOULDER2
	iftrue .Current

.Still:
	changeblock 12,  2, $44
	changeblock 14,  2, $44
	changeblock 16,  2, $44
	changeblock 22,  2, $44
	changeblock 24,  2, $44
	changeblock 26,  2, $44
	changeblock 14,  4, $44
	changeblock 16,  4, $44
	changeblock 22,  4, $44
	changeblock 24,  4, $44
	changeblock 14,  6, $44
	changeblock 16,  6, $44
	changeblock 18,  6, $44
	changeblock 20,  6, $44
	changeblock 22,  6, $44
	changeblock 24,  6, $44
	changeblock 18,  8, $44
	changeblock 20,  8, $44
	changeblock 18, 10, $44
	changeblock 20, 10, $44
	changeblock 18, 12, $44
	changeblock 20, 12, $44
	endcallback

.Current:
	changeblock 12,  2, $41
	changeblock 14,  2, $40
	changeblock 16,  2, $40
	changeblock 22,  2, $40
	changeblock 24,  2, $40
	changeblock 26,  2, $42
	changeblock 14,  4, $40
	changeblock 16,  4, $40
	changeblock 22,  4, $40
	changeblock 24,  4, $40
	changeblock 14,  6, $41
	changeblock 16,  6, $41
	changeblock 18,  6, $40
	changeblock 20,  6, $40
	changeblock 22,  6, $42
	changeblock 24,  6, $42
	changeblock 18,  8, $40
	changeblock 20,  8, $40
	changeblock 18, 10, $40
	changeblock 20, 10, $40
	changeblock 18, 12, $40
	changeblock 20, 12, $42
	endcallback

Seafoam2BoulderScript:
	jumptext BouderWedgedText

Seafoam2ArticunoScript: 
	opentext
	writetext SeafoamArticunoText
	cry ARTICUNO
	pause 15
	closetext
	setevent EVENT_SEAFOAM_ARTICUNO
	loadwildmon ARTICUNO, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	clearevent EVENT_SEAFOAM_BLUE_ORB
	disappear SEAFOAM2_ARTICUNO
	appear SEAFOAM2_BLUE_ORB
	reloadmapafterbattle
	end

SeafoamBlueOrbScript: 
	itemball ICE_ORB

SeafoamArticunoText:
	text "Ahh—ho!"
	done

BouderWedgedText:
	text "The Boulder is"
	line "wedged against the"

	para "walls blocking the"
	line "current." 
	done

SeafoamCaveB2_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 17, SEAFOAM_CAVE_B1, 1
	warp_event 35, 21, SEAFOAM_CAVE_B1, 2
	warp_event 24,  3, SEAFOAM_CAVE_B1, 3
	warp_event 31,  4, SEAFOAM_CAVE_B1, 4
	warp_event 15,  3, SEAFOAM_CAVE_B1, 5
	warp_event 19,  7, SEAFOAM_CAVE_B1, 6
	warp_event 21, 12, SEAFOAM_CAVE_B1, 7
	warp_event 19, 12, SEAFOAM_CAVE_B1, 8
	warp_event 31, 16, SEAFOAM_CAVE_B1, 9
	warp_event 10,  4, SEAFOAM_CAVE_B1, 10
	warp_event 18, 23, SEAFOAM_CAVE_B3, 1
	warp_event 19, 23, SEAFOAM_CAVE_B3, 2
	warp_event 27, 11, SEAFOAM_CAVE_B3, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event 18, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, Seafoam2BoulderScript, EVENT_SEAFOAM2_BOULDER1
	object_event 19, 14, SPRITE_BOULDER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, Seafoam2BoulderScript, EVENT_SEAFOAM2_BOULDER2
	object_event 20,  3, SPRITE_ARTICUNO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, Seafoam2ArticunoScript, EVENT_SEAFOAM_ARTICUNO
	object_event 20,  3, SPRITE_ORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, SeafoamBlueOrbScript, EVENT_SEAFOAM_BLUE_ORB
