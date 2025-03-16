	object_const_def
	const FIGHTINGDOJO_BLACK_BELT
	const FIGHTINGDOJO_POKE_BALL

FightingDojo_MapScripts:
	def_scene_scripts

	def_callbacks

FightingDojoBlackBelt:
	faceplayer
	opentext
	checkevent EVENT_GOT_TYROGUE_FROM_KIYO
	iftrue .MetMaster
	writetext FightingDojoBlackBeltText
	waitbutton 
	writetext HistoryoftheDojoText
	waitbutton
	closetext
	end

.MetMaster:
	checkevent EVENT_GOT_BLACKBELT_FROM_DOJO
	iftrue .GotBlackbelt
	writetext FightingDojoBlackBeltText
	waitbutton
	writetext YouMetMasterKiyo
	verbosegiveitem BLACKBELT_I
	iffalse .NoRoomforBlackBelt
	waitbutton
	writetext AndMegaPunchTooText
	verbosegiveitem TM_MEGA_PUNCH
	waitbutton
	writetext YouAreWelcomeAnyTimeText
	waitbutton
	closetext
	setevent EVENT_GOT_BLACKBELT_FROM_DOJO
	end

.NoRoomforBlackBelt:
	writetext NoRoomForBlackbeltText
	waitbutton
	closetext
	end

.GotBlackbelt:
	checkflag ENGINE_TIME_CAPSULE
	iftrue .ComeBackTomorrow
	readvar VAR_WEEKDAY
	ifequal MONDAY, .MondayTrade
	ifequal TUESDAY, .TuesdayTrade
	ifequal WEDNESDAY, .WednesdayTrade
	ifequal THURSDAY, .ThursdayTrade
	ifequal FRIDAY, .FridayTrade
	writetext ComeBackTomorrowText
	waitbutton
	closetext
	end

.MondayTrade:
	writetext IntroTradeText
	waitbutton
	writetext MondayTradeText
	waitbutton
	writetext WillingtoTradeText
	yesorno
	iffalse .MaybeSomeOtherTime
	checkitem SILVER_LEAF
	iffalse .YouDontHaveWhatIWant
	takeitem SILVER_LEAF
	verbosegiveitem MASTER_BALL
	waitbutton
	writetext PleasureDoingBusinessText
	waitbutton
	closetext
	setflag ENGINE_TIME_CAPSULE
	end

.TuesdayTrade:
	writetext IntroTradeText
	waitbutton
	writetext TuesdayTradeText
	waitbutton
	writetext WillingtoTradeText
	yesorno
	iffalse .MaybeSomeOtherTime
	checkitem GOLD_LEAF
	iffalse .YouDontHaveWhatIWant
	takeitem GOLD_LEAF
	verbosegiveitem MASTER_BALL
	waitbutton
	writetext PleasureDoingBusinessText
	waitbutton
	closetext
	setflag ENGINE_TIME_CAPSULE
	end

.WednesdayTrade:
	writetext IntroTradeText
	waitbutton
	writetext WednesdayTradeText
	waitbutton
	writetext WillingtoTradeText
	yesorno
	iffalse .MaybeSomeOtherTime
	checkitem BIG_MUSHROOM
	iffalse .YouDontHaveWhatIWant
	takeitem BIG_MUSHROOM
	verbosegiveitem MASTER_BALL
	waitbutton
	writetext PleasureDoingBusinessText
	waitbutton
	closetext
	setflag ENGINE_TIME_CAPSULE
	end

.ThursdayTrade:
	writetext IntroTradeText
	waitbutton
	writetext ThursdayTradeText
	waitbutton
	writetext WillingtoTradeText
	yesorno
	iffalse .MaybeSomeOtherTime
	checkitem LUCKY_PUNCH
	iffalse .YouDontHaveWhatIWant
	takeitem LUCKY_PUNCH
	verbosegiveitem MASTER_BALL
	waitbutton
	writetext PleasureDoingBusinessText
	waitbutton
	closetext
	setflag ENGINE_TIME_CAPSULE
	end

.FridayTrade:
	writetext IntroTradeText
	waitbutton
	writetext FridayTradeText
	waitbutton
	writetext WillingtoTradeText
	yesorno
	iffalse .MaybeSomeOtherTime
	checkitem STICK
	iffalse .YouDontHaveWhatIWant
	takeitem STICK
	verbosegiveitem MASTER_BALL
	waitbutton
	writetext PleasureDoingBusinessText
	waitbutton
	closetext
	setflag ENGINE_TIME_CAPSULE
	end

.MaybeSomeOtherTime:
	writetext MaybeSomeOtherTimeText
	waitbutton
	closetext
	end

.YouDontHaveWhatIWant:
	writetext YouDontHaveWhatIWantText
	waitbutton
	closetext
	end

.ComeBackTomorrow:
	writetext ComeBackTomorrowText
	waitbutton
	closetext
	end

FightingDojoSign1:
	jumptext FightingDojoSign1Text

FightingDojoSign2:
	jumptext FightingDojoSign2Text

FightingDojoFocusBand:
	itemball FOCUS_BAND

YouMetMasterKiyo:
	text "OH? You've met"
	line "MASTER KIYO?"

	para "That is amazing!"
	line "please tell me,"

	para "how goes his"
	line "training?"

	para "..."
	line "..."

	para "I sincerely hope"
	line "he returns one"
	cont "day!"

	para "..."
	line "..."

	para "But you seem to"
	line "have bested him?"

	para "Incredible, you"
	line "too are a MASTER."

	para "Hence forth in"
	line "this DOJO, you"

	para "shall be known as"
	line "MASTER <PLAY_G>!"

	para "As a symbol of"
	line "your mastery over"
	cont "martial arts,"

	para "I would like you"
	line "to have this!"
	done
	
AndMegaPunchTooText:
	text "That BLACKBELT"
	line "is a symbol of"

	para "your martial arts"
	line "mastery!"

	para "Have your #MON"
	line "wear it with"
	cont "pride!"

	para "And I would also"
	line "like to give you"
	cont "this TM."
	done

YouAreWelcomeAnyTimeText:
	text "MASTER <PLAY_G>!"
	line "It is an honor."

	para "Please, stay"
	line "and train here"

	para "as long as you"
	line "wish!"
	done

NoRoomForBlackbeltText:
	text "MASTER <PLAY_G>,"
	line "I am sorry, but"
	
	para "You do not have"
	line "enough room for"
	cont "this gift!"
	done

FightingDojoBlackBeltText:
	text "Hello!"

	para "Have you come to"
	line "train with us?"

	para "..."
	line "..."

	para "Oh, you are from"
	line "JOHTO. I see."

	para "Do you know MASTER"
	line "CHUCK?"

	para "..."
	line "..."

	para "Ahh what a noble"
	line "warrior."

	para "It's good to hear"
	line "his family is"
	cont "well."

	para "..."
	line "..."
	done

HistoryoftheDojoText:
	text "We were once the"
	line "GYM of SAFFRON!"

	para "Ahh, but that"
	line "was many years"
	cont "ago!"

	para "We protested the"
	line "war, and we were"
	cont "punished for it."

	para "My master, the"
	line "KARATE KING was"

	para "exiled to JOHTO"
	line "where he trains"

	para "in preparation"
	line "for his return."
	done

IntroTradeText:
	text "MASTER <PLAY_G>!"
	line "It is an honor."

	para "I was hoping you"
	line "might assist me."
	cont "I am looking for a"
	done

MondayTradeText:
	text "SILVER LEAF."
	done

TuesdayTradeText:
	text "GOLD LEAF."
	done

WednesdayTradeText:
	text "BIG MUSHROOM."
	done

ThursdayTradeText:
	text "LUCKY PUNCH."
	done

FridayTradeText:
	text "STICK."
	done

WillingtoTradeText:
	text "Would you be will-"
	line "ing to trade one"

	para "for a MASTER BALL?"
	done


PleasureDoingBusinessText:
	text "A pleasure doing"
	line "business with you,"
	cont "MASTER <PLAY_G>!"

	para "Come back another"
	line "day. I am always"

	para "looking to make a"
	line "trade."
	done

MaybeSomeOtherTimeText:
	text "Hmm... Maybe some"
	line "other time then."
	done

YouDontHaveWhatIWantText:
	text "I am sorry MASTER"
	line "<PLAY_G>, but"

	para "you do not have"
	line "what I am looking"
	cont "for."

	para "Come back when you"
	line "do, and I will be"

	para "happy to make a"
	line "trade."
	done

ComeBackTomorrowText:
	text "MASTER <PLAY_G>!"
	line "It is always good"
	cont "to see you."

	para "..."
	line "..."

	para "I have nothing"
	line "else to trade to-"
	cont "day."

	para "come back tomorrow"
	line "and maybe I will"
	cont "have something."
	done

FightingDojoSign1Text:
	text "What goes around"
	line "comes around!"
	done

FightingDojoSign2Text:
	text "Enemies on every"
	line "side!"
	done

FightingDojo_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, SAFFRON_CITY, 1
	warp_event  5, 11, SAFFRON_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_READ, FightingDojoSign1
	bg_event  5,  0, BGEVENT_READ, FightingDojoSign2

	def_object_events
	object_event  4,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FightingDojoBlackBelt, -1
	object_event  3,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, FightingDojoFocusBand, EVENT_PICKED_UP_FOCUS_BAND
