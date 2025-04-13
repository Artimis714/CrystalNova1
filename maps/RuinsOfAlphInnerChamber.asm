	object_const_def
	const RUINSOFALPHINNERCHAMBER_FISHER
	const RUINSOFALPHINNERCHAMBER_TEACHER
	const RUINSOFALPHINNERCHAMBER_GRAMPS
	const RUINSOFALPHINNERCHAMBER_LASS

RuinsOfAlphInnerChamber_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphInnerChamberNoopScene,            SCENE_RUINSOFALPHINNERCHAMBER_NOOP
	scene_script RuinsOfAlphInnerChamberStrangePresenceScene, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE

	def_callbacks

RuinsOfAlphInnerChamberNoopScene:
	end

RuinsOfAlphInnerChamberStrangePresenceScene:
	sdefer RuinsOfAlphInnerChamberStrangePresenceScript
	end

RuinsOfAlphInnerChamberStrangePresenceScript:
	opentext
	writetext RuinsOfAlphStrangePresenceText
	waitbutton
	closetext
	setscene SCENE_RUINSOFALPHINNERCHAMBER_NOOP
	setevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_FISHER
	end

RuinsOfAlphInnerChamberFisherScript:
	jumptextfaceplayer RuinsOfAlphInnerChamberFisherText

RuinsOfAlphInnerChamberTeacherScript:
	jumptextfaceplayer RuinsOfAlphInnerChamberTeacherText

RuinsOfAlphInnerChamberGrampsScript:
	jumptextfaceplayer RuinsOfAlphInnerChamberGrampsText

RuinsOfAlphInnerChamberStatue:
	jumptext RuinsOfAlphInnerChamberStatueText

RuinsOfAlphInnerChamberLassScript:
	faceplayer
	opentext
	checkevent EVENT_SPOKE_WITH_ARCHAEO_LASS3
	iftrue .AlreadySpoken
	checkevent EVENT_READ_ELMS_RESEARCH_PAPER
	iftrue .ReadResearch
	writetext ArchaeoLassText1
	waitbutton
	writetext ArchaeoLassText2
	closetext
	setevent EVENT_SPOKE_WITH_ARCHAEO_LASS3
	end

.ReadResearch:
	writetext ArchaeoLassText1
	waitbutton
	writetext ArchaeoLassText3
	closetext
	setevent EVENT_SPOKE_WITH_ARCHAEO_LASS3
	end

.AlreadySpoken:
	checkevent EVENT_READ_ELMS_RESEARCH_PAPER
	iftrue .ReadResearch2
	writetext ArchaeoLassText4
	waitbutton
	closetext
	end

.ReadResearch2:
	checkevent EVENT_HEARD_MR_FUJI_INTRO
	iftrue .MetDrFuji
	writetext ArchaeoLassText5
	waitbutton 
	closetext
	end

.MetDrFuji:
	checkevent EVENT_LEARNED_ABOUT_PROJECT_GENESIS
	iftrue .PeaceandRevenge
	writetext ArchaeoLassText6
	waitbutton
	closetext
	end

.PeaceandRevenge:
	writetext ArchaeoLassText6
	setevent EVENT_SPOKE_WITH_ARCHAEO_LASS2
	setevent EVENT_MR_FUJI_ASSINATED
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	disappear RUINSOFALPHINNERCHAMBER_LASS
	waitsfx
	reloadmap
	end

ArchaeoLassText1:
	text "CASS: Oh hey! I"
	line "remember you!"

	para "You helped me with"
	line "directions to find"
	cont "this place."

	para "..."
	line "..."

	para "Yeah in OLIVINE."
	line "I'd only just,"
	cont "arrived."

	para "..."
	line "..."

	para "This place is"
	line "AMAZING!"

	para "It's so much like"
	line "the TANOBY RUINS"

	para "back home, but"
	line "it's way bigger"
	cont "in here."

	para "..."
	line "..."

	para "My mother was an"
	line "archaeologist."

	para "She was one of"
	line "the people who"

	para "worked under DR"
	line "FUJI."
	done

ArchaeoLassText2:
	text "Something called"
	line "the GENESIS"
	cont "PROJECT."

	para "..."
	line "..."

	para "Do you know PROF."
	line "ELM?"

	para "..."
	line "..."

	para "I hear he's been"
	line "doing research on"

	para "the link between"
	line "both RUINS on the"
	cont "down low."

	para "..."
	line "..."

	para "Have you checked"
	line "his computer?"

	para "..."
	line "..."

	para "Sure it's an inva-"
	line "sion of privacy,"

	para "but tell me you're"
	line "not curious."
	done
	
ArchaeoLassText3:
	text "..."
	line "..."

	para "DR FUJI ran the"
	line "GENESIS PROJECT."

	para "..."
	line "..."

	para "So you've heard of"
	line "it?"

	para "..."
	line "..."

	para "You've read PROF."
	line "ELMS research!!!"

	para "Dude that's cool"
	line "mom 'disappeared'"

	para "after the project"
	line "wrapped."

	para "..."
	line "..."

	para "An unmarked grave"
	line "probably."

	para "..."
	line "..."

	para "Don't be sorry."
	line "It's not your"
	cont "fault."

	para "KANTO's gonna"
	line "KANTO."

	para "If I got my hands"
	line "on DR FUJI, that's"
	cont "another story."

	para "..."
	line "..."

	para "I don't really"
	line "know what the"

	para "GENESIS PROJECT"
	line "was really about."

	para "..."
	line "..."

	para "MEW worship?"
	line "I thought MEW"
	cont "was a myth."

	para "..."
	line "..."

	para "Right, okay."
	line "Well if you hear"

	para "anything, let me"
	line "know, okay?"
	done
	
ArchaeoLassText4:
	text "CASS: Do ya think"
	line "you'd be able to"

	para "access PROF.ELM's"
	line "computer?"

	para "..."
	line "..."

	para "Not the one in"
	line "his lab."

	para "The man's funded"
	line "by PROF.OAK."

	para "..."
	line "..."

	para "He probably has"
	line "a PC."

	para "I just really want"
	line "to know more about"
	cont "PROJECT GENEISIS."
	done

ArchaeoLassText5:
	text "CASS: Have you"
	line "heard anything"

	para "new about PROJECT"
	line "GENESIS?"

	para "..."
	line "..."

	para "No, me either."
	line "but I think the"

	para "MEW worship is"
	line "a good lead."
	done

ArchaeoLassText6:
	text "..."
	line "..."

	para "CASS: You met"
	line "DR FUJI??"

	para "..."
	line "..."

	para "And he refused"
	line "to tell you about"
	cont "PROJECT GENESIS?"

	para "..."
	line "..."

	para "The hell does"
	line "SAFFRON's GYM"

	para "have to do with"
	line "it?"

	para "..."
	line "..."

	para "He's a slimy"
	line "bastard."
	done 

ArchaeoLassText7:
	text "..."
	line "..."

	para "CASS: So you got"
	line "him to tell you?"

	para "..."
	line "..."

	para "They made a weapon"
	line "seriously?"

	para "They found a rare"
	line "and impossibly"

	para "kind species of"
	line "extinct #MON,"

	para "and they used it"
	line "to make a weapon?"

	para "..."
	line "..."

	para "My mom was killed"
	line "for this bullshit!"

	para "..."
	line "..."

	para "Where is DR FUJI?"

	para "..."
	line "..."

	para "SEVII Islanders"
	line "can go to KANTO."

	para "We've got KANTO"
	line "PAPERS."

	para "..."
	line "..."

	para "Don't worry, they"
	line "won't catch me."
	
	para "Goodbye, <PLAY_G>"
	done

RuinsOfAlphStrangePresenceText:
	text "There is a strange"
	line "presence here…"
	done

RuinsOfAlphInnerChamberFisherText:
	text "This is a big"
	line "room, but there's"
	cont "nothing here."
	done

RuinsOfAlphInnerChamberTeacherText:
	text "This place has a"
	line "mystical quality"
	cont "to it."

	para "It feels sort of"
	line "ethereal even."
	done

RuinsOfAlphInnerChamberGrampsText:
	text "Ancient buildings"
	line "are often tombs of"
	cont "kings."

	para "Like the pyramids,"
	line "for instance. But"

	para "this place, it's"
	line "like a labyrinth."
	done

RuinsOfAlphInnerChamberStatueText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

RuinsOfAlphInnerChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 13, RUINS_OF_ALPH_OUTSIDE, 5
	warp_event  3, 15, RUINS_OF_ALPH_HO_OH_CHAMBER, 3
	warp_event  4, 15, RUINS_OF_ALPH_HO_OH_CHAMBER, 4
	warp_event 15,  3, RUINS_OF_ALPH_KABUTO_CHAMBER, 3
	warp_event 16,  3, RUINS_OF_ALPH_KABUTO_CHAMBER, 4
	warp_event  3, 21, RUINS_OF_ALPH_OMANYTE_CHAMBER, 3
	warp_event  4, 21, RUINS_OF_ALPH_OMANYTE_CHAMBER, 4
	warp_event 15, 24, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 3
	warp_event 16, 24, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 4

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2, 13, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17, 13, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2, 24, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5, 24, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8, 24, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11, 24, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14, 24, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17, 24, BGEVENT_READ, RuinsOfAlphInnerChamberStatue

	def_object_events
	object_event  3,  7, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphInnerChamberFisherScript, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	object_event 14, 13, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphInnerChamberTeacherScript, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	object_event 11, 19, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphInnerChamberGrampsScript, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
	object_event 14, 13, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphInnerChamberLassScript, EVENT_SPOKE_WITH_ARCHAEO_LASS2
