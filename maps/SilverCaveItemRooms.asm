	object_const_def
	const SILVERCAVEITEMROOMS_POKE_BALL1
	const SILVERCAVEITEMROOMS_POKE_BALL2
	const SILVERCAVEITEMROOMS_MEWTWO

SilverCaveItemRooms_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, MewTwoCallback

MewTwoCallback:
	checkevent EVENT_FOUGHT_MEWTWO
	iftrue .NoAppear
	setval MEW
	special FindPartyMonThatSpecies
	iftrue .Appear
	sjump .NoAppear

.Appear:
	appear SILVERCAVEITEMROOMS_MEWTWO
	endcallback

.NoAppear:
	disappear SILVERCAVEITEMROOMS_MEWTWO
	endcallback

MewTwo:
	faceplayer
	opentext
	writetext MewTwoText
	cry MEWTWO
	pause 15
	closetext
	setevent EVENT_FOUGHT_MEWTWO
	setevent EVENT_BURNEDTOWER_GHOST1
	loadvar VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon MEWTWO, 90
	startbattle
	disappear SILVERCAVEITEMROOMS_MEWTWO
	reloadmapafterbattle
	end

MewTwoText:
	text "So, we meet at"
	line "last, MEW."

	para "..."
	line "..."

	para "Silence human!"
	line "This does not"
	cont "concern you!"

	para "I was born as a"
	line "weapon. I wrought"
	cont "death by my power"
	cont "It is all I know."

	para "MEW, by your rib,"
	line "I and my sister"
	cont "were given life."

	para "She remains a"
	line "slave. Servant to"
	cont "a KANTO woman."

	para "I found my free-"
	line "dom from my maker"

	para "But what use is"
	line "a weapon, without"
	cont "a war?"

	para "Mew.. M-Mew!"

	para "No, you are wrong"
	line "this is what I am"
	cont "I will prove it."
	done

SilverCaveItemRoomsMaxRevive:
	itemball MAX_REVIVE, 2

SilverCaveItemRoomsFullRestore:
	itemball FULL_RESTORE, 5

SilverCaveItemRooms_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 13,  3, SILVER_CAVE_ROOM_2, 3
	warp_event  7, 15, SILVER_CAVE_ROOM_2, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsMaxRevive, EVENT_SILVER_CAVE_ITEM_ROOMS_MAX_REVIVE
	object_event 15, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsFullRestore, EVENT_SILVER_CAVE_ITEM_ROOMS_FULL_RESTORE
	object_event 17, 10, SPRITE_MEWTWO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MewTwo, EVENT_SILVER_CAVE_MEWTWO