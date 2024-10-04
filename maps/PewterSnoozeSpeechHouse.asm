	object_const_def
	const PEWTERSNOOZESPEECHHOUSE_GRAMPS

PewterSnoozeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

PewterSnoozeSpeechHouseGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_LAVTOWER_GHOST_FIREBREATHER_AZAR
	iftrue .YouMetMyGrandSon
	writetext PewterSnoozeSpeechHouseGrampsText
	waitbutton
	closetext
	end

.YouMetMyGrandSon:
	checkevent EVENT_GOT_GRANDAD_SACRED_ASH
	iftrue .MyGrandsonWasGreat
	writetext YouMetFireGrandsonText
	waitbutton
	verbosegiveitem SACRED_ASH
	iffalse .NoRoomForAsh
	writetext MyGrandsonBurnedBrightText
	setevent EVENT_GOT_GRANDAD_SACRED_ASH
	waitbutton
	closetext
	end

.MyGrandsonWasGreat:
	writetext MyGrandsonBurnedBrightText
	waitbutton
	closetext
	end

.NoRoomForAsh:
	writetext NoRoomForAshText
	waitbutton
	closetext
	end

PewterSnoozeSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

PewterSnoozeSpeechHouseGrampsText:
	text "I like snoozing"
	line "with the radio on…"

	cont "…Zzzz…"
	done

YouMetFireGrandsonText:
	text "…Zzzz…"
	line "Huh? What?"

	para "..."
	line "..."

	para "You met my grand-"
	line "son! AZAR?"

	para "..."
	line "..."

	para "Why that's amazing!"
	line "Oh, I miss my boy!"

	para "He was always a"
	line "kind kid. Part of"
	para "the history corps."

	para "I was so proud"
	line "when he got in."

	para "Though, I'm getting"
	line "up there in years."

	para "Won't be long until"
	line "I'm joining him!"
	cont "HAHA!"

	para "..."
	line "..."

	para "That accent, you're"
	line "from JHOTO?"

	para "..."
	line "..."

	para "NEW BARK TOWN."
	line "never heard of it."

	para "My AZAR would've"
	line "known though."

	para "Anyway, AZAR he"
	line "was in the history"
	cont "corps under RED!"

	para "He was tasked with"
	line "ensuring the safe"

	para "keeping of any"
	line "rare artifacts."
	
	para "..."
	line "..."

	para "I don't know if"
	line "he found anything"

	para "of value, but he"
	line "did hand me this"

	para "bag of old soot"
	line "and he told me"

	para "I needed to keep"
	line "it safe."

	para "I doubt it's worth"
	line "much, but I think"

	para "he'd want you to"
	line "have it."
	done

MyGrandsonBurnedBrightText:
	text "He told me that"
	line "ash was sacred."

	para "Claimed it had"
	line "connections with"

	para "a JHOTO legendary"
	line "called HO OH!"

	para "I don't know about"
	line "any of that, but"

	para "I knew my grand-"
	line "son and he burned"

	para "bright like the"
	line "sun!"

	para "It wasn't right"
	line "what happened to"
	cont "him."

	para "That boy always"
	line "inspired me."

	para "His passion for"
	line "history kept him"
	cont "going!"

	para "..."
	line "..."

	para "I hope you too"
	line "find that passion!"

	para "Thank you for"
	line "coming to visit"
	cont "me!"
	done

NoRoomForAshText:
	text "Doesn't look like"
	line "you've got room."

	para "Come back if you"
	line "want it."
	done

PewterSnoozeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PEWTER_CITY, 5
	warp_event  3,  7, PEWTER_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, PewterSnoozeSpeechHouseBookshelf

	def_object_events
	object_event  5,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterSnoozeSpeechHouseGrampsScript, -1
