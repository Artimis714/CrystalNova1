	object_const_def
	const TEMPESTISLE_ZAPDOS
	const TEMPESTISLE_YELLOW_ORB
	const TEMPESTISLE_FRUITTREE2
	const TEMPESTISLE_FRUITTREE1

TempestIsle_MapScripts:
	def_scene_scripts

	def_callbacks

TempestZapdosScript:
	opentext
	writetext TempestZapdosText
	cry ZAPDOS
	pause 15
	closetext
	setevent EVENT_TEMPEST_ZAPDOS
	loadwildmon ZAPDOS, 40
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	clearevent EVENT_TEMPEST_YELLOW_ORB
	disappear TEMPESTISLE_ZAPDOS
	appear TEMPESTISLE_YELLOW_ORB
	reloadmapafterbattle
	end

TempestYellowOrbScript:
	itemball ELECTRIC_ORB

TempestIsleTree1:
	fruittree FRUITTREE_TEMPEST_ISLE1

TempestIsleTree2:
	fruittree FRUITTREE_TEMPEST_ISLE2

TempestZapdosText:
	text "Ka  riii!"
	done


TempestIsle_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 42, 37, TEMPEST_ISLE_CAVE1, 2
	warp_event 40, 27, TEMPEST_ISLE_CAVE1, 3
	warp_event 30, 31, TEMPEST_ISLE_CAVE2, 1
	warp_event 38, 11, TEMPEST_ISLE_CAVE2, 2
	warp_event 26, 21, TEMPEST_ISLE_CAVE3, 1
	warp_event 16, 23, TEMPEST_ISLE_CAVE3, 2
	warp_event  8,  5, TEMPEST_ISLE_CAVE3, 3
	warp_event 44, 15, TEMPEST_ISLE_CAVE4, 1
	warp_event 36, 17, TEMPEST_ISLE_CAVE4, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 29,  6, SPRITE_ZAPDOS, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, TempestZapdosScript, EVENT_TEMPEST_ZAPDOS
	object_event 29,  6, SPRITE_ORB, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_ITEMBALL, 0, TempestYellowOrbScript, EVENT_TEMPEST_YELLOW_ORB
	object_event 13, 25, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, PAL_NPC_YELLOW, TempestIsleTree2, -1
	object_event 40, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, PAL_NPC_EMOTE, TempestIsleTree1, -1
