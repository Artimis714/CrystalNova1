	object_const_def
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL1
	const MOUNTMORTAR1FOUTSIDE_POKE_BALL2
	const MOUNTMORTAR1FOUTSIDE_SHINY_GOLBAT

MountMortar1FOutside_MapScripts:
	def_scene_scripts

	def_callbacks

MountMortar1FOutsideEther:
	itemball ELIXER

MountMortar1FOutsideRevive:
	itemball MAX_REVIVE

ShinyGolbat:
	opentext
	writetext MortarGolbatText
	pause 15
	cry GOLBAT
	closetext
	setevent EVENT_BATTLED_GOLBAT
	loadwildmon GOLBAT, 14
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear MOUNTMORTAR1FOUTSIDE_SHINY_GOLBAT
	reloadmapafterbattle
	end

MountMortar1FOutsideHiddenHyperPotion:
	hiddenitem HYPER_POTION, EVENT_MOUNT_MORTAR_1F_OUTSIDE_HIDDEN_HYPER_POTION

MortarGolbatText:
	text "Skiip Scrreep!"
	done

MountMortar1FOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 33, ROUTE_42, 3
	warp_event 17, 33, ROUTE_42, 4
	warp_event 37, 33, ROUTE_42, 5
	warp_event 17,  5, MOUNT_MORTAR_2F_INSIDE, 1
	warp_event 11, 21, MOUNT_MORTAR_1F_INSIDE, 1
	warp_event 29, 21, MOUNT_MORTAR_1F_INSIDE, 2
	warp_event 17, 29, MOUNT_MORTAR_B1F, 2
	warp_event  7, 13, MOUNT_MORTAR_1F_INSIDE, 3
	warp_event 33, 13, MOUNT_MORTAR_1F_INSIDE, 4

	def_coord_events

	def_bg_events
	bg_event 25, 22, BGEVENT_ITEM, MountMortar1FOutsideHiddenHyperPotion

	def_object_events
	object_event 12, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideEther, EVENT_MOUNT_MORTAR_1F_OUTSIDE_ETHER
	object_event 31, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MountMortar1FOutsideRevive, EVENT_MOUNT_MORTAR_1F_OUTSIDE_REVIVE
	object_event 13, 15, SPRITE_GOLBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, ShinyGolbat, EVENT_BATTLED_GOLBAT
