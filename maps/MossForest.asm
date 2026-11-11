	object_const_def
	const MOSSFOREST_FRUITTREE1
	const MOSSFOREST_FRUITTREE2
	const MOSSFOREST_FRUITTREE3
	const MOSSFOREST_FRUITTREE4
	const MOSSFOREST_FRUITTREE5
	const MOSSFOREST_FRUITTREE6
	const MOSSFOREST_FRUITTREE7

MossForest_MapScripts:
	def_scene_scripts

	def_callbacks

MossForestFruit1:
	fruittree FRUITTREE_MOSS_FOREST1

MossForestFruit2:
	fruittree FRUITTREE_MOSS_FOREST2

MossForestFruit3:
	fruittree FRUITTREE_MOSS_FOREST3

MossForestFruit4:
	fruittree FRUITTREE_MOSS_FOREST4

MossForestFruit5:
	fruittree FRUITTREE_MOSS_FOREST5

MossForestFruit6:
	fruittree FRUITTREE_MOSS_FOREST6

MossForestFruit7:
	fruittree FRUITTREE_MOSS_FOREST7

MossForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 21, 33, ROUTE_19_FUCHSIA_GATE, 1
	warp_event  5, 19, AGATHA_HOUSE, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 30,  5, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossForestFruit1, -1
	object_event 38, 36, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossForestFruit2, -1
	object_event 37, 18, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossForestFruit3, -1
	object_event 15, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossForestFruit4, -1
	object_event 12, 35, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossForestFruit5, -1
	object_event  1, 28, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossForestFruit6, -1
	object_event  0,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MossForestFruit7, -1
