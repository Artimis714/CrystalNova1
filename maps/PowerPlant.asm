	object_const_def
	const POWERPLANT_OFFICER1
	const POWERPLANT_GYM_GUIDE1
	const POWERPLANT_GYM_GUIDE2
	const POWERPLANT_OFFICER2
	const POWERPLANT_GYM_GUIDE3
	const POWERPLANT_MANAGER
	const POWERPLANT_FOREST

PowerPlant_MapScripts:
	def_scene_scripts
	scene_script PowerPlantNoop1Scene, SCENE_POWERPLANT_NOOP
	scene_script PowerPlantNoop2Scene, SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL

	def_callbacks

PowerPlantNoop1Scene:
	end

PowerPlantNoop2Scene:
	end

PowerPlantGuardPhoneScript:
	playsound SFX_CALL
	showemote EMOTE_SHOCK, POWERPLANT_OFFICER1, 15
	waitsfx
	pause 30
	applymovement POWERPLANT_OFFICER1, PowerPlantOfficer1ApproachGymGuide2Movement
	turnobject POWERPLANT_GYM_GUIDE1, DOWN
	turnobject POWERPLANT_GYM_GUIDE2, DOWN
	opentext
	writetext PowerPlantOfficer1CeruleanShadyCharacterText
	waitbutton
	closetext
	turnobject POWERPLANT_OFFICER1, LEFT
	turnobject PLAYER, RIGHT
	opentext
	writetext PowerPlantOfficer1CouldIAskForYourCooperationText
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement POWERPLANT_OFFICER1, PowerPlantOfficer1ReturnToPostMovement
	setscene SCENE_POWERPLANT_NOOP
	end

PowerPlantOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue .MetManager
	writetext PowerPlantOfficer1AThiefBrokeInText
	waitbutton
	closetext
	end

.MetManager:
	writetext PowerPlantOfficer1CouldIAskForYourCooperationText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantOfficer1HaveToBeefUpSecurityText
	waitbutton
	closetext
	end

PowerPlantGymGuide1Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantGymGuide1SomeoneStoleAPartText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantGymGuide1GeneratorUpAndRunningText
	waitbutton
	closetext
	end

PowerPlantGymGuide2Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantGymGuide2PowerPlantUpAndRunningText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantGymGuide2GeneratorIsRunningAgainText
	waitbutton
	closetext
	end

PowerPlantOfficer2Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantOfficer2ManagerHasBeenSadAndFuriousText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantOfficer2ManagerHasBeenCheerfulText
	waitbutton
	closetext
	end

PowerPlantGymGuide4Script:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	writetext PowerPlantGymGuide4MagnetTrainConsumesElectricityText
	waitbutton
	closetext
	end

.ReturnedMachinePart:
	writetext PowerPlantGymGuide4WeCanGetMagnetTrainRunningText
	waitbutton
	closetext
	end

PowerPlantManager:
	faceplayer
	opentext
	checkevent EVENT_RETURNED_MACHINE_PART
	iftrue .ReturnedMachinePart
	checkitem MACHINE_PART
	iftrue .FoundMachinePart
	checkevent EVENT_MET_MANAGER_AT_POWER_PLANT
	iftrue .MetManager
	writetext PowerPlantManagerWhoWouldRuinMyGeneratorText
	waitbutton
	closetext
	setevent EVENT_MET_MANAGER_AT_POWER_PLANT
	clearevent EVENT_CERULEAN_GYM_ROCKET
	clearevent EVENT_FOUND_MACHINE_PART_IN_CERULEAN_GYM
	setmapscene CERULEAN_GYM, SCENE_CERULEANGYM_GRUNT_RUNS_OUT
	setscene SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL
	end

.MetManager:
	writetext PowerPlantManagerIWontForgiveCulpritText
	waitbutton
	closetext
	end

.FoundMachinePart:
	writetext PowerPlantManagerThatsThePartText
	promptbutton
	takeitem MACHINE_PART
	setevent EVENT_RETURNED_MACHINE_PART
	clearevent EVENT_SAFFRON_TRAIN_STATION_POPULATION
	setevent EVENT_ROUTE_5_6_POKEFAN_M_BLOCKS_UNDERGROUND_PATH
	setevent EVENT_ROUTE_24_ROCKET
	setevent EVENT_RESTORED_POWER_TO_KANTO
	clearevent EVENT_GOLDENROD_TRAIN_STATION_GENTLEMAN
.ReturnedMachinePart:
	checkevent EVENT_GOT_TM07_ZAP_CANNON
	iftrue .GotZapCannon
	writetext PowerPlantManagerTakeThisTMText
	promptbutton
	verbosegiveitem TM_ZAP_CANNON
	iffalse .NoRoom
	setevent EVENT_GOT_TM07_ZAP_CANNON
	writetext PowerPlantManagerTM07IsZapCannonText
	waitbutton
.NoRoom:
	closetext
	end

.GotZapCannon:
	writetext PowerPlantManagerMyBelovedGeneratorText
	waitbutton
	closetext
	end

Forest:
	faceplayer
	opentext
	trade NPC_TRADE_FOREST
	waitbutton
	closetext
	end

PowerPlantBookshelf:
	jumpstd DifficultBookshelfScript

PowerPlantOfficer1ApproachGymGuide2Movement:
	step RIGHT
	step RIGHT
	step UP
	step UP
	step_end

PowerPlantOfficer1ReturnToPostMovement:
	step DOWN
	step DOWN
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

PowerPlantOfficer1AThiefBrokeInText:
	text "A thief broke into"
	line "the POWER PLANT…"

	para "Damn JOHTO rebels!"
	line "I just know they're"
	cont "behind this!"

	para "..."
	line "..."

	para "What? you're from"
	line "JOHTO??"

	para "WAS IT YOU?!?!"

	para "..."
	line "..."

	para "#MON CHAMPION?"
	line "Really?"

	para "Huh... Well, do"
	line "you think it was"
	cont "rebels?"

	para "..."
	line "..."

	para "Okay, well I appr-"
	line "ceiate you looking"
	cont "into this."

	para "You're one of the"
	line "good ones."
	done

PowerPlantOfficer1CeruleanShadyCharacterText:
	text "I just got word"
	line "from CERULEAN."

	para "It appears that a"
	line "shady character"

	para "has been loitering"
	line "around."

	para "Looks like those"
	line "damn JOHTO rebels"

	para "have taken it too"
	line "far this time!!!"

	para "..."
	line "..."

	para "What did they look"
	line "like? umm...."

	para "All black, a flat"
	line "cap, and a big red"
	cont "'R' on their chest!"

	para "..."
	line "..."

	para "No way that's TEAM"
	line "ROCKET. Listen kid,"

	para "Why don't you leave"
	line "the investigating"

	para "to the real heroes"
	line "Okay?"
	done

PowerPlantOfficer1CouldIAskForYourCooperationText:
	text "If we wanted help"
	line "from some KID,"
	cont "We'd ask."

	para "Maybe get lost"
	line "before we start"

	para "questioning your"
	line "how you got into"
	cont "this country."
	done

PowerPlantOfficer1HaveToBeefUpSecurityText:
	text "We'll have to beef"
	line "up our security"
	cont "presence."

	para "Damn rebels."
	done

PowerPlantGymGuide1SomeoneStoleAPartText:
	text "Someone made off"
	line "with a part that's"

	para "essential for the"
	line "generator."

	para "Without it, the"
	line "new generator's"
	cont "useless!"

	para "The plant was"
	line "defunct for years"

	para "it took massive"
	line "damage during the"
	cont "war."

	para "We'd only just"
	line "cleared the"
	cont "building."

	para "All I'm trying"
	line "to do is to help"

	para "KANTO have a"
	line "brighter future"

	para "after all those"
	line "years of blood-"
	cont "shed."
	done

PowerPlantGymGuide1GeneratorUpAndRunningText:
	text "The generator's up"
	line "and running. It's"

	para "making electricity"
	line "to spare."

	para "JOHTO still gets"
	line "rolling blackouts,"

	para "but if the plant"
	line "keeps producing"

	para "like this, we'll"
	line "even be able to"
	cont "power JOHTO!!!"
	done

PowerPlantGymGuide2PowerPlantUpAndRunningText:
	text "This POWER PLANT"
	line "used to run on"
	cont "coal."

	para "But it was bombed"
	line "to ruins in the"
	cont "war."

	para "It's crazy to think"
	line "that just a few"

	para "short years ago"
	line "this whole place"

	para "was crawling with"
	line "wild ELECTRIC #-"
	cont "MON!"

	para "..."
	line "..."

	para "Oh, now it's all"
	line "hydroelectric!"

	para "SILPH wants the"
	line "new KANTO to move"

	para "forward, as we"
	line "rebuild."

	para "It's allowed us to"
	line "undertake big"

	para "projects like the"
	line "MAGNET TRAIN!"
	done

PowerPlantGymGuide2GeneratorIsRunningAgainText:
	text "The generator's"
	line "running again!"

	para "Hell yeah!!!"

	para "Kicking out 1.21"
	line "GIGAWATTS every"
	cont "second!"

	para "..."
	line "..."

	para "Of course that's a"
	line "real measurement."
	done

PowerPlantOfficer2ManagerHasBeenSadAndFuriousText:
	text "The POWER PLANT's"
	line "MANAGER is up"
	cont "ahead."

	para "I'd be careful"
	line "around him."

	para "Ever since some"
	line "JOHTO rebel wreck-"
	cont "ed the generator,"

	para "He's been both sad"
	line "and furious..."
	done

PowerPlantOfficer2ManagerHasBeenCheerfulText:
	text "Since the gener-"
	line "ator's been fixed,"

	para "the MANAGER has"
	line "been cheerful."

	para "He's given every-"
	line "one a raise!!!"
	done

PowerPlantGymGuide4MagnetTrainConsumesElectricityText:
	text "The MAGNET TRAIN"
	line "consumes a lot of"
	cont "electricity."

	para "It can't move if"
	line "the new generator"
	cont "isn't operating."
	done

PowerPlantGymGuide4WeCanGetMagnetTrainRunningText:
	text "All right! We can"
	line "finally get the"

	para "MAGNET TRAIN"
	line "running again."

	para "Progress waits"
	line "for no one!!!"
	done

PowerPlantManagerWhoWouldRuinMyGeneratorText:
	text "MANAGER: I, I, I'm"
	line "ready to blast"
	cont "someone!"

	para "You! Did you dare"
	line "RUIN MY GENERATOR!"

	para "..."
	line "..."

	para "JOHTO!!! YOU'RE"
	line "FROM JOHTO!!???"

	para "Prepare yourself"
	line "kid for a taste"
	cont "of my ZAP CANNON!"

	para "..."
	line "..."

	para "ROCKETS? You think"
	line "TEAM ROCKET is"
	cont "behind this?"

	para "..."
	line "..."

	para "After the stunt"
	line "they pulled in"

	para "GOLDENROD, I'm not"
	line "surprised..."
	cont "(sigh)"

	para "I wish they'd under-"
	line "stand that we're"

	para "trying to give"
	line "power to both"
	cont "JOHTO and KANTO!"

	para "We can talk about"
	line "the MAGNET TRAIN,"

	para "but we have a"
	line "HOSPITAL outside"

	para "SAFFRON that"
	line "relies on us."

	para "Kid, if you're"
	line "willing to help,"
	cont "I'll take it."
	done

PowerPlantManagerIWontForgiveCulpritText:
	text "MANAGER: I won't"
	line "forgive them!"

	para "Every day we go"
	line "without power,"
	cont "people die."

	para "War is one thing"
	line "but these ROCKETS"
	cont "make me sick."
	done

PowerPlantManagerThatsThePartText:
	text "MANAGER: Ah! Yeah!"

	para "That's the missing"
	line "PART!!!!"
	cont "You found it???"

	para "..."
	line "..."

	para "Kid, I can't thank"
	line "you enough."

	para "After you left, I"
	line "saw your face in"
	cont "the papers."

	para "You're the JOHTO"
	line "CHAMPION?"

	para "..."
	line "..."

	para "<PLAY_G>, you're"
	line "a credit to your"
	cont "country."

	para "..."
	line "..."

	para "Ya, know, during"
	line "the war, we did"
	cont "terrible things."

	para "People will place"
	line "blame, all of it"
	cont "justified."

	para "But it is also"
	line "done, and I think"

	para "we have to find a"
	line "way forward."

	para "Not everyone in"
	line "my government"
	cont "agrees, sure."

	para "But it's why I"
	line "fought so hard to"

	para "ensure this POWER"
	line "PLANT could also"
	cont "power JOHTO."

	para "<PLAY_G>, I'm"
	line "so glad you found"
	cont "it!"
	done 

PowerPlantManagerTakeThisTMText:
	text "Seriously, thanks!"
	line "You've saved lives"
	cont "today!!"

	para "..."
	line "..."

	para "I want to give you"
	line "something."

	para "I trust you with"
	line "this kind of power!"
	done

PowerPlantManagerTM07IsZapCannonText:
	text "MANAGER: TM07 is"
	line "my ZAP CANNON."

	para "It's a powerful"
	line "technique!"

	para "When I fought"
	line "under LT SURGE we"
	cont "all learned it."

	para "It's not what any-"
	line "one would consider"

	para "accurate, but it"
	line "packs a wallop!"
	done

PowerPlantManagerMyBelovedGeneratorText:
	text "MANAGER: Ahh"
	line "<PLAY_G>, good"
	cont "to see you!"

	para "My generator keeps"
	line "pumping out the"

	para "projected 1.21"
	line "GIGAWATTS!!!"

	para "And funding is"
	line "going through to"

	para "get the JOHTO"
	line "power grid up"
	cont "to code!"

	para "Soon blackouts"
	line "will be a thing"
	cont "of the past!"
	done

PowerPlant_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2, 17, ROUTE_10_NORTH, 2
	warp_event  3, 17, ROUTE_10_NORTH, 2

	def_coord_events
	coord_event  5, 12, SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL, PowerPlantGuardPhoneScript

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, PowerPlantBookshelf
	bg_event  1,  1, BGEVENT_READ, PowerPlantBookshelf

	def_object_events
	object_event  4, 14, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficerScript, -1
	object_event  2,  9, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide1Script, -1
	object_event  6, 11, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide2Script, -1
	object_event  9,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, PowerPlantOfficer2Script, -1
	object_event  7,  2, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PowerPlantGymGuide4Script, -1
	object_event 14, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PowerPlantManager, -1
	object_event  5,  5, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Forest, -1
