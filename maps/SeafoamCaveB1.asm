	object_const_def
	const SEAFOAM1_BOULDER1
	const SEAFOAM1_BOULDER2

SeafoamCaveB1_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_CMDQUEUE, SeafoamB1SetUpStoneTableCallback

SeafoamB1SetUpStoneTableCallback:
	writecmdqueue .CommandQueue
	endcallback

.CommandQueue:
	cmdqueue CMDQUEUE_STONETABLE, .StoneTable

.StoneTable:
	stonetable 6, SEAFOAM1_BOULDER1, .Boulder1
	stonetable 5, SEAFOAM1_BOULDER2, .Boulder2
	db -1 ; end

.Boulder1:
	disappear SEAFOAM1_BOULDER1
	clearevent EVENT_SEAFOAM2_BOULDER1
	sjump .FinishBoulder

.Boulder2:
	disappear SEAFOAM1_BOULDER2
	clearevent EVENT_SEAFOAM2_BOULDER2
	sjump .FinishBoulder

.FinishBoulder:
	pause 30
	scall .BoulderFallsThrough
	opentext
	writetext SeafoamBoulderFellThroughText
	waitbutton
	closetext
	end

.BoulderFallsThrough:
	playsound SFX_STRENGTH
	earthquake 80
	end

SeafoamB1FBoulder:
	jumpstd StrengthBoulderScript

SeafoamBoulderFellThroughText:
	text "The boulder fell"
	line "through."
	done

SeafoamCaveB1_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 17, SEAFOAM_CAVE_B2, 1
	warp_event 35, 21, SEAFOAM_CAVE_B2, 2
	warp_event 27,  4, SEAFOAM_CAVE_B2, 3
	warp_event 35,  6, SEAFOAM_CAVE_B2, 4
	warp_event 28,  9, SEAFOAM_CAVE_B2, 5
	warp_event 25, 10, SEAFOAM_CAVE_B2, 6
	warp_event 20, 14, SEAFOAM_CAVE_B2, 7
	warp_event 15, 21, SEAFOAM_CAVE_B2, 8
	warp_event 27, 21, SEAFOAM_CAVE_B2, 9
	warp_event  7,  8, SEAFOAM_CAVE_B2, 10
	warp_event 19, 21, SEAFOAM_GYM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 26, 23, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, SeafoamB1FBoulder, EVENT_SEAFOAM1_BOULDER1
	object_event 36, 16, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, PAL_NPC_EMOTE, OBJECTTYPE_SCRIPT, 0, SeafoamB1FBoulder, EVENT_SEAFOAM1_BOULDER2
