MossCave_MapScripts:
	def_scene_scripts
	scene_script MossCavePitScene, SCENE_MOSSCAVE_PIT
	scene_script MossCaveNoopScene, SCENE_MOSSCAVE_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, MossCavePitCallback

MossCavePitScene:
	end

MossCaveNoopScene:
	end

MossCavePitCallback:
	checkevent EVENT_MOSS_CAVE_PIT
	iffalse .Done
	changeblock 26, 3, $60
.Done:
	endcallback

MossCavePitScript:
	pause 10
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 10
	earthquake 30
	pause 10
	changeblock 26, 3, $60
	reloadmappart
	setevent EVENT_MOSS_CAVE_PIT
	setscene SCENE_MOSSCAVE_NOOP
	warpcheck
	end

MossCave_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 23, 27, MOSS_ISLE, 3
	warp_event 26,  3, MOSS_CAVE_RUINS, 1
	warp_event 14, 15, MOSS_CAVE_RUINS, 2
	warp_event 15, 15, MOSS_CAVE_RUINS, 3

	def_coord_events
	coord_event 26, 3, SCENE_MOSSCAVE_PIT, MossCavePitScript

	def_bg_events

	def_object_events
