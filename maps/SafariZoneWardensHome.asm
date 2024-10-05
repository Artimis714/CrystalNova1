	object_const_def
	const SAFARIZONEWARDENSHOME_LASS

SafariZoneWardensHome_MapScripts:
	def_scene_scripts

	def_callbacks

WardensGranddaughter:
	faceplayer
	opentext
	checkevent EVENT_GOT_KANTO_PAPERS_BACK
	iftrue .IllLayLow
	checkevent EVENT_LAVTOWER_GHOST_BEAUTY_SERENITY
	iftrue .ApologizeGiveBackKantoPapers
	checkevent EVENT_LAVTOWER_GHOST_LASS_RORY
	iftrue .MetSister
	checkevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	iftrue .AlreadyMet
	writetext WardensGranddaughterText1
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	end

.AlreadyMet:
	writetext WardensGranddaughterText2
	setevent EVENT_LAVENDER_ALERT
	setevent EVENT_FUCHSIA_ALERT
	clearevent EVENT_BEAT_CITY_POLICE_LAVENDER
	clearevent EVENT_BEAT_CITY_POLICE_FUCHSIA
	waitbutton
	closetext
	end

.MetSister:
	checkevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	iftrue .MetSister2
	writetext WardensGranddaughterText1
	waitbutton
	writetext MetSisterSafariZone1Text
	setevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	waitbutton
	closetext
	end

.MetSister2:
	writetext MetSisterSafariZone2Text
	waitbutton
	closetext
	end

.ApologizeGiveBackKantoPapers:
	writetext youmetmylavenderparentstext
	promptbutton
	verbosegiveitem KANTO_PAPERS
	writetext SorryIllLayLowText
	setevent EVENT_GOT_KANTO_PAPERS_BACK
	setevent EVENT_BEAT_CITY_POLICE_VERMILION
	setevent EVENT_BEAT_CITY_POLICE_CELADON
	setevent EVENT_BEAT_CITY_POLICE_LAVENDER
	setevent EVENT_BEAT_CITY_POLICE_PEWTER
	setevent EVENT_BEAT_CITY_POLICE_VIRIDIAN
	setevent EVENT_BEAT_CITY_POLICE_FUCHSIA
	setevent EVENT_BEAT_CITY_POLICE_CINNABAR
	setevent EVENT_BEAT_CITY_POLICE_CERULEAN
	waitbutton
	closetext
	end
	
.IllLayLow:
	checkevent EVENT_MAKING_FAKE_DOCS
	iftrue .MadeFakeID
	setval SMEARGLE
	special FindPartyMonThatSpecies
	iftrue .MakinFakeID
	writetext SorryIllLayLowText
	waitbutton
	closetext
	end

.MadeFakeID:
	writetext NowICanLeaveText
	waitbutton
	closetext
	end

.MakinFakeID:
	writetext OhYouHaveASmeargleText
	yesorno
	iffalse .IWasAJerkToYou
	waitbutton
	setevent EVENT_MAKING_FAKE_DOCS
	pause 15
	cry SMEARGLE
	playsound SFX_TALLY
	waitsfx
	writetext NowICanLeaveText
	waitbutton
	closetext
	end

.IWasAJerkToYou:
	writetext IWasAJerkToYouText
	waitbutton
	closetext
	end

WardenPhoto:
	jumptext WardenPhotoText

SafariZonePhoto:
	jumptext SafariZonePhotoText

WardensHomeBookshelf:
	jumpstd PictureBookshelfScript

MetSisterSafariZone1Text:
	text "..."
	line "..."

	para "OPAL: Lies! You"
	line "can't have met"
	cont "RORY!"

	para "She died with"
	line "our Mom!"

	para "..."
	line "..."

	para "OPAL: I can't"
	line "believe you!"
	cont "I won't!"

	para "GET OUT OF MY"
	line "HOUSE!!!"
	done

MetSisterSafariZone2Text:
	text "<……> <……> <……>"
	line "<……> <……> <……>"

	para "OPAL: I don't"
	line "believe you met"
	cont "RORY."

	para "Please... just"
	line "leave."

	para "I want my mommy."
	done

youmetmylavenderparentstext:
	text "OPAL: I thought"
	line "I told you to"
	cont "leave me ALONE!!"

	para "..."
	line "..."

	para "OPAL: You met my"
	line "mom and Sister?"

	para "But... but that's"
	line "impossible. They"

	para "died in an air-"
	line "raid on LAVENDER!"

	para "..."
	line "..."

	para "OPAL: I don't"
	line "believe you!"

	para "..."
	line "..."

	para "OPAL: Only mommy"
	line "would know about"

	para "my favorite"
	line "LAPRAS DOLL."

	para "You really did"
	line "meet them, didn't"
	cont "you?"

	para "..."
	line "..."

	para "OPAL: What the"
	line "WARDEN and I"

	para "did to you was"
	line "wrong."

	para "Here, I'll give"
	line "back your KANTO"
	cont "PAPERS."

	para "..."
	line "..."

	para "OPAL: I don't"
	line "know what I'll do"

	para "without PAPERS,"
	line "but I know that"

	para "if my mom and"
	line "RORY are still"

	para "watching over me"
	line "I want them to"
	cont "be proud of me."

	para "Here you go."
	done

SorryIllLayLowText:
	text "OPAL: Sorry again"
	line "for the trouble"
	cont "I caused."

	para "..."
	line "..."

	para "OPAL: I'm still"
	line "not sure what I'll"

	para "do without KANTO"
	line "PAPERS."

	para "Maybe if I had"
	line "a SMEARGLE it"

	para "could SKETCH FAKE"
	line "KANTO PAPERS!"

	para "Then I'd be able"
	line "to visit my Mom"

	para "and sister's"
	line "graves."
	done 

OhYouHaveASmeargleText:
	text "OPAL: Oh! you've"
	line "got a SMEARGLE?"

	para "I bet it could"
	line "SKETCH some FAKE"
	cont "KANTO PAPERS."

	para "Would you let me"
	line "use your SMEARGLE"

	para "to make myself a"
	line "FAKE ID?"
	done

IWasAJerkToYouText:
	text "OPAL: I understand"
	line "your reluctance."

	para "We did steal your"
	line "ID and make your"
	cont "life pretty hard."

	para "I wouldn't help"
	line "me either."

	para "I guess I'll just"
	line "have to find some"

	para "other way to pay"
	line "my respects to"
	cont "my family."
	done

NowICanLeaveText:
	text "OPAL: That's"
	line "AMAZING!!!"

	para "Look at that"
	line "document!"

	para "It's a beautiful"
	line "forgery, and now"

	para "I'll be free to"
	line "pay respects to"
	cont "my family!"

	para "Now, I'll be able"
	line "to have a real"
	cont "life in KANTO!"

	para "<PLAY_G>!"
	line "thank you for"
	cont "everything!"
	done

WardensGranddaughterText1:
	text "Hi, I'm OPAL!"

	para "My grandpa is the"
	line "SAFARI ZONE WAR-"
	cont "DEN."

	para "At least he was…"

	para "..."
	line "..."

	para "OPAL: The FAST"
	line "SHIP?"

	para "No... That wasn't"
	line "us."

	para "..."
	line "..."

	para "OPAL: I swear! It"
	line "wasn't us!!!"

	para "..."
	line "..."

	para "OPAL: Fine... If"
	line "my 'Grandfather'"

	para "took your KANTO"
	line "PAPERS how would"
	cont "you prove it?"

	para "..."
	line "..."

	para "OPAL: Oh, yeah?"
	line "Then I'll call"
	cont "the cops!"

	para "..."
	line "..."

	para "OPAL: That's what"
	line "I thought!"

	para "My mother was"
	line "from LAVENDER"

	para "but the paperwork"
	line "all burned in an"
	cont "air-raid!"

	para "I was at boarding"
	line "school over in"
	cont "III Island, but"

	para "Mom and my sister"
	line "RORY died in the"
	cont "attack!"

	para "I deserve to live"
	line "here."

	para "The SAFARI WARDEN"
	line "is an old family"
	cont "friend."

	para "..."
	line "..."

	para "OPAL: LAVENDER is"
	line "still haunted by"

	para "the memory of"
	line "the war."

	para "Nothing you could"
	line "find there would"
	cont "change my mind."
	done

WardensGranddaughterText2:
	text "..."
	line "..."

	para "OPAL: LAVENDER is"
	line "still haunted by"

	para "the memory of"
	line "the war."

	para "Nothing you could"
	line "find there would"
	cont "change my mind."

	para "Seriously, leave"
	line "me alone or I'll"
	cont "call the cops!"
	done

WardenPhotoText:
	text "It's a photo of a"
	line "grinning old man"

	para "who's surrounded"
	line "by #MON."
	done

SafariZonePhotoText:
	text "It's a photo of a"
	line "huge grassy plain"

	para "with rare #MON"
	line "frolicking in it."
	done

SafariZoneWardensHome_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 6
	warp_event  3,  7, FUCHSIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, WardensHomeBookshelf
	bg_event  1,  1, BGEVENT_READ, WardensHomeBookshelf
	bg_event  7,  0, BGEVENT_READ, WardenPhoto
	bg_event  9,  0, BGEVENT_READ, SafariZonePhoto

	def_object_events
	object_event  2,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, WardensGranddaughter, EVENT_MAKING_FAKE_DOCS
