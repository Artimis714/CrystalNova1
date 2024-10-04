	object_const_def
	const MRFUJISHOUSE_SUPER_NERD
	const MRFUJISHOUSE_LASS
	const MRFUJISHOUSE_PSYDUCK
	const MRFUJISHOUSE_NIDORINO
	const MRFUJISHOUSE_PIDGEY

MrFujisHouse_MapScripts:
	def_scene_scripts

	def_callbacks

MrFujisHouseSuperNerdScript:
	faceplayer
	opentext
	checkevent EVENT_LAVTOWER_GHOST_BEAUTY_SERENITY
	iftrue .SecretsofMewTwo
	writetext MrFujisHouseSuperNerdText
	setevent EVENT_HEARD_MR_FUJI_INTRO
	waitbutton
	closetext
	end

.SecretsofMewTwo:
	checkflag ENGINE_MARSHBADGE
	iffalse .ComeBackWhenYouKnow
	checkevent EVENT_HEARD_MR_FUJI_INTRO
	iftrue .SecretsofMewTwo2
	writetext MrFujisHouseSuperNerdText
	waitbutton
	setevent EVENT_HEARD_MR_FUJI_INTRO
	writetext SecretsofMewTwoText
	waitbutton
	closetext
	end

.SecretsofMewTwo2:
	writetext SecretsofMewTwoText
	setevent EVENT_LEARNED_ABOUT_PROJECT_GENESIS
	waitbutton
	closetext
	end

.ComeBackWhenYouKnow:
	checkevent EVENT_HEARD_MR_FUJI_INTRO
	iftrue .ComeBackWhenYouKnow2
	writetext MrFujisHouseSuperNerdText
	waitbutton
	setevent EVENT_HEARD_MR_FUJI_INTRO
	writetext ComebackwhenyouKnowText
	waitbutton
	closetext
	end

.ComeBackWhenYouKnow2:
	writetext ComebackwhenyouKnowText
	waitbutton
	closetext
	end

MrFujisHouseLassScript:
	faceplayer
	opentext
	checkevent EVENT_MR_FUJI_ASSINATED
	iftrue .MrFujiKilled
	writetext MrFujisHouseLassText
	waitbutton
	closetext
	end

.MrFujiKilled:
	writetext MrFujiDeadText
	waitbutton
	closetext
	end

MrFujisPsyduck:
	opentext
	writetext MrFujisPsyduckText
	cry PSYDUCK
	waitbutton
	closetext
	end

MrFujisNidorino:
	opentext
	writetext MrFujisNidorinoText
	cry NIDORINO
	waitbutton
	closetext
	end

MrFujisPidgey:
	opentext
	writetext MrFujisPidgeyText
	cry PIDGEY
	waitbutton
	closetext
	end

MrFujisHouseBookshelf:
	jumpstd DifficultBookshelfScript

SecretsofMewTwoText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "MR FUJI: You met"
	line "SERENITY's shade?"

	para "Of course she'd"
	line "have you ask me"

	para "about PROJECT"
	line "GENESIS."

	para "Have you heard of"
	line "MEW?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "MR FUJI: The ance-"
	line "stor of all #-"
	cont "MON!"

	para "Long extinct, like"
	line "KABUTO."

	para "In the war, we"
	line "found a way to"
	cont "bring back fossils"

	para "We were so focused"
	line "on trying to see"

	para "if we could, that"
	line "we never stopped"

	para "to ask if we"
	line "should!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "MR FUJI: The goal"
	line "was to bring back"
	cont "MEW!"

	para "But we needed a"
	line "fossil."

	para "I was the one to"
	line "find an AMARANTH"
	cont "RIB."

	para "It was in the"
	line "TANOBY RUINS"
	cont "on VII Island."

	para "We were all set"
	line "to resurrect"
	cont "mew."

	para "But our research"
	line "indicated that"

	para "MEW was a peaceful"
	line "#MON, and KANTO"

	para "wanted a tool for"
	line "war!"

	para "So we designed a"
	line "stronger, more"
	cont "ruthless #MON."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "MR FUJI: Yes,"
	line "SABRINA's MEWTWO"
	
	para "is one of the two"
	line "successful results"
	cont "of our research."

	para "There is another."
	line "It belonged to"
	cont "RED."

	para "Last I heard it"
	line "escaped to MT"
	cont "SILVER in JHOTO."

	para "I'd imagine it is"
	line "hiding in a small"
	cont "chamber."

	para "But I doubt it"
	line "will show itself."

	para "MEWTWO is very"
	line "intelligent, and"

	para "When I met him, he"
	line "cared for little"

	para "beyond meeting a"
	line "true MEW."

	para "He was obsessed"
	line "with knowing how"

	para "his power would"
	line "match against the"
	cont "original."

	para "I would bet, the"
	line "only way it would"

	para "appear is if you"
	line "have a MEW."

	para "I wouldn't know"
	line "where you'd go to"

	para "find another"
	line "AMARANTH RIB."

	para "MEWTWO is a deadly"
	line "#MON made for"

	para "destruction and"
	line "blood."

	para "If you go after"
	line "it, do so at your"
	cont "own risk."
	done
	
ComebackwhenyouKnowText:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "MR FUJI: You met"
	line "SERENITY's shade?"

	para "Of course she'd"
	line "have you ask me"

	para "about PROJECT"
	line "GENESIS."

	para "Have you faced"
	line "SAFFRON's leader"
	cont "SABRINA?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "MR FUJI: If you"
	line "can best her,"

	para "then I will tell"
	line "you about PROJECT"
	cont "GENESIS."
	done

MrFujisHouseSuperNerdText:
	text "Why hello there!"
	line "have you come to"
	cont "volunteer?"

	para "My name is MR FUJI"
	line "and I run a rescue"

	para "center for #MON"
	line "abandoned by their"
	cont "trainers."

	para "Some by malice."
	line "but many are orph-"
	cont "ans of the war."

	para "So many people"
	line "lost so much."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "MR FUJI: From your"
	line "accent, I can tell"

	para "you know that pain"
	line "first hand."

	para "What we did to"
	line "JHOTO was criminal"
	cont "But money talks."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Once upon a time I"
	line "worked on CINNABAR"
	cont "as a researcher."

	para "But those days are"
	line "long behind me."

	para "Now I run this"
	line "charity. It's my"

	para "way of making"
	line "amends."
	done

MrFujisHouseLassText:
	text "Some cold-hearted"
	line "people stop caring"
	cont "for their #MON."

	para "Grandpa takes in"
	line "the poor homeless"

	para "#MON and takes"
	line "care of them."
	done

MrFujiDeadText:
	text "(sobbing)"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "She came out of"
	line "nowhere!"

	para "Claiming revenge"
	line "for the crimes"

	para "MR FUJI did"
	line "in the war!"
	done

MrFujisPsyduckText:
	text "PSYDUCK: Gu-guwa?"
	done

MrFujisNidorinoText:
	text "NIDORINO: Gyun!"
	done

MrFujisPidgeyText:
	text "PIDGEY: Pijji!"
	done

MrFujisHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, LAVENDER_TOWN, 2
	warp_event  3,  7, LAVENDER_TOWN, 2

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, MrFujisHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MrFujisHouseBookshelf

	def_object_events
	object_event  4,  1, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFujisHouseSuperNerdScript, EVENT_MR_FUJI_ASSINATED
	object_event  3,  4, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFujisHouseLassScript, -1
	object_event  7,  4, SPRITE_PSYDUCK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MrFujisPsyduck, -1
	object_event  5,  5, SPRITE_NIDORINO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MrFujisNidorino, -1
	object_event  1,  3, SPRITE_PIDGEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, MrFujisPidgey, -1
