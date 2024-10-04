DEF time_group EQUS "0," ; use the nth TimeFishGroups entry

MACRO fishgroup
; chance, old rod, good rod, super rod
	db \1
	dw \2, \3, \4
ENDM

FishGroups:
; entries correspond to FISHGROUP_* constants
	table_width FISHGROUP_DATA_LENGTH, FishGroups
	fishgroup 50 percent + 1, .Shore_Old,            .Shore_Good,            .Shore_Super
	fishgroup 50 percent + 1, .Ocean_Old,            .Ocean_Good,            .Ocean_Super
	fishgroup 50 percent + 1, .Lake_Old,             .Lake_Good,             .Lake_Super
	fishgroup 50 percent + 1, .Pond_Old,             .Pond_Good,             .Pond_Super
	fishgroup 50 percent + 1, .Dratini_Old,          .Dratini_Good,          .Dratini_Super
	fishgroup 50 percent + 1, .Qwilfish_Swarm_Old,   .Qwilfish_Swarm_Good,   .Qwilfish_Swarm_Super
	fishgroup 50 percent + 1, .Remoraid_Swarm_Old,   .Remoraid_Swarm_Good,   .Remoraid_Swarm_Super
	fishgroup 50 percent + 1, .Gyarados_Old,         .Gyarados_Good,         .Gyarados_Super
	fishgroup 50 percent + 1, .Dratini_2_Old,        .Dratini_2_Good,        .Dratini_2_Super
	fishgroup 50 percent + 1, .WhirlIslands_Old,     .WhirlIslands_Good,     .WhirlIslands_Super
	fishgroup 50 percent + 1, .Qwilfish_Old,         .Qwilfish_Good,         .Qwilfish_Super
	fishgroup 50 percent + 1, .Remoraid_Old,         .Remoraid_Good,         .Remoraid_Super
	fishgroup 50 percent + 1, .Qwilfish_NoSwarm_Old, .Qwilfish_NoSwarm_Good, .Qwilfish_NoSwarm_Super
	fishgroup 50 percent + 1, .Ghost_Old, 		 .Ghost_Good, 		 .Ghost_Super
	assert_table_length NUM_FISHGROUPS

.Shore_Old:
	db  70 percent + 1, MAGIKARP,   15
	db  85 percent + 1, MAGIKARP,   15
	db 100 percent,     KRABBY,     15
.Shore_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     KRABBY,     35
	db  90 percent + 1, KINGLER,    35
	db 100 percent,     time_group 0
.Shore_Super:
	db  40 percent,     KINGLER,    75
	db  70 percent,     time_group 1
	db  90 percent + 1, KINGLER,    75
	db 100 percent,     KINGLER,    75

.Ocean_Old:
	db  70 percent + 1, TENTACOOL,  15
	db  85 percent + 1, REMORAID,   15
	db 100 percent,     QWILFISH,   15
.Ocean_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     TENTACOOL,  35
	db  90 percent + 1, CHINCHOU,   35
	db 100 percent,     time_group 2
.Ocean_Super:
	db  40 percent,     CHINCHOU,   75
	db  70 percent,     time_group 3
	db  90 percent + 1, TENTACRUEL, 75
	db 100 percent,     LANTURN,    75

.Lake_Old:
	db  70 percent + 1, MAGIKARP,   15
	db  85 percent + 1, PSYDUCK,    15
	db 100 percent,     GOLDEEN,    15
.Lake_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     PSYDUCK,    35
	db  90 percent + 1, GOLDEEN,    35
	db 100 percent,     time_group 4
.Lake_Super:
	db  40 percent,     GOLDUCK,    75
	db  70 percent,     time_group 5
	db  90 percent + 1, SEAKING,    75
	db 100 percent,     GYARADOS,   75

.Pond_Old:
	db  70 percent + 1, POLIWAG,    15
	db  85 percent + 1, WOOPER,     15
	db 100 percent,     GOLDEEN,    15
.Pond_Good:
	db  35 percent,     SEAKING,    35
	db  70 percent,     POLIWHIRL,  35
	db  90 percent + 1, QUAGSIRE,   35
	db 100 percent,     time_group 6
.Pond_Super:
	db  40 percent,     SEAKING,    75
	db  70 percent,     time_group 7
	db  90 percent + 1, QUAGSIRE,   75
	db 100 percent,     BLASTOISE,  75

.Dratini_Old:
	db  70 percent + 1, DRATINI,     5
	db  85 percent + 1, HORSEA,      5
	db 100 percent,     LAPRAS,      5
.Dratini_Good:
	db  35 percent,     HORSEA,      5
	db  70 percent,     DRATINI,     5
	db  90 percent + 1, GYARADOS,    5
	db 100 percent,     time_group 16
.Dratini_Super:
	db  40 percent,     HORSEA,      5
	db  70 percent,     time_group 17
	db  90 percent + 1, DRATINI,     5
	db 100 percent,     DRAGONAIR,   5

.Qwilfish_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   5
	db  85 percent + 1, MAGIKARP,   5
	db 100 percent,     QWILFISH,   5
.Qwilfish_Swarm_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     QWILFISH,   35
	db  90 percent + 1, QWILFISH,   35
	db 100 percent,     time_group 10
.Qwilfish_Swarm_Super:
	db  40 percent,     QWILFISH,   75
	db  70 percent,     time_group 11
	db  90 percent + 1, QWILFISH,   75
	db 100 percent,     QWILFISH,   75

.Remoraid_Swarm_Old:
	db  70 percent + 1, MAGIKARP,   15
	db  85 percent + 1, MAGIKARP,   15
	db 100 percent,     REMORAID,   15
.Remoraid_Swarm_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     REMORAID,   35
	db  90 percent + 1, REMORAID,   35
	db 100 percent,     time_group 12
.Remoraid_Swarm_Super:
	db  40 percent,     REMORAID,   75
	db  70 percent,     time_group 13
	db  90 percent + 1, REMORAID,   75
	db 100 percent,     REMORAID,   75

.Gyarados_Old:
	db  70 percent + 1, MAGIKARP,   15
	db  85 percent + 1, MAGIKARP,   15
	db 100 percent,     MAGIKARP,   15
.Gyarados_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     MAGIKARP,   35
	db  90 percent + 1, MAGIKARP,   35
	db 100 percent,     time_group 14
.Gyarados_Super:
	db  40 percent,     MAGIKARP,   75
	db  70 percent,     time_group 15
	db  90 percent + 1, MAGIKARP,   75
	db 100 percent,     MAGIKARP,   75

.Dratini_2_Old:
	db  70 percent + 1, DRATINI,     5
	db  85 percent + 1, HORSEA,      5
	db 100 percent,     LAPRAS,      5
.Dratini_2_Good:
	db  35 percent,     HORSEA,      5
	db  70 percent,     DRATINI,     5
	db  90 percent + 1, GYARADOS,    5
	db 100 percent,     time_group 16
.Dratini_2_Super:
	db  40 percent,     HORSEA,      5
	db  70 percent,     time_group 17
	db  90 percent + 1, DRATINI,     5
	db 100 percent,     DRAGONAIR,   5

.WhirlIslands_Old:
	db  70 percent + 1, KRABBY,     15
	db  85 percent + 1, STARYU,     15
	db 100 percent,     SEEL,       15
.WhirlIslands_Good:
	db  35 percent,     KRABBY,     35
	db  70 percent,     DEWGONG,    35
	db  90 percent + 1, KINGLER,    35
	db 100 percent,     time_group 18
.WhirlIslands_Super:
	db  40 percent,     KINGLER,    75
	db  70 percent,     time_group 15
	db  90 percent + 1, DEWGONG,    75
	db 100 percent,     STARMIE,    75

.Qwilfish_NoSwarm_Old:
.Qwilfish_Old:
	db  70 percent + 1, MAGIKARP,   15
	db  85 percent + 1, TENTACOOL,  15
	db 100 percent,     QWILFISH,   15
.Qwilfish_NoSwarm_Good:
.Qwilfish_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     TENTACOOL,  35
	db  90 percent + 1, QWILFISH,   35
	db 100 percent,     time_group 35
.Qwilfish_NoSwarm_Super:
.Qwilfish_Super:
	db  40 percent,     TENTACRUEL, 75
	db  70 percent,     time_group 21
	db  90 percent + 1, MAGIKARP,   75
	db 100 percent,     QWILFISH,   75

.Remoraid_Old:
	db  70 percent + 1, MAGIKARP,   15
	db  85 percent + 1, TENTACOOL,  15
	db 100 percent,     REMORAID,   15
.Remoraid_Good:
	db  35 percent,     MAGIKARP,   35
	db  70 percent,     TENTACOOL,  35
	db  90 percent + 1, REMORAID,   35
	db 100 percent,     time_group 6
.Remoraid_Super:
	db  40 percent,     TENTACRUEL, 75
	db  70 percent,     time_group 7
	db  90 percent + 1, MAGIKARP,   75
	db 100 percent,     REMORAID,   75

.Ghost_Old:
	db  70 percent + 1, SHELLDER,   22
	db  85 percent + 1, NOCTOWL,    22
	db 100 percent,     MISSINGNO,  22
.Ghost_Good:
	db  35 percent,     SHELLDER,   45
	db  70 percent,     SLOWBRO,    45
	db  90 percent + 1, CLOYSTER,   45
	db 100 percent,     MISSINGNO,  45
.Ghost_Super:
	db  40 percent,     CLOYSTER,   88
	db  70 percent,     SLOWBRO,	88
	db  90 percent + 1, NOCTOWL,    88
	db 100 percent,     MISSINGNO,  88

TimeFishGroups:
	;  day              nite
	db CORSOLA,    35,  STARYU,     35 ; 0
	db CORSOLA,    75,  STARMIE,    75 ; 1
	db SHELLDER,   35,  SHELLDER,   35 ; 2
	db CLOYSTER,   75,  CLOYSTER,   75 ; 3
	db GOLDEEN,    35,  GOLDEEN,    35 ; 4
	db SEAKING,    75,  SEAKING,    75 ; 5
	db POLIWHIRL,  35,  POLIWHIRL,  35 ; 6
	db POLIWRATH,  75,  POLITOED,   75 ; 7
	db DRATINI,    35,  DRATINI,    35 ; 8
	db DRAGONAIR,  75,  DRAGONAIR,  75 ; 9
	db QWILFISH,   35,  QWILFISH,   35 ; 10
	db QWILFISH,   75,  QWILFISH,   75 ; 11
	db REMORAID,   35,  REMORAID,   35 ; 12
	db OCTILLERY,  75,  OCTILLERY,  75 ; 13
	db GYARADOS,   35,  GYARADOS,   35 ; 14
	db SLOWKING,   75,  SLOWBRO,    75 ; 15
	db DRATINI,    15,  DRATINI,    15 ; 16
	db DRATINI,    15,  DRATINI,    15 ; 17
	db SLOWKING,   35,  SLOWBRO,    35 ; 18
	db KINGDRA,    75,  KINGDRA,    75 ; 19
	db TENTACRUEL, 35,  TENTACRUEL, 35 ; 20
	db TENTACRUEL, 75,  TENTACRUEL, 75 ; 21
