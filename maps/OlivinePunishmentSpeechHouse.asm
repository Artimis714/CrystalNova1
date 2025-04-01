	object_const_def
	const OLIVINEPUNISHMENTSPEECHHOUSE_POKEFAN_M
	const OLIVINEPUNISHMENTSPEECHHOUSE_LASS

OlivinePunishmentSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

OlivinePunishmentSpeechHouseDad:
	faceplayer
	opentext
	checkevent EVENT_GHOST_ERICK
	iftrue .BattledErickDad
	writetext OlivinePunishmentSpeechHouseDadText
	waitbutton
	closetext
	end

.BattledErickDad
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .SearchforItems
	writetext MyBoyLovedAdventuretext
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
	waitbutton
	closetext
	end

.SearchforItems
	writetext UseitWelltext
	waitbutton
	closetext
	end

OlivinePunishmentSpeechHouseDaughter:
	faceplayer
	opentext
	checkevent EVENT_GHOST_ERICK
	iftrue .BattledErickSis
	writetext OlivinePunishmentSpeechHouseDaughterText
	waitbutton
	closetext
	end

.BattledErickSis
	writetext Imissmybrotext
	waitbutton
	closetext
	end

OlivinePunishmentSpeechHouseBookshelf2:
	jumpstd PictureBookshelfScript

OlivinePunishmentSpeechHouseBookshelf1:
	jumpstd MagazineBookshelfScript

OlivinePunishmentSpeechHouseDadText:
	text "My son was a hero"
	line "in the war!"

	para "He went toe to toe"
	line "with RED himself!"

	para "We will always,"
	line "remember his"
	cont "sacrifice!"

	para "Even if our new"
	line "KANTO rulers won't!"
	done

OlivinePunishmentSpeechHouseDaughterText:
	text "My big brother"
	line "ERICK was so brave!"

	para "I miss him, every"
	line "day."
	done

MyBoyLovedAdventuretext:
	text "You came here to"
	line "tell me something?"

	para "..."
	line "..."

	para "I see."

	para "ERICK was a great"
	line "son. I was always"
	cont "proud of him."

	para "I never cared if"
	line "he was brave."

	para "My boy, he loved"
	line "a good adventure!"

	para "He had so much"
	line "promise."

	para "You know he had"
	line "a dream to find"

	para "The Legendary"
	line "AMARANTH RIB."

	para "Here, you can"
	line "have his old"
	cont "ITEMFINDER."
	done

UseitWelltext:
	text "No, please keep"
	line "it. My ERICK"

	para "would want some-"
	line "one to find lost"
	cont "items with it."

        para "There are many"
	line "items lying about"

	para "that aren't ob-"
	line "vious."

	para "Use ITEMFINDER to"
	line "check if there is"

	para "an item on the"
	line "ground near you."

	para "It doesn't show"
	line "the exact spot,"

	para "so you'll have to"
	line "look yourself."

	para "Who knows what"
	line "you might find!"

	para "Use it well and"
	line "thank you again"

	para "for helping my"
	line "son's spirt find"
	cont "peace."
	done

Imissmybrotext:
	text "You met my bro!"
	line " 'sobs' "

	para "I love him too."
	line "Thank you for"

	para "helping his"
	line "spirit find peace."
	done

OlivinePunishmentSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 5
	warp_event  3,  7, OLIVINE_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, OlivinePunishmentSpeechHouseBookshelf1
	bg_event  1,  1, BGEVENT_READ, OlivinePunishmentSpeechHouseBookshelf2

	def_object_events
	object_event  1,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePunishmentSpeechHouseDad, -1
	object_event  5,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivinePunishmentSpeechHouseDaughter, -1
