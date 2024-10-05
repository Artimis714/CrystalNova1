	object_const_def
	const COPYCATSHOUSE2F_COPYCAT1 ; if player is male
	const COPYCATSHOUSE2F_DODRIO
	const COPYCATSHOUSE2F_FAIRYDOLL ; lost item
	const COPYCATSHOUSE2F_MONSTERDOLL
	const COPYCATSHOUSE2F_BIRDDOLL
	const COPYCATSHOUSE2F_COPYCAT2 ; if player is female

CopycatsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CopycatsHouse2FWhichGenderCallback

CopycatsHouse2FWhichGenderCallback:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Female
	disappear COPYCATSHOUSE2F_COPYCAT2
	appear COPYCATSHOUSE2F_COPYCAT1
	sjump .Done
.Female:
	disappear COPYCATSHOUSE2F_COPYCAT1
	appear COPYCATSHOUSE2F_COPYCAT2
.Done:
	endcallback

Copycat:
	faceplayer
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftrue .GotPass
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue .TryGivePassAgain
	checkitem LOST_ITEM
	iftrue .ReturnLostItem
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_1
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	sjump .Default_Merge_1

.Default_Female_1:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_KRIS
.Default_Merge_1:
	special LoadUsedSpritesGFX
	checkevent EVENT_VERMILION_ALERT
	iftrue .TalkAboutLostItem
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_2a
	writetext CopycatText_Male_1
	sjump .Default_Merge_2a

.Default_Female_2a:
	writetext CopycatText_Female_1
.Default_Merge_2a:
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_3a
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	sjump .Default_Merge_3a

.Default_Female_3a:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
.Default_Merge_3a:
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_QuickMimicking
	waitbutton
	closetext
	end

.TalkAboutLostItem:
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_2b
	writetext CopycatText_Male_2
	sjump .Default_Merge_2b

.Default_Female_2b:
	writetext CopycatText_Female_2
.Default_Merge_2b:
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .Default_Female_3b
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	sjump .Default_Merge_3b

.Default_Female_3b:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
.Default_Merge_3b:
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_Worried
	waitbutton
	closetext
	setevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	end

.ReturnLostItem:
	opentext
	writetext CopycatText_GiveDoll
	promptbutton
	takeitem LOST_ITEM
	setevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	clearevent EVENT_COPYCATS_HOUSE_2F_DOLL
	sjump .GivePass

.TryGivePassAgain:
	opentext
.GivePass:
	writetext CopycatText_GivePass
	promptbutton
	verbosegiveitem PASS
	iffalse .Cancel
	setevent EVENT_GOT_PASS_FROM_COPYCAT
	writetext CopycatText_ExplainPass
	waitbutton
	closetext
	end

.GotPass:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .GotPass_Female_1
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	sjump .GotPass_Merge_1

.GotPass_Female_1:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_KRIS
.GotPass_Merge_1:
	special LoadUsedSpritesGFX
	opentext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .GotPass_Female_2
	writetext CopycatText_Male_3
	sjump .GotPass_Merge_2

.GotPass_Female_2:
	writetext CopycatText_Female_3
.GotPass_Merge_2:
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .GotPass_Female_3
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinAroundMovementData
	sjump .GotPass_Merge_3

.GotPass_Female_3:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinAroundMovementData
.GotPass_Merge_3:
	faceplayer
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special LoadUsedSpritesGFX
	opentext
	writetext CopycatText_ItsAScream
	waitbutton
.Cancel:
	closetext
	end

CopycatsDodrio:
	opentext
	writetext CopycatsDodrioText1
	cry DODRIO
	promptbutton
	writetext CopycatsDodrioText2
	waitbutton
	closetext
	end

CopycatsHouse2FDoll:
	jumptext CopycatsHouse2FDollText

CopycatsHouse2FBookshelf:
	jumpstd PictureBookshelfScript

CopycatSpinAroundMovementData:
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	turn_head LEFT
	turn_head UP
	turn_head RIGHT
	turn_head DOWN
	step_end

CopycatText_Male_1:
	text "..."
	line "..."

	text "<PLAYER>: Hi! Do"
	line "you like #MON?"

	para "..."
	line "..."

	para "<PLAYER>: Uh, no, I"
	line "just asked you."

	para "..."
	line "..."

	para "<PLAYER>: No,"
	line "You're annoying!"
	done

CopycatText_QuickMimicking:
	text "..."
	line "..."

	para "COPYCAT: Hmm?"
	line "Quit mimicking?"

	para "But that's my"
	line "favorite hobby!"

	para "I'm going to be"
	line "a great thief"
	cont "just like my dad!"

	para "I'll be able to"
	line "sneak into any-"
	cont "where!"
	done

CopycatText_Male_2:
	text "..."
	line "..."

	para "<PLAYER>: My"
	line "house was bombed in"
	cont "the war."

	para "..."
	line "..."

	para "<PLAYER>: My dad"
	line "was a member of"
	cont "TEAM ROCKET!"

	para "But he was sent to"
	line "prison."

	para "..."
	line "..."

	para "<PLAYER>: He led"
	line "a big team. I miss"
	cont "him every day."
	done

CopycatText_Worried:
	text "COPYCAT: I wish I"

	para "could go and visit"
	line "him, but my Aunt"
	cont "says I can't."

	para "..."
	line "..."

	para "I know he's a bad"
	line "man. He did some"

	para "terrible things,"
	line "but he's also my"
	cont "daddy."

	para "I just wish there"
	line "was a way to hear"
	cont "from him."
	done

CopycatText_GiveDoll:
	text "COPYCAT: Wait!"
	line "That's my CLEFAIRY"
	cont "# DOLL!"

	para "I haven't seen it"
	line "since my dad was"
	cont "taken!"

	para "How... how did"
	line "you get it?"

	para "..."
	line "..."

	para "(Sobbing)"
	line "(Sobbing)"

	para "Thank you for this!"
	done

CopycatText_GivePass:
	text "I want to give"
	line "you something."

	para "Please, take my"
	line "MAGNET TRAIN PASS!"
	done

CopycatText_ExplainPass:
	text "..."
	line "..."

	para "COPYCAT: I know"
	line "everyone in KANTO"

	para "is entitled to a"
	line "rail PASS, but"

	para "the guy who works"
	line "in SAFFRON is a"
	cont "racist asshole."

	para "This is just"
	line "easier."

	para "Thank you again"
	line "for finding my"

	para "dad and bringing"
	line "back my CLEFAIRY"
	cont "doll."

	para "I really can't"
	line "tell you how much"
	cont "it means to me."
	done

CopycatText_Male_3:
	text "..."
	line "..."

	para "<PLAYER>: Hey!"
	line "good to see you."

	para "..."
	line "..."

	para "<PLAYER>: Yeah"
	line "my disguises are"
	cont "getting better."

	para "My Aunt doesn't"
	line "want me to become"
	cont "like my dad."
	done

CopycatText_ItsAScream:
	text "COPYCAT: But I"
	line "have too much fun!"
	done

CopycatText_Female_1:
	text "..."
	line "..."

	text "<PLAYER>: Hi! Do"
	line "you like #MON?"

	para "..."
	line "..."

	para "<PLAYER>: Uh, no, I"
	line "just asked you."

	para "..."
	line "..."

	para "<PLAYER>: No,"
	line "You're a bitch!"
	done

CopycatText_Female_2:
	text "..."
	line "..."

	para "<PLAYER>: My"
	line "house was bombed in"
	cont "the war."

	para "..."
	line "..."

	para "<PLAYER>: My dad"
	line "was a member of"
	cont "TEAM ROCKET!"

	para "But he was sent to"
	line "prison."

	para "..."
	line "..."

	para "<PLAYER>: He led"
	line "a big team. I've"

	para "always been a"
	line "daddy's girl."

	para "..."
	line "..."

	para "<PLAYER>: I knew"
	line "you could relate."
	done

CopycatText_Female_3:
	text "..."
	line "..."

	para "<PLAYER>: Hey!"
	line "its so good to"
	cont "see you!"

	para "..."
	line "..."

	para "<PLAYER>: Yeah"
	line "my disguises are"
	cont "getting better."

	para "My Aunt doesn't"
	line "want me to become"
	cont "like daddy."
	done

CopycatsDodrioText1:
	text "DODRIO: Gii giii!"
	done

CopycatsDodrioText2:
	text "MIRROR, MIRROR ON"
	line "THE WALL, WHO'S"

	para "THE FAIREST ONE OF"
	line "ALL?"
	done

CopycatsHouse2FDollText:
	text "This is a rare"
	line "#MON! Huh?"

	para "It's only a doll…"
	done

CopycatsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, COPYCATS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CopycatsHouse2FBookshelf
	bg_event  1,  1, BGEVENT_READ, CopycatsHouse2FBookshelf

	def_object_events
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Copycat, EVENT_COPYCAT_1
	object_event  6,  4, SPRITE_DODRIO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CopycatsDodrio, -1
	object_event  6,  1, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, EVENT_COPYCATS_HOUSE_2F_DOLL
	object_event  2,  1, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  7,  1, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CopycatsHouse2FDoll, -1
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Copycat, EVENT_COPYCAT_2
