MACRO landmark
; x, y, name
	db \1 + 8, \2 + 16
	dw \3
ENDM

Landmarks:
; entries correspond to constants/landmark_constants.asm
	table_width 4, Landmarks
	landmark  -8, -16, SpecialMapName
	landmark 140, 100, NewBarkTownName
	landmark 128, 100, Route29Name
	landmark 100, 100, CherrygroveCityName
	landmark 100,  80, Route30Name
	landmark  96,  60, Route31Name
	landmark  84,  60, VioletCityName
	landmark  85,  58, SproutTowerName
	landmark  84,  92, Route32Name
	landmark  76,  76, RuinsOfAlphName
	landmark  84, 124, UnionCaveName
	landmark  82, 124, Route33Name
	landmark  68, 124, AzaleaTownName
	landmark  70, 122, SlowpokeWellName
	landmark  52, 120, IlexForestName
	landmark  52, 112, Route34Name
	landmark  52,  92, GoldenrodCityName
	landmark  50,  92, RadioTowerName
	landmark  51,  92, GoldenrodArchName
	landmark  52,  76, Route35Name
	landmark  52,  60, NationalParkName
	landmark  64,  60, Route36Name
	landmark  68,  52, Route37Name
	landmark  68,  44, EcruteakCityName
	landmark  70,  42, TinTowerName
	landmark  66,  42, BurnedTowerName
	landmark  52,  44, Route38Name
	landmark  36,  48, Route39Name
	landmark  36,  60, OlivineCityName
	landmark  38,  62, LighthouseName
	landmark  28,  56, BattleTowerName
	landmark  28,  64, Route40Name
	landmark  28,  92, WhirlIslandsName
	landmark  28, 100, Route41Name
	landmark  20, 100, CianwoodCityName
	landmark  92,  44, Route42Name
	landmark  84,  44, MtMortarName
	landmark 108,  44, MahoganyTownName
	landmark 108,  36, Route43Name
	landmark 108,  28, LakeOfRageName
	landmark 120,  44, Route44Name
	landmark 130,  38, IcePathName
	landmark 132,  44, BlackthornCityName
	landmark 132,  36, DragonsDenName
	landmark 132,  64, Route45Name
	landmark 112,  72, DarkCaveName
	landmark 124,  88, Route46Name
	landmark 148,  68, SilverCaveName
	assert_table_length KANTO_LANDMARK
	landmark  52,  92, PalletTownName
	landmark  52,  76, Route1Name
	landmark  52,  60, ViridianCityName
	landmark  52,  52, Route2Name
	landmark  52,  44, ViridianForestName 
	landmark  52,  36, PewterCityName
	landmark  60,  36, Route3Name
	landmark  76,  36, MtMoonName
	landmark  88,  52, Route4Name
	landmark 100,  36, CeruleanCityName
	landmark  92,  28, CeruleanCaveName
	landmark 100,  28, Route24Name
	landmark 116,  20, Route25Name
	landmark 100,  44, Route5Name
	landmark 108,  60, UndergroundName
	landmark 100,  60, Route6Name
	landmark 100,  68, VermilionCityName
	landmark  92,  44, DiglettsCaveName
	landmark  92,  52, Route7Name
	landmark 116,  52, Route8Name
	landmark 116,  36, Route9Name
	landmark 132,  36, RockTunnelName
	landmark 132,  40, Route10Name
	landmark 132,  44, PowerPlantName
	landmark 132,  52, LavenderTownName
	landmark 140,  52, LavRadioTowerName
	landmark  76,  52, CeladonCityName
	landmark 100,  52, SaffronCityName
	landmark 116,  68, Route11Name
	landmark 132,  68, Route12Name
	landmark 124,  84, Route13Name
	landmark 116,  92, Route14Name
	landmark 108, 100, Route15Name
	landmark  68,  52, Route16Name
	landmark  68,  76, Route17Name
	landmark  76, 100, Route18Name
	landmark  92, 100, FuchsiaCityName
	landmark  36,  52, Route22Name
	landmark  28,  36, VictoryRoadName
	landmark  28,  28, Route23Name
	landmark  28,  20, IndigoPlateauName
	landmark  28,  68, Route26Name
	landmark  20,  84, Route27Name
	landmark  12,  84, TohjoFallsName
	landmark  12,  52, Route28Name
	landmark  52, 100, Route21Name
	landmark  52, 116, CinnabarIslandName
	landmark  52, 124, ThunderSeaName
	landmark  60, 132, TempestIsleName
	landmark  68, 116, Route20Name
	landmark  76, 116, SeafoamIslandsName
	landmark  92, 116, Route19Name
	landmark  92, 124, CitrineCityName
	landmark 100, 124, GreenSeaName
	landmark 116, 124, MossIsleName
	landmark 124, 124, WhisperSeaName
	landmark 132, 124, TanobyRuinsName
	landmark  20, 108, FastShipName
	assert_table_length NUM_LANDMARKS

NewBarkTownName:     db "NEW BARK¯TOWN@"
CherrygroveCityName: db "CHERRYGROVE¯CITY@"
VioletCityName:      db "VIOLET CITY@"
AzaleaTownName:      db "AZALEA TOWN@"
GoldenrodCityName:   db "GOLDENROD¯CITY@"
EcruteakCityName:    db "ECRUTEAK¯CITY@"
OlivineCityName:     db "OLIVINE¯CITY@"
CianwoodCityName:    db "CIANWOOD¯CITY@"
MahoganyTownName:    db "MAHOGANY¯TOWN@"
BlackthornCityName:  db "BLACKTHORN¯CITY@"
LakeOfRageName:      db "LAKE OF¯RAGE@"
SilverCaveName:      db "SILVER CAVE@"
SproutTowerName:     db "SPROUT¯TOWER@"
RuinsOfAlphName:     db "RUINS¯OF ALPH@"
UnionCaveName:       db "UNION CAVE@"
SlowpokeWellName:    db "SLOWPOKE¯WELL@"
RadioTowerName:      db "RADIO TOWER@"
PowerPlantName:      db "POWER PLANT@"
NationalParkName:    db "NATIONAL¯PARK@"
TinTowerName:        db "TIN TOWER@"
LighthouseName:      db "LIGHTHOUSE@"
WhirlIslandsName:    db "WHIRL¯ISLANDS@"
MtMortarName:        db "MT.MORTAR@"
DragonsDenName:      db "DRAGON'S¯DEN@"
IcePathName:         db "ICE PATH@"
NotApplicableName:   db "N/A@" ; unreferenced ; "オバケやしき" ("HAUNTED HOUSE") in Japanese
PalletTownName:      db "PALLET TOWN@"
ViridianCityName:    db "VIRIDIAN¯CITY@"
PewterCityName:      db "PEWTER CITY@"
CeruleanCityName:    db "CERULEAN¯CITY@"
LavenderTownName:    db "LAVENDER¯TOWN@"
VermilionCityName:   db "VERMILION¯CITY@"
CeladonCityName:     db "CELADON¯CITY@"
SaffronCityName:     db "SAFFRON¯CITY@"
FuchsiaCityName:     db "FUCHSIA¯CITY@"
CinnabarIslandName:  db "CINNABAR¯ISLAND@"
IndigoPlateauName:   db "INDIGO¯PLATEAU@"
VictoryRoadName:     db "VICTORY¯ROAD@"
MtMoonName:          db "MT.MOON@"
RockTunnelName:      db "ROCK TUNNEL@"
LavRadioTowerName:   db "DEATH TOWER@"
SilphCoName:         db "SILPH CO.@" ; unreferenced
SafariZoneName:      db "SAFARI ZONE@" ; unreferenced
SeafoamIslandsName:  db "SEAFOAM¯ISLANDS@"
PokemonMansionName:  db "#MON¯MANSION@" ; unreferenced
CeruleanCaveName:    db "CERULEAN¯CAVE@"
Route1Name:          db "ROUTE 1@"
Route2Name:          db "ROUTE 2@"
Route3Name:          db "ROUTE 3@"
Route4Name:          db "ROUTE 4@"
Route5Name:          db "ROUTE 5@"
Route6Name:          db "ROUTE 6@"
Route7Name:          db "ROUTE 7@"
Route8Name:          db "ROUTE 8@"
Route9Name:          db "ROUTE 9@"
Route10Name:         db "ROUTE 10@"
Route11Name:         db "ROUTE 11@"
Route12Name:         db "ROUTE 12@"
Route13Name:         db "ROUTE 13@"
Route14Name:         db "ROUTE 14@"
Route15Name:         db "ROUTE 15@"
Route16Name:         db "ROUTE 16@"
Route17Name:         db "ROUTE 17@"
Route18Name:         db "ROUTE 18@"
Route19Name:         db "CORAL¯SEA@"
Route20Name:         db "THERMAL¯SEA@"
Route21Name:         db "SOUTHERN¯SEA@"
Route22Name:         db "ROUTE 22@"
Route23Name:         db "ROUTE 23@"
Route24Name:         db "ROUTE 24@"
Route25Name:         db "ROUTE 25@"
Route26Name:         db "ROUTE 26@"
Route27Name:         db "ROUTE 27@"
Route28Name:         db "ROUTE 28@"
Route29Name:         db "ROUTE 29@"
Route30Name:         db "ROUTE 30@"
Route31Name:         db "ROUTE 31@"
Route32Name:         db "ROUTE 32@"
Route33Name:         db "ROUTE 33@"
Route34Name:         db "ROUTE 34@"
Route35Name:         db "ROUTE 35@"
Route36Name:         db "ROUTE 36@"
Route37Name:         db "ROUTE 37@"
Route38Name:         db "ROUTE 38@"
Route39Name:         db "ROUTE 39@"
Route40Name:         db "ROUTE 40@"
Route41Name:         db "ROUTE 41@"
Route42Name:         db "ROUTE 42@"
Route43Name:         db "ROUTE 43@"
Route44Name:         db "ROUTE 44@"
Route45Name:         db "ROUTE 45@"
Route46Name:         db "ROUTE 46@"
DarkCaveName:        db "DARK CAVE@"
IlexForestName:      db "ILEX¯FOREST@"
BurnedTowerName:     db "BURNED¯TOWER@"
FastShipName:        db "FAST SHIP@"
ViridianForestName:  db "VIRIDIAN¯FOREST@"
DiglettsCaveName:    db "REBEL'S¯PASS@"
TohjoFallsName:      db "TOHJO FALLS@"
UndergroundName:     db "UNDERGROUND@"
BattleTowerName:     db "MASS GRAVE@"
SpecialMapName:      db "SPECIAL@"
GoldenrodArchName:   db "LOST¯ARCHIVES@"
ThunderSeaName:      db "THUNDER¯SEA@"
TempestIsleName:     db "TEMPEST¯ISLE@"
CitrineCityName:     db "CITRINE¯CITY@"
GreenSeaName:        db "GREEN¯SEA@"
MossIsleName:        db "MOSS¯ISLE@"
WhisperSeaName:      db "WHISPER¯SEA@"
TanobyRuinsName:     db "TANOBY¯RUINS@"
