	object_const_def
	const VERMILIONPOKECENTER1F_NURSE
	const VERMILIONPOKECENTER1F_FISHING_GURU
	const VERMILIONPOKECENTER1F_SAILOR
	const VERMILIONPOKECENTER1F_BUG_CATCHER
	const VERMILIONPOKECENTER1F_OFFICER

VermilionPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionPokecenter1FNurseScript:
	checkitem KANTO_PAPERS
	iffalse .YouDontBelong
	jumpstd PokecenterNurseScript

.YouDontBelong:
	opentext
	writetext VermilionPokeCentreCallAuthoritiestext
	waitbutton
	setevent EVENT_VERMILION_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_VERMILION
	showemote EMOTE_SHOCK, VERMILIONPOKECENTER1F_OFFICER, 15
	turnobject VERMILIONPOKECENTER1F_OFFICER, LEFT
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

OfficerReggieScript:
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iffalse .UnderArrest
	clearevent EVENT_VERMILION_ALERT
	setevent EVENT_BEAT_CITY_POLICE_VERMILION
	farwritetext KantoOfficerHaveaNiceDay
	closetext
	end

.UnderArrest:
	setevent EVENT_VERMILION_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_VERMILION
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

VermilionPokecenter1FFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SNORLAX
	iftrue .FoughtSnorlax
	writetext VermilionPokecenter1FFishingGuruText
	waitbutton
	closetext
	end

.FoughtSnorlax:
	writetext VermilionPokecenter1FFishingGuruText_FoughtSnorlax
	waitbutton
	closetext
	end

VermilionPokecenter1FSailorScript:
	jumptextfaceplayer VermilionPokecenter1FSailorText

VermilionPokecenter1FBugCatcherScript:
	jumptextfaceplayer VermilionPokecenter1FBugCatcherText

VermilionPokeCentreCallAuthoritiestext:
	text "Welcome to the"
	line "VERMILION CITY"
	cont "#MON CENTER."

	para "May I see your"
	line "proof of KANTO"
	cont "CITIZENSHIP."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're from JOHTO!"
	line "... SECURITY!"

	para "I'm calling the"
	line "cops!"
	done 

VermilionPokecenter1FFishingGuruText:
	text "A sleeping #MON"
	line "is lying in front"
	cont "of DIGLETT'S CAVE."

	para "It's a fantastic"
	line "opportunity to get"

	para "it, but how do you"
	line "wake it up?"
	done

VermilionPokecenter1FFishingGuruText_FoughtSnorlax:
	text "There used to be a"
	line "sleeping #MON"

	para "lying in front of"
	line "Smugler's Path."

	para "But it seems to"
	line "have disappeared."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Really? that was"
	line "you?"

	para "Wow! You must be"
	line "some trainer!"
	done

VermilionPokecenter1FSailorText:
	text "The FAST SHIP is a"
	line "great place to"

	para "meet and battle"
	line "trainers."
	done

VermilionPokecenter1FBugCatcherText:
	text "Oh? You have some"
	line "BADGES I've never"
	cont "seen before."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Oh... you're from"
	line "JOHTO, should you"
	cont "even be here?"
	done

VermilionPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, VERMILION_CITY, 2
	warp_event  4,  7, VERMILION_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FNurseScript, -1
	object_event  7,  2, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FFishingGuruScript, -1
	object_event  6,  5, SPRITE_SAILOR, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FSailorScript, -1
	object_event  1,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionPokecenter1FBugCatcherScript, -1
	object_event  4,  3, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerReggieScript, -1
