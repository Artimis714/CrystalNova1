	object_const_def
	const FUCHSIAPOKECENTER1F_NURSE
	const FUCHSIAPOKECENTER1F_COOLTRAINER_M
	const FUCHSIAPOKECENTER1F_COOLTRAINER_F
	const FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR
	const FUCHSIAPOKECENTER1F_OFFICER

FuchsiaPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script FuchsiaPokeCenter1FNoopScene ; unusable

	def_callbacks

FuchsiaPokeCenter1FNoopScene:
	end

FuchsiaPokecenter1FNurseScript:
	checkitem KANTO_PAPERS
	iffalse .YouDontBelong
	jumpstd PokecenterNurseScript

.YouDontBelong:
	opentext
	writetext FuchsiaPokeCentreCallAuthoritiestext
	waitbutton
	setevent EVENT_FUCHSIA_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_FUCHSIA
	showemote EMOTE_SHOCK, FUCHSIAPOKECENTER1F_OFFICER, 15
	turnobject FUCHSIAPOKECENTER1F_OFFICER, LEFT
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

FuchsiaPokecenter1FCooltrainerMScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerMText

FuchsiaPokecenter1FCooltrainerFScript:
	jumptextfaceplayer FuchsiaPokecenter1FCooltrainerFText

OfficerFuchsiaPokeScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .UnderArrest
	clearevent EVENT_FUCHSIA_ALERT
	setevent EVENT_BEAT_CITY_POLICE_FUCHSIA
	farwritetext KantoOfficerHaveaNiceDay
	closetext
	end

.UnderArrest:
	setevent EVENT_FUCHSIA_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_FUCHSIA
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

FuchsiaPokecenter1FJanineImpersonatorScript:
	faceplayer
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonatorText1
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, FuchsiaPokecenter1FJanineImpersonatorSpinMovement
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_JANINE
	special LoadUsedSpritesGFX
	opentext
	writetext FuchsiaPokecenter1FJanineImpersonatorText2
	waitbutton
	closetext
	applymovement FUCHSIAPOKECENTER1F_JANINE_IMPERSONATOR, FuchsiaPokecenter1FJanineImpersonatorSpinMovement
	faceplayer
	variablesprite SPRITE_JANINE_IMPERSONATOR, SPRITE_LASS
	special LoadUsedSpritesGFX
	end

FuchsiaPokecenter1FJanineImpersonatorSpinMovement:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

FuchsiaPokecenter1FCooltrainerMText:
	text "Hey! You have a"
	line "#DEX! Cool!!"

	para "..."
	line "..."

	para "No way! PROF."
	line "OAK gave that"
	cont "to you?"
	done

FuchsiaPokecenter1FCooltrainerFText:
	text "I got quite a"
	line "shock at the GYM."

	para "There were all"
	line "these girls who"
	cont "looked identical."

	para "I wish they all"
	line "weren't so hot."

	para "It's tough being"
	line "bi."
	done

FuchsiaPokecenter1FJanineImpersonatorText1:
	text "I'm JANINE! Hocus-"
	line "pocus… Poof!"
	done

FuchsiaPokecenter1FJanineImpersonatorText2:
	text "See? I look just"
	line "like her now!"
	done

FuchsiaPokeCentreCallAuthoritiestext:
	text "Welcome to the"
	line "FUCHSIA CITY"
	cont "#MON CENTER."

	para "May I see your"
	line "proof of KANTO"
	cont "CITIZENSHIP."

	para "..."
	line "..."

	para "You're from JOHTO!"
	line "... SECURITY!"

	para "I'm calling the"
	line "cops!"
	done 

FuchsiaPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, FUCHSIA_CITY, 5
	warp_event  4,  7, FUCHSIA_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FCooltrainerFScript, -1
	object_event  5,  3, SPRITE_JANINE_IMPERSONATOR, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaPokecenter1FJanineImpersonatorScript, -1
	object_event  4,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerFuchsiaPokeScript, -1
