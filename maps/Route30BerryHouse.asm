	object_const_def
	const ROUTE30BERRYHOUSE_POKEFAN_M

Route30BerryHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route30BerryHousePokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
	iftrue .MetDale
	writetext Route30BerrySpeechHouseMonEatBerriesText
	promptbutton
	verbosegiveitem SLVR_BERRY, 2
	iffalse .NoRoom
	setevent EVENT_GOT_BERRY_FROM_ROUTE_30_HOUSE
	waitbutton
	closetext
	end

.MetDale
	checkevent EVENT_GHOST_DALE
	iffalse .GotBerry
	checkevent EVENT_SPOKE_TO_DALES_DAD
	iftrue .Iwasalwaysproud
	writetext YouMetMyDeadSonText
	verbosegiveitem GOLD_BERRY, 5
	iffalse .NoRoom
	setevent EVENT_SPOKE_TO_DALES_DAD
	waitbutton
	closetext
	end

.Iwasalwaysproud
	writetext Route30BerryProudDad
	waitbutton
	closetext
	end

.GotBerry
	writetext Route30BerrySpeechHouseCheckTreesText
	waitbutton
	closetext
	end

.NoRoom
	writetext Route30BerryNoRoomText
	closetext
	end

Route30BerryHouseBookshelf:
	jumpstd MagazineBookshelfScript

Route30BerrySpeechHouseMonEatBerriesText:
	text "You know, #MON"
	line "eat BERRIES."

	para "Well, my #MON"
	line "got healthier by"
	cont "eating a BERRY."

	para "Here. I'll share"
	line "one with you!"
	done

Route30BerrySpeechHouseCheckTreesText:
	text "These are rare"
	line "MOON BERRIES!"

	para "Way stronger than"
	line "the ones you find"
	cont "around here."

	para "You might want to"
	line "save them for"
	cont "later."
	done

YouMetMyDeadSonText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You... you met my"
	line "DALE?"
	
	para "No... you can't"
	line "My DALE died when"

	para "The ARCHIVES were"
	line "burned."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "My poor boy has"
	line "nothing to apol-"
	cont "ogize for."

	para "He was a hero,"
	line "and I was a"
	cont "coward for"

	para "telling him not"
	line "to fight."

	para "I love my son,"
	line "and it means"

	para "everything to"
	line "me that you met"

	para "his shade and"
	line "helped him move"
	cont "on."

	para "Please, take"
	line "these. They're"
	cont "my most prized"
	cont "Berries."
	done

Route30BerryProudDad:
	text "I was always"
	line "proud of my son"

	para "Thank you again"
	line "for seeking me"

	para "out, and tell-"
	line "ing me about"
	cont "him."

	para "May your berry"
	line "harvests be"

	para "plentiful, and"
	line "may the FOREST"
	cont "PROTECTOR watch"
	cont "over you."
	done

Route30BerryNoRoomText:
	text "Sorry friend,"
	line "It looks like"

	para "you don't have"
	line "enough room!"
	done

Route30BerryHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_30, 1
	warp_event  3,  7, ROUTE_30, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, Route30BerryHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, Route30BerryHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route30BerryHousePokefanMScript, -1
