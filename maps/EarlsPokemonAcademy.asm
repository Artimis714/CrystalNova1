	object_const_def
	const EARLSPOKEMONACADEMY_YOUNGSTER1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID1
	const EARLSPOKEMONACADEMY_GAMEBOY_KID2
	const EARLSPOKEMONACADEMY_YOUNGSTER2
	const EARLSPOKEMONACADEMY_POKEDEX
	const EARLSPOKEMONACADEMY_PIKACHU
	const EARLSPOKEMONACADEMY_TEACHER

EarlsPokemonAcademy_MapScripts:
	def_scene_scripts

	def_callbacks

EarlsPokemonAcademyYoungster1Script:
	faceplayer
	opentext
	checkevent EVENT_GHOST_ANDY
	iftrue .GiveLightBall
	checkevent EVENT_READ_TOO_MUCH_ACADEMY
	iftrue .YouAsshole
	writetext EarlsPokemonAcademyYoungster1Text
	waitbutton
	closetext
	end

.YouAsshole
	writetext YouAssholeText
	waitbutton
	closetext
	end

.GiveLightBall
	checkevent EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	iftrue .HasLightBall
	writetext YouMetMyParentsText
	verbosegiveitem LIGHT_BALL
	iffalse .NoRoomForLightBall
	writetext LiveabetterlifeText
	setevent EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	waitbutton
	closetext
	end

.HasLightBall
	writetext LiveabetterlifeText
	waitbutton
	closetext
	end

.NoRoomForLightBall
	writetext NoRoomForLightBallText
	waitbutton
	closetext
	end

EarlsPokemonAcademyGameboyKid1Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid1Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID1, DOWN
	end

EarlsPokemonAcademyGameboyKid2Script:
	faceplayer
	opentext
	writetext EarlsPokemonAcademyGameboyKid2Text
	waitbutton
	closetext
	turnobject EARLSPOKEMONACADEMY_GAMEBOY_KID2, DOWN
	end

EarlsPokemonAcademyYoungster2Script:
	jumptextfaceplayer EarlsPokemonAcademyYoungster2Text

AcademyBlackboard:
	opentext
	writetext AcademyBlackboardText
.Loop:
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Poison
	ifequal 2, .Paralysis
	ifequal 3, .Sleep
	ifequal 4, .Burn
	ifequal 5, .Freeze
	closetext
	end

.Poison:
	writetext AcademyPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext AcademyParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext AcademySleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext AcademyBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext AcademyFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "SUN@"
	db "RAIN@"
	db "SAND@"
	db "HAIL@"
	db "SMOG@"
	db "QUIT@"

PokemonAcademyTeacherDorothy:
	trainer TEACHER, DOROTHY, EVENT_BEAT_TEACHER_DOROTHY, TeacherDorothySeenText, TeacherDorothyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherDorothyAfterBattleText
	setevent EVENT_LEARNED_ABOUT_WEATHER
	waitbutton
	closetext
	end

AcademyNotebook:
	opentext
	checkevent EVENT_GHOST_VERONICA
	iffalse .earlygame
	writetext AcademypagetornText
	waitbutton
	closetext
	end

.earlygame
	checkevent EVENT_READ_TOO_MUCH_ACADEMY
	iftrue .BookShut
	writetext AcademyNotebookText
	yesorno
	iffalse .Done
	writetext AcademyNotebookText1
	yesorno
	iffalse .Done
	writetext AcademyNotebookText2
	yesorno
	iffalse .Done
	writetext AcademyNotebookText3
	setevent EVENT_READ_TOO_MUCH_ACADEMY
	waitbutton
.Done:
	closetext
	end

.BookShut
	writetext HandSlammedonPageText
	waitbutton
	closetext
	end

PokemonAcademyPikachu:
	opentext
	writetext AcademyPikaText
	cry PIKACHU
	waitbutton
	closetext
	end

AcademyBookshelf:
	jumpstd DifficultBookshelfScript

EarlsPokemonAcademyYoungster1Text:
	text "I'm taking notes"
	line "of the teacher's"
	cont "lecture."

	para "I'd better copy"
	line "the stuff on the"
	cont "blackboard too."

	para "Today's lesson"
	line "is on Battle"
	cont "Weather!"
	done

EarlsPokemonAcademyGameboyKid1Text:
	text "I traded my best"
	line "#MON to the"
	cont "guy beside me."

	para "What was it?"
	line "a level 1 NATU!"
	done

EarlsPokemonAcademyGameboyKid2Text:
	text "Huh? The #MON I"
	line "just got is hold-"
	cont "ing something!"

	para "Love free stuff!"
	line "That sucker, just"

	para "gave me a NATU for"
	line "a level 2 PIDGEY!"
	cont "Ahahaha!"
	done

EarlsPokemonAcademyYoungster2Text:
	text "A #MON holding"
	line "a BERRY will heal"
	cont "itself in battle."

	para "Many other items"
	line "can be held by"
	cont "#MON…"

	para "I've heard Xitems"
	line "work that way too!"
	done

AcademyBlackboardText:
	text "The blackboard"
	line "describes Weather"

	para "and how it can"
	line "affect a battle."
	done

AcademyPoisonText:
	text "When it's Sunny."
	line "the following."
	cont "TYPES are boosted"

	para "GRASS"
	line "FIRE"

	para "And the following"
	line "TYPES are weaker."

	para "WATER"
	line "DARK"
	cont "GHOST"

	para "Also SOLARBEAM"
	line "Doesn't need to"
	cont "charge!"
	done

AcademyParalysisText:
	text "When it's Raining."
	line "the following."
	cont "TYPES are boosted"

	para "GRASS"
	line "WATER"
	cont "ELECTRIC"

	para "And the following"
	line "TYPES are weaker."

	para "FIRE"
	line "FLYING"

	para "Also SOLARBEAM"
	line "is weaker in the"
	cont "rain!"

	para "But some ELECTRIC"
	line "moves get 100%"
	cont "accuracy."

	para "Like THUNDER and"
	line "ZAP CANNON."
	done

AcademySleepText:
	text "When there's a"
	line "SANDSTORM, the"
	cont "following TYPES" 
	cont "are boosted"

	para "GROUND"
	line "ROCK"
	cont "DRAGON"

	para "Moves that lower"
	line "accuracy are also"
	cont "boosted."

	para "And the following"
	line "TYPES are weaker."

	para "FIRE"
	line "ELECTRIC"

	para "The following"
	line "TYPES are immune"
	cont "to SAND damage."

	para "ROCK"
	line "GROUND"
	cont "STEEL"
	cont "DRAGON"
	done

AcademyBurnText:
	text "When there's hail"
	line "the following."
	cont "TYPES are boosted"

	para "ICE"
	line "WATER"

	para "And the following"
	line "TYPES are weaker."

	para "FLYING"
	line "GRASS"
	cont "BUG"

	para "Also SOLARBEAM"
	line "is weaker during"
	cont "hail."

	para "But BLIZZZARD has"
	line "100% accuracy in"
	cont "hail."

	para "And many WATER"
	line "moves have a 15%"
	
	para "chance to freeze"
	line "the target."

	para "The following"
	line "TYPES are immune"
	cont "to HAIL damage."

	para "ICE"
	line "STEEL"
	cont "FIRE"
	done

AcademyFreezeText:
	text "When there's smog"
	line "the following."
	cont "TYPES are boosted"

	para "POISON"
	line "DARK"
	cont "GHOST"

	para "And the following"
	line "TYPES are weaker."

	para "PSYCHIC"
	line "GRASS"
	cont "FIGHTING"
	cont "DRAGON"

	para "The following"
	line "TYPES are immune"
	cont "to SMOG damage."

	para "POISON"
	line "STEEL"
	cont "GHOST"
	cont "DARK"
	cont "NORMAL"
	cont "FIRE"

	para "FIRE BLAST"
	line "has 100% accuracy"
	cont "smog."

	para "And many physical"
	line "moves have a 15%"

	para "chance to poison"
	line "the target."
	done

AcademyNotebookText:
	text "It's this kid's"
	line "notebook…"

	para "It wouldn't be"
	line "intrusive at all"
	cont "to start reading"
	cont "it."

	para "Many #MON"
	line "have more than"
	cont "one type."

	para "But some of our"
	line "knowledge on"
	cont "#MON types"

	para "was lost in the"
	line "great war."

	para "(Skull & Cross-"
	line "bones doodle)"

	para "KANTO 'expert'"
	line "Prof OAK is"
	cont "trying to re-"
	cont "build our lost"
	cont "knowledge."

	para "Keep reading?"
	done

AcademyNotebookText1:
	text "It's more than"
	line "#MON types."

	para "Knowledge of type"
	line "interactions has"
	cont "also been lost."

	para "There's so much"
	line "to rediscover."

	para "Keep reading?"
	done

AcademyNotebookText2:
	text "RED's army burned"
	line "the ARCHIVES in"
	cont "GOLDENROD."

	para "Bastard took my"
	line "parents."

	para "This information"
	line "is just one more"
	cont "thing he took from"
	cont "us!"

	para "(the ink on the"
	line "page is splotchy)"

	para "Keep reading?"
	done

AcademyNotebookText3:
	text "One day, I will"
	line "find RED."

	para "One day, I will"
	line "make him pay."

	para "Blood for blood."
	done

AcademypagetornText:
	text "It looks like"
	line "several pages of"

	para "notes have been"
	line "torn out of this"
	cont "notebook."
	done

AcademyPikaText:
	text "Pika-Pika!"
	done

YouAssholeText:
	text "You asshole!"
	line "That's private!"

	para "Why don't you just"
	line "mind your own damn"
	cont "business!"
	done

YouMetMyParentsText:
	text "What do you want?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "I don't believe"
	line "you."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "But... "
	line "Y... you really"
	cont "met them?"

	para "I'm okay. I really"
	line "am. Living with"

	para "my aunt hasn't been"
	line "too bad."

	para "But I miss my par-"
	line "ents every day."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "They wouldn't want"
	line "me seeking revenge"
	cont "like this."

	para "I know that."
	line "But RED, he took"

	para "So much from me,"
	line "and our country."

	para "I've been training"
	line "my PIKACHU to stop"
	para "him."

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "You're right."
	line "They would want me"
	cont "to live."

	para "Okay, I will do"
	line "better."

	para "Here I want you"
	line "to have this."

	para "I was using it to"
	line "make PIKACHU stro-"
	cont "nger."
	done

LiveabetterlifeText:
	text "That LIGHT BALL"
	line "will power up a"
	cont "PIKACHU's attacks."

	para "But we're done"
	line "with battling."

	para "From now on, we're"
	line "going to live a"
	cont "better life,"

	para "a life that would"
	line "make my parents"
	cont "proud of us!"
	done

NoRoomForLightBallText:
	text "Sorry, you don't"
	line "have room for this"

	para "Come back if you"
	line "decide you want"
	cont "it."

	para "PIKACHU and I, are"
	line "done with battling."
	done

TeacherDorothySeenText:
	text "Oh, a new student."
	line "You're late for"
	cont "class!"

	para "Which weather con-"
	line "ditions affect the"
	cont "move SOLAR BEAM?"

	para "<……> <……> <……>"
	line "<……> <……> <……>"

	para "If you think you"
	line "know so much, you"

	para "can help me give"
	line "the class a"
	cont "demonstration."
	done

TeacherDorothyBeatenText:
	text "Excellent!"
	done

TeacherDorothyAfterBattleText:
	text "Well done! You"
	line "certainly know"
	cont "your stuff!"

	para "I've written more"
	line "WEATHER notes"

	para "on the board if"
	line "you ever want a"
	cont "refresher."

	para "Each of the 5"
	line "WEATHER conditions"

	para "has a TM, and I've"
	line "asked the VIOLET"

	para "#MART to stock"
	line "those TMs."

	para "In case you want"
	line "to try out any of"

	para "these weather"
	line "effects for your-"
	cont "self!"
	done

HandSlammedonPageText:
	text "(The kid covered"
	line "his notes)"

	para "Mind your own bus-"
	line "iness!"

	para "Those are private!"
	done

EarlsPokemonAcademy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, VIOLET_CITY, 3
	warp_event  4, 15, VIOLET_CITY, 3

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  1,  1, BGEVENT_READ, AcademyBookshelf
	bg_event  3,  0, BGEVENT_READ, AcademyBlackboard
	bg_event  4,  0, BGEVENT_READ, AcademyBlackboard

	def_object_events
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster1Script, -1
	object_event  3, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyGameboyKid2Script, -1
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EarlsPokemonAcademyYoungster2Script, -1
	object_event  2,  4, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AcademyNotebook, -1
	object_event  3,  5, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PokemonAcademyPikachu, -1
	object_event  3,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, PokemonAcademyTeacherDorothy, -1
