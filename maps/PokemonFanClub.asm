	object_const_def
	const POKEMONFANCLUB_CHAIRMAN
	const POKEMONFANCLUB_RECEPTIONIST
	const POKEMONFANCLUB_CLEFAIRY_GUY
	const POKEMONFANCLUB_TEACHER
	const POKEMONFANCLUB_FAIRY
	const POKEMONFANCLUB_ODDISH

PokemonFanClub_MapScripts:
	def_scene_scripts

	def_callbacks

PokemonFanClubChairmanScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	iftrue .HeardSpeech
	checkevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT_BUT_BAG_WAS_FULL
	iffalse .LeaveUsBe
	writetext BossTryingToRescueUsText
	setevent EVENT_LISTENED_TO_FAN_CLUB_PRESIDENT
	waitbutton
	playmapmusic
	end

.HeardSpeech:
	writetext HeardSpeachText
	waitbutton
	playmapmusic
	end

.LeaveUsBe:
	writetext LeaveUsBeText
	waitbutton
	playmapmusic
	end

PokemonFanClubReceptionistScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	writetext PokemonFanClubReceptionistText
	waitbutton
	playmapmusic
	end

PokemonFanClubClefairyGuyScript:
	faceplayer
	opentext
	playmusic MUSIC_ROCKET_ENCOUNTER
	checkevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	iftrue .GotLostItem
	writetext PokemonFanClubClefairyGuyMakingDoWithADollIFoundText
	checkevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	iftrue .MetCopycat
	waitbutton
	closetext
	playmapmusic
	end

.MetCopycat:
	promptbutton
	writetext PokemonFanClubClefairyGuyTakeThisDollBackToGirlText
	promptbutton
	yesorno
	iffalse .Iunderstand
	waitsfx
	giveitem LOST_ITEM
	iffalse .NoRoom
	disappear POKEMONFANCLUB_FAIRY
	writetext PokemonFanClubPlayerReceivedDollText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_LOST_ITEM_FROM_FAN_CLUB
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .IChoseToStay
	writetext PokemonFanClubClefairyGuyGoingToGetARealClefairyText
	closetext
	playmapmusic
	end

.GotLostItem:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .IChoseToStay
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue .ILoveCopyCat
	writetext PokemonFanClubClefairyGuyGoingToGetARealClefairyText
	waitbutton
	closetext
	playmapmusic
	end

.IChoseToStay:
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue .ILoveCopyCat
	writetext PokemonFanClubClefairyGuyIStayedText
	waitbutton
	closetext
	playmapmusic
	end

.ILoveCopyCat:
	writetext PokemonFanClubClefairyGuyProudofDaughterText
	waitbutton
	closetext
	playmapmusic
	end

.NoRoom:
	writetext PokemonFanClubClefairyGuyPackIsJammedFullText
	waitbutton
	closetext
	playmapmusic
	end

.Iunderstand:
	writetext PokemonFanClubClefairyGuyIUnderstandText
	waitbutton
	closetext
	playmapmusic
	end

PokemonFanClubTeacherScript:
	faceplayer
	playmusic MUSIC_ROCKET_ENCOUNTER
	opentext
	checkevent EVENT_GOT_BAYLEEF
	iftrue .GotBayleef
	writetext PokemonFanClubTeacherText
	yesorno
	iffalse .RefusedBayleef
	writetext PokemonFanClubTeacherImCountingOnYouText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoomBayleef
	writetext ReceivedBayleefText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke BAYLEEF, 17
	setevent EVENT_GOT_BAYLEEF
	disappear POKEMONFANCLUB_ODDISH
	writetext PokemonFanClubTeacherBayleefMayEvolveText
	waitbutton
	closetext
	playmapmusic
	end

.NoRoomBayleef:
	writetext PokemonFanClubTeacherPartyFullText
	waitbutton
	closetext
	playmapmusic
	end

.RefusedBayleef:
	writetext PokemonFanClubTeacherNoBayleefText
	waitbutton
	closetext
	playmapmusic
	end

.GotBayleef:
	writetext PokemonFanClubTeacherBayleefMayEvolveText
	waitbutton
	closetext
	playmapmusic
	end

PokemonFanClubClefairyDollScript:
	jumptext PokemonFanClubClefairyDollText

PokemonFanClubBayleefScript:
	opentext
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue .Abandoned
	writetext PokemonFanClubBayleefText
	cry BAYLEEF
	waitbutton
	closetext
	end

.Abandoned:
	pause 15
	showemote EMOTE_SAD, POKEMONFANCLUB_ODDISH, 15
	cry BAYLEEF
	writetext AbandonedBayleefText
	yesorno
	iffalse .NotWorthCatching
	closetext
	pause 15
	cry BAYLEEF
	setevent EVENT_GOT_BAYLEEF
	loadwildmon BAYLEEF, 17
	loadvar VAR_BATTLETYPE, BATTLETYPE_FORCESHINY
	startbattle
	disappear POKEMONFANCLUB_ODDISH
	reloadmapafterbattle
	end

.NotWorthCatching:
	writetext NotWorthCatchingText
	closetext
	pause 15
	showemote EMOTE_SAD, POKEMONFANCLUB_ODDISH, 15
	cry BAYLEEF
	end

PokemonFanClubListenSign:
	jumptext PokemonFanClubListenSignText

PokemonFanClubBraggingSign:
	jumptext PokemonFanClubBraggingSignText

BossTryingToRescueUsText:
	text "..."
	line "..."

	para "Huh?"
	line "Kid are you talkin"
	cont "to me?"

	para "..."
	line "..."

	para "Shit! No kidding?"
	line "You met ROSCO?"

	para "He's still out"
	line "and he's planning"
	cont "our escape!"

	para "Fuck yeah!"
	line "Now that's what"
	cont "I'm talkin about!"

	para "Okay, we've been"
	line "training our #MON"
	
	para "for a jailbreak!"
	line "What's the plan?"

	para "..."
	line "..."

	para "Hmmm... yeah, I"
	line "get it."

	para "Right, right, then"
	line "We'll just wait"
	cont "for ROSCO's signal!"
	done

HeardSpeachText:
	text "Right, right, then"
	line "We'll just wait"
	cont "for ROSCO's signal!"
	done

LeaveUsBeText:
	text "Who the hell are"
	line "you?"
	
	para "From JOHTO?"
	line "how did you get in"
	cont "here?"

	para "I don't care."
	line "just leave us."

	para "We can't hope to"
	line "escape."
	done

PokemonFanClubReceptionistText:
	text "So Kid what are"
	line "you in here for?"

	para "..."
	line "..."

	para "Risky sneaking in"
	line "here like that!"

	para "..."
	line "..."

	para "Me? Well my crew"
	line "are responsible"
	cont "for CINNIBAR."

	para "..."
	line "..."

	para "About 20,000"
	line "civilians died."

	para "A tragedy, but"
	line "That's nothing on"

	para "the pits full of"
	line "unmarked graves"
	cont "outside OLIVINE!"

	para "My mother, my"
	line "aunt, and my bro"

	para "are all in there"
	line "somewhere."

	para "I won't feel pity"
	line "for my revenge."
	done

PokemonFanClubClefairyGuyMakingDoWithADollIFoundText:
	text "My daughter is"
	line "still on the out"
	cont "side."

	para "When the KANTO"
	line "Police raided our"

	para "base... she made"
	line "it out."

	para "Her CLEFAIRY doll"
	line "is all I have"

	para "left to remind me"
	line "of her."

	para "I wish I knew a"
	line "way to get it to"
	cont "her."
	done

PokemonFanClubClefairyGuyTakeThisDollBackToGirlText:
	text "..."
	line "..."

	para "Oh, really? You've"
	line "met COPYCAT?"

	para "How's my brilliant"
	line "baby girl doing?"

	para "..."
	line "..."

	para "I wish she could"
	line "visit, but it's"
	cont "too risky."

	para "..."
	line "..."

	para "I know, can you"
	line "please take her"

	para "CLEFAIRY back to"
	line "her?"

	para "..."
	line "..."

	para "CINNIBAR?"
	line "Yes, that was my"
	cont "idea."

	para "..."
	line "..."

	para "I know. (Sigh)"
	line "I'm not going to"

	para "sit here and give"
	line "you excuses behind"
	cont "my actions."

	para "We did what we had"
	line "to do."

	para "It wasn't right."
	line "we all knew it."

	para "But war rarely"
	line "cares about what's"
	cont "right."

	para "..."
	line "..."

	para "I know the judge-"
	line "ment the FOREST"
	cont "PROTECTOR will"

	para "pass on my shade"
	line "when I pass on."

	para "But regardless my"
	line "sins, I love my"
	cont "daughter."

	para "Will you please"
	line "give this #DOLL"
	cont "to her?"
	done

PokemonFanClubPlayerReceivedDollText:
	text "<PLAYER> received"
	line "#DOLL."

	para "Thank you for your"
	line "help."

	para "Maybe, I don't"
	line "deserve it."

	para "..."
	line "..."

	para "Yes, I think you"
	line "have a point."

	para "People can be more"
	line "than one thing."
	done

PokemonFanClubClefairyGuyIUnderstandText:
	text "Okay, I understand"
	line "I wouldn't help"
	cont "me either."

	para "If you ever meet"
	line "my daughter again,"

	para "Please tell her I"
	line "love her."
	done

PokemonFanClubClefairyGuyGoingToGetARealClefairyText:
	text "..."
	line "..."

	para "I see, so ROSCO"
	line "is working on"

	para "a way to get"
	line "us out."

	para "..."
	line "..."

	para "I won't go, if"
	line "the others are"
	cont "freed."

	para "..."
	line "..."

	para "I would love to"
	line "see my girl again"

	para "but KANTO was"
	line "right to put me"
	cont "in here."
	done

PokemonFanClubClefairyGuyIStayedText:
	text "..."
	line "..."

	para "Yeah, I'm the last"
	line "one in here."

	para "I didn't go, when"
	line "ROSCO came with"
	cont "his big 'ESCAPE'"

	para "I deserve to be"
	line "in here after"
	cont "what I've done."

	para "But I hope my"
	line "daughter can live"

	para "a better life now"
	line "that the war is"
	cont "done."

	para "Thanks again for"
	line "taking her #-"
	cont "DOLL back to her!"
	done
	

PokemonFanClubClefairyGuyProudofDaughterText:
	text "You're back!"
	line "Did you get the"

	para "#DOLL to my"
	line "COPYCAT?"

	para "..."
	line "..."

	para "That means so"
	line "much for me to"
	cont "hear."

	para "I don't deserve"
	line "it, but truly"
	cont "thank you!"
	done


PokemonFanClubClefairyGuyPackIsJammedFullText:
	text "Your PACK is"
	line "too full. Sorry"

	para "But I wouldn't"
	line "want COPYCAT's"

	para "#DOLL to get"
	line "crushed."

	para "Can you try to"
	line "make some room?"
	done

PokemonFanClubTeacherText:
	text "I rescued this"
	line "BAYLEEF from"
	cont "CINNABAR."

	para "I don't know what"
	line "happened to its"
	cont "trainer."

	para "We were causing"
	line "enough death, so"
	cont "I saved it."

	para "But It doesn't have"
	line "much of a life in"
	cont "here."

	para "Would you please"
	line "take her with"
	cont "you?"
	done

PokemonFanClubTeacherImCountingOnYouText:
	text "Thank you for"
	line "being willing to"

	para "give this poor"
	line "BAYLEEF a good"
	cont "home!"
	done

ReceivedBayleefText:
	text "<PLAYER> received"
	line "a BAYLEEF!"
	done

PokemonFanClubTeacherBayleefMayEvolveText:
	text "I just hope it"
	line "can enjoy real"
	cont "sunlight."

	para "Maybe, one day, I"
	line "can too."
	done

PokemonFanClubTeacherPartyFullText:
	text "Thanks for offering"
	line "to look after it,"

	para "but it looks like"
	line "your party is"
	cont "full."
	done

PokemonFanClubTeacherNoBayleefText:
	text "Oh, I see..."
	line "just because its"

	para "from the worst"
	line "of the JOHTO"

	para "starters. You don't"
	line "want it."

	para "You're a snob."
	done

PokemonFanClubClefairyDollText:
	text "It's a CLEFAIRY!"
	line "Huh?"

	para "Oh, right. It's a"
	line "CLEFAIRY #"
	cont "DOLL."

	para "It's a little"
	line "Tattered, but it"
	cont "seems well loved."
	done

PokemonFanClubBayleefText:
	text "BAYLEEF: Li liif!"
	done

AbandonedBayleefText:
	text "It's a sad looking"
	line "BAYLEEF."

	para "It appears to have"
	line "been left behind"

	para "when the other"
	line "prisoners escaped."

	para "Want to try to?"
	line "catch it?"
	done

NotWorthCatchingText:
	text "It's part of"
	line "the worst starter"

	para "line, it's not"
	line "worth trying to"
	cont "catch."

	para "BAYLEEF is sad"
	line "because it knows."
	done

PokemonFanClubListenSignText:
	text "You do the crime!"
	line "You do the time!"
	done

PokemonFanClubBraggingSignText:
	text "Visiting hours:"
	line "(The page is torn)"

	para "From the look of"
	line "prisoners, they"

	para "don't get visitors"
	line "anyway."
	done

PokemonFanClub_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 3
	warp_event  3,  7, VERMILION_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  7,  0, BGEVENT_READ, PokemonFanClubListenSign
	bg_event  9,  0, BGEVENT_READ, PokemonFanClubBraggingSign

	def_object_events
	object_event  3,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubChairmanScript, EVENT_RESTORED_POWER_TO_KANTO
	object_event  4,  1, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubReceptionistScript, EVENT_RESTORED_POWER_TO_KANTO
	object_event  2,  3, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyGuyScript, -1
	object_event  7,  2, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubTeacherScript, EVENT_RESTORED_POWER_TO_KANTO
	object_event  2,  4, SPRITE_FAIRY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokemonFanClubClefairyDollScript, EVENT_VERMILION_FAN_CLUB_DOLL
	object_event  7,  3, SPRITE_BAYLEEF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PokemonFanClubBayleefScript, EVENT_GOT_BAYLEEF
