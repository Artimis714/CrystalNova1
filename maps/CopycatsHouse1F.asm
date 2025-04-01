	object_const_def
	const COPYCATSHOUSE1F_POKEFAN_F
	const COPYCATSHOUSE1F_CLEFAIRY

CopycatsHouse1F_MapScripts:
	def_scene_scripts

	def_callbacks


CopycatsHouse1FPokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftrue .ReturnedMachinePart
	writetext CopycatsHouse1FPokefanFText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue .ReturnedLostItem
	writetext CopycatsHouse1FPokefanFText_ReturnedMachinePart
	waitbutton
	closetext
	end

.ReturnedLostItem:
	writetext Copycatshouse1PokefanFText_ReturnedLostItem
	waitbutton
	closetext
	end

CopycatsHouse1FBlisseyScript:
	opentext
	writetext CopycatsHouse1FBlisseyText
	cry BLISSEY
	setval BLISSEY
	special ShowPokedexEntry
	waitbutton
	closetext
	end

CopycatsHouse1FPokefanFText:
	text "My niece is so"
	line "self-centered…"

	para "She takes after"
	line "my good-for-nothin"
	cont "brother."

	para "She's always chang-"
	line "ing her appearance"

	para "to play practical"
	line "tricks!"

	para "We took her in"
	line "after my brother"
	cont "was arrested."

	para "But damn, is she"
	line "a handful..."

	para "I know she's just"
	line "acting out."

	para "But it's hard to"
	line "raise her."
	done

CopycatsHouse1FPokefanFText_ReturnedMachinePart:
	text "..."
	line "..."

	para "Oh, so she's told"
	line "you about her"
	cont "father, has she?"

	para "..."
	line "..."

	para "Yeah well, her"
	line "deadbeat father,"
	cont "my brother."

	para "Was the mastermind"
	line "behind the"
	cont "VOLCANO!"

	para "..."
	line "..."

	para "The one on"
	line "CINNABAR Island!"

	para "He's currently"
	line "serving a life"
	cont "sentence."

	para "In the maximum"
	line "security prison"
	cont "down in VERMILLION" 

	para "..."
	line "..."

	para "Yeah, yeah, she"
	line "lost a doll."

	para "I doubt my brother"
	line "would've kept it."

	para "He's a shame to"
	line "our family's name!"
	done

Copycatshouse1PokefanFText_ReturnedLostItem:
	text "..."
	line "..."

	para "You... you made"
	line "it into the prison"
	cont "in VERMILLION?"

	para "..."
	line "..."

	para "Wow, I didn't"
	line "think that my bro-"
	cont "ther cared."

	para "..."
	line "..."

	para "Perhaps I've been"
	line "too hard on the"
	cont "girl."

	para "I'll try to be a"
	line "better guardian."
	done

CopycatsHouse1FBlisseyText:
	text "BLISSEY: Bliisii!"
	done

CopycatsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 8
	warp_event  3,  7, SAFFRON_CITY, 8
	warp_event  2,  0, COPYCATS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanFScript, -1
	object_event  6,  6, SPRITE_BLISSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FBlisseyScript, -1
