DEF ROUTE32HEAL0PRICE EQU 100
DEF ROUTE32HEAL1PRICE EQU 500
DEF ROUTE32HEAL2PRICE EQU 750
DEF ROUTE32HEAL3PRICE EQU 1000
DEF ROUTE32HEAL4PRICE EQU 1250
DEF ROUTE32HEAL5PRICE EQU 1500
DEF ROUTE32HEAL6PRICE EQU 2000
DEF ROUTE32HEAL7PRICE EQU 2250
DEF ROUTE32HEAL8PRICE EQU 2500
DEF ROUTE32HEAL9PRICE EQU 3000
DEF ROUTE32HEAL10PRICE EQU 3250
DEF ROUTE32HEAL11PRICE EQU 3750
DEF ROUTE32HEAL12PRICE EQU 4250
DEF ROUTE32HEAL13PRICE EQU 5000
DEF ROUTE32HEAL14PRICE EQU 6000
DEF ROUTE32HEAL15PRICE EQU 7000
DEF ROUTE32HEAL16PRICE EQU 8000

	object_const_def
	const ROUTE32POKECENTER1F_NURSE
	const ROUTE32POKECENTER1F_FISHING_GURU
	const ROUTE32POKECENTER1F_COOLTRAINER_F

Route32Pokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks

Route32Pokecenter1FNurseScript:
	checkflag ENGINE_ROUTE32_FEE
	iftrue .Standard
	faceplayer
	opentext
	checkitem KANTO_PAPERS
	iftrue .FreeHealthCare
	checkcode VAR_BADGES
	if_equal 0, .NoBadgePrice
	checkcode VAR_BADGES
	if_equal 1, .OneBadgePrice
	checkcode VAR_BADGES
	if_equal 2, .TwoBadgePrice
	checkcode VAR_BADGES
	if_equal 3, .ThreeBadgePrice
	checkcode VAR_BADGES
	if_equal 4, .FourBadgePrice
	checkcode VAR_BADGES
	if_equal 5, .FiveBadgePrice
	checkcode VAR_BADGES
	if_equal 6, .SixBadgePrice
	checkcode VAR_BADGES
	if_equal 7, .SevenBadgePrice
	checkcode VAR_BADGES
	if_equal 8, .EightBadgePrice
	checkcode VAR_BADGES
	if_equal 9, .NineBadgePrice
	checkcode VAR_BADGES
	if_equal 10, .TenBadgePrice
	checkcode VAR_BADGES
	if_equal 11, .ElevenBadgePrice
	checkcode VAR_BADGES
	if_equal 12, .TwelveBadgePrice
	checkcode VAR_BADGES
	if_equal 13, .ThirteenBadgePrice
	checkcode VAR_BADGES
	if_equal 14, .FourteenBadgePrice
	checkcode VAR_BADGES
	if_equal 15, .FifteenBadgePrice
	checkcode VAR_BADGES
	if_equal 16, .SixteenBadgePrice

.FreeHealthCare:
	farwritetext KantoCitizenProvedText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.NoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL0PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL0PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.OneBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext OneBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL1PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL1PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.TwoBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwoBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL2PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL2PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.ThreeBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThreeBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL3PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL3PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.FourBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL4PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL4PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.FiveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FiveBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL5PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL5PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.SixBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL6PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL6PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.SevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SevenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL7PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL7PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.EightBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext EightBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL8PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL8PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.NineBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext NineBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL9PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL9PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.TenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TenBadgeCostText
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL10PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL10PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.ElevenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ElevenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL11PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL11PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.TwelveBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext TwelveBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL12PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL12PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.ThirteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext ThirteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL13PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL13PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.FourteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FourteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL14PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL14PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.FifteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext FifteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL15PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL15PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.SixteenBadgePrice:
	farwritetext SeeProofofCitizenship
	waitbutton
	farwritetext SixteenBadgeCost
	special PlaceMoneyTopRight
	yesorno 
	iffalse .NoHeal
	checkmoney YOUR_MONEY, ROUTE32HEAL16PRICE
	ifequal HAVE_LESS, ROUTE32HEALNoMoneyScript
	takemoney YOUR_MONEY, ROUTE32HEAL16PRICE
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	promptbutton
	farwritetext ThankYouforYourPaymentHealText
	waitbutton
	setflag ENGINE_ROUTE32_FEE
	jumpstd PokecenterNurseScript

.NoHeal:
	farwritetext SorryComeAgainText
	waitbutton
	closetext
	end

.Standard:
	jumpstd PokecenterNurseScript

ROUTE32HEALNoMoneyScript:
	farwritetext NoMoneytoHealText
	waitbutton
	closetext
	end

Route32Pokecenter1FFishingGuruScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotOldRod
	writetext Route32Pokecenter1FFishingGuruText_Question
	yesorno
	iffalse .Refused
	writetext Route32Pokecenter1FFishingGuruText_Yes
	promptbutton
	verbosegiveitem OLD_ROD
	writetext Route32Pokecenter1FFishingGuruText_GiveOldRod
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.Refused:
	writetext Route32Pokecenter1FFishingGuruText_No
	waitbutton
	closetext
	end

.GotOldRod:
	writetext Route32Pokecenter1FFishingGuruText_After
	waitbutton
	closetext
	end

Route32Pokecenter1FCooltrainerFScript:
	jumptextfaceplayer Route32Pokecenter1FCooltrainerFText

Route32Pokecenter1FFishingGuruText_Question:
	text "This is a great"
	line "fishing spot."

	para "You saw people"
	line "fishing? How"
	cont "about you?"

	para "Would you like one"
	line "of my RODS?"
	done

Route32Pokecenter1FFishingGuruText_Yes:
	text "Heh, that's good"
	line "to hear."

	para "Now you're an"
	line "angler too!"
	done

Route32Pokecenter1FFishingGuruText_GiveOldRod:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "your ROD."
	done

Route32Pokecenter1FFishingGuruText_No:
	text "Oh. That's rather"
	line "disappointing…"
	done

Route32Pokecenter1FFishingGuruText_After:
	text "Yo, kid. How are"
	line "they biting?"
	done

Route32Pokecenter1FCooltrainerFText:
	text "What should I make"
	line "my #MON hold?"

	para "Maybe an item that"
	line "increases ATTACK"
	cont "power…"
	done

Route32Pokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ROUTE_32, 1
	warp_event  4,  7, ROUTE_32, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FNurseScript, -1
	object_event  1,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FFishingGuruScript, -1
	object_event  6,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32Pokecenter1FCooltrainerFScript, -1
