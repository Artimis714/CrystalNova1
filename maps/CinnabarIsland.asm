	object_const_def
	const CINNABARISLAND_BLUE
	const CINNABARISLAND_OFFICER

CinnabarIsland_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, CinnabarIslandFlypointCallback

CinnabarIslandFlypointCallback:
	setflag ENGINE_FLYPOINT_CINNABAR
	endcallback

CinnabarIslandBlue:
	faceplayer
	opentext
	writetext CinnabarIslandBlueText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	applymovement CINNABARISLAND_BLUE, CinnabarIslandBlueTeleport
	disappear CINNABARISLAND_BLUE
	clearevent EVENT_VIRIDIAN_GYM_BLUE
	setevent EVENT_BLUE_IN_CINNABAR
	checkitem KANTO_PAPERS
	iffalse .SetAlert
	end

.SetAlert:
	clearevent EVENT_BEAT_CITY_POLICE_CINNABAR
	done

CinnabarIslandGymSign:
	jumptext CinnabarIslandGymSignText

CinnabarIslandSign:
	jumptext CinnabarIslandSignText

CinnabarIslandPokecenterSign:
	jumpstd PokecenterSignScript

CinnabarIslandHiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_CINNABAR_ISLAND_HIDDEN_RARE_CANDY

CinnabarIslandBlueTeleport:
	teleport_from
	step_end

CinnabarTownCityPolice1Script:
	trainer OFFICER, CITYPOLICE, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5, CinnabarPoliceSeenText, CinnabarPoliceWinText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CinnabarPoliceAfterBattleText
	waitbutton
	closetext
	end

CinnabarPoliceSeenText:
	text "HEY! YOU!!!"

	para "STOP RIGHT THERE!"

	para "..."
	line "..."

	para "You're wanted by"
	line "the CINNABAR"
	cont "POLICE!"

	para "..."
	line "..."

	para "You're under"
	line "arrest!"
	done

CinnabarPoliceAfterBattleText:
	text "..."
	line "..."

	para "Well, you don't"
	line "have KANTO PAPERS"

	para "so I should call"
	line "for backup, but"
	cont "I'm impressed."

	para "Try to stay out of"
	line "trouble."
	done

CinnabarPoliceWinText:
	text "On behalf of the"
	line "CINNABAR POLICE"

	para "You're free to"
	line "go."
	done

CinnabarIslandBlueText:
	text "Who are you?"

	para "Well, it's plain"
	line "to see that you're"
	cont "a trainer..."

	para "My name's BLUE."

	para "I was once the"
	line "CHAMPION, although"

	para "it was for only a"
	line "short time..."

	para "That meddling RED"
	line "did me in..."

	para "Yeah we disagreed"
	line "on how to end the"
	cont "war."

	para "He was CHAMPION so"
	line "he got to make the"
	cont "call."

	para "No one can argue"
	line "with the results."

	para "The war is done,"
	line "JOHTO is under our"
	cont "boot."

	para "But the cost was"
	line "too high."

	para "I would've done it"
	line "differently." 

	para "Anyway, what do"
	line "you want? You want"

	para "to challenge me or"
	line "something?"

	para "I hate to say"
	line "it, but I'm not in"

	para "the mood for a"
	line "battle now."

	para "..."
	line "..."

	para "Take a good look"
	line "around you..."

	para "A volcano erupts,"
	line "and just like"

	para "that, a whole town"
	line "disappears."

	para "We know it was a"
	line "cell of JOHTO"

	para "sympathizers who"
	line "found a way to set"
	cont "off the VOLCANO." 

	para "..."
	line "..."

	para "The war was over."
	line "had been for over"
	cont "a year."

	para "The violence was"
	line "senseless."

	para "The people of"
	line "CINNABAR didn't"
	cont "deserve this."

	para "ECRUTEAK, OLIVINE"
	line "GOLDENROD. They"
	cont "all suffered too."

	para "Ya know, growing"
	line "up during the war"

	para "they teach you"
	line "that these things"
	cont "are necessary."

	para "Have you met LT"
	line "SURGE?"

	para "..."
	line "..."

	para "Yeah, exactly."
	line "I was raised to"
	cont "believe that crap."

	para "RED was too."

	para "We have to live"
	line "with what we were"
	cont "brainwashed to do."

	para "..."
	line "..."

	para "It's good to hear"
	line "the sentiment is"
	cont "similar in JOHTO."

	para "..."
	line "..."

	para "But about this"
	line "VOLCANO..."

	para "I know it was some"
	line "JOHTO ROCKETS,"

	para "but I can't help"
	line "but believe there"
	cont "was more to it."

	para "Have you heard of"
	line "PROJECT GENESIS?"

	para "..."
	line "..."

	para "The aim was to"
	line "resurrect extinct"

	para "#MON to aid in"
	line "the war effort."

	para "The research was"
	line "all done here on"
	cont "CINNABAR."

	para "The VOLCANO didn't"
	line "just kill people."

	para "It erased the"
	line "evidence of"
	cont "PROJECT GENEISIS."

	para "Have you met"
	line "SAFFRON's leader?"

	para "She has one of"
	line "the two #MON"

	para "created in the"
	line "program."

	para "..."
	line "..."

	para "I've heard that"
	line "participants of"

	para "the project made"
	line "it off CINNABAR."

	para "If you find any-"
	line "thing let me know."

	para "I'll be back in my"
	line "GYM in Cinnabar."
	done

CinnabarIslandGymSignText:
	text "There's a notice"
	line "here…"

	para "CINNABAR GYM has"
	line "relocated to SEA-"
	cont "FOAM ISLANDS."

	para "BLAINE"
	done

CinnabarIslandSignText:
	text "CINNABAR ISLAND"

	para "The Fiery Town of"
	line "Burning Desire"

	para "Spray Paint"
	line "Graffiti reads:"

	para "FUCK JOHTO!"
	done

CinnabarIsland_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 11, CINNABAR_POKECENTER_1F, 1

	def_coord_events

	def_bg_events
	bg_event 12, 11, BGEVENT_READ, CinnabarIslandPokecenterSign
	bg_event  9, 11, BGEVENT_READ, CinnabarIslandGymSign
	bg_event  7,  7, BGEVENT_READ, CinnabarIslandSign
	bg_event  9,  1, BGEVENT_ITEM, CinnabarIslandHiddenRareCandy

	def_object_events
	object_event  9,  6, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarIslandBlue, EVENT_BLUE_IN_CINNABAR
	object_event 10, 13, SPRITE_OFFICER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, CinnabarTownCityPolice1Script, EVENT_BEAT_CITY_POLICE_CINNABAR
