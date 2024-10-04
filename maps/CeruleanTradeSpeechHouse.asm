	object_const_def
	const CERULEANTRADESPEECHHOUSE_GRANNY
	const CERULEANTRADESPEECHHOUSE_GRAMPS
	const CERULEANTRADESPEECHHOUSE_RHYDON
	const CERULEANTRADESPEECHHOUSE_ZUBAT

CeruleanTradeSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanTradeSpeechHouseGrannyScript:
	faceplayer
	opentext
	checkevent EVENT_LAVTOWER_GHOST_SWIMMER_KIKI
	iftrue .YouMetKikiGranny
	writetext CeruleanTradeSpeechHouseGrannyText
	waitbutton
	closetext
	end

.YouMetKikiGranny:
	writetext KikiGrannyText
	waitbutton
	closetext
	setevent EVENT_MET_KIKIS_GRANDPARENTS
	end

CeruleanTradeSpeechHouseGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_LAVTOWER_GHOST_SWIMMER_KIKI
	iftrue .YouMetKikiGramps
	writetext CeruleanTradeSpeechHouseGrampsText
	waitbutton
	closetext
	end

.YouMetKikiGramps:
	writetext KikiGrampsText
	waitbutton
	closetext
	setevent EVENT_MET_KIKIS_GRANDPARENTS
	end


CeruleanTradeSpeechHouseRhydonScript:
	opentext
	writetext CeruleanTradeSpeechHouseRhydonText
	cry KANGASKHAN
	waitbutton
	closetext
	end

CeruleanTradeSpeechHouseZubatScript:
	opentext
	writetext CeruleanTradeSpeechHouseZubatText
	cry ZUBAT
	waitbutton
	closetext
	end

KikiGrannyText:
	text "..."
	line "..."

	para "You have news of"
	line "our KIKI!!??"

	para "..."
	line "..."

	para "No! Oh no. She..."
	line "NO!!! (Sobbing)"

	para "All these years!"
	line "we'd hoped she"

	para "was okay some-"
	line "where, but deep"
	cont "down I knew."

	para "..."
	line "..."

	para "How did you"
	line "learn about this?"

	para "..."
	line "..."

	para "I see, then we"
	line "will pack up and"

	para "head to LAVENDER"
	line "town immediately!"

	para "Come on HARRY!"
	done

KikiGrampsText:
	text "..."
	line "..."

	para "KIKI? You should"
	line "speak to my wife."

	para "..."
	line "..."

	para "I do a lot of"
	line "drugs to mask the"

	para "crippling emotional"
	line "burden of my life."

	para "All of my children"
	line "died in the war."

	para "Our only family,"
	line "our only legacy,"
	cont "was KIKI."

	para "She was our only"
	line "grandchild."

	para "When she vanished"
	line "a few years back"
	cont "it broke me."

	para "And now some kid"
	line "is going to swan"

	para "in here and tell"
	line "me that my KIKI"
	cont "is dead?"

	para "No. Go talk to"
	line "my wife."

	para "I can't take it."
	done

CeruleanTradeSpeechHouseGrannyText:
	text "My husband lives"
	line "happily with #-"
	cont "MON he got through"
	cont "trades."

	para "Our granddaughter"
	line "went missing a"
	cont "few years back."

	para "My husband keeps"
	line "trading #MON"
	cont "to mask the pain."

	para "For my part, I"
	line "just want to know"

	para "what happened to"
	line "our girl."
	done

CeruleanTradeSpeechHouseGrampsText:
	text "Ah… I'm so happy…"

	para "..."
	line "..."

	para "Nothing bad ever"
	line "happens!"

	para "Lalalala!"
	done

CeruleanTradeSpeechHouseRhydonText:
	text "KANGASKHAN: Garu"
	line "garuu."
	done

CeruleanTradeSpeechHouseZubatText:
	text "ZUBAT: Zuba zubaa."
	done

CeruleanTradeSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrannyScript, EVENT_MET_KIKIS_GRANDPARENTS
	object_event  1,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseGrampsScript, EVENT_MET_KIKIS_GRANDPARENTS
	object_event  5,  2, SPRITE_KANGASKHAN, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseRhydonScript, EVENT_MET_KIKIS_GRANDPARENTS
	object_event  5,  6, SPRITE_ZUBAT, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanTradeSpeechHouseZubatScript, EVENT_MET_KIKIS_GRANDPARENTS
