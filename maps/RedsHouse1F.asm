	object_const_def
	const REDSHOUSE1F_REDS_MOM

RedsHouse1F_MapScripts:
	def_scene_scripts
	scene_script RedHouse1FNoopScene ; unusable

	def_callbacks

RedHouse1FNoopScene:
	end

RedsMom:
	faceplayer
	opentext
	checkevent EVENT_RED_IN_MT_SILVER
	iffalse .MetAlready
	writetext RedsMomText1
	waitbutton
	closetext
	end

.MetAlready:
	checkevent EVENT_MET_REDS_MOM
	iftrue .MetAlreadyAgain
	writetext RedsMomText2
	waitbutton
	closetext
	setevent EVENT_MET_REDS_MOM
	setevent EVENT_OAK_BACK_IN_LAB
	clearevent EVENT_OAK_IN_MT_SILVER
	end

.MetAlreadyAgain:
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .GrandaughterText
	writetext RedsMomText3
	waitbutton
	writetext RedsMomText5
	waitbutton
	closetext
	end

.GrandaughterText:
	writetext RedsMomText4
	waitbutton
	writetext RedsMomText5
	waitbutton
	closetext
	end

RedsHouse1FTV:
	jumptext RedsHouse1FTVText

RedsHouse1FBookshelf:
	jumpstd PictureBookshelfScript

RedsMomText1:
	text "I worry about RED"
	line "every day."

	para "..."
	line "..."

	para "RED is my son."
	
	para "..."
	line "..."

	para "A lot of people"
	line "don't realize"

	para "RED, HERO of the"
	line "GREAT WAR"

	para "came from humble"
	line "little PALLET."

	para "You remind me a"
	line "lot of him, when"
	cont "he was your age."

	para "Do you have"
	line "family around"
	cont "here?"

	para "..."
	line "..."

	para "Huh, my mistake."
	done

RedsMomText2:
	text "..."
	line "..."

	para "OH my goodness!"
	line "<PLAY_G>?"
	cont "Is it really you?"

	para "..."
	line "..."

	para "Oh, sweetie."
	line "I'm your grandma!"

	para "I'm delighted to"
	line "meet you."

	para "..."
	line "..."

	para "So you've spoken"
	line "to your mother."

	para "How is she doing?"
	line "I haven't seen"
	cont "her in years!"

	para "..."
	line "..."

	para "Sweetie, I just"
	line "want the chance"

	para "to get to know"
	line "you!"

	para "You're welcome to"
	line "stay as long as"
	cont "you like!"

	para "..."
	line "..."

	para "Why yes, I think"
	line "I have some"
	cont "photo albums."

	para "This was when he"
	line "got his PIKACHU"
	cont "from PROF OAK."

	para "And this was"
	line "the day he..."

	para "(dozens of"
	line "photos later)"

	para "Does that help?"

	para "..."
	line "..."

	para "Okay, I'll let"
	line "you get going,"

	para "but come back"
	line "anytime, okay?"
	done

RedsMomText3:
	text "Well if it isn't"
	line "my favorite grand-"
	cont "son!"
	done

RedsMomText4:
	text "Well if it isn't"
	line "my favorite grand-"
	cont "daughter!"
	done

RedsMomText5:
	text "..."
	line "..."

	para "How's your travels"
	line "so far?"

	para "..."
	line "..."

	para "Sounds intense."
	line "But I believe in"
	cont "you sweetie."

	para "I know you'll"
	line "do amazing things!"
	done

RedsHouse1FTVText:
	text "They have programs"
	line "that aren't shown"
	cont "in JOHTO…"
	done

RedsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  0, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	def_object_events
	object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
