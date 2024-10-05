	object_const_def
	const VERMILIONFISHINGSPEECHHOUSE_FISHING_GURU

VermilionFishingSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

FishingDude:
	faceplayer
	opentext
	checkevent EVENT_VERMILION_HEALER_ACTIVE
	iftrue .Healfast
	checkevent EVENT_VERMILION_ALERT
	iftrue .LetsHealYou
	writetext AhhJOHTOText
	waitbutton
	closetext
	end

.LetsHealYou:
	writetext FishingDudeText
	yesorno
	iffalse .Comebackifyouneedme
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext KeepAtItVermilionText
	waitbutton
	closetext
	setevent EVENT_VERMILION_HEALER_ACTIVE
	end

.Healfast:
	checkevent EVENT_GOT_KANTO_PAPERS_BACK
	iftrue .Goodtohear
	writetext HealFastText
	yesorno
	iffalse .Comebackifyouneedme
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext KeepAtItVermilionText
	waitbutton
	closetext
	end

.Comebackifyouneedme
	writetext comebackifneededtext
	waitbutton
	closetext
	end

.Goodtohear
	writetext GladtohearVermiliontext
	waitbutton
	closetext
	end

FishingDudesHousePhoto:
	jumptext FishingDudesHousePhotoText

AhhJOHTOText:
	text "You're from JOHTO"
	line "eh?"

	para "I was on tour in"
	line "JOHTO during the"

	para "war, such a good"
	line "people."

	para "I've always felt"
	line "awful for what"
	cont "we did there."
	done

FishingDudeText:
	text "You... you're"
	line "from JOHTO aren't"
	cont "you!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Hmm... I see. You"
	line "were thrown in"
	cont "jail."

	para "Our government is"
	line "so corrupt."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You can't even heal"
	line "you #MON!!??"

	para "Why that's down"
	line "right criminal."

	para "Would you like"
	line "some of my"
	cont "medicine?"
	done

HealFastText:
	text "Would you like"
	line "to borrow more of"
	cont "my medicine?"
	done

KeepAtItVermilionText:
	text "There you go!"

	para "Don't give up"
	line "kid!"
	done

FishingDudesHousePhotoText:
	text "It's a photo of"
	line "people fishing…"

	para "They're having a"
	line "great time…"
	done

comebackifneededtext:
	text "No worries, I'm"
	line "here if you"
	cont "need me."
	done

GladtohearVermiliontext:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Ahh so you got"
	line "your proof of"
	cont "citizenship back?"

	para "That's great!"
	line "I'm so happy to"

	para "hear things worked"
	line "out!"
	done

VermilionFishingSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 1
	warp_event  3,  7, VERMILION_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, FishingDudesHousePhoto

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, FishingDude, -1
