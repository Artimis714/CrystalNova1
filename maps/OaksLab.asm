	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_SCIENTIST2
	const OAKSLAB_SCIENTIST3

OaksLab_MapScripts:
	def_scene_scripts

	def_callbacks

Oak:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iftrue .CheckKantoPapers
	checkitem KANTO_PAPERS
	iffalse .MaybeWeCanDoSomething
	writetext OakWelcomeKantoText
	promptbutton
	setevent EVENT_TALKED_TO_OAK_IN_KANTO
.CheckKantoPapers:
	checkitem KANTO_PAPERS
	iffalse .MaybeWeCanDoSomething
	checkevent EVENT_OPENED_MT_SILVER
	iftrue .CheckPokedex
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iftrue .CheckBadges
.CheckBadges:
	readvar VAR_BADGES
	ifequal NUM_BADGES, .OpenMtSilver
	ifequal NUM_JOHTO_BADGES, .Complain
	sjump .AhGood

.CheckPokedex:
	writetext OakLabDexCheckText
	waitbutton
	special ProfOaksPCBoot
	writetext OakLabGoodbyeText
	waitbutton
	closetext
	end

.OpenMtSilver:
	writetext OakOpenMtSilverText
	promptbutton
	setevent EVENT_OPENED_MT_SILVER
	setevent EVENT_BEAT_MEDIUM_AGATHA
	checkitem KANTO_PAPERS
	iftrue .CheckPokedex
	end

.Complain:
	writetext OakNoKantoBadgesText
	promptbutton
	checkitem KANTO_PAPERS
	iftrue .CheckPokedex
	end

.AhGood:
	writetext OakYesKantoBadgesText
	promptbutton
	checkitem KANTO_PAPERS
	iftrue .CheckPokedex
	end

.MaybeWeCanDoSomething:
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iftrue .WeCanDoSomething
	writetext WelcomeToKantoUnderBadText
	waitbutton
	sjump .WeCanDoSomething

.WeCanDoSomething:
	writetext MaybeWeCanDoSomethingText
	readvar VAR_DEXCAUGHT
	ifgreater 200, .WillGiveNewKantoPapers
	readvar VAR_DEXCAUGHT
	ifgreater 150, .FundingGoneToElm
	readvar VAR_DEXCAUGHT
	ifgreater 100, .MoreWorkRequired
	readvar VAR_DEXCAUGHT
	ifgreater 49, .ElmShouldBeFired
	readvar VAR_DEXCAUGHT
	ifless 50, .ImAshamedToCallyouATrainer
	end

.WillGiveNewKantoPapers
	writetext WillGiveNewKantoPapers
	verbosegiveitem KANTO_PAPERS
	waitbutton
	closetext
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iffalse .TalkedtoOakInKanto
	end

.FundingGoneToElm:
	writetext FundingGoneToElm
	waitbutton
	closetext
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iffalse .TalkedtoOakInKanto
	end

.MoreWorkRequired:
	writetext MoreWorkRequiredText
	waitbutton
	closetext
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iffalse .TalkedtoOakInKanto
	end

.ElmShouldBeFired:
	writetext ElmShouldBeFiredText
	waitbutton
	closetext
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iffalse .TalkedtoOakInKanto
	end

.ImAshamedToCallyouATrainer:
	writetext ImAshamedToCallyouATrainerText
	waitbutton
	closetext
	checkevent EVENT_TALKED_TO_OAK_IN_KANTO
	iffalse .TalkedtoOakInKanto
	end

.TalkedtoOakInKanto:
	setevent EVENT_TALKED_TO_OAK_IN_KANTO
	end

OaksAssistant2Script:
	jumptextfaceplayer OaksAssistant2Text

OaksAssistant3Script:
	jumptextfaceplayer OaksAssistant3Text

OaksLabBookshelf:
	jumpstd DifficultBookshelfScript

OaksLabPoster1:
	jumptext OaksLabPoster1Text

OaksLabPoster2:
	jumptext OaksLabPoster2Text

OaksLabTrashcan:
	jumptext OaksLabTrashcanText

OaksLabPC:
	opentext
	readvar VAR_DEXCAUGHT
	ifgreater 150, .elmfundingemail
	writetext OaksLabPCText
	waitbutton
	closetext
	end

.elmfundingemail:
	writetext OaksLabPCText2
	closetext
	end


WelcomeToKantoUnderBadText:
	text "OAK: Ah, <PLAY_G>!"
	line "Welcome to KANTO!"

	para "..."
	line "..."

	para "Oh No, someone"
	line "stole your KANTO"
	cont "PAPERS!"

	para "That's not ideal."
	line "It'll impede your"

	para "vital #MON"
	line "research!"

	para "Hmm..."
	done

MaybeWeCanDoSomethingText:
	text "I'm going to check"
	line "your #DEX."

	para "Depending on the"
	line "reading, I might"

	para "I might be able"
	line "to pull a few"
	cont "strings."
	done

WillGiveNewKantoPapers:
	text "<PLAY_G>! That's"
	line "incredible!"

	para "You've caught over"
	line "200! Different"
	cont "kinds of #MON!"

	para "Here, let me draft"
	line "some KANTO PAPERS"
	cont "for you."

	para "..."
	line "..."

	para "Of course I can"
	line "just make them."

	para "It doesn't cost"
	line "me anything."

	para "But I need to"
	line "be able to justify"

	para "new KANTO PAPERS"
	line "to the government"
	cont "in SAFFRON."

	para "Anyway, here you"
	line "go!"
	done

FundingGoneToElm:
	text "That's very imp-"
	line "ressive!"

	para "You've caught over"
	line "151 #MON!"

	para "That's more than"
	line "even RED managed"

	para "back when he was"
	line "my student."

	para "I'd love to give"
	line "you new KANTO"
	cont "PAPERS."

	para "But all all your"
	line "success has meant"

	para "I was able to"
	line "increase ELM's"
	cont "budget."

	para "I'm sorry, but"
	line "there's nothing"

	para "left in to finance"
	line "new KANTO PAPERS."

	para "Catch some more,"
	line "and we'll talk."
	done

MoreWorkRequiredText:
	text "That's a pretty"
	line "decent collection."

	para "Over 100 #MON"
	line "is respectable for"
	cont "most trainers." 

	para "Unfortunately,"
	line "those numbers"

	para "aren't even enough"
	line "to increase ELM's"

	para "budget, much less"
	line "finance new KANTO"
	cont "PAPERS."

	para "Keep working at it"
	line "or good luck"

	para "finding your"
	line "original copy."
	done

ElmShouldBeFiredText:
	text "Not even 100"
	line "species of #MON?"

	para "PROF.ELM should"
	line "be fired for"

	para "allowing such"
	line "an incompetent"

	para "research assistant"
	line "to be part of"
	cont "his team!"

	para "There's no chance"
	line "you'll be getting"

	para "new KANTO PAPERS"
	line "from me, with"
	cont "numbers like that!"
	done

ImAshamedToCallyouATrainerText:
	text "LESS THAN 50!!!"

	para "<PLAY_G>!"

	para "YOU SHOULD BE"
	line "ASHAMED TO CALL"

	para "YOURSELF A TRAINER!"
	done

OakWelcomeKantoText:
	text "OAK: Ah, <PLAY_G>!"
	line "It's good of you"

	para "to come all this"
	line "way to KANTO."

	para "What do you think"
	line "of the trainers"

	para "out here?"
	line "Pretty tough, huh?"
	done

OakLabDexCheckText:
	text "How is your #-"
	line "DEX coming?"

	para "Let's see…"
	done

OakLabGoodbyeText:
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

OakOpenMtSilverText:
	text "OAK: Wow! That's"
	line "excellent!"

	para "You collected the"
	line "BADGES of GYMS in"
	cont "KANTO. Well done!"

	para "I was right in my"
	line "assessment of you."

	para "Tell you what,"
	line "<PLAY_G>. I'll make"

	para "arrangements so"
	line "that you can go to"
	cont "MT.SILVER."

	para "MT.SILVER is a big"
	line "mountain that is"

	para "home to many wild"
	line "#MON."

	para "It's too dangerous"
	line "for your average"

	para "trainer, so it's"
	line "off limits. But"

	para "we can make an"
	line "exception in your"
	cont "case, <PLAY_G>."

	para "Go up to INDIGO"
	line "PLATEAU. You can"

	para "reach MT.SILVER"
	line "from there."
	done

OakNoKantoBadgesText:
	text "OAK: Hmm? You're"
	line "not collecting"
	cont "KANTO GYM BADGES?"

	para "The GYM LEADERS in"
	line "KANTO are tougher"

	para "than any you"
	line "battled in JOHTO."

	para "It's why we won"
	line "the war."

	para "But we wanted you"
	line "in this country"

	para "to shake up that"
	line "old assumption."
	done

OakYesKantoBadgesText:
	text "OAK: Ah, you're"
	line "collecting KANTO"
	cont "GYM BADGES."

	para "I imagine that"
	line "it's hard, but the"

	para "experience is sure"
	line "to help you."

	para "Come see me when"
	line "you get them all."

	para "I'll have a gift"
	line "for you."

	para "Keep trying hard,"
	line "<PLAY_G>!"
	done

OaksAssistant2Text:
	text "Thanks to your"
	line "work on the #-"
	cont "DEX, the PROF's"

	para "research is coming"
	line "along great."

	para "PROF.ELM might"
	line "even earn that"
	cont "grant."
	done

OaksAssistant3Text:
	text "Don't tell anyone,"
	line "but PROF.OAK'S"

	para "#MON TALK isn't"
	line "a live broadcast."

	para "..."
	line "..."

	para "Yeah really, they"
	line "record a month's"

	para "worth of shows in"
	line "advance."
	done

OaksLabPoster1Text:
	text "Press START to"
	line "open the MENU."
	done

OaksLabPoster2Text:
	text "The SAVE option is"
	line "on the MENU."

	para "Use it in a timely"
	line "manner."
	done

OaksLabTrashcanText:
	text "There's nothing in"
	line "here…"
	done

OaksLabPCText:
	text "There's an e-mail"
	line "message on the PC."

	para "PROF.OAK, I was"
	line "hoping for an"

	para "update regarding"
	line "my application for"
	cont "increased funding."

	para "I heard rumors"
	line "that <PLAY_G> is"

	para "getting quite a"
	line "reputation in"
	cont "KANTO."

	para "Surely that must"
	line "bode well for my"
	cont "application."

	para "ELM in NEW BARK"
	line "TOWN"
	done

OaksLabPCText2:
	text "There's an e-mail"
	line "message on the PC."

	para "PROF.OAK, Thank"
	line "you for putting"

	para "in my grant app-"
	line "lication. We've"

	para "been able to"
	line "hire a new aid!"

	para "Things are looking"
	line "up!"

	para "ELM in NEW BARK"
	line "TOWN"
	done

OaksLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  1, BGEVENT_READ, OaksLabBookshelf
	bg_event  0,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  1,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  2,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  3,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  6,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  7,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  8,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  9,  7, BGEVENT_READ, OaksLabBookshelf
	bg_event  4,  0, BGEVENT_READ, OaksLabPoster1
	bg_event  5,  0, BGEVENT_READ, OaksLabPoster2
	bg_event  9,  3, BGEVENT_READ, OaksLabTrashcan
	bg_event  0,  1, BGEVENT_READ, OaksLabPC

	def_object_events
	object_event  4,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Oak, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant2Script, -1
	object_event  1,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistant3Script, -1
