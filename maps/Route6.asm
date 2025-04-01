	object_const_def
	const ROUTE6_POKEFAN_M2
	const ROUTE6_POKEFAN_M3
	const ROUTE6_OFFICER1

Route6_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerPokefanmRex:
	trainer POKEFANM, REX, EVENT_BEAT_POKEFANM_REX, PokefanmRexSeenText, PokefanmRexBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmRexAfterBattleText
	waitbutton
	closetext
	end

TrainerPokefanmAllan:
	trainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PokefanmAllanAfterBattleText
	waitbutton
	closetext
	end

Route6OfficerScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .OurMistake
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	showemote EMOTE_SHOCK, PLAYER, 15
	farwritetext KantoOfficerSpendNextMonth
	setevent EVENT_SAFFRON_ALERT
	setevent EVENT_VERMILION_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_VERMILION
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 13, 6
	end

.OurMistake:
	farwritetext MyMistakeText
	waitbutton
	closetext
	setevent EVENT_CLEARED_SAFFRON_GUARDS
	clearevent EVENT_SAFFRON_ALERT
	clearevent EVENT_VERMILION_ALERT
	setevent EVENT_BEAT_CITY_POLICE_VERMILION
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	disappear ROUTE6_OFFICER1
	waitsfx
	reloadmap
	end

Route6UndergroundPathSign:
	jumptext Route6UndergroundPathSignText

Route6UndergroundPathSignText:
	text "UNDERGROUND PATH"

	para "CERULEAN CITY -"
	line "VERMILION CITY"
	done

PokefanmRexSeenText:
	text "My DUNSPARCE is"
	line "the cutest in the"
	cont "world!"
	done

PokefanmRexBeatenText:
	text "My DUNSPARCE!"
	done

PokefanmRexAfterBattleText:
	text "Look how adorable"
	line "my DUNSPARCE"
	cont "acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

PokefanmAllanSeenText:
	text "My URSARING is"
	line "the cutest in the"
	cont "world."
	done

PokefanmAllanBeatenText:
	text "My URSARING!"
	done

PokefanmAllanAfterBattleText:
	text "Look how adorable"
	line "my URSARING acts!"

	para "Isn't it cute"
	line "enough to make"
	cont "your heart melt?"
	done

Route6_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 17,  3, ROUTE_6_UNDERGROUND_PATH_ENTRANCE, 1
	warp_event  6,  1, ROUTE_6_SAFFRON_GATE, 3

	def_coord_events

	def_bg_events
	bg_event 19,  5, BGEVENT_READ, Route6UndergroundPathSign

	def_object_events
	object_event  9, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmRex, -1
	object_event 10, 12, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerPokefanmAllan, -1
	object_event  6,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route6OfficerScript, EVENT_CLEARED_SAFFRON_GUARDS
	