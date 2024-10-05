	object_const_def
	const CIANWOODLUGIASPEECHHOUSE_TEACHER
	const CIANWOODLUGIASPEECHHOUSE_LASS
	const CIANWOODLUGIASPEECHHOUSE_TWIN

CianwoodLugiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

CianwoodLugiaSpeechHouseTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CLEAR_BELL
	iftrue .VirgilWifeScript
	writetext CianwoodLugiaSpeechHouseTeacherText
	waitbutton
	closetext
	end

.VirgilWifeScript
	checkevent EVENT_GOT_OLD_AMBER_CIANWOOD
	iftrue .Makemyhusbandproud
	writetext MyHusbandWasAGreatManText
	yesorno
	iffalse .notnow
	checkitem CLEAR_BELL
	iffalse .NoClearBell
	writetext VirgilFoundThisOnTheBeachText
	verbosegiveitem OLD_AMBER
	iffalse .NoRoomForFossil
	takeitem CLEAR_BELL
	setevent EVENT_GOT_OLD_AMBER_CIANWOOD
	writetext AManoftheSeaText
	waitbutton
	closetext
	end

.notnow
	writetext WontGiveClearbellNowText
	waitbutton
	closetext
	end

.NoClearBell
	writetext NoClearBellText
	waitbutton
	closetext
	end

.NoRoomForFossil
	writetext NoRoomForFossil
	waitbutton
	closetext
	end

.Makemyhusbandproud
	writetext AManoftheSeaText
	waitbutton
	closetext
	end

CianwoodLugiaSpeechHouseLassScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CLEAR_BELL
	iftrue .VirgilElderDaughterScript
	writetext CianwoodLugiaSpeechHouseLassText
	waitbutton
	closetext
	end

.VirgilElderDaughterScript
	checkevent EVENT_GOT_SILVER_WING
	iftrue .ThePathtoLugia
	writetext YouBattledDaddytext
	waitbutton
	closetext
	end

.ThePathtoLugia
	writetext MythofLugiatext
	waitbutton
	closetext
	end

CianwoodLugiaSpeechHouseTwinScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_CLEAR_BELL
	iftrue .VirgilYoungestDaughterScript
	writetext CianwoodLugiaSpeechHouseTwinText
	waitbutton
	closetext
	end

.VirgilYoungestDaughterScript
	checkevent EVENT_GOT_SCOPE_LENS_CIANWOOD
	iftrue .ScopeTimes
	writetext DaddySawtheDetailsText
	verbosegiveitem SCOPE_LENS
	iffalse .NoRoomForScope
	setevent EVENT_GOT_SCOPE_LENS_CIANWOOD
	writetext DaddyWatchingText
	waitbutton
	closetext
	end

.ScopeTimes
	writetext DaddyWatchingText
	waitbutton
	closetext
	end

.NoRoomForScope
	writetext NoRoomForScopeText
	waitbutton
	closetext
	end


CianwoodLugiaSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

CianwoodLugiaSpeechHouseTeacherText:
	text "You came from"
	line "OLIVINE?"

	para "Do you remember"
	line "the four islands"
	cont "along the way?"

	para "I heard that a"
	line "mythical sea crea-"
	cont "ture is hiding in"
	cont "them."
	done

CianwoodLugiaSpeechHouseLassText:
	text "I heard that you"
	line "can only see it if"

	para "you have a SILVER"
	line "WING."

	para "My mom says, the"
	line "SILVER WING was"

	para "stolen by a KANTO"
	line "soldier, when they"

	para "attacked ECRUTEAK."
	line "but I'm doubtful."

	para "If they had the"
	line "SILVER WING, they"

	para "would've used it"
	line "to capture the"
	cont "creature. Right?"
	done

CianwoodLugiaSpeechHouseTwinText:
	text "Mommy and big sis"
	line "don't like to talk"
	cont "about daddy."

	para "Mommy says it's"
	line "too sad."

	para "But kids at school"
	line "say he was a JOHTO"
	cont "general!"

	para "He fought at the"
	line "battle of the"

	para "GOLDENROD ARCHIVES"
	line "I wish, I could"
	cont "remember him."
	done

MyHusbandWasAGreatManText:
	text "Well you're not a"
	line "local. What brings"
	cont "you to CIANWOOD?"

	para "..."
	line "..."

	para "My... my VIRGIL?"
	line "You spoke with my"
	cont "VIRGIL?"

	para "..."

	para "I see."

	para "..."
	line "..."

	para "Yes, my husband"
	line "was a great man."

	para "He gave his life"
	line "fighting to prot-"
	cont "ect our country's"
	cont "heritage."

	para "And he suceded."
	line "Those KANTO bast-"
	cont "ards never got the"
	cont "CLEAR BELL."

	para "Thank you for"
	line "guarding it."

	para "Would you be will-"
	line "ing to give it to"
	cont "us?"
	done

VirgilFoundThisOnTheBeachText:
	text "Thank you so much"
	line "for returning the"

	para "CLEAR BELL. It was"
	line "a Family heirloom"

	para "long before those"
	line "monks in ECRUTEAK"

	para "decided it was"
	line "theirs."

	para "To repay you for"
	line "your kindness, I"

	para "would like to give"
	line "you a small gift."

	para "Years ago, VIRGIL"
	line "found this OLD"
	cont "AMBER."

	para "It had washed up"
	line "on the beach."

	para "I've been told it's"
	line "worth something,"

	para "but I've never."
	line "looked into it."
	done

WontGiveClearbellNowText:
	text "The CLEAR BELL is"
	line "a sacred item."

	para "Perhaps its dest-"
	line "iny requires that"

	para "it remain with"
	line "you for a while"
	cont "longer."

	para "All I ask is that"
	line "you return the"

	para "bell to us, when"
	line "the time is right."
	done

NoClearBellText:
	text "You don't appear"
	line "to have brought it"
	cont "with you."

	para "Please tell me you"
	line "haven't lost it?"

	para "This Bell is very"
	line "precious to us."
	done

NoRoomForFossil:
	text "It doesn't look"
	line "like you have room"

	para "for the AMBER just"
	line "now. Come back"

	para "when you do, and I"
	line "will give it to"
	cont "you."
	done

AManoftheSeaText:
	text "VIRGIL was a man"
	line "of the Sea."

	para "He took care of"
	line "us, and ensured"

	para "our family was"
	line "safe from the"
	cont "fighting."

	para "We were lucky"
	line "to have him."

	para "Thank you for ret-"
	line "urning the CLEAR"
	cont "BELL."

	para "and thank you for"
	line "helping his shade"

	para "find peace under"
	line "the FOREST PROT-"
	cont "ECTOR's care."

	para "We will forever"
	line "be grateful."
	done

YouBattledDaddytext:
	text "... What!?"
	line "Y-you battled"
	cont "Daddy?"

	para "Life without him"
	line "has been so hard"

	para "We miss him all"
	line "the time."

	para "Momma says we're"
	line "originally from"
	cont "ECRUTEAK."

	para "It's how we know"
	line "the story of the"

	para "Mythical birds"
	line "that live among"

	para "the WHIRL ISLA-"
	line "NDS."

	para "In daddy's stor-"
	line "ies, there were"

	para "Four different"
	line "Legendary Birds"

	para "that call the"
	line "islands home."

	para "If you ever find"
	line "the SILVER WING"

	para "I'll tell you"
	line "the story."
	done

MythofLugiatext:
	text "You found it!"
	line "the lost SILVER"
	cont "WING!"

	para "..."
	line "..."

	para "I knew it was in"
	line "KANTO!"

	para "Right, yes okay"
	line "here is the tale."

	para "Long ago, before"
	line "the War."

	para "The WHIRL ISLANDS"
	line "were one large"
	cont "island."

	para "On the island"
	line "roosted three"
	cont "great birds."

	para "ICE, FIRE, and"
	line "LIGHTNING."

	para "The people of"
	line "Island prospered"

	para "But harmony was"
	line "ruined, by the"
	cont "greed of man."

	para "The great birds"
	line "fell upon one"
	cont "another."

	para "And with their"
	line "wrath. They des-"
	cont "royed the island."

	para "It was only with"
	line "the power of a"

	para "greater bird"
	line "that the fight-"
	cont "ing stopped."

	para "My great, great"
	line "grandpa lived on"
	cont "the Island."

	para "Daddy said that"
	line "he found the"

	para "SILVER WING"
	line "in the after-"
	cont "math of the"
	cont "battle."

	para "It's just a"
	line "story though."
	done

DaddySawtheDetailsText:
	text "You met daddy!?"
	line "That's amazing!"

	para "The kids at sc-"
	line "hool say he was"
	cont "a war hero!"

	para "I wish I could"
	line "remember him."

	para "Momma says daddy"
	line "saw the tiny"
	cont "details."

	para "That he always"
	line "knew just where"
	cont "to strike."

	para "She gave me his"
	line "SCOPE LENS, but"

	para "I don't want to"
	line "be a fighter."

	para "If you fought"
	line "daddy, you must"

	para "be really strong"
	line "I bet you could"

	para "use it more than"
	line "I could."
	done

DaddyWatchingText:
	text "I know daddy is"
	line "watching over"
	cont "all of us."

	para "Thank you for"
	line "coming."

	para "Momma now talks"
	line "about daddy."

	para "She's been hap-"
	line "pier."

	para "I'll always miss"
	line "daddy, but I'm"

	para "glad he's at"
	line "peace."
	done

NoRoomForScopeText:
	text "Sorry. You can't"
	line "fit this in your"

	para "bag. It'll break!"
	line "come back when"

	para "you have more"
	line "room!"
	done

CianwoodLugiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 6
	warp_event  3,  7, CIANWOOD_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodLugiaSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodLugiaSpeechHouseBookshelf

	def_object_events
	object_event  2,  4, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseTeacherScript, -1
	object_event  6,  5, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseLassScript, -1
	object_event  0,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CianwoodLugiaSpeechHouseTwinScript, -1
