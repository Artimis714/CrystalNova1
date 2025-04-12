	object_const_def
	const ECRUTEAKLUGIASPEECHHOUSE_GRAMPS
	const ECRUTEAKLUGIASPEECHHOUSE_YOUNGSTER

EcruteakLugiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

EcruteakLugiaSpeechHouseGrampsScript:
	faceplayer
	opentext
	checkevent EVENT_GHOST_TYLER
	iftrue .MySonWasLucky
	writetext EcruteakLugiaSpeechHouseGrampsText
	waitbutton
	closetext
	end

.MySonWasLucky
	checkevent EVENT_GOT_LUCKY_EGG_ECRUTEAK
	iftrue .NowYouLuckyToo
	writetext MySonWasAHealertext
	verbosegiveitem LUCKY_EGG
	iffalse .NoRoomForLuck
	setevent EVENT_GOT_LUCKY_EGG_ECRUTEAK
	writetext CanYouSpeakWithMyExWife
	waitbutton
	closetext
	end

.NowYouLuckyToo
	checkevent EVENT_SPOKE_WITH_GRANNY_ILEX
	iftrue .TraveltoAzalea
	writetext CanYouSpeakWithMyExWife
	waitbutton
	closetext
	end

.TraveltoAzalea
	writetext OneoftheseDaysText
	setevent EVENT_GRAMPS_LOVIN_UP_GRANNY_ILEX
	waitbutton
	closetext
	end

.NoRoomForLuck
	writetext NoRoomForLuckText
	waitbutton
	closetext
	end

EcruteakLugiaSpeechHouseYoungsterScript:
	faceplayer
	opentext
	checkevent EVENT_GHOST_TYLER
	iftrue .MyDadLovedMe
	writetext EcruteakLugiaSpeechHouseYoungsterText
	waitbutton
	closetext
	end

.MyDadLovedMe
	checkevent EVENT_SPOKE_WITH_GRANNY_ILEX
	iftrue .GoingonAnAdventure
	writetext DaddyLovedMeText
	waitbutton
	closetext
	end

.GoingonAnAdventure
	writetext GoingonAnAdventureText
	setevent EVENT_KID_VISITING_GRANNY_ILEX
	waitbutton
	closetext
	end


LugiaSpeechHouseRadio:
	jumpstd Radio2Script

CanYouSpeakWithMyExWife:
	text "There! Now you can"
	line "share in our fam-"
	cont "ily's luck!"

	para "I hope it serves"
	line "you well on your"
	cont "journey."

	para "If in your travels"
	line "you meet my ex,"

	para "could you please"
	line "tell her what you"

	para "told me about our"
	line "son. She would"
	
	para "want to know his"
	line "shade is at rest."

	para "She still lives"
	line "in AZALEA, and she"

	para "likes to visit the"
	line "FOREST PROTECTOR's"
	cont "shrine."
	done

OneoftheseDaysText:
	text "So you've met my"
	line "ex-wife?"

	para "..."
	line "..."

	para "And she wants to"
	line "see me?"

	para "I guess things do"
	line "change."

	para "Maybe the boy and"
	line "I will take a trip"

	para "down to AZALEA one"
	line "of these days!"
	done

NoRoomForLuckText:
	text "Hmm, you don't"
	line "have room for luck"
	cont "just now."

	para "Come back when"
	line "you do!"
	done

GoingonAnAdventureText:
	text "Gramps says we're"
	line "going on an adven-"
	cont "ture!"

	para "I haven't seen"
	line "Granny Ilex since"
	cont "I was 4!"

	para "I'm so excited!"
	line "I hope we visit"
	cont "her soon!"
	done

MySonWasAHealertext:
	text "What is it child?"

	para "..."
	line "..."

	para "Hmm... I see. The"
	line "Forest Protector"

	para "must value your"
	line "council, if the"

	para "shades of those"
	line "fallen in the"

	para "ARCHIVES were"
	line "revealed to you."

	para "Thank you, for"
	line "helping my son's"
	cont "shade fine peace."

	para "You know, my son"
	line "he was a healer,"
	cont "not a fighter."

	para "After those KANTO"
	line "bastards burned"

	para "the BRASS TOWER"
	line "my family sent me"

	para "to live with an"
	line "Aunt in AZALEA."

	para "My ex wife is from"
	line "there, and we rai-"
	cont "sed TYLER there."

	para "As young boys do,"
	line "he was playing in"

	para "ILEX FOREST, where"
	line "he caught a"

	para "CHANSEY! He was so"
	line "fortunate, that"

	para "CHANSEY used to"
	line "carry a LUCKY EGG!"

	para "But when he joined"
	line "the war, he left"
	cont "it with us."

	para "He wanted us to"
	line "have the luck."

	para "Maybe if he'd kept"
	line "it, he would still"
	cont "be here."

	para "But maybe we, wou-"
	line "ldn't be."

	para "Only the FOREST"
	line "PROTECTOR knows."

	para "Ah, well, for the"
	line "help you've given"

	para "our family, I wou-"
	line "ld like to give"
	cont "you his LUCKY EGG."
	done

DaddyLovedMeText:
	text "You met my daddy!?"
	line "That's wonderful!"

	para "Gramps always said"
	line "Daddy was a healer"
	cont "not a fighter."

	para "When I grow up, I"
	line "want to help"
	cont "people like him!"
	done

EcruteakLugiaSpeechHouseGrampsText:
	text "I wasn't much"
	line "older than you are"
	
	para "now, when the war"
	line "began."

	para "They burned the"
	line "BRASS TOWER in the"

	para "first days of the"
	line "war."

	para "They destroyed our"
	line "homes. All to get"

	para "their hands on a"
	line "rare #MON."

	para "But they failed."
	line "I can remember the"
	cont "sky turning black."

	para "FIRE BLAST roaring"
	line "through the air!"

	para "But a giant #-"
	line "MON escaped!"
	
	para "Forest Protector"
	line "only knows where"
	cont "it went."

	para "All I know is they"
	line "never caught it!"
	done

EcruteakLugiaSpeechHouseYoungsterText:
	text "I'm an Orphan."
	line "My dad died"
	cont "in GOLDENROD."

	para "But Gramps says"
	line "he was very"
	cont "brave!"
	done

EcruteakLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 7
	warp_event  4,  7, ECRUTEAK_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, LugiaSpeechHouseRadio

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseGrampsScript, EVENT_GRAMPS_LOVIN_UP_GRANNY_ILEX
	object_event  5,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakLugiaSpeechHouseYoungsterScript, EVENT_KID_VISITING_GRANNY_ILEX
