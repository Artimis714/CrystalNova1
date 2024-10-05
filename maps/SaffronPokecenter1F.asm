	object_const_def
	const SAFFRONPOKECENTER1F_NURSE
	const SAFFRONPOKECENTER1F_TEACHER
	const SAFFRONPOKECENTER1F_FISHER
	const SAFFRONPOKECENTER1F_YOUNGSTER
	const SAFFRONPOKECENTER1F_OFFICER

SaffronPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

SaffronPokecenter1FNurseScript:
	checkitem KANTO_PAPERS
	iffalse .YouDontBelong
	jumpstd PokecenterNurseScript

.YouDontBelong:
	opentext
	writetext SaffronPokeCentreCallAuthoritiestext
	waitbutton
	setevent EVENT_SAFFRON_ALERT
	showemote EMOTE_SHOCK, SAFFRONPOKECENTER1F_OFFICER, 15
	turnobject SAFFRONPOKECENTER1F_OFFICER, LEFT
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

OfficerSaffronPokeScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .NoFight
	checkevent EVENT_SAFFRON_ALERT
	iftrue .UnderArrest
	farwritetext KantoOfficerHaveaNiceDay
	closetext
	end

.UnderArrest:
	checkitem KANTO_PAPERS
	iftrue .NoFight
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

.NoFight
	farwritetext KantoOfficerHaveaNiceDay
	clearevent EVENT_SAFFRON_ALERT
	waitbutton
	closetext
	end

SaffronPokecenter1FTeacherScript:
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	jumptextfaceplayer SaffronPokecenter1FTeacherText

.mobile
	jumptextfaceplayer SaffronPokecenter1FTeacherMobileText

SaffronPokecenter1FFisherScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .SolvedKantoPowerCrisis
	writetext SaffronPokecenter1FFisherText
	waitbutton
	closetext
	end

.SolvedKantoPowerCrisis:
	writetext SaffronPokecenter1FFisherReturnedMachinePartText
	waitbutton
	closetext
	end

SaffronPokecenter1FYoungsterScript:
	jumptextfaceplayer SaffronPokecenter1FYoungsterText

SaffronPokecenter1FTeacherText:
	text "Oh my!"
	line "You're from JOHTO"

	para "Do they even have"
	line "#MON CENTERS"
	cont "there?"

	para "..."
	line "..."

	para "Oh they do?"
	line "huh... how odd."
	done

SaffronPokecenter1FTeacherMobileText:
	text "Oh my!"
	line "You're from JOHTO"

	para "Do they even have"
	line "#MON CENTERS"
	cont "there?"

	para "..."
	line "..."

	para "Oh they do?"
	line "huh... how odd."
	done

SaffronPokecenter1FFisherText:
	text "I just happened to"
	line "come through ROCK"

	para "TUNNEL. There was"
	line "some commotion at"
	cont "the POWER PLANT."

	para "Damn JOHTO scum"
	line "always up to no"
	cont "good."
	done

SaffronPokecenter1FFisherReturnedMachinePartText:
	text "Caves collapse"
	line "easily."

	para "Several caves have"
	line "disappeared in the"

	para "past few years,"
	line "like the one out-"
	cont "side CERULEAN."

	para "Though that one"
	line "didn't collapse"
	cont "naturally."

	para "I heard a rumor"
	line "that RED lost an"

	para "EXTREMELY power-"
	line "ful #MON there."

	para "The #MON fled"
	line "and collapsed"
	cont "the cave on RED."

	para "RED probably"
	line "died in the"
	cont "cave collapse."

	para "He hasn't been"
	line "seen since."

	para "It's such a shame"
	line "that the HERO of"

	para "the WAR met such"
	line "a tragic end."

	para "..."
	line "..."

	para "Oh you're from"
	line "JOHTO?"

	para "Then you must be"
	line "happy with the"
	cont "that news."

	para "I can't imagine"
	line "many in your"

	para "home see him as"
	line "a hero!"
	done

SaffronPokecenter1FYoungsterText:
	text "SILPH CO.'s HEAD"
	line "OFFICE and the"

	para "MAGNET TRAIN STA-"
	line "TION--they're the"

	para "places to see in"
	line "SAFFRON."

	para "..."
	line "..."

	para "FIGHTING DOJO?"
	line "That place is"
	cont "boring!"
	done

SaffronPokeCentreCallAuthoritiestext:
	text "Welcome to the"
	line "SAFFRON CITY"
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

SaffronPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, SAFFRON_CITY, 4
	warp_event  4,  7, SAFFRON_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_TEACHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FTeacherScript, -1
	object_event  8,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FFisherScript, -1
	object_event  1,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronPokecenter1FYoungsterScript, -1
	object_event  4,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerSaffronPokeScript, -1
