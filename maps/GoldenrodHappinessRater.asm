	object_const_def
	const GOLDENRODHAPPINESSRATER_TEACHER
	const GOLDENRODHAPPINESSRATER_POKEFAN_M
	const GOLDENRODHAPPINESSRATER_TWIN

GoldenrodHappinessRater_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodHappinessRaterTeacherScript:
	faceplayer
	opentext
	checkitem COIN_CASE
	iffalse .YouShouldGamble
	writetext CoinTradeIntroText
	yesorno
	iffalse .SilverTrade
	checkitem GOLD_LEAF
	iffalse .WhatAboutSilver
	checkcoins MAX_COINS - 100
	ifequal HAVE_MORE, .CoinCaseFull
	writetext TradeGoldLeafText
	yesorno
	iffalse .NoDealTrade
	givecoins 100
	takeitem GOLD_LEAF
	writetext ThisisbeautifulText
	waitbutton
	closetext
	end

.WhatAboutSilver:
	writetext YouDontHaveThatText
	waitbutton
.SilverTrade:
	writetext HowaboutSilver
	yesorno
	iffalse .NoLeaf
	checkitem SILVER_LEAF
	iffalse .NoLeaf
	checkcoins MAX_COINS - 50
	ifequal HAVE_MORE, .CoinCaseFull
	writetext TradeSilverLeafText
	yesorno
	iffalse .NoDealTrade
	givecoins 50
	takeitem SILVER_LEAF
	writetext ThisisbeautifulText
	waitbutton
	closetext
	end

.NoDealTrade:
	writetext NoDealTradeText
	waitbutton
	closetext
	end

.NoLeaf:
	writetext NoLeafText
	waitbutton
	closetext
	end

.CoinCaseFull:
	writetext ABetterGamblerThanMe
	waitbutton
	closetext
	end

.YouShouldGamble:
	writetext YoushouldGambleText
	waitbutton
	closetext
	end

GoldenrodHappinessRaterPokefanMScript:
	jumptextfaceplayer GoldenrodHappinessRaterPokefanMText

GoldenrodHappinessRaterTwinScript:
	jumptextfaceplayer GoldenrodHappinessRaterTwinText

HappinessRatersHouseBookshelf:
	jumpstd DifficultBookshelfScript

HappinessRatersHouseRadio:
	jumpstd Radio2Script

ABetterGamblerThanMe:
	text "Oh, wow! Looks"
	line "like you're a"

	para "better gambler"
	line "than me!"

	para "You don't have"
	line "room in your COIN"
	cont "CASE for more!"
	done

ThisisbeautifulText:
	text "Oh this is just"
	line "a beautiful leaf!"

	para "I'm happy to"
	line "trade more COINS"

	para "if you come across"
	line "more!"
	done

NoDealTradeText:
	text "That's fine if"
	line "you don't want to"

	para "trade, but I"
	line "won't negotiate"
	cont "my price."
	done

TradeSilverLeafText:
	text "Ahh a SILVER LEAF"
	line "those are lovely."

	para "I'd trade you 50"
	line "COINS for that."

	para "Do we have a deal?"
	done

TradeGoldLeafText:
	text "OOH! a GOLD LEAF!"
	line "those are my"
	cont "favorite!"

	para "I'd trade you 100"
	line "COINS for that."
	done

NoLeafText:
	text "I'm not sure you"
	line "have what I'm"
	cont "looking for."
	done

YouDontHaveThatText:
	text "You don't have"
	line "any GOLD LEAF."
	done

HowaboutSilver:
	text "Hmm... How about"
	line "a SILVER LEAF,"

	para "Would you happen"
	line "to have any of"
	cont "those?"
	done

CoinTradeIntroText:
	text "People say money"
	line "doesn't grow on"
	cont "trees."

	para "Those people have"
	line "never won big at"
	cont "the casino."

	para "I'd love to trade"
	line "some of my COINS"

	para "for a GOLD LEAF"
	line "if you have any."
	done

YoushouldGambleText:
	text "I won big at the"
	line "SLOTS!"
	cont "Do you gamble?"

	para "..."
	line "..."

	para "Well you should!"
	line "You need to find a"
	cont "COIN CASE."
	done

GoldenrodHappinessRaterPokefanMText:
	text "My wife won big"
	line "at the slots."

	para "I swear that woman"
	line "has more money"

	para "than sense these"
	line "days!"

	para "She's trading her"
	line "winnings for shiny"
	cont "leaves!"
	done

GoldenrodHappinessRaterTwinText:
	text "Mama loves coll-"
	line "ecting shiny stuff"

	para "She said she's"
	line "gonna wall-paper"

	para "my room with gold"
	line "and silver leaves!"
	done

GoldenrodHappinessRater_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 3
	warp_event  3,  7, GOLDENROD_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, HappinessRatersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, HappinessRatersHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, HappinessRatersHouseRadio

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterTeacherScript, -1
	object_event  5,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterPokefanMScript, -1
	object_event  5,  6, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodHappinessRaterTwinScript, -1
