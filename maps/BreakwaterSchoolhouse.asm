	object_const_def
	const BREAKSCHOOL_YOUNGSTER1
	const BREAKSCHOOL_GAMEBOY_KID1
	const BREAKSCHOOL_GAMEBOY_KID2
	const BREAKSCHOOL_YOUNGSTER2
	const BREAKSCHOOL_NOTEBOOK
	const BREAKSCHOOL_PIKACHU
	const BREAKSCHOOL_TEACHER

BreakwaterSchoolhouse_MapScripts:
	def_scene_scripts

	def_callbacks

BreakSchoolYoungster1Script:
	jumptextfaceplayer BreakSchoolYoungster1Text

BreakSchoolGameboyKid1Script:
	faceplayer
	opentext
	writetext BreakSchoolGameboyKid1Text
	waitbutton
	closetext
	turnobject BREAKSCHOOL_GAMEBOY_KID1, DOWN
	end

BreakSchoolGameboyKid2Script:
	faceplayer
	opentext
	writetext BreakSchoolGameboyKid2Text
	waitbutton
	closetext
	turnobject BREAKSCHOOL_GAMEBOY_KID2, DOWN
	end

BreakSchoolYoungster2Script:
	faceplayer
	opentext
	checkevent EVENT_GHOST_BREAKWATER_CHILD
	iftrue .FoundParents
	checkevent EVENT_READ_TOO_MUCH_BREAKWATER
	iftrue .Angry
	writetext BreakSchoolYoungster2Text
	waitbutton
	closetext
	end

.Angry
	writetext BreakSchoolYoungster2AngryText
	waitbutton
	closetext
	end

.FoundParents
	writetext BreakSchoolYoungster2ParentsText
	waitbutton
	closetext
	end


BreakSchoolNotebook:
	opentext
	checkevent EVENT_GHOST_BREAKWATER_CHILD
	iftrue .AfterGhost
	checkevent EVENT_READ_TOO_MUCH_BREAKWATER
	iftrue .BookShut
	writetext BreakSchoolNotebookText
	yesorno
	iffalse .Done
	writetext BreakSchoolNotebookText1
	yesorno
	iffalse .Done
	writetext BreakSchoolNotebookText2
	yesorno
	iffalse .Done
	writetext BreakSchoolNotebookText3
	setevent EVENT_READ_TOO_MUCH_BREAKWATER
	waitbutton
.Done:
	closetext
	end

.BookShut
	writetext BreakSchoolNotebookShutText
	waitbutton
	closetext
	end

.AfterGhost
	writetext BreakSchoolNotebookAfterGhostText
	waitbutton
	closetext
	end

BreakSchoolPikachu:
	opentext
	writetext BreakSchoolPikachuText
	cry PIKACHU
	setval PIKACHU
	special ShowPokedexEntry
	waitbutton
	closetext
	end

BreakwaterSchoolhouseTeacher:
	trainer VET_F, BREAKWATER, EVENT_BEAT_TEACHER_BREAKWATER, BreakwaterTeacherSeenText, BreakwaterTeacherBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BreakwaterTeacherAfterBattleText
	setevent EVENT_LEARNED_ABOUT_WEATHER
	waitbutton
	closetext
	end

BreakSchoolBlackboard:
	opentext
	writetext BreakSchoolBlackboardText
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
	writetext BreakSchoolPoisonText
	waitbutton
	sjump .Loop

.Paralysis:
	writetext BreakSchoolParalysisText
	waitbutton
	sjump .Loop

.Sleep:
	writetext BreakSchoolSleepText
	waitbutton
	sjump .Loop

.Burn:
	writetext BreakSchoolBurnText
	waitbutton
	sjump .Loop

.Freeze:
	writetext BreakSchoolFreezeText
	waitbutton
	sjump .Loop

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 0, 0, 11, 8
	dw .MenuData
	db 1

.MenuData:
	db STATICMENU_CURSOR
	dn 3, 2
	db 5
	dba .Text
	dbw BANK(@), NULL

.Text:
	db "SUN@"
	db "RAIN@"
	db "SAND@"
	db "HAIL@"
	db "SMOG@"
	db "QUIT@"

BreakSchoolBookshelf:
	jumpstd DifficultBookshelfScript

BreakSchoolYoungster1Text:
	text "I'm writing down"
	line "everything the"
	cont "teacher says."

	para "I don't want to"
	line "forget anything."

	para "When I grow up,"
	line "I want to help"
	cont "other people."

	para "The teacher says"
	line "learning is a"
	cont "good place to"
	cont "start."
	done


BreakSchoolGameboyKid1Text:
	text "We found a way"
	line "to trade #MON!"

	para "Mine was only"
	line "LEVEL 2, but I"
	cont "think I got a"
	cont "pretty good deal!"
	done


BreakSchoolGameboyKid2Text:
	text "Heh! I traded my"
	line "weak little"
	cont "PIDGEY for his"
	cont "NATU!"

	para "He says it's"
	line "special because"
	cont "it came from"
	cont "another region."

	para "I think I won!"
	done


BreakSchoolYoungster2Text:
	text "I don't really"
	line "like school."

	para "The teacher says"
	line "we should think"
	cont "about the future."

	para "What's the point"
	line "of that?"

	para "Everything I"
	line "cared about is"
	cont "gone already."
	done


BreakSchoolYoungster2AngryText:
	text "What are you"
	line "looking at?"

	para "You read my"
	line "notebook?"

	para "..."
	line "..."

	para "I don't want to"
	line "talk about it."

	para "Just leave me"
	line "alone."
	done


BreakSchoolYoungster2ParentsText:
	text "..."
	line "..."

	para "You really saw"
	line "them?"

	para "My parents?"

	para "..."
	line "..."

	para "Did they say"
	line "anything about"
	cont "me?"

	para "..."
	line "..."

	para "I see."

	para "They want me to"
	line "be happy?"

	para "I don't know if"
	line "I can do that"
	cont "yet."

	para "But... I think"
	line "I'll try."

	para "I don't want to"
	line "make them sad."
	done


BreakSchoolNotebookText:
	text "It's a child's"
	line "notebook."

	para "There are little"
	line "drawings of"
	cont "#MON in the"
	cont "margins."

	para "There's also a"
	line "lot of writing."

	para "Keep reading?"
	done


BreakSchoolNotebookText1:
	text "I don't like it"
	line "here."

	para "Everyone keeps"
	line "saying we're"
	cont "lucky."

	para "Lucky to have a"
	line "roof. Lucky to"
	cont "have food."

	para "But I had a home"
	line "before."

	para "I had a family"
	line "before."

	para "Keep reading?"
	done


BreakSchoolNotebookText2:
	text "The volcano took"
	line "everything."

	para "I remember the"
	line "noise."

	para "I remember the"
	line "smoke."

	para "I remember my"
	line "parents telling"
	cont "me to run."

	para "I ran."

	para "They didn't."

	para "Keep reading?"
	done


BreakSchoolNotebookText3:
	text "Everyone says I"
	line "should be happy"
	cont "to be alive."

	para "But why did I"
	line "get to live when"
	cont "they didn't?"

	para "I don't want to"
	line "grow up."

	para "I just want my"
	line "MOM and DAD back."
	done


BreakSchoolNotebookShutText:
	text "The notebook is"
	line "closed."

	para "You can hear the"
	line "child muttering"
	cont "something about"
	cont "minding your own"
	cont "business."
	done


BreakSchoolNotebookAfterGhostText:
	text "The notebook is"
	line "open."

	para "There are some"
	line "new drawings."

	para "A picture of a"
	line "family."

	para "The writing on"
	line "the page is much"
	cont "neater than"
	cont "before."

	para "At the bottom,"
	line "there's a little"
	cont "message."

	para "'I'm going to"
	line "grow up now.'"
	done


BreakSchoolPikachuText:
	text "Pika-Pika!"

	para "The PIKACHU seems"
	line "to be keeping"
	cont "the children"
	cont "company."
	done


BreakSchoolBlackboardText:
	text "The blackboard"
	line "describes Weather"

	para "and how it can"
	line "affect a battle."
	done

BreakSchoolPoisonText:
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


BreakSchoolParalysisText:
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


BreakSchoolSleepText:
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


BreakSchoolBurnText:
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

	para "But BLIZZARD has"
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


BreakSchoolFreezeText:
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
	cont "in smog."

	para "And many physical"
	line "moves have a 15%"

	para "chance to poison"
	line "the target."
	done

BreakwaterTeacherSeenText:
	text "Oh! A visitor."

	para "We just finished"
	line "today's lesson."

	para "Tell me, which"
	line "weather condition"
	cont "makes THUNDER"
	cont "especially useful?"

	para "..."
	line "..."

	para "You seem to know"
	line "your way around"
	cont "#MON."

	para "Would you care to"
	line "demonstrate?"
	done


BreakwaterTeacherBeatenText:
	text "Well done!"

	para "That's a very"
	line "impressive team"
	cont "you have."
	done


BreakwaterTeacherAfterBattleText:
	text "Thank you for"
	line "the demonstration."

	para "The children love"
	line "seeing different"
	cont "TRAINERS and"
	cont "their #MON."

	para "Some of them"
	line "haven't travelled"
	cont "far beyond this"
	cont "island."

	para "I hope they'll"
	line "have the chance"
	cont "to see more of"
	cont "the world one day."

	para "The weather notes"
	line "on the blackboard"
	cont "are there for"
	cont "anyone to read."

	para "Knowledge should"
	line "be shared."
	done


BreakwaterSchoolhouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3, 15, BREAKWATER_ISLE, 8
	warp_event  4, 15, BREAKWATER_ISLE, 8

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, BreakSchoolBookshelf
	bg_event  1,  1, BGEVENT_READ, BreakSchoolBookshelf
	bg_event  3,  0, BGEVENT_READ, BreakSchoolBlackboard
	bg_event  4,  0, BGEVENT_READ, BreakSchoolBlackboard

	def_object_events
	object_event  2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BreakSchoolYoungster1Script, -1
	object_event  3, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BreakSchoolGameboyKid1Script, -1
	object_event  4, 11, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, BreakSchoolGameboyKid2Script, -1
	object_event  4,  7, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BreakSchoolYoungster2Script, -1
	object_event  2,  6, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BreakSchoolNotebook, -1
	object_event  3,  5, SPRITE_PIKACHU, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, BreakSchoolPikachu, -1
	object_event  3,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, BreakwaterSchoolhouseTeacher, -1
