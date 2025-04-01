	object_const_def
	const ECRUTEAKITEMFINDERHOUSE_POKEDEX
	const ECRUTEAKITEMFINDERHOUSE_GHOST

EcruteakItemfinderHouse_MapScripts:
	def_scene_scripts

	def_callbacks


EcruteakHistoryBook:
	opentext
	checkevent EVENT_CHARRED_JOURNAL
	iftrue .AbbreviatedJournal
	writetext EcruteakHistoryBookText
	yesorno
	iftrue .ReadBook
	closetext
	end

.ReadBook:
	checkevent EVENT_GOT_CLEAR_BELL
	iffalse .SpookyPresence
	writetext EcruteakTwoTowersText
	yesorno
	iftrue .KeepReading
	closetext
	end

.KeepReading:
	writetext EcruteakThreeMonText
	yesorno
	iftrue .ReadMore
	closetext
	end

.ReadMore:
	writetext MySoldierWasLloyalText
	waitbutton
	clearevent EVENT_BURNEDTOWER_GHOST3
	closetext
	playsound SFX_PERISH_SONG
	special FadeOutPalettes
	waitsfx
	reloadmap
	showemote EMOTE_SHOCK, PLAYER, 15
	setevent EVENT_CHARRED_JOURNAL
	appear ECRUTEAKITEMFINDERHOUSE_GHOST
	end

.AbbreviatedJournal:
	writetext CharredInkText
	waitbutton
	closetext
	end

.SpookyPresence:
	showemote EMOTE_SHOCK, PLAYER, 15
	writetext BetterNotReaditText
	waitbutton
	closetext
	end

KimonoGirlMiraGhost:
	trainer KIMONO_GIRL, MIRA, EVENT_BEAT_BEAUTY_RACHAEL, KimonoGirlMiraGhostSeenText, KimonoGirlMiraGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlMiraGhostAfterBattleText
	setevent EVENT_GHOST_RACHAEL
	waitbutton
	closetext
	end

ItemFinderHouseRadio:
	jumptext BrokenRadioText

EcruteakHistoryBookText:
	text "This house is"
	line "very old and it"

	para "appears to have"
	line "been empty for"
	cont "a long time."

	para "This dusty old"
	line "book looks like"
	cont "someone's diary."

	para "Want to read it?"
	done

EcruteakTwoTowersText:
	text "I fell for a"
	line "KANTO soldier."

	para "People say KANTO"
	line "wanted to burn the"

	para "BRASS tower, but"
	line "that wasn't so."

	para "They occupied our"
	line "town for a year"

	para "before the TOWER"
	line "BURNED."

	para "Oh, great FOREST"
	line "PROTECTOR it was"
	cont "all my fault!"

	para "Keep reading?"
	done

EcruteakThreeMonText:
	text "Times were tough"
	line "but things were"
	cont "different then."

	para "I fell for a KANTO"
	line "soldier. He was a"

	para "kind man. Never"
	line "forget that. Not"

	para "all of KANTO's"
	line "soldiers were here"
	cont "for blood."

	para "But I never should"
	line "have told him the"

	para "secrets of the"
	line "tower."

	para "Keep reading?"
	done

MySoldierWasLloyalText:
	text "My soldier was a"
	line "loyal man, he"

	para "would never have"
	line "betrayed me."

	para "But his superior"
	line "officer got the"

	para "secret out of me."
	line "Days of torture."

	para "I broke, when they"
	line "threatened my"
	cont "soldier's life."

	para "I have brought"
	line "shame to ECRUTEAK"
	cont "and it's people."

	para "Fairwell."

	para "The journal ends,"
	line "but the last page"
	cont "is stained red."
	done

KimonoGirlMiraGhostSeenText:
	text "This my fault."
	line "FOREST PROTECTOR!"

	para "Forgive me!"
	done

KimonoGirlMiraGhostBeatenText:
	text "But the great"
	line "guardian of ILEX"
	cont "never came."

	para "I deserve my end."
	done

KimonoGirlMiraGhostAfterBattleText:
	text "I could not live"
	line "with the shame and"

	para "suffering my weak-"
	line "ness brought on"
	cont "my people."

	para "But that KANTO"
	line "officer, failed."

	para "My lover, hid the"
	line "sacred SILVER WING"
	cont "from her!"

	para "No, my lover hid"
	line "it from them all!"

	para "He's a good man."
	line "I watch him when"

	para "he comes to visit"
	line "every year."

	para "I believe he is"
	line "from PEWTER CITY."

	para "Oh, he would be"
	line "an old man by"
	cont "now."

	para "If you ever meet"
	line "him, tell him I"

	para "love him, and"
	line "that I'll be"

	para "waiting for him on"
	line "the other side."
	done

CharredInkText:
	text "The journal seems"
	line "to have charred."

	para "The pages are no"
	line "longer legible."
	done

BetterNotReaditText:
	text "You can't shake"
	line "the feeling that"

	para "something, or"
	line "someone is watch-"
	cont "ing you!"

	para "When you try to"
	line "open the journal"

	para "the cover refuses"
	line "to lift!"

	para "It might be safer"
	line "to leave this"
	cont "alone for now."
	done

BrokenRadioText:
	text "It's an old"
	line "broken radio."

	para "Let's see if it"
	line "works."

	para "..."

	para "Nope, long dead."
	done

EcruteakItemfinderHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 11
	warp_event  4,  7, ECRUTEAK_CITY, 11

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ItemFinderHouseRadio

	def_object_events
	object_event  3,  3, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakHistoryBook, -1
	object_event  2,  2, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, KimonoGirlMiraGhost, EVENT_BURNEDTOWER_GHOST3

