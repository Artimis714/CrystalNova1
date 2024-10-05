	object_const_def
	const BURNEDTOWER1F_ROCK
	const BURNEDTOWER1F_EUSINE
	const BURNEDTOWER1F_RIVAL
	const BURNEDTOWER1F_MORTY
	const BURNEDTOWER1F_POKE_BALL
	const BURNEDTOWER1F_GHOST_JACLYN
	const BURNEDTOWER1F_GHOST_MARGRET
	const BURNEDTOWER1F_GHOST_MIRA

BurnedTower1F_MapScripts:
	def_scene_scripts
	scene_script BurnedTower1FMeetEusineScene, SCENE_BURNEDTOWER1F_MEET_EUSINE
	scene_script BurnedTower1FNoop1Scene,      SCENE_BURNEDTOWER1F_RIVAL_BATTLE
	scene_script BurnedTower1FNoop2Scene,      SCENE_BURNEDTOWER1F_NOOP

	def_callbacks
	callback MAPCALLBACK_TILES, BurnedTower1FHoleAndLadderCallback

BurnedTower1FMeetEusineScene:
	sdefer BurnedTower1FMeetEusineScript
	end

BurnedTower1FNoop1Scene:
	end

BurnedTower1FNoop2Scene:
	end

BurnedTower1FHoleAndLadderCallback:
	checkevent EVENT_HOLE_IN_BURNED_TOWER
	iftrue .KeepHoleOpen
	changeblock 10, 8, $32 ; floor
.KeepHoleOpen:
	checkevent EVENT_RELEASED_THE_BEASTS
	iftrue .HideBasement
	changeblock 6, 14, $09 ; ladder
.HideBasement:
	endcallback

BurnedTower1FMeetEusineScript:
	turnobject BURNEDTOWER1F_EUSINE, DOWN
	showemote EMOTE_SHOCK, BURNEDTOWER1F_EUSINE, 15
	applymovement BURNEDTOWER1F_EUSINE, BurnedTower1FEusineMovement
	opentext
	writetext BurnedTower1FEusineIntroText
	waitbutton
	closetext
	moveobject BURNEDTOWER1F_EUSINE, 9, 14
	setscene SCENE_BURNEDTOWER1F_RIVAL_BATTLE
	end

BurnedTowerRivalBattleScript:
	showemote EMOTE_SHOCK, BURNEDTOWER1F_RIVAL, 15
	special FadeOutMusic
	pause 15
	turnobject BURNEDTOWER1F_RIVAL, RIGHT
	pause 15
	applymovement PLAYER, BurnedTowerMovement_PlayerWalksToRival
	applymovement BURNEDTOWER1F_RIVAL, BurnedTowerMovement_RivalWalksToPlayer
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext BurnedTowerRival_BeforeText
	waitbutton
	closetext
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .chikorita
	winlosstext BurnedTowerRival_WinText, BurnedTowerRival_LossText
	setlasttalked BURNEDTOWER1F_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_TOTODILE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.totodile
	winlosstext BurnedTowerRival_WinText, BurnedTowerRival_LossText
	setlasttalked BURNEDTOWER1F_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_CHIKORITA
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.chikorita
	winlosstext BurnedTowerRival_WinText, BurnedTowerRival_LossText
	setlasttalked BURNEDTOWER1F_RIVAL
	loadtrainer RIVAL1, RIVAL1_3_CYNDAQUIL
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .returnfrombattle

.returnfrombattle
	playmusic MUSIC_RIVAL_AFTER
	opentext
	writetext BurnedTowerRival_AfterText1
	waitbutton
	closetext
	setscene SCENE_BURNEDTOWER1F_NOOP
	setevent EVENT_RIVAL_BURNED_TOWER
	special FadeOutMusic
	pause 15
	earthquake 50
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_ENTER_DOOR
	waitsfx
	changeblock 10, 8, $25 ; hole
	reloadmappart
	pause 15
	applymovement PLAYER, BurnedTower1FMovement_PlayerStartsToFall
	playsound SFX_KINESIS
	showemote EMOTE_SHOCK, BURNEDTOWER1F_RIVAL, 20
	opentext
	writetext BurnedTowerRival_AfterText2
	waitbutton
	closetext
	setevent EVENT_HOLE_IN_BURNED_TOWER
	pause 15
	warpcheck
	end

BurnedTower1FEusineScript:
	jumptextfaceplayer BurnedTower1FEusineText

BurnedTower1FMortyScript:
	jumptextfaceplayer BurnedTower1FMortyText

BurnedTower1FRock:
	jumpstd SmashRockScript

TrainerBeautyJaclynGhost:
	trainer BEAUTY, JACLYN, EVENT_BEAT_BEAUTY_JACLYN, BeautyJaclynGhostSeenText, BeautyJaclynGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyJaclynGhostAfterBattleText
	waitbutton
	closetext
	end

TrainerMediumMargretGhost:
	trainer MEDIUM, MARGRET, EVENT_BEAT_MEDIUM_MARGRET, MediumMargretGhostSeenText, MediumMargretGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext MediumMargretGhostAfterBattleText
	setevent EVENT_BURNEDTOWER_GHOST2
	waitbutton
	closetext
	end

BurnedTower1FHiddenEther:
	hiddenitem ETHER, EVENT_BURNED_TOWER_1F_HIDDEN_ETHER

BurnedTower1FHiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_BURNED_TOWER_1F_HIDDEN_ULTRA_BALL

BurnedTower1FHPUp:
	itemball PP_UP, 2

BurnedTowerMovement_PlayerWalksToRival:
	step LEFT
	step_end

BurnedTowerMovement_RivalWalksToPlayer:
	step RIGHT
	step_end

BurnedTower1FMovement_PlayerStartsToFall:
	skyfall_top
	step_end

BurnedTower1FEusineMovement:
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step_end

BeautyJaclynGhostSeenText:
	text "They're attacking"
	line "the tower!"
	done

BeautyJaclynGhostBeatenText:
	text "Why would they"
	line "do this to us!?"
	done

BeautyJaclynGhostAfterBattleText:
	text "No. no. no. This"
	line "is all wrong."

	para "Years? Decades?"
	line "It's been so long"

	para "since the BRASS"
	line "TOWER burned and"

	para "Majestic LUGIA"
	line "departed for lands"
	cont "unknown."

	para "Why would they do"
	line "this to us?"

	para "Their abomination"
	line "now hides in crypts"

	para "Deep within the"
	line "Sacred SILVER Moun-"
	cont "tain."

	para "A corruption of"
	line "science with a"

	para "creature more"
	line "once revered by"
	cont "our people."

	para "Crafted for WAR"
	line "Their creature has"

	para "stained the name"
	line "of all #MON!"

	para "Our homes, our"
	line "families, burned"

	para "For nothing. I"
	line "would see every"

	para "KANTO soldier to"
	line "know my fate."

	para "BLOOD for BLOOD"
	line "they deserve"

	para "No mercy for"
	line "what they've done."

	para "You should find"
	line "their weapon."

	para "It is a fickle"
	line "abomination."

	para "It will only"
	line "appear in the"

	para "presence of a"
	line "rare #MON."

 	para "The ancestor of"
	line "all #MON."
	done

MediumMargretGhostSeenText:
	text "Fools! Run! The"
	line "tower's collapsing!"
	done

MediumMargretGhostBeatenText:
	text "We perished."
	done 

MediumMargretGhostAfterBattleText:
	text "I had hoped my"
	line "husband would"

	para "still be alive,"
	line "but he died a few"

	para "months after they"
	line "burned this BRASS"
	cont "TOWER."

	para "I have no family"
	line "left. No legacy."

	para "But if the war is"
	line "over then perhaps"

	para "my shade can find"
	line "peace."

	para "KANTO failed in"
	line "the capture of the"
	cont "Legendary #MON."

	para "And they failed"
	line "in destroying our"

	para "culture. We are"
	line "JOHTO. And we are"

	para "stronger than they"
	line "gave us credit for."
	done

BurnedTowerRival_BeforeText:
	text "<……> <……> <……>"

	para "…Oh, it's you."
	line "The hell do you"
	cont "want?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I came looking for"
	line "some legendary"

	para "#MON that they"
	line "say roosts here."

	para "Waste of time. I"
	line "knew those KANTO"

	para "bastards burned"
	line "the tower years"

	para "ago, but there's"
	line "nothing here!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "How about I kick"
	line "your ass?"
	done

BurnedTowerRival_WinText:
	text "…Humph!"

	para "This is why I hate"
	line "battling wimps."

	para "There's no"
	line "challenge in it."
	done

BurnedTowerRival_AfterText1:
	text "…Aw, whatever."

	para "You would never be"
	line "able to catch a"

	para "legendary #MON"
	line "anyway."
	done

BurnedTowerRival_LossText:
	text "…Humph!"

	para "This is why I hate"
	line "battling wimps."

	para "It's just a waste"
	line "of my time."
	done

BurnedTowerRival_AfterText2:
	text "Humph!"

	para "What are you doing"
	line "falling into a"

	para "hole? Some genius"
	line "you are!"

	para "Serves you right!"
	done

BurnedTower1FEusineIntroText:
	text "EUSINE: My name's"
	line "EUSINE."

	para "I'm on the trail"
	line "of a #MON named"
	cont "SUICUNE."

	para "And you are…?"

	para "<……> <……> <……>"

	para "<PLAYER>? Glad to"
	line "meet you!"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "No... that's not a"
	line "ROCKET badge on my"
	cont "belt."

	para "Anyway, I heard a"
	line "rumor that a #-"
	cont "MON named SUICUNE"

	para "was lost in the"
	line "fires that"

	para "consumed this"
	line "place in the early"
	cont "days of the war."

	para "My whole life I've"
	line "dreamed of nothing"

	para "else than the"
	line "chance to run"
	cont "with SUICUNE."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I'm not obsessed"
	line "and creepy! Would"

	para "an obsessed creep"
	line "make stalking a"

	para "presumed extinct"
	line "#MON his whole"
	cont "personality?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "Whatever, kid. If"
	line "you see anything"
	cont "let me know, ok?"
	done

BurnedTower1FEusineText:
	text "EUSINE: Oh, it's"
	line "you..."
	cont "Find anything?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "First off... It's"
	line "pronounced like:"
	cont "SWEE-COON."

	para "Not SEUDA-KO. How"
	line "did you get SEUDA-"
	cont "KO from SUICUNE?"

	para "I might be creepy"
	line "AND obsessed, but"

	para "I think you might"
	line "be dumb."
	done

BurnedTower1FMortyText:
	text "MORTY: ECRUTEAK's"
	line "GYM LEADER has to"

	para "study what are"
	line "said to be the"

	para "legendary #MON"
	line "--SUICUNE, ENTEI"
	cont "and RAIKOU."

	para "EUSINE is here, so"
	line "I've decided to"

	para "investigate the"
	line "TOWER with him."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "No, I don't share"
	line "his obsession."

	para "But these #MON"
	line "are rumored to"

	para "have died, and I"
	line "wonder if their"

	para "type changed to"
	line "become partly"

	para "GHOST after the"
	line "fires took their"
	cont "lives."
	done

BurnedTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 15, ECRUTEAK_CITY, 13
	warp_event 10, 15, ECRUTEAK_CITY, 13
	warp_event 10,  9, BURNED_TOWER_B1F, 1
	warp_event  5,  5, BURNED_TOWER_B1F, 1 ; inaccessible, left over from G/S
	warp_event  5,  6, BURNED_TOWER_B1F, 1 ; inaccessible, left over from G/S
	warp_event  4,  6, BURNED_TOWER_B1F, 1 ; inaccessible, left over from G/S
	warp_event 15,  4, BURNED_TOWER_B1F, 2 ; inaccessible, left over from G/S
	warp_event 15,  5, BURNED_TOWER_B1F, 2 ; inaccessible, left over from G/S
	warp_event 10,  7, BURNED_TOWER_B1F, 3 ; inaccessible, left over from G/S
	warp_event  5, 14, BURNED_TOWER_B1F, 4 ; inaccessible, left over from G/S
	warp_event  4, 14, BURNED_TOWER_B1F, 4 ; inaccessible, left over from G/S
	warp_event 14, 14, BURNED_TOWER_B1F, 5 ; inaccessible, left over from G/S
	warp_event 15, 14, BURNED_TOWER_B1F, 5 ; inaccessible, left over from G/S
	warp_event  7, 15, BURNED_TOWER_B1F, 6 ; inaccessible, left over from G/S

	def_coord_events
	coord_event 11,  9, SCENE_BURNEDTOWER1F_RIVAL_BATTLE, BurnedTowerRivalBattleScript

	def_bg_events
	bg_event  8,  7, BGEVENT_ITEM, BurnedTower1FHiddenEther
	bg_event 13, 11, BGEVENT_ITEM, BurnedTower1FHiddenUltraBall

	def_object_events
	object_event 15,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BurnedTower1FRock, -1
	object_event 12, 12, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, BurnedTower1FEusineScript, EVENT_BURNED_TOWER_1F_EUSINE
	object_event  8,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, ObjectEvent, EVENT_RIVAL_BURNED_TOWER
	object_event 14, 14, SPRITE_MORTY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BurnedTower1FMortyScript, EVENT_BURNED_TOWER_MORTY
	object_event 14,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BurnedTower1FHPUp, EVENT_BURNED_TOWER_1F_HP_UP
	object_event 16,  1, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerBeautyJaclynGhost, EVENT_BURNEDTOWER_GHOST1
	object_event 13, 11, SPRITE_GHOST_FLOATING, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerMediumMargretGhost, EVENT_BURNEDTOWER_GHOST2
