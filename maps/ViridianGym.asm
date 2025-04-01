	object_const_def
	const VIRIDIANGYM_BLUE
	const VIRIDIANGYM_GYM_GUIDE

ViridianGym_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianGymBlueScript:
	faceplayer
	opentext
	checkflag ENGINE_EARTHBADGE
	iftrue .FightDone
	writetext LeaderBlueBeforeText
	waitbutton
	closetext
	winlosstext LeaderBlueWinText, 0
	loadtrainer BLUE, BLUE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BLUE
	opentext
	writetext Text_ReceivedEarthBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_EARTHBADGE
	loadmem wLevelCap, 100
	writetext LeaderBlueAfterText
	waitbutton
	closetext
	end

.FightDone:
	checkevent EVENT_LEARNED_ABOUT_PROJECT_GENESIS
	iftrue .LearnedAboutGenesis
	writetext LeaderBlueEpilogueText
	waitbutton
	closetext
	end

.LearnedAboutGenesis:
	checkevent EVENT_MR_POKEMON_ASSINATED
	iftrue .DontWorryKid
	writetext IHadMySuspicionstext
	setevent EVENT_MR_POKEMON_ASSINATED
	setevent EVENT_VIRIDIAN_GYM_BLUE
	waitbutton
	writetext DontWorryKidText
	waitbutton
	closetext
	end

.DontWorryKid:
	writetext DontWorryKidText
	waitbutton
	closetext
	end

ViridianGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_BLUE
	iftrue .ViridianGymGuideWinScript
	writetext ViridianGymGuideText
	waitbutton
	closetext
	end

.ViridianGymGuideWinScript:
	writetext ViridianGymGuideWinText
	waitbutton
	closetext
	end

ViridianGymStatue:
	checkflag ENGINE_EARTHBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script

.Beaten:
	gettrainername STRING_BUFFER_4, BLUE, BLUE1
	jumpstd GymStatue2Script

LeaderBlueBeforeText:
	text "BLUE: Yo! Finally"
	line "got here, huh?"

	para "I wasn't in the"
	line "mood at CINNABAR,"

	para "but now I'm ready"
	line "to battle you."

	para "..."
	line "..."

	para "You're telling me"
	line "you conquered all"
	cont "the GYMS in JOHTO?"

	para "Heh! JOHTO's GYMS"
	line "must be pretty"
	cont "pathetic then!"

	para "Hey, don't worry"
	line "about it."

	para "I'll know if you"
	line "are good or not by"

	para "battling you right"
	line "now."

	para "Ready, JOHTO"
	line "CHAMP?"
	done

LeaderBlueWinText:
	text "BLUE: What?"

	para "How the heck did I"
	line "lose to you?"

	para "..."
	line "..."

	para "Tch, all right…"
	line "Here, take this--"
	cont "it's EARTHBADGE."
	done

Text_ReceivedEarthBadge:
	text "<PLAYER> received"
	line "EARTHBADGE."
	done

LeaderBlueAfterText:
	text "BLUE: …"

	para "All right, I was"
	line "wrong. You're the"

	para "real deal. You are"
	line "a good trainer."

	para "But I'm going to"
	line "beat you someday."

	para "Don't you forget"
	line "it!"
	done

LeaderBlueEpilogueText:
	text "BLUE: Listen, you."

	para "You'd better not"
	line "lose until I beat"
	cont "you. Got it?"
	done

IHadMySuspicionstext:
	text "..."
	line "..."

	para "BLUE: Oh you're"
	line "back, looking"
	cont "for a rematch?"

	para "..."
	line "..."

	para "DR FUJI? Who's"
	line "that?"

	para "..."
	line "..."

	para "So they found an"
	line "AMARANTH RIB in"
	cont "the TANOBY RUINS,"

	para "and they used it"
	line "along with some"

	para "fossil res tech"
	line "to create MEWTWO."

	para "I've seen them"
	line "in action."

	para "..."
	line "..."

	para "Yeah, I know."

	para "..."
	line "..."

	para "Apparently, the"
	line "archives for this"

	para "were all stored in"
	line "the old fossil lab"
	cont "on CINNABAR."

	para "I've been doing"
	line "some research too."

	para "..."
	line "..."

	para "The experimentation"
	line "was getting leaked."

	para "I've read some top"
	line "secret documents at"

	para "SILPH, point at a"
	line "major scandal that"
	cont "was about to break."

	para "Reporters were on"
	line "the island and"
	cont "everything."

	para "..."
	line "..."

	para "Yeah, I agree,"
	line "suspicious timing."

	para "Too suspicious."
	line "So, I kept digging."

	para "The ROCKETS who"
	line "set off the VOLCANO"

	para "they were paid to"
	line "do it, by a chief"
	cont "executive at SILPH."

	para "..."
	line "..."

	para "Yeah some asshole"
	line "named JEFF."

	para "He's living under"
	line "an alias."

	para "Calls himself, MR"
	line "#MON."

	para "..."
	line "..."

	para "You've met him too?"
	line "Damn, <PLAY_G>"
	cont "you get around!"

	para "..."
	line "..."

	para "He financed"
	line "PROJECT GENESIS,"

	para "and the VOLCANO"
	line "cover up."

	para "..."
	line "..."

	para "I agree. That's"
	line "why I've sent"
	cont "assassins."

	para "It can't erase"
	line "the harm, but he"

	para "can't be allowed"
	line "to walk free."

	para "..."
	line "..."

	para "Kid, when you've"
	line "seen what I have,"
	cont "you'll agree."
	done

DontWorryKidText:
	text "BLUE: MR #-"
	line "MON is all taken"
	cont "care of."

	para "One less scumbag"
	line "in the world."

	para "..."
	line "..."

	para "He murdered thous-"
	line "ands to save his,"
	cont "own skin."

	para "I couldn't let"
	line "him get away with"
	cont "it."

	para "..."
	line "..."

	para "Yeah, I'll have"
	line "to go into hiding"
	cont "after this."

	para "But it was the"
	line "right thing to do."
	done

ViridianGymGuideText:
	text "Yo, CHAMP in"
	line "making!"

	para "How's it going?"
	line "Looks like you're"
	cont "on a roll."

	para "The GYM LEADER is"
	line "a guy who battled"

	para "the CHAMPION three"
	line "years ago."

	para "He's no pushover."

	para "Give it everything"
	line "you've got!"
	done

ViridianGymGuideWinText:
	text "Man, you are truly"
	line "tough…"

	para "That was a heck of"
	line "an inspirational"

	para "battle. It brought"
	line "tears to my eyes."
	done

ViridianGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VIRIDIAN_CITY, 1
	warp_event  5, 17, VIRIDIAN_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  3, 13, BGEVENT_READ, ViridianGymStatue
	bg_event  6, 13, BGEVENT_READ, ViridianGymStatue

	def_object_events
	object_event  5,  3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ViridianGymBlueScript, EVENT_VIRIDIAN_GYM_BLUE
	object_event  7, 13, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianGymGuideScript, EVENT_VIRIDIAN_GYM_BLUE
