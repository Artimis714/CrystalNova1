	object_const_def
	const CERULEANPOKECENTER1F_NURSE
	const CERULEANPOKECENTER1F_SUPER_NERD
	const CERULEANPOKECENTER1F_GYM_GUIDE
	const CERULEANPOKECENTER1F_OFFICER

CeruleanPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

CeruleanPokecenter1FNurseScript:
	checkitem KANTO_PAPERS
	iffalse .YouDontBelong
	jumpstd PokecenterNurseScript

.YouDontBelong:
	opentext
	writetext CeruleanPokeCentreCallAuthoritiestext
	waitbutton
	setevent EVENT_CERULEAN_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CERULEAN
	showemote EMOTE_SHOCK, CERULEANPOKECENTER1F_OFFICER, 15
	turnobject CERULEANPOKECENTER1F_OFFICER, LEFT
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

OfficerCeruleanPokeScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .UnderArrest
	clearevent EVENT_CERULEAN_ALERT
	setevent EVENT_BEAT_CITY_POLICE_CERULEAN
	farwritetext KantoOfficerHaveaNiceDay
	closetext
	end

.UnderArrest:
	setevent EVENT_CERULEAN_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_CERULEAN
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


CeruleanPokecenter1FSuperNerdScript:
	special CheckMobileAdapterStatusSpecial
	iftrue .mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText

.mobile
	jumptextfaceplayer CeruleanPokecenter1FSuperNerdText_Mobile

CeruleanPokecenter1FGymGuideScript:
	jumptextfaceplayer CeruleanPokecenter1FGymGuideText

CeruleanPokecenter1FSuperNerdText:
	text "For battles, I'd"
	line "much rather use"

	para "#MON I've been"
	line "raising, even if"

	para "they're weaker"
	line "than some newly"
	cont "caught #MON."
	done

CeruleanPokecenter1FSuperNerdText_Mobile:
	text "Do you battle by"
	line "mobile phone?"

	para "If time runs out"
	line "during a battle,"

	para "waiting to see who"
	line "won is really"
	cont "nerve wracking."
	done

CeruleanPokecenter1FGymGuideText:
	text "The MAGNET TRAIN"
	line "travels at over"

	para "340 mph. It goes"
	line "between KANTO and"

	para "JOHTO in almost no"
	line "time at all."

	para "It really makes"
	line "JOHTO accessible."

	para "Those damn rebels"
	line "better not think"
	
	para "of starting an"
	line "uprising, because"

	para "we can get troops"
	line "there in no time!"
	done

CeruleanPokeCentreCallAuthoritiestext:
	text "Welcome to the"
	line "CERULEAN CITY"
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

CeruleanPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, CERULEAN_CITY, 4
	warp_event  4,  7, CERULEAN_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FNurseScript, -1
	object_event  8,  4, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FSuperNerdScript, -1
	object_event  1,  5, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeruleanPokecenter1FGymGuideScript, -1
	object_event  4,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerCeruleanPokeScript, -1