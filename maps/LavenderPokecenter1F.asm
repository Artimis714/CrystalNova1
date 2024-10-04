	object_const_def
	const LAVENDERPOKECENTER1F_NURSE
	const LAVENDERPOKECENTER1F_GENTLEMAN
	const LAVENDERPOKECENTER1F_TEACHER
	const LAVENDERPOKECENTER1F_YOUNGSTER
	const LAVENDERPOKECENTER1F_OFFICER

LavenderPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavenderPokecenter1FNurseScript:
	checkitem KANTO_PAPERS
	iffalse .YouDontBelong
	jumpstd PokecenterNurseScript

.YouDontBelong:
	opentext
	writetext LavenderPokeCentreCallAuthoritiestext
	waitbutton
	setevent EVENT_LAVENDER_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_LAVENDER
	showemote EMOTE_SHOCK, LAVENDERPOKECENTER1F_OFFICER, 15
	turnobject LAVENDERPOKECENTER1F_OFFICER, LEFT
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

OfficerLavenderPokeScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .UnderArrest
	clearevent EVENT_LAVENDER_ALERT
	setevent EVENT_BEAT_CITY_POLICE_LAVENDER
	farwritetext KantoOfficerHaveaNiceDay
	closetext
	end

.UnderArrest:
	setevent EVENT_LAVENDER_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_LAVENDER
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

LavenderPokecenter1FGentlemanScript:
	jumptextfaceplayer LavenderPokecenter1FGentlemanText

LavenderPokecenter1FTeacherScript:
	jumptextfaceplayer LavenderPokecenter1FTeacherText

LavenderPokecenter1FYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext LavenderPokecenter1FYoungsterText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext LavenderPokecenter1FYoungsterText_ReturnedMachinePart
	waitbutton
	closetext
	end

LavenderPokecenter1FGentlemanText:
	text "To the north of"
	line "LAVENDER is ROCK"

	para "TUNNEL. Go through"
	line "it to get to the"
	cont "POWER PLANT."
	done

LavenderPokecenter1FTeacherText:
	text "I've never been"
	line "brave enough to"

	para "go upstairs in"
	line "THE TOWER OF DEATH"

	para "I've heard it's"
	line "dangerous."
	done

LavenderPokecenter1FYoungsterText:
	text "If the POWER PLANT"
	line "isn't running, the"

	para "MAGNET TRAIN won't"
	line "run either…"

	para "DAMN JHOTO rebels"
	line "ruining every-"
	cont "thing!"
	done

LavenderPokecenter1FYoungsterText_ReturnedMachinePart:
	text "I heard the"
	line "GENERATOR at the"
	
	para "POWER PLANT is"
	line "back on line!"

	para "In your FACE"
	line "JHOTO SCUM!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "What? You're the"
	line "reason the POWER"
	cont "PLANT is running?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I don't believe"
	line "you!"
	done

LavenderPokeCentreCallAuthoritiestext:
	text "Welcome to the"
	line "LAVENDER TOWN"
	cont "#MON CENTER."

	para "May I see your"
	line "proof of KANTO"
	cont "CITIZENSHIP."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're from JHOTO!"
	line "... SECURITY!"

	para "I'm calling the"
	line "cops!"
	done 

LavenderPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, LAVENDER_TOWN, 1
	warp_event  4,  7, LAVENDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FGentlemanScript, -1
	object_event  5,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FTeacherScript, -1
	object_event  1,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderPokecenter1FYoungsterScript, -1
	object_event  4,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerLavenderPokeScript, -1
