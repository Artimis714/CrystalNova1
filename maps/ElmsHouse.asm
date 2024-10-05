	object_const_def
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	def_scene_scripts

	def_callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	opentext
	playsound SFX_BOOT_PC
	writetext ElmsHousePCText
	yesorno
	iffalse .StopReading
	writetext ElmsHousePCText2
	yesorno
	iffalse .StopReading
	writetext ElmsHousePCText3
	yesorno
	iffalse .StopReading
	writetext ElmsHousePCText4
	yesorno
	iffalse .StopReading
	writetext ElmsHousePCText5
	yesorno
	iffalse .StopReading
	writetext ElmsHousePCText6
	yesorno
	iffalse .StopReading
	writetext ElmshousePCText7
	waitbutton
	closetext
	setevent EVENT_READ_ELMS_RESEARCH_PAPER
	playsound SFX_SHUT_DOWN_PC
	end

.StopReading:
	playsound SFX_SHUT_DOWN_PC
	closetext
	end

ElmsHouseBookshelf:
	jumpstd DifficultBookshelfScript

ElmsWifeText:
	text "Hi, <PLAY_G>! My"
	line "husband's always"

	para "so busy--I hope"
	line "he's OK."

	para "When he's caught"
	line "up in his #MON"

	para "research, he even"
	line "forgets to eat."

	para "I worry that"
	line "KANTO PROF. works"
	cont "him too hard!"
	done

ElmsSonText:
	text "When I grow up,"
	line "I'm going to help"
	cont "my dad!"

	para "I'm going to be a"
	line "great #MON"
	cont "professor!"
	done

ElmsHousePCText:
	text "This appears to"
	line "be a research"
	cont "paper."

	para "Would you like"
	line "to read it?"
	done

ElmsHousePCText2:
	text "KANTO war-time"
	line "findings from"

	para "project GENESIS"
	line "in VII ISLAND's"

	para "TANOBY RUINS dis-"
	line "play similarities"

	para "with JOHTO's RUINS"
	line "of ALPH."

	para "It is my position"
	line "that TANOBY and"

	para "ALPH represent a"
	line "single archaeo-"
	cont "logical culture"

	para "that spanned the"
	line "coastal regions"

	para "of what is today"
	line "the KANTO EMPIRE."

	para "Keep reading?"
	done

ElmsHousePCText3:
	text "Pottery fragment"
	line "analysis at both"

	para "sites, show pri-"
	line "mary usage of"
	cont "TANOBY WEAR."

	para "In ALPH 85 per-"
	line "cent of fragments"

	para "are TANOBY WEAR,"
	line "but inclusions in"

	para "the clay indicate"
	line "local manufacture"
	cont "of the vessels."

	para "While only 15 per"
	line "cent represent"

	para "styles found in"
	line "contemporaneous"
	cont "cultures."

	para "These appear to"
	line "be imports."

	para "Conversely, at"
	line "TANOBY, 92 per-"
	cont "cent of sherds"

	para "are TANOBY WEAR,"
	line "but inclusion"

	para "analysis shows"
	line "that only 34 per"
	cont "cent of sherds"

	para "found at TANOBY"
	line "were made on VII"
	cont "ISLAND."

	para "The rest of the"
	line "TANOBY WEAR seems"

	para "to have come from"
	line "a number of sites"

	para "across the modern"
	line "KANTO EMPIRE,"

	para "but primarily from"
	line "ALPH."

	para "Keep reading?"
	done

ElmsHousePCText4:
	text "During the excav-"
	line "ations at TANOBY,"

	para "writing was found"
	line "in an unknown"
	cont "script."

	para "The undeciphered"
	line "language appears"

	para "to be the same at"
	line "both sites."

	para "Though analysis"
	line "of the character"

	para "forms used at"
	line "ALPH, imply"

	para "that ALPH pre-"
	line "dates TANOBY by"
	cont "centuries."

	para "Keep reading?"
	done

ElmsHousePCText5:
	text "Of great interest"
	line "to PROJECT"
	cont "GENESIS, both"

	para "ALPH and TANOBY"
	line "display evidence"
	cont "of MEW worship."

	para "Decipherment of"
	line "the WALL texts"

	para "may shed light"
	line "on the rituals"

	para "practiced by the"
	line "people of ALPH."

	para "Keep reading?"
	done 

ElmsHousePCText6:
	text "The scrolls of"
	line "the GOLDENROD"

	para "ARCHIVES, were"
	line "uncatalogued."

	para "I had hopes that"
	line "fragments recov-"
	cont "ered from the"

	para "LOST ARCHIVES"
	line "could help to"

	para "decipher the"
	line "unknown script."

	para "this is a dead"
	line "end."

	para "Keep reading?"
	done

ElmshousePCText7:
	text "A #MON of"
	line "TIME might be"

	para "our only hope"
	line "for unlocking"

	para "the mystery of"
	line "the ALPH culture"

	para "I hate that I"
	line "can't publish"

	para "this, as KANTO's"
	line "government, is"
	
	para "tied to the"
	line "belief that the"

	para "TANOBY culture"
	line "originates from"

	para "KANTO, but all"
	line "signs indicate"

	para "that the TANOBY"
	line "culture is an"

	para "offshoot of an"
	line "earlier JOHTO"
	cont "civilization."

	para "PROF.ELM PhD."
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	def_object_events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
