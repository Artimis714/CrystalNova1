	object_const_def
	const CINNABARPOKECENTER1F_NURSE
	const CINNABARPOKECENTER1F_COOLTRAINER_F
	const CINNABARPOKECENTER1F_FISHER
	const CINNABARPOKECENTER1F_OFFICER

CinnabarPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarPokecenter1FNurseScript:
	checkitem KANTO_PAPERS
	iffalse .YouDontBelong
	jumpstd PokecenterNurseScript

.YouDontBelong:
	opentext
	writetext CinnabarPokeCentreCallAuthoritiestext
	waitbutton
	setevent EVENT_CINNABAR_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CINNABAR
	showemote EMOTE_SHOCK, CINNABARPOKECENTER1F_OFFICER, 15
	turnobject CINNABARPOKECENTER1F_OFFICER, LEFT
	turnobject PLAYER, RIGHT
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	showemote EMOTE_SHOCK, PLAYER, 15
	farwritetext KantoOfficerSpendNextMonth
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 13, 6
	end

OfficerCinnabarPokeScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .UnderArrest
	clearevent EVENT_CINNABAR_ALERT
	setevent EVENT_BEAT_CITY_POLICE_CINNABAR
	farwritetext KantoOfficerHaveaNiceDay
	closetext
	end

.UnderArrest:
	setevent EVENT_CINNABAR_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CINNABAR
	playmusic MUSIC_OFFICER_ENCOUNTER
	farwritetext KantoOfficerStopRightThere
	waitbutton
	showemote EMOTE_SHOCK, PLAYER, 15
	farwritetext KantoOfficerSpendNextMonth
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 13, 6
	end

CinnabarPokecenter1FCooltrainerFScript:
	jumptextfaceplayer CinnabarPokecenter1FCooltrainerFText

CinnabarPokecenter1FFisherScript:
	jumptextfaceplayer CinnabarPokecenter1FFisherText

CinnabarPokecenter1FCooltrainerFText:
	text "..."
	line "..."

	para "Yeah this #MON"
	line "Center is the only"

	para "building left in"
	line "CINNABAR."

	para "I lost my home, my"
	line "family, my #MON."

	para "How could they"
	line "do this to us?"

	para "..."
	line "..."

	para "I think they used"
	line "some fire #MON"

	para "to trigger the"
	line "VOLCANO."

	para "The few survivors"
	line "don't know what"

	para "to do with our"
	line "lives."
	done

CinnabarPokecenter1FFisherText:
	text "It's been years"
	line "since the volcano"
	cont "erupted."

	para "But those of us"
	line "left just don't"

	para "know where to"
	line "begin with re-"
	cont "building."

	para "JOHTO took"
	line "EVERYTHING from"
	cont "us."
	done

CinnabarPokeCentreCallAuthoritiestext:
	text "Welcome to the"
	line "CINNABAR ISLAND"
	cont "#MON CENTER."

	para "May I see your"
	line "proof of KANTO"
	cont "CITIZENSHIP."

	para "..."
	line "..."

	para "FUCKING JOHTO"
	line "BASTARD!!!!"

	para "HOW DARE YOU SET"
	line "FOOT IN HERE!!??"

	para "SECURITY!!!!"
	done 

CinnabarPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CINNABAR_ISLAND, 1
	warp_event  4,  7, CINNABAR_ISLAND, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FCooltrainerFScript, -1
	object_event  2,  4, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CinnabarPokecenter1FFisherScript, -1
	object_event  4,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerCinnabarPokeScript, -1
