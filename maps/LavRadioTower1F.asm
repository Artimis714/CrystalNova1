	object_const_def
	const LAVRADIOTOWER1F_SUPER_NERD1
	const LAVRADIOTOWER1F_GENTLEMAN
	const LAVRADIOTOWER1F_SUPER_NERD2

LavRadioTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

LavRadioTower1FSuperNerd1Script:
	trainer BURGLAR, JAX, EVENT_BEAT_BURGLAR_GHOST_JAX, BurglarJaxGhostSeenText, BurglarJaxGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BurglarJaxGhostAfterBattleText
	setevent EVENT_LAVTOWER_GHOST_BURGLAR_JAX
	waitbutton
	closetext
	end

LavRadioTower1FGentlemanScript:
	trainer SWIMMERF, LOLITA, EVENT_BEAT_SWIMMERF_GHOST_LOLITA, SwimmerFLollitaGhostSeenText, SwimmerFLollitaGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmerFLollitaGhostAfterBattleText
	setevent EVENT_LAVTOWER_GHOST_SWIMMER_LOLITA
	waitbutton
	closetext
	end

LavRadioTower1FSuperNerd2Script:
	trainer JUGGLER, ALDUS, EVENT_BEAT_JUGGLER_GHOST_ALDUS, JugglerAldustGhostSeenText, JugglerAldustGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerAldustGhostAfterBattleText
	setevent EVENT_LAVTOWER_GHOST_JUGGLER_ALDUS
	waitbutton
	closetext
	end

BurglarJaxGhostSeenText:
	text "AIR RAID SIRENS!"
	line "Shit! Shit!"

	para "This was supposed"
	line "to be an easy job!"
	done

BurglarJaxGhostBeatenText:
	text "I can't believe"
	line "I died in that"
	cont "bastard's house."
	done

BurglarJaxGhostAfterBattleText:
	text "The houses were"
	line "empty!"

	para "JOHTO bombing the"
	line "cities, but if"

	para "you were brave"
	line "like me. You"
	cont "stayed."

	para "All those rich"
	line "folk evacuated to"

	para "their resorts in"
	line "the SEVII Islands"

	para "Their goods were"
	line "mine for the"
	cont "taking!"

	para "I tried to steal"
	line "from one asshole"

	para "He called himself"
	line "MR #MON."

	para "..."
	line "..."

	para "Of course he"
	line "survived the war."

	para "I'd been hoping"
	line "to steal some"

	para "prototype SILPH"
	line "GEAR from his"
	cont "house."

	para "I hate that I was"
	line "in his home when"
	cont "the bombs dropped."

	para "If you ever see"
	line "him again, tell"

	para "him that he's a"
	line "prick!"
	done

SwimmerFLollitaGhostSeenText:
	text "The VOLCANO!!!"
	done

SwimmerFLollitaGhostBeatenText:
	text "BURNED ALIVE."
	done

SwimmerFLollitaGhostAfterBattleText:
	text "I was out for a"
	line "swim the day"

	para "CINNABAR's VOLCANO"
	line "erupted."

	para "The WAR had ended"
	line "we thought we"
	cont "were all safe!"

	para "I was meant to"
	line "meet up with my"
	cont "daddy that night."

	para "..."
	line "..."

	para "Not my father,"
	line "but I called him"
	cont "daddy..."

	para "..."
	line "..."

	para "Anyway, he thinks"
	line "I stood him up."
	cont "I hate that."

	para "He likes to visit"
	line "the TRAINER HOUSE"
	cont "in VARIDIAN."

	para "..."
	line "..."

	para "Daddy should know"
	line "I wanted to be"
	cont "there."
	done

JugglerAldustGhostSeenText:
	text "BOOM! BOOM! BOOM!"
	done

JugglerAldustGhostBeatenText:
	text "Lost again by my"
	line "own explosives."
	done

JugglerAldustGhostAfterBattleText:
	text "I was an explosion"
	line "specialist in the"
	cont "war."

	para "..."
	line "..."

	para "Yes, I worked in"
	line "LT SURGE's unit."

	para "I was the one who"
	line "rigged the explos-"
	cont "ives when we took"
	cont "GOLDENROD."

	para "..."
	line "..."

	para "I was caught in"
	line "the blast. It was"

	para "intentional my"
	line "#MON were going"
	cont "to perish along"

	para "with countless"
	line "civilians, all for"
	
	para "a war I didn't"
	line "believe in!"

	para "..."
	line "..."

	para "I see, so you've"
	line "met the shades of"
	cont "the ARCHIVES."

	para "..."
	line "..."

	para "It is good that"
	line "their shades are"

	para "not bent on veng-"
	line "ance."

	para "..."
	line "..."

	para "For me, I'd like"
	line "to apologize to"
	cont "my brother HORTON."

	para "Let him know that"
	line "I regret what we"
	cont "did under SURGE."

	para "and that I want"
	line "him to find a"
	cont "better life."
	done

LavRadioTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  0, SOUL_HOUSE, 1
	warp_event  2,  7, LAVENDER_TOWN, 7
	warp_event  3,  7, LAVENDER_TOWN, 7

	def_coord_events

	def_bg_events

	def_object_events
	object_event 17,  3, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 1, 1, -1, -1, 0, OBJECTTYPE_TRAINER, 4, LavRadioTower1FSuperNerd1Script, EVENT_MRPOKEMON_MASTER_BALL
	object_event  3,  1, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, LavRadioTower1FGentlemanScript, EVENT_GOT_SMERGLE_FROM_DADDY
	object_event  4,  5, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, LavRadioTower1FSuperNerd2Script, EVENT_HORTON_HAPPY_ENDING
