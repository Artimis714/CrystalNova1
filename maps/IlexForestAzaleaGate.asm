	object_const_def
	const ILEXFORESTAZALEAGATE_OFFICER
	const ILEXFORESTAZALEAGATE_GRANNY

IlexForestAzaleaGate_MapScripts:
	def_scene_scripts

	def_callbacks

IlexForestAzaleaGateOfficerScript:
	jumptextfaceplayer IlexForestAzaleaGateOfficerText

IlexForestAzaleaGateGrannyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_LUCKY_EGG_ECRUTEAK
	iftrue .IMissMyGrandson
	writetext IlexForestAzaleaGateGrannyText
	waitbutton
	closetext
	end

.IMissMyGrandson
	checkevent EVENT_SPOKE_WITH_GRANNY_ILEX
	iftrue .IHopeTheyVisit
	writetext IMissMyGrandSonText
	verbosegiveitem LUCKY_PUNCH
	iffalse .NoPunch
	setevent EVENT_SPOKE_WITH_GRANNY_ILEX
	writetext IHopeTheyVisitText
	waitbutton
	closetext
	end

.IHopeTheyVisit
	writetext IHopeTheyVisitText
	waitbutton
	closetext
	end

.NoPunch
	writetext NoRoomForPunchText
	waitbutton
	closetext
	end

IlexForestAzaleaGateOfficerText:
	text "ILEX FOREST is"
	line "big. Be careful!"
	cont "Don't get lost."
	done

IMissMyGrandSonText:
	text "..."

	para "Yes, I used to be"
	line "married to that"
	cont "old bastard. Why?"

	para "..."
	line "..."
	cont "..."

	para "Oh..."
	line "Oh my goodness!"

	para "You encountered my"
	line "TYLER's shade?"

	para "And you helped him"
	line "find peace."

	para "..."

	para "Yes, well I'm sure"
	line "you needed to"
	
	para "knock some sense"
	line "into that boy."

	para "The damned fool"
	line "left for battle"

	para "But he didn't take"
	line "his boxing gloves!"

	para "I miss TYLER every"
	line "day. I wish he'd"
	cont "stayed a healer."

	para "If they're any use"
	line "to you, I'll give"

	para "you his old boxing"
	line "gloves. I can't"

	para "bare to look at"
	line "them any more."
	done

IHopeTheyVisitText:
	text "I haven't seen my"
	line "grandson since"

	para "before the end of"
	line "the war."

	para "I miss him, and"
	line "I'm sure he's"
	cont "growing."

	para "Hell, I even miss"
	line "that old codger."

	para "Next time you're"
	line "in ECRUTEAK please"

	para "tell them I would"
	line "like to see my"

	para "grandson, and that"
	line "they should come"
	cont "down for a visit."

	para "the War is over"
	line "and we need to"

	para "honor the family"
	line "that we have."

	para "Thank you again"
	line "for your help."

	para "I'm just going to"
	line "rest here a while"

	para "longer before I"
	line "head back home."

	para "may the FOREST"
	line "PROTECTOR bless"

	para "you for all your"
	line "days!"
	done

NoRoomForPunchText:
	text "Well dearie, it"
	line "looks like your"

	para "bag is quite"
	line "heavy."

	para "Come back if you"
	line "decide you want"

	para "TYLER's lucky"
	line "gloves."
	done

IlexForestAzaleaGateGrannyText:
	text "The FOREST is"
	line "watched over by"
	cont "its protector."

	para "It's been that"
	line "way since anc-"
	cont "ient times."

	para "Not even decades"
	line "of war can change"
	cont "that."

	para "Stay out of"
	line "mischief dearie!"
	done

IlexForestAzaleaGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ILEX_FOREST, 2
	warp_event  0,  5, ILEX_FOREST, 3
	warp_event  9,  4, AZALEA_TOWN, 7
	warp_event  9,  5, AZALEA_TOWN, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IlexForestAzaleaGateOfficerScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, IlexForestAzaleaGateGrannyScript, EVENT_SPOKE_WITH_GRANNY_ILEX
