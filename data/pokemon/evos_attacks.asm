SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

EvosAttacks::

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, CONSTRICT
	db 7, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 22, SLUDGE
	db 32, GROWTH
	db 34, GIGA_DRAIN
	db 37, SLUDGE_BOMB
	db 39, SYNTHESIS
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db EVOLVE_ITEM, LEAF_STONE, VENUSAUR
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 24, SLUDGE
	db 38, GROWTH
	db 40, GIGA_DRAIN
	db 43, SLUDGE_BOMB
	db 47, SYNTHESIS
	db 56, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, GIGA_DRAIN
	db 15, POISONPOWDER
	db 15, SPORE
	db 22, RAZOR_LEAF
	db 24, ACID
	db 41, GROWTH
	db 46, SLUDGE_BOMB
	db 53, SYNTHESIS
	db 65, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, FIRE_SPIN
	db 1, ROAR
	db 1, RAGE
	db 7, EMBER
	db 14, DRAGON_RAGE
	db 19, TWISTER
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, DRAGON_CLAW
	db 43, DRAGONBREATH
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db EVOLVE_ITEM, FIRE_STONE, CHARIZARD
	db 0 ; no more evolutions
	db 1, EMBER
	db 14, RAGE
	db 21, FIRE_SPIN
	db 24, TWISTER
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, DRAGON_CLAW
	db 48, DRAGONBREATH
	db 55, OUTRAGE
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, CRUNCH
	db 14, RAGE
	db 21, FIRE_SPIN
	db 24, TWISTER
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, DRAGON_CLAW
	db 54, DRAGONBREATH
	db 64, OUTRAGE
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, WITHDRAW
	db 13, WATER_GUN
	db 18, BITE
        db 20, BUBBLEBEAM
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 40, METAL_CLAW
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db EVOLVE_ITEM, WATER_STONE, BLASTOISE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 19, BITE
        db 21, BUBBLEBEAM
	db 25, RAPID_SPIN
	db 28, METAL_CLAW
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, METAL_CLAW
	db 1, SHARPEN
	db 19, BITE
        db 21, BUBBLEBEAM
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 42, RAIN_DANCE
	db 55, FLASH_CANNON
	db 68, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, SUPERSONIC
	db 23, WHIRLWIND
	db 25, PSYBEAM
	db 28, TWINEEDLE
	db 34, SWIFT
	db 40, SAFEGUARD
	db 44, PSYCHIC_M
	db 54, SPORE
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, PIN_MISSILE
	db 10, PIN_MISSILE
	db 15, FOCUS_ENERGY
	db 20, TWINEEDLE
	db 25, RAGE
	db 30, PURSUIT
	db 35, FURY_CUTTER
	db 40, AGILITY
	db 44, SLUDGE_BOMB
	db 54, TOXIC
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, PECK
	db 5, SAND_ATTACK
	db 15, QUICK_ATTACK
	db 21, WHIRLWIND
	db 22, WING_ATTACK
	db 47, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, PECK
	db 1, QUICK_ATTACK
	db 23, WHIRLWIND
	db 24, WING_ATTACK
	db 33, AGILITY
	db 42, RAZOR_WIND
	db 55, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKY_ATTACK
	db 1, MUD_SLAP
	db 1, EXTREMESPEED
	db 23, WHIRLWIND
	db 24, WING_ATTACK
	db 36, AGILITY
	db 45, RAZOR_WIND
	db 61, MIRROR_MOVE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 34, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, SCARY_FACE
	db 30, PURSUIT
	db 40, SUPER_FANG
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 25, PURSUIT
	db 31, MIRROR_MOVE
	db 37, DRILL_PECK
	db 43, AGILITY
	db 45, RAZOR_WIND
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, THIEF
	db 13, FURY_ATTACK
	db 26, PURSUIT
	db 32, MIRROR_MOVE
	db 40, DRILL_PECK
	db 47, AGILITY
	db 50, RAZOR_WIND
	db 62, SKY_ATTACK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, POISON_STING
	db 1, LEER
	db 15, BITE
	db 19, ACID
	db 23, GLARE
	db 29, SCREECH
	db 32, POISON_FANG
	db 37, CRUNCH
	db 40, SLUDGE_BOMB
	db 43, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, BITE
	db 9, POISON_STING
	db 19, ACID
	db 25, GLARE
	db 33, SCREECH
	db 36, POISON_FANG
	db 43, CRUNCH
	db 45, SLUDGE_BOMB
	db 51, HAZE
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, BODY_SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHOCK_WAVE
	db 1, SPARK
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 15, DIG
	db 17, POISON_STING
	db 18, SANDSTORM
	db 23, SLASH
	db 30, SWIFT
	db 32, SWORDS_DANCE
	db 37, FURY_SWIPES
	db 45, EARTHQUAKE
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_SWIPES
	db 11, SAND_ATTACK
	db 15, DIG
	db 17, POISON_STING
	db 18, SANDSTORM
	db 24, SLASH
	db 33, SWIFT
	db 35, SWORDS_DANCE
	db 52, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 38, FURY_SWIPES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 1, MUD_SLAP
	db 19, ACID
	db 27, REST
	db 36, CRUNCH
	db 46, SNORE
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, EARTHQUAKE
	db 1, MEGA_PUNCH
	db 1, SLUDGE_BOMB
	db 23, BODY_SLAM
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 38, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, ACID
	db 27, FOCUS_ENERGY
	db 36, FURY_ATTACK
	db 46, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, FISSURE
	db 1, POISON_FANG
	db 1, EARTHQUAKE
	db 23, THRASH
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, DOUBLESLAP
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 19, MINIMIZE
	db 19, SWIFT
	db 26, DEFENSE_CURL
	db 28, TRI_ATTACK
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, TAIL_WHIP
	db 1, LICK
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 15, CONFUSE_RAY
	db 17, WILL_O_WISP
	db 22, FLAME_WHEEL
	db 25, SAFEGUARD
	db 27, NIGHT_SHADE
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, BONE_RUSH
	db 1, PERISH_SONG
	db 1, SAFEGUARD
	db 1, CONFUSE_RAY
	db 2, WILL_O_WISP
	db 30, HEX
	db 35, FLAMETHROWER
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, TACKLE
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DREAM_EATER
	db 1, DOUBLE_EDGE
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, GUST
	db 15, BITE
	db 19, CONFUSE_RAY
	db 21, WING_ATTACK
	db 29, POISON_FANG
	db 36, MEAN_LOOK
	db 46, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, GUST
	db 15, BITE
	db 19, CONFUSE_RAY
	db 21, WING_ATTACK
	db 32, POISON_FANG
	db 42, MEAN_LOOK
	db 55, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, LEER
	db 11, LEECH_SEED
	db 15, PURSUIT
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, MEGA_DRAIN
	db 25, FAINT_ATTACK
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 11, LEECH_SEED
	db 15, PURSUIT
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, MEGA_DRAIN
	db 28, FAINT_ATTACK
	db 33, GIGA_DRAIN
	db 35, MOONLIGHT
	db 42, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, FAINT_ATTACK
	db 1, MOONLIGHT
	db 1, PETAL_DANCE
	db 2, NIGHT_SLASH
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, LICK
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, FURY_CUTTER
	db 22, NIGHT_SHADE
	db 25, SPORE
	db 27, NIGHTMARE
	db 31, CUT
	db 37, GROWTH
	db 43, HEX
	db 52, DREAM_EATER
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, LICK
	db 1, POISONPOWDER
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, FURY_CUTTER
	db 22, NIGHT_SHADE
	db 28, SPORE
	db 30, NIGHTMARE
	db 37, CUT
	db 46, GROWTH
	db 55, HEX
	db 65, DREAM_EATER
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, SUPERSONIC
	db 11, POISON_GAS
	db 17, PIN_MISSILE
	db 20, POISONPOWDER
	db 25, ACID
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, SLUDGE_BOMB
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 11, POISON_GAS
	db 17, PIN_MISSILE
	db 20, POISONPOWDER
	db 25, ACID
	db 28, STUN_SPORE
	db 31, TWINEEDLE
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, SLUDGE_BOMB
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 5, SAND_ATTACK
	db 9, MAGNITUDE
	db 17, DIG
	db 20, PIN_MISSILE
	db 25, MUD_SLAP
	db 33, CUT
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, LEECH_LIFE
	db 1, SAND_ATTACK
	db 1, MAGNITUDE
	db 17, DIG
	db 20, PIN_MISSILE
	db 25, MUD_SLAP
	db 37, CUT
	db 49, EARTHQUAKE
	db 61, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 28, FAINT_ATTACK
	db 35, SCREECH
	db 41, FURY_SWIPES
	db 46, SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, BITE
	db 20, PAY_DAY
	db 29, FAINT_ATTACK
	db 38, SCREECH
	db 46, FURY_SWIPES
	db 53, SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, KINESIS
	db 10, DISABLE
	db 16, CONFUSION
	db 20, BUBBLEBEAM
	db 23, SCREECH
	db 28, SWIFT
	db 40, FURY_SWIPES
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, KINESIS
	db 1, DISABLE
	db 10, DISABLE
	db 16, CONFUSION
	db 20, BUBBLEBEAM
	db 23, SCREECH
	db 28, SWIFT
	db 44, FURY_SWIPES
	db 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 9, BARRAGE
	db 15, KARATE_CHOP
	db 21, RAZOR_LEAF
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, PETAL_DANCE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, LEER
	db 1, RAGE
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, RAZOR_LEAF
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, PETAL_DANCE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, ROAR
	db 1, SMOKESCREEN
	db 9, BITE
	db 18, FIRE_SPIN
	db 22, FLAME_WHEEL
	db 26, TAKE_DOWN
	db 34, FLAME_WHEEL
	db 42, AGILITY
	db 50, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROAR
	db 1, SMOKESCREEN
	db 1, TAKE_DOWN
	db 1, FLAMETHROWER
	db 40, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WHIRLPOOL
	db 22, BUBBLEBEAM
	db 25, RAIN_DANCE
	db 31, SURF
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_HAPPINESS, TR_ANYTIME, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WHIRLPOOL
	db 27, RAIN_DANCE
	db 35, SURF
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLEBEAM
	db 1, HYPNOSIS
	db 1, WHIRLPOOL
	db 1, COUNTER
	db 28, SUBMISSION
	db 32, VITAL_THROW
	db 36, DETECT
	db 44, MEGA_PUNCH
	db 51, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_HAPPINESS, TR_MORNDAY, ALAKAZAM
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, SWIFT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, KINESIS
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, SWIFT
	db 38, PSYCHIC_M
	db 45, REFLECT
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, SUBMISSION
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, MACHAMP
	db 0 ; no more evolutions
	db 1, LOW_KICK
	db 1, LEER
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, FOCUS_ENERGY
	db 1, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, POISON_GAS
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 21, RAZOR_LEAF
	db 23, ACID
	db 45, SLUDGE_BOMB
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, POISON_GAS
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 21, RAZOR_LEAF
	db 26, ACID
	db 47, SLUDGE_BOMB
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_FANG
	db 1, SLEEP_POWDER
	db 1, GIGA_DRAIN
	db 1, RAZOR_LEAF
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, BUBBLE
	db 6, SUPERSONIC
	db 12, WATER_GUN
	db 19, ACID
	db 25, BUBBLEBEAM
	db 34, TOXIC
	db 36, BARRIER
	db 40, SURF
	db 43, SCREECH
	db 45, SLUDGE_BOMB
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 1, WATER_GUN
	db 19, ACID
	db 25, BUBBLEBEAM
	db 37, TOXIC
	db 39, BARRIER
	db 43, SURF
	db 46, SCREECH
	db 48, SLUDGE_BOMB
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 26, ROCK_TOMB
	db 31, ROLLOUT
	db 32, EXPLOSION
	db 36, EARTHQUAKE
	db 39, ROCK_SLIDE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, GOLEM
	db 0 ; no more evolutions
	db 1, SAND_ATTACK
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, ROCK_TOMB
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 44, ROCK_SLIDE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, ROCK_TOMB
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 44, ROCK_SLIDE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 20, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, FIRE_SPIN
	db 8, SMOKESCREEN
	db 13, EMBER
	db 19, STOMP
	db 21, DOUBLE_TEAM
	db 26, FLAME_WHEEL
	db 34, TAKE_DOWN
	db 37, SUNNY_DAY
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, FIRE_SPIN
	db 13, EMBER
	db 19, STOMP
	db 21, DOUBLE_TEAM
	db 26, FLAME_WHEEL
	db 34, TAKE_DOWN
	db 37, FLAMETHROWER
	db 40, FURY_ATTACK
	db 44, EXTREMESPEED
	db 47, AGILITY
	db 61, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 33, SLOWBRO
	db EVOLVE_HAPPINESS, TR_ANYTIME, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, WATER_GUN
	db 1, SPLASH
	db 15, BUBBLEBEAM
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, DESTINY_BOND
	db 1, PAIN_SPLIT
	db 6, LICK
	db 15, WATER_GUN
	db 29, DISABLE
	db 34, HEX
	db 37, WITHDRAW
	db 46, AMNESIA
	db 54, SHADOW_BALL
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 6, THUNDERSHOCK
	db 11, SONICBOOM
	db 16, THUNDER_WAVE
	db 21, SHOCK_WAVE
	db 27, LOCK_ON
	db 33, FLASH_CANNON
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SUPERSONIC
	db 6, THUNDERSHOCK
	db 11, SONICBOOM
	db 16, THUNDER_WAVE
	db 21, SHOCK_WAVE
	db 27, LOCK_ON
	db 35, FLASH_CANNON
	db 43, SCREECH
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, SAND_ATTACK
	db 9, MACH_PUNCH
	db 16, COMET_PUNCH
	db 19, WING_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 37, RAZOR_WIND
	db 44, FALSE_SWIPE
	db 51, CROSS_CHOP
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 9, ROCK_THROW
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
	db 40, ROCK_SLIDE
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, ROCK_THROW
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 38, DRILL_PECK
	db 47, AGILITY
	db 50, ROCK_SLIDE
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, POWDER_SNOW
	db 1, WATER_GUN
	db 9, HAIL
	db 16, AURORA_BEAM
	db 21, REST
	db 22, SNORE
	db 25, ICY_WIND
	db 28, WATERFALL
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, HAIL
	db 16, AURORA_BEAM
	db 21, REST
	db 22, SNORE
	db 25, ICY_WIND
	db 28, WATERFALL
	db 32, TAKE_DOWN
	db 34, FROSTBITE
	db 43, ICE_BEAM
	db 60, SAFEGUARD
	db 70, SHEER_COLD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 28, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 20, TOXIC
	db 23, MINIMIZE
	db 27, ACID_ARMOR
	db 31, SCREECH
	db 34, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
	db 1, POISON_GAS
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 20, TOXIC
	db 23, MINIMIZE
	db 27, ACID_ARMOR
	db 33, SCREECH
	db 36, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, WITHDRAW
	db 9, SUPERSONIC
	db 17, AURORA_BEAM
	db 20, HAIL
	db 25, PROTECT
	db 33, ICY_WIND
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLAMP
	db 1, HEX
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 25, NIGHT_SHADE
	db 33, SPIKES
	db 39, SHADOW_BALL
	db 41, HAIL
	db 57, SHEER_COLD
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, CONFUSE_RAY
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 28, HEX
	db 33, DREAM_EATER
	db 40, NIGHTMARE
	db 45, SHADOW_BALL
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_HAPPINESS, TR_NITE, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, CONFUSE_RAY
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 26, MEAN_LOOK
	db 28, HEX
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 52, NIGHTMARE
	db 57, SHADOW_BALL
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, CONFUSE_RAY
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 26, MEAN_LOOK
	db 28, HEX
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 52, NIGHTMARE
	db 57, SHADOW_BALL
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, STEELIX
	db 0 ; no more evolutions
	db 1, BIDE
	db 1, SCREECH
	db 10, ROCK_THROW
	db 14, MAGNITUDE
	db 23, DIG
	db 27, STRENGTH
	db 36, SANDSTORM
	db 40, ROCK_SLIDE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, LICK
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, REST
	db 22, HEX
	db 25, PSYBEAM
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, DREAM_EATER
	db 45, SHADOW_BALL
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SONICBOOM
	db 1, HYPNOSIS
	db 1, LICK
	db 10, DISABLE
	db 22, HEX
	db 25, PSYBEAM
	db 27, METAL_CLAW
	db 33, LIGHT_SCREEN
	db 40, MEDITATE
	db 49, DREAM_EATER
	db 52, FLASH_CANNON
	db 60, SHADOW_BALL
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 12, VICEGRIP
	db 16, HARDEN
	db 19, CLAMP
	db 23, STOMP
	db 27, CRABHAMMER
	db 34, PROTECT
	db 41, GUILLOTINE
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 12, VICEGRIP
	db 16, HARDEN
	db 19, CLAMP
	db 23, STOMP
	db 27, CRABHAMMER
	db 38, PROTECT
	db 49, GUILLOTINE
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, SONICBOOM
	db 9, SCREECH
	db 9, THUNDERSHOCK
	db 17, SPARK
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 32, EXPLOSION
	db 33, LIGHT_SCREEN
	db 37, THUNDERBOLT
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, SCREECH
	db 1, SONICBOOM
	db 17, SPARK
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, THUNDERBOLT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 5, CONFUSION
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, SWIFT
	db 19, MEGA_DRAIN
	db 25, STUN_SPORE
	db 29, EGG_BOMB
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
	db 45, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 1, GROWTH
	db 19, STOMP
	db 31, EGG_BOMB
	db 45, PSYCHIC_M
	db 55, PSYWAVE
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SAND_ATTACK
	db 5, SPITE
	db 9, FALSE_SWIPE
	db 13, MAGNITUDE
	db 17, NIGHT_SHADE
	db 21, BONE_CLUB
	db 25, BONEMERANG
	db 29, HEX
	db 33, BONE_RUSH
	db 37, LOVELY_KISS
	db 42, EARTHQUAKE
	db 55, FISSURE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, SAND_ATTACK
	db 1, BONE_CLUB
	db 5, SPITE
	db 9, FALSE_SWIPE
	db 13, MAGNITUDE
	db 17, NIGHT_SHADE
	db 21, BONE_CLUB
	db 25, BONEMERANG
	db 33, HEX
	db 37, BONE_RUSH
	db 41, LOVELY_KISS
	db 46, EARTHQUAKE
	db 59, FISSURE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 6, AGILITY
	db 11, ROLLING_KICK
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 26, HI_JUMP_KICK
	db 31, MIND_READER
	db 36, FORESIGHT
	db 46, MEGA_KICK
	db 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, MACH_PUNCH
	db 38, MEGA_PUNCH
	db 44, DETECT
	db 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, PRESENT
	db 7, SUPERSONIC
	db 15, CHARM
	db 19, STOMP
	db 21, BELLY_DRUM
	db 25, WRAP
	db 28, LOVELY_KISS
	db 31, DISABLE
	db 37, BODY_SLAM
	db 43, SCREECH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, SMOKESCREEN
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, HEX
	db 32, EXPLOSION
	db 33, HAZE
	db 36, SHADOW_BALL
	db 37, SLUDGE_BOMB
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, SELFDESTRUCT
	db 1, POISON_GAS
	db 1, SMOKESCREEN
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, HEX
	db 33, HAZE
	db 40, SLUDGE_BOMB
	db 42, SHADOW_BALL
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, SONICBOOM
	db 1, ROCK_THROW
	db 13, STOMP
	db 14, MAGNITUDE
	db 24, ROCK_TOMB
	db 31, SCARY_FACE
	db 31, SANDSTORM
	db 37, IRON_TAIL
	db 49, ROCK_SLIDE
	db 55, BIDE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKE_CANNON
	db 1, DRAGONBREATH
	db 13, STOMP
	db 14, DRAGON_CLAW
	db 24, ROCK_TOMB
	db 31, SCARY_FACE
	db 31, SANDSTORM
	db 42, HORN_DRILL
	db 45, METAL_CLAW
	db 54, ROCK_SLIDE
	db 57, IRON_TAIL
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, GROWL
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 20, SEISMIC_TOSS
	db 23, MINIMIZE
	db 29, SING
	db 35, EGG_BOMB
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 4, SLEEP_POWDER
	db 4, LEECH_SEED
	db 10, ABSORB
	db 13, POISONPOWDER
	db 19, MEGA_DRAIN
	db 25, STUN_SPORE
	db 31, SYNTHESIS
	db 34, SOLARBEAM
	db 40, PETAL_DANCE
	db 46, GROWTH
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_SWIPES
	db 1, ROAR
	db 1, RAGE
	db 13, STOMP
	db 19, DRAGON_RAGE
	db 25, BODY_SLAM
	db 31, DRAGON_CLAW
	db 43, TAKE_DOWN
	db 49, OUTRAGE
	db 64, HYPER_BEAM
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 10, WATER_GUN
	db 12, DRAGON_RAGE
	db 22, BUBBLEBEAM
	db 24, TWISTER
	db 30, WATERFALL
	db 36, DRAGONBREATH
	db 38, AGILITY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, KINGDRA
	db 0 ; no more evolutions
	db 1, SCALD
	db 8, SMOKESCREEN
	db 12, DRAGON_RAGE
	db 22, BUBBLEBEAM
	db 24, TWISTER
	db 30, WATERFALL
	db 39, DRAGONBREATH
	db 41, AGILITY
	db 46, HYDRO_PUMP
	db 49, OUTRAGE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 10, WATER_GUN
	db 15, SUPERSONIC
	db 20, RAIN_DANCE
	db 24, BUBBLEBEAM
	db 27, FLAIL
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 43, HORN_DRILL
	db 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 10, WATER_GUN
	db 15, SUPERSONIC
	db 20, RAIN_DANCE
	db 24, BUBBLEBEAM
	db 27, FLAIL
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 49, HORN_DRILL
	db 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db EVOLVE_ITEM, FIRE_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, MORNING_SUN
	db 21, BUBBLEBEAM
	db 25, FLAME_WHEEL
	db 31, SCALD
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, RAPID_SPIN
	db 1, MORNING_SUN
	db 1, SCALD
	db 41, FIRE_BLAST
	db 43, LIGHT_SCREEN
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, SWIFT
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYCHIC_M
	db 41, BATON_PASS
	db 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, SCIZOR
	db 0 ; no more evolutions
	db 1, LEER
	db 1, FURY_CUTTER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 20, VICEGRIP
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, CUT
	db 38, RAZOR_WIND
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, KINESIS
	db 1, LICK
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, PSYBEAM
	db 25, ICE_PUNCH
	db 35, MEAN_LOOK
	db 41, PSYCHIC_M
	db 51, PERISH_SONG
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 1, THUNDER_WAVE
	db 9, THUNDERPUNCH
	db 12, RAIN_DANCE
	db 17, LIGHT_SCREEN
	db 25, VITAL_THROW
	db 31, COUNTER
	db 36, SCREECH
	db 47, THUNDERBOLT
	db 51, CROSS_CHOP
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, SMOKESCREEN
	db 7, FIRE_PUNCH
	db 12, SUNNY_DAY
	db 13, SMOG
	db 19, SUBMISSION
	db 25, SMOKESCREEN
	db 33, REVERSAL
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 51, CROSS_CHOP
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, VICEGRIP
	db 2, FIRE_SPIN
	db 7, FOCUS_ENERGY
	db 13, SPIDER_WEB
	db 19, SWORDS_DANCE
	db 22, FLAME_WHEEL
	db 25, CUT
	db 31, GUILLOTINE
	db 33, TWINEEDLE
	db 37, SUBMISSION
	db 41, FLAMETHROWER
	db 43, MEGAHORN
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 16, SONICBOOM
	db 19, SCARY_FACE
	db 26, PURSUIT
	db 29, EXTREMESPEED
	db 34, REST
	db 36, TAKE_DOWN
	db 43, THRASH
	db 44, IRON_TAIL
	db 52, DOUBLE_EDGE
	db 77, RAZOR_WIND
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 25, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, BUBBLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, DRAGON_CLAW
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, TWISTER
	db 32, RAIN_DANCE
	db 35, ROAR
	db 40, DRAGONBREATH
	db 45, HYDRO_PUMP
	db 50, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SING
	db 1, RAGE
	db 8, MIST
	db 12, HAIL
	db 15, TWISTER
	db 19, ICY_WIND
	db 22, CONFUSE_RAY
	db 25, FROSTBITE
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 40, DRAGONBREATH
	db 50, SAFEGUARD
	db 57, BLIZZARD
	db 66, SHEER_COLD
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, MIMIC
	db 23, QUICK_ATTACK
	db 30, HYPER_FANG
	db 32, EXTREMESPEED
	db 36, BATON_PASS
	db 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 8, WATER_GUN
	db 16, RAIN_DANCE
	db 23, BUBBLEBEAM
	db 30, BITE
	db 32, FROSTBITE
	db 36, SCALD
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 16, RAIN_DANCE
	db 19, THUNDER_WAVE
	db 23, SPARK
	db 30, DOUBLE_KICK
	db 32, SPIKE_CANNON
	db 36, SHOCK_WAVE
	db 42, AMNESIA
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 8, EMBER
	db 16, SMOKESCREEN
	db 19, FIRE_SPIN
	db 23, FLAME_WHEEL
	db 30, BITE
	db 32, ANCIENTPOWER
	db 36, FLAMETHROWER
	db 42, SMOG
	db 47, SCREECH
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, SONICBOOM
	db 1, QUICK_ATTACK
	db 1, SHARPEN
	db 1, SHOCK_WAVE
	db 9, AGILITY
	db 12, PSYBEAM
	db 17, SPIKE_CANNON
	db 20, RECOVER
	db 24, EXTREMESPEED
	db 28, SHARPEN
	db 32, LOCK_ON
	db 36, FLASH_CANNON
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 30, OMASTAR
	db 0 ; no more evolutions
	db 1, CLAMP
	db 1, WITHDRAW
	db 1, ROLLOUT
	db 13, BITE
	db 19, RAIN_DANCE
	db 22, ROCK_TOMB
	db 26, BUBBLEBEAM
	db 34, WATERFALL
	db 37, PROTECT
	db 49, HYDRO_PUMP
	db 52, ANCIENTPOWER
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CLAMP
	db 1, WITHDRAW
	db 1, ROLLOUT
	db 13, BITE
	db 19, RAIN_DANCE
	db 22, ROCK_TOMB
	db 26, BUBBLEBEAM
	db 34, WATERFALL
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 44, ROCK_SLIDE
	db 52, HYDRO_PUMP
	db 57, ANCIENTPOWER
	db 65, HORN_DRILL
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 30, KABUTOPS
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, HARDEN
	db 1, ROLLOUT
	db 10, MEGA_DRAIN
	db 19, SANDSTORM
	db 22, VICEGRIP
	db 26, ROCK_TOMB
	db 34, TWINEEDLE
	db 49, ROCK_SLIDE
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, HARDEN
	db 1, ROLLOUT
	db 10, MEGA_DRAIN
	db 19, SANDSTORM
	db 22, VICEGRIP
	db 26, ROCK_TOMB
	db 34, TWINEEDLE
	db 40, CUT
	db 49, ROCK_SLIDE
	db 51, MEGAHORN
	db 55, ANCIENTPOWER
	db 65, GUILLOTINE
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, DRAGON_RAGE
	db 1, ROCK_TOMB
	db 1, BIDE
	db 8, AGILITY
	db 10, ROAR
	db 15, BITE
	db 17, SANDSTORM
	db 22, SUPERSONIC
	db 29, DRAGON_CLAW
	db 36, SCARY_FACE
	db 39, RAZOR_WIND
	db 41, CRUNCH
	db 43, TAKE_DOWN
	db 45, ROCK_SLIDE
	db 50, HYPER_BEAM
	db 60, ANCIENTPOWER
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP
	db 1, SUBSTITUTE
	db 1, REST
	db 1, SNORE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 24, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ICY_WIND
	db 1, HAIL
	db 13, FROSTBITE
	db 22, DRILL_PECK
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 52, RAZOR_WIND
	db 61, SHEER_COLD
	db 73, BLIZZARD
	db 81, SKY_ATTACK
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHOCK_WAVE
	db 1, RAIN_DANCE
	db 13, THUNDER_WAVE
	db 22, DRILL_PECK
	db 25, AGILITY
	db 37, DETECT
	db 49, THUNDERBOLT
	db 52, RAZOR_WIND
	db 61, LIGHT_SCREEN
	db 73, THUNDER
	db 81, SKY_ATTACK
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLAME_WHEEL
	db 1, SUNNY_DAY
	db 13, FIRE_SPIN
	db 22, DRILL_PECK
	db 25, AGILITY
	db 49, FLAMETHROWER
	db 52, RAZOR_WIND
	db 61, SAFEGUARD
	db 73, FIRE_BLAST
	db 81, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 25, DRAGONAIR
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, RAGE
	db 8, THUNDER_WAVE
	db 15, DRAGON_RAGE
	db 22, TWISTER
	db 29, BODY_SLAM
	db 36, AGILITY
	db 39, DRAGONBREATH
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 45, DRAGONITE
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, RAGE
	db 8, THUNDER_WAVE
	db 15, DRAGON_RAGE
	db 22, TWISTER
	db 29, BODY_SLAM
	db 38, AGILITY
	db 41, DRAGONBREATH
	db 47, SAFEGUARD
	db 52, OUTRAGE
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, DRAGON_CLAW
	db 8, THUNDER_WAVE
	db 11, ROAR
	db 15, DRAGON_RAGE
	db 22, TWISTER
	db 29, BODY_SLAM
	db 38, AGILITY
	db 41, DRAGONBREATH
	db 45, WING_ATTACK
	db 47, SAFEGUARD
	db 55, OUTRAGE
	db 63, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 44, TRI_ATTACK
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 1, CONFUSION
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
	db 60, FUTURE_SIGHT
	db 70, HEAL_BELL
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, LEECH_SEED
	db 1, TAIL_WHIP
	db 6, GROWTH
	db 8, DRAGON_RAGE
	db 10, MEGA_DRAIN
	db 12, BARRIER
	db 15, SLEEP_POWDER
	db 17, SYNTHESIS
	db 19, SUNNY_DAY
	db 22, RAZOR_LEAF
	db 29, BODY_SLAM
	db 36, GIGA_DRAIN
	db 43, SAFEGUARD
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db EVOLVE_ITEM, LEAF_STONE, MEGANIUM
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, DRAGON_CLAW
	db 6, GROWTH
	db 8, QUICK_ATTACK
	db 10, MEGA_DRAIN
	db 12, BARRIER
	db 15, SLEEP_POWDER
	db 18, SYNTHESIS
	db 20, TWISTER
	db 21, SUNNY_DAY
	db 23, RAZOR_LEAF
	db 30, BODY_SLAM
	db 36, GIGA_DRAIN
	db 38, DRAGONBREATH
	db 44, SAFEGUARD
	db 47, OUTRAGE
	db 50, SOLARBEAM
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, SPORE
	db 8, DRAGON_CLAW
	db 10, MEGA_DRAIN
	db 12, BARRIER
	db 15, SLEEP_POWDER
	db 18, SYNTHESIS
	db 20, TWISTER
	db 21, SUNNY_DAY
	db 23, RAZOR_LEAF
	db 30, BODY_SLAM
	db 37, DRAGONBREATH
	db 45, SAFEGUARD
	db 48, OUTRAGE
	db 52, SOLARBEAM
	db 60, HYPER_BEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, SMOKESCREEN
	db 1, THUNDER_WAVE
	db 7, AGILITY
	db 9, QUICK_ATTACK
	db 12, EMBER
	db 15, SUNNY_DAY
	db 19, QUICK_ATTACK
	db 21, FLAME_WHEEL
	db 30, SWIFT
	db 36, FLAMETHROWER
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db EVOLVE_ITEM, FIRE_STONE, TYPHLOSION
	db 0 ; no more evolutions
	db 1, THUNDER_WAVE
	db 12, EMBER
	db 14, THUNDERSHOCK
	db 20, SUNNY_DAY
	db 21, FLAME_WHEEL
	db 23, SPARK
	db 31, SHOCK_WAVE
	db 37, FLAMETHROWER
	db 42, THUNDERBOLT
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZAP_CANNON
	db 1, FISSURE
	db 20, SUNNY_DAY
	db 21, FLAME_WHEEL
	db 23, SPARK
	db 31, SHOCK_WAVE
	db 40, FLAMETHROWER
	db 45, THUNDERBOLT
	db 52, FIRE_BLAST
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 7, RAGE
	db 13, PURSUIT
	db 15, WATER_GUN
	db 18, BITE
	db 20, RAIN_DANCE
	db 23, BUBBLEBEAM
	db 27, SCARY_FACE
	db 35, NIGHT_SLASH
	db 43, SCREECH
	db 47, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db EVOLVE_ITEM, WATER_STONE, FERALIGATR
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, RAGE
	db 1, BITE
	db 13, PURSUIT
	db 18, BITE
	db 20, RAIN_DANCE
	db 23, BUBBLEBEAM
	db 27, FAINT_ATTACK
	db 30, SCARY_FACE
	db 32, CRUNCH
	db 35, SURF
	db 37, SCREECH
	db 45, NIGHT_SLASH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, GLARE
	db 1, RAGE
	db 1, THIEF
	db 13, PURSUIT
	db 18, BITE
	db 20, RAIN_DANCE
	db 23, BUBBLEBEAM
	db 27, FAINT_ATTACK
	db 30, SCARY_FACE
	db 33, CRUNCH
	db 36, SURF
	db 38, SCREECH
	db 49, NIGHT_SLASH
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 17, FURY_SWIPES
	db 25, BODY_SLAM
	db 28, HYPER_FANG
	db 33, REST
	db 33, SNORE
	db 41, AMNESIA
	db 48, THRASH
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 17, FURY_SWIPES
	db 25, BODY_SLAM
	db 28, SLASH
	db 33, REST
	db 33, SNORE
	db 36, EXTREMESPEED
	db 41, AMNESIA
	db 48, THRASH
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 6, FORESIGHT
	db 11, WHIRLWIND
	db 14, CONFUSION
	db 16, HYPNOSIS
	db 19, WING_ATTACK
	db 22, REFLECT
	db 28, DRILL_PECK
	db 34, SWIFT
	db 48, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, PERISH_SONG
	db 6, FORESIGHT
	db 11, WHIRLWIND
	db 14, NIGHT_SHADE
	db 16, HYPNOSIS
	db 20, NIGHTMARE
	db 23, HEX
	db 25, REFLECT
	db 33, DREAM_EATER
	db 39, RAZOR_WIND
	db 42, SHADOW_BALL
	db 58, SKY_ATTACK
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 8, SUPERSONIC
	db 15, COMET_PUNCH
	db 19, VICEGRIP
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 22, SAFEGUARD
	db 24, VITAL_THROW
	db 29, BATON_PASS
	db 31, SWORDS_DANCE
	db 32, AGILITY
	db 36, SWIFT
	db 39, TWINEEDLE
	db 42, MEGA_PUNCH
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAZOR_WIND
	db 8, SUPERSONIC
	db 15, COMET_PUNCH
	db 19, VICEGRIP
	db 23, LIGHT_SCREEN
	db 23, REFLECT
	db 23, SAFEGUARD
	db 25, VITAL_THROW
	db 30, BATON_PASS
	db 32, SWORDS_DANCE
	db 33, AGILITY
	db 37, SWIFT
	db 40, TWINEEDLE
	db 43, MEGA_PUNCH
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, LEECH_LIFE
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 15, SPIDER_WEB
	db 17, NIGHT_SHADE
	db 23, CUT
	db 27, TOXIC
	db 30, POISON_FANG
	db 34, FOCUS_ENERGY
	db 37, TWINEEDLE
	db 40, BATON_PASS
	db 45, AGILITY
	db 53, PSYCHIC_M
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, LEECH_LIFE
	db 1, ACID
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 15, SPIDER_WEB
	db 17, NIGHT_SHADE
	db 24, CUT
	db 28, TOXIC
	db 31, POISON_FANG
	db 35, FOCUS_ENERGY
	db 38, TWINEEDLE
	db 41, BATON_PASS
	db 46, AGILITY
	db 52, PSYCHIC_M
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKY_ATTACK
	db 1, SCREECH
	db 1, POISON_FANG
	db 6, SUPERSONIC
	db 12, GUST
	db 15, BITE
	db 19, CONFUSE_RAY
	db 21, WING_ATTACK
	db 29, POISON_FANG
	db 31, TOXIC
	db 35, RAZOR_WIND
	db 39, CRUNCH
	db 42, MEAN_LOOK
	db 55, HAZE
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 8, THUNDERSHOCK
	db 11, FLAIL
	db 14, CONFUSE_RAY
	db 17, BUBBLEBEAM
	db 20, RAIN_DANCE
	db 25, SPARK
	db 29, SCALD
	db 37, THUNDERBOLT
	db 41, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 11, FLAIL
	db 14, CONFUSE_RAY
	db 17, BUBBLEBEAM
	db 20, RAIN_DANCE
	db 25, SPARK
	db 32, SCALD
	db 40, THUNDERBOLT
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, ATTRACT
	db 1, THUNDERSHOCK
	db 1, SUBSTITUTE
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, CHARM
	db 1, TACKLE
	db 1, SUBSTITUTE
	db 1, ATTRACT
	db 4, ENCORE
	db 8, METRONOME
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 1, SUBSTITUTE
	db 1, ATTRACT
	db 4, DEFENSE_CURL
	db 9, TACKLE
	db 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, METRONOME
	db 1, SKETCH
	db 10, MIMIC
	db 14, PRESENT
	db 16, DISABLE
	db 18, SWEET_KISS
	db 20, PAY_DAY
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, CHARM
	db 1, METRONOME
	db 10, MIMIC
	db 14, PRESENT
	db 16, DISABLE
	db 18, SWEET_KISS
	db 20, PAY_DAY
	db 22, WING_ATTACK
	db 25, ENCORE
	db 26, WHIRLWIND
	db 27, AGILITY
	db 29, BATON_PASS
	db 31, SAFEGUARD
	db 34, RAZOR_WIND
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, KINESIS
	db 10, CONFUSE_RAY
	db 14, CONFUSION
	db 19, WING_ATTACK
	db 20, TELEPORT
	db 22, PSYBEAM
	db 25, RECOVER
	db 30, TRI_ATTACK
	db 32, AGILITY
	db 34, PSYCHIC_M
	db 37, HEAL_BELL
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, MIRROR_COAT
	db 1, KINESIS
	db 1, SAFEGUARD
	db 10, CONFUSE_RAY
	db 14, CONFUSION
	db 19, WING_ATTACK
	db 20, TELEPORT
	db 22, PSYBEAM
	db 25, RECOVER
	db 32, TRI_ATTACK
	db 34, AGILITY
	db 36, PSYCHIC_M
	db 37, RAZOR_WIND
	db 39, HEAL_BELL
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, COTTON_SPORE
	db 1, LEECH_SEED
	db 6, ABSORB
	db 9, THUNDER_WAVE
	db 16, SYNTHESIS
	db 19, MEGA_DRAIN
	db 21, SPARK
	db 22, RAIN_DANCE
	db 25, LIGHT_SCREEN
	db 30, SHOCK_WAVE
	db 32, GIGA_DRAIN
	db 34, THUNDERBOLT
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SHOCK_WAVE
	db 1, COTTON_SPORE
	db 1, LEECH_SEED
	db 9, THUNDER_WAVE
	db 16, SYNTHESIS
	db 22, MEGA_DRAIN
	db 24, SPARK
	db 27, RAIN_DANCE
	db 28, LIGHT_SCREEN
	db 33, THUNDERPUNCH
	db 35, GIGA_DRAIN
	db 37, THUNDERBOLT
	db 40, PETAL_DANCE
	db 43, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, FLASH_CANNON
	db 1, SHOCK_WAVE
	db 1, COTTON_SPORE
	db 1, LEECH_SEED
	db 6, ABSORB
	db 9, THUNDER_WAVE
	db 16, SYNTHESIS
	db 22, MEGA_DRAIN
	db 24, SPARK
	db 27, RAIN_DANCE
	db 28, LIGHT_SCREEN
	db 33, THUNDERPUNCH
	db 37, GIGA_DRAIN
	db 39, THUNDERBOLT
	db 42, PETAL_DANCE
	db 45, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, GIGA_DRAIN
	db 1, FLAMETHROWER
	db 1, SUNNY_DAY
	db 1, PETAL_DANCE
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, AZUMARILL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 12, RAIN_DANCE
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 25, PAY_DAY
	db 28, WATERFALL
	db 36, DOUBLE_EDGE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYDRO_PUMP
	db 1, BUBBLE
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 12, RAIN_DANCE
	db 15, ROLLOUT
	db 24, BUBBLEBEAM
	db 28, PAY_DAY
	db 31, WATERFALL
	db 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, LOW_KICK
	db 1, MIMIC
	db 10, BIDE
	db 12, SANDSTORM
	db 15, SWORDS_DANCE
	db 19, ROCK_TOMB
	db 23, ROLLING_KICK
	db 28, STRENGTH
	db 30, SWAGGER
	db 33, DETECT
	db 37, FAINT_ATTACK
	db 40, ROCK_SLIDE
	db 46, CROSS_CHOP
	db 50, COUNTER
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZAP_CANNON
	db 1, HYPNOSIS
	db 1, WHIRLPOOL
	db 1, PERISH_SONG
	db 28, PSYBEAM
	db 32, TRI_ATTACK
	db 36, DETECT
	db 44, DREAM_EATER
	db 51, MIND_READER
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, ABSORB
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 18, LEECH_SEED
	db 20, COTTON_SPORE
	db 22, MEGA_DRAIN
	db 32, GIGA_DRAIN
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 5, SYNTHESIS
	db 10, ABSORB
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 18, LEECH_SEED
	db 18, GUST
	db 22, COTTON_SPORE
	db 24, MEGA_DRAIN
	db 34, GIGA_DRAIN
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, WHIRLWIND
	db 1, TWINEEDLE
	db 1, MIRROR_MOVE
	db 5, SYNTHESIS
	db 10, ABSORB
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 18, LEECH_SEED
	db 18, GUST
	db 22, COTTON_SPORE
	db 24, MEGA_DRAIN
	db 24, RAZOR_WIND
	db 36, GIGA_DRAIN
	db 40, PETAL_DANCE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, KARATE_CHOP
	db 1, TAIL_WHIP
	db 6, FOCUS_ENERGY
	db 9, FURY_SWIPES
	db 12, BATON_PASS
	db 14, SWORDS_DANCE
	db 16, BELLY_DRUM
	db 19, SLASH
	db 22, VITAL_THROW
	db 27, PAY_DAY
	db 30, AGILITY
	db 36, SCREECH
	db 36, MEGA_PUNCH
	db 46, EXTREMESPEED
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, LEECH_SEED
	db 12, SUNNY_DAY
	db 14, MORNING_SUN
	db 17, BARRAGE
	db 20, LEECH_SEED
	db 24, MEGA_DRAIN
	db 30, GIGA_DRAIN
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, EGG_BOMB
	db 1, SACRED_FIRE
	db 4, GROWTH
	db 10, LEECH_SEED
	db 12, SUNNY_DAY
	db 14, MORNING_SUN
	db 17, MEGA_DRAIN
	db 20, FLAME_WHEEL
	db 24, RAZOR_LEAF
	db 30, GIGA_DRAIN
	db 36, PETAL_DANCE
	db 39, FLAMETHROWER
	db 46, SOLARBEAM
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_LIFE
	db 1, FORESIGHT
	db 1, GUST
	db 7, DRAGON_RAGE
	db 13, DOUBLE_TEAM
	db 19, PIN_MISSILE
	db 23, TWISTER
	db 25, DETECT
	db 25, DRAGON_CLAW
	db 31, SUPERSONIC
	db 33, AGILITY
	db 37, TWINEEDLE
	db 40, SWORDS_DANCE
	db 43, RAZOR_WIND
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 1, SAND_ATTACK
	db 11, MAGNITUDE
	db 13, SANDSTORM
	db 15, RAIN_DANCE
	db 19, MUD_SLAP
	db 21, AMNESIA
	db 24, BUBBLEBEAM
	db 31, EARTHQUAKE
	db 33, SURF
	db 41, OCTAZOOKA
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, ROCK_SLIDE
	db 1, SAND_ATTACK
	db 11, MAGNITUDE
	db 13, SANDSTORM
	db 15, RAIN_DANCE
	db 19, MUD_SLAP
	db 23, AMNESIA
	db 26, BUBBLEBEAM
	db 33, EARTHQUAKE
	db 35, SURF
	db 43, OCTAZOOKA
	db 53, MIST
	db 53, HAZE
	db 65, FISSURE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, KINESIS
	db 8, CONFUSION
	db 16, KINESIS
	db 19, MORNING_SUN
	db 23, PSYBEAM
	db 30, HEX
	db 36, PSYCHIC_M
	db 42, SAFEGUARD
	db 47, GROWTH
	db 52, PSYWAVE
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, GLARE
	db 8, PURSUIT
	db 16, GLARE
	db 19, MOONLIGHT
	db 23, THIEF
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, AMNESIA
	db 47, BARRIER
	db 52, CRUNCH
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 11, PURSUIT
	db 13, MIMIC
	db 16, HAZE
	db 22, WING_ATTACK
	db 25, THIEF
	db 28, NIGHT_SHADE
	db 31, FAINT_ATTACK
	db 33, DRILL_PECK
	db 41, MEAN_LOOK
	db 44, SKY_ATTACK
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, MIRROR_COAT
	db 6, CONFUSION
	db 15, WATER_GUN
	db 20, PSYBEAM
	db 29, DISABLE
	db 34, TRI_ATTACK
	db 38, SURF
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 59, PSYWAVE
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 1, LOVELY_KISS
	db 6, SPITE
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 19, HEX
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 46, PERISH_SONG
	db 60, PSYWAVE
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 25, PSYCHIC_M
	db 25, FLASH_CANNON
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, KINESIS
	db 7, CONFUSION
	db 13, PURSUIT
	db 20, AGILITY
	db 22, PSYBEAM
	db 25, THIEF
	db 27, AMNESIA
	db 30, BATON_PASS
	db 33, TRI_ATTACK
	db 37, FAINT_ATTACK
	db 41, PSYCHIC_M
	db 54, CRUNCH
	db 67, PSYWAVE
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 30, FORRETRESS
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, PROTECT
	db 1, ABSORB
	db 8, SELFDESTRUCT
	db 15, RAZOR_LEAF
	db 22, RAPID_SPIN
	db 29, BIDE
	db 36, SPIKES
	db 43, EXPLOSION
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, PROTECT
	db 8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 31, SONICBOOM
	db 33, SPIKES
	db 35, SANDSTORM
	db 37, FLASH_CANNON
	db 39, SCREECH
	db 49, AMNESIA
	db 59, EXPLOSION
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, RAGE
	db 1, FLAIL
	db 1, SAND_ATTACK
	db 1, TAIL_WHIP
	db 5, DEFENSE_CURL
	db 10, SANDSTORM
	db 13, GLARE
	db 18, SPITE
	db 20, DIG
	db 24, THIEF
	db 26, BODY_SLAM
	db 28, MAGNITUDE
	db 30, SCREECH
	db 38, TAKE_DOWN
	db 40, EARTHQUAKE
	db 45, THRASH
	db 52, HORN_DRILL
	db 60, FISSURE
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SAND_ATTACK
	db 1, GUST
	db 6, WHIRLWIND
	db 9, SPIKES
	db 13, HARDEN
	db 16, SANDSTORM
	db 20, MUD_SLAP
	db 28, POISON_FANG
	db 31, FAINT_ATTACK
	db 36, RAZOR_WIND
	db 40, EARTHQUAKE
	db 44, SCREECH
	db 52, FISSURE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, FISSURE
	db 1, BIDE
	db 1, EARTHQUAKE
	db 10, SONICBOOM
	db 14, MAGNITUDE
	db 23, DIG
	db 27, STRENGTH
	db 30, SCREECH
	db 36, SANDSTORM
	db 40, IRON_TAIL
	db 49, CRUNCH
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 22, PAY_DAY
	db 24, GLARE
	db 26, ROAR
	db 30, FAINT_ATTACK
	db 34, RAGE
	db 36, CRUNCH
	db 40, TAKE_DOWN
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 22, PAY_DAY
	db 25, GLARE
	db 28, ROAR
	db 32, FAINT_ATTACK
	db 36, RAGE
	db 38, CRUNCH
	db 43, TAKE_DOWN
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPIKES
	db 1, BUBBLE
	db 1, POISON_STING
	db 10, HARDEN
	db 10, MINIMIZE
	db 15, WATER_GUN
	db 17, RAIN_DANCE
	db 22, BUBBLEBEAM
	db 25, ACID
	db 38, TOXIC
	db 34, TWINEEDLE
	db 37, SCALD
	db 43, SLUDGE_BOMB
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, FURY_CUTTER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 20, VICEGRIP
	db 24, AGILITY
	db 30, METAL_CLAW
	db 36, CUT
	db 42, SWORDS_DANCE
	db 44, FLASH_CANNON
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 9, WRAP
	db 12, STRING_SHOT
	db 14, ENCORE
	db 17, SANDSTORM
	db 20, PIN_MISSILE
	db 23, SAFEGUARD
	db 25, ROLLOUT
	db 28, BIDE
	db 30, ACID_ARMOR
	db 37, REST
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, FURY_CUTTER
	db 1, ROCK_SMASH
	db 6, HORN_ATTACK
	db 9, DETECT
	db 19, FURY_ATTACK
	db 22, VICEGRIP
	db 25, VITAL_THROW
	db 27, COUNTER
	db 30, CUT
	db 34, TAKE_DOWN
	db 36, MEGA_PUNCH
	db 44, MEGAHORN
	db 46, CROSS_CHOP
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, LEER
	db 1, POWDER_SNOW
	db 14, FALSE_SWIPE
	db 17, SCREECH
	db 20, THIEF
	db 26, ICY_WIND
	db 29, FAINT_ATTACK
	db 33, FURY_SWIPES
	db 35, NIGHT_SLASH
	db 38, AGILITY
	db 47, METAL_CLAW
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 25, SLASH
	db 29, REST
	db 30, SNORE
	db 35, HYPER_FANG
	db 37, THRASH
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXTREMESPEED
	db 1, SUPER_FANG
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 25, SLASH
	db 29, REST
	db 30, SNORE
	db 36, HYPER_FANG
	db 40, THRASH
	db 47, DOUBLE_EDGE
	db 63, NIGHT_SLASH
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 25, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, SMOKESCREEN
	db 8, EMBER
	db 12, MAGNITUDE
	db 15, ROCK_THROW
	db 19, DIG
	db 22, HARDEN
	db 25, FLAME_WHEEL
	db 29, AMNESIA
	db 32, SANDSTORM
	db 36, FLAMETHROWER
	db 39, SUNNY_DAY
	db 43, ROCK_SLIDE
	db 50, FISSURE
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, MORNING_SUN
	db 8, EMBER
	db 12, MAGNITUDE
	db 15, ROCK_THROW
	db 19, DIG
	db 22, HARDEN
	db 25, FLAME_WHEEL
	db 27, ROCK_TOMB
	db 29, AMNESIA
	db 32, SANDSTORM
	db 36, FLAMETHROWER
	db 39, SUNNY_DAY
	db 43, ROCK_SLIDE
	db 70, FISSURE
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 28, PILOSWINE
	db 0 ; no more evolutions
	db 1, POWDER_SNOW
	db 1, SAND_ATTACK
	db 10, MAGNITUDE
	db 15, HAIL
	db 21, AURORA_BEAM
	db 24, DIG
	db 25, FROSTBITE
	db 28, TAKE_DOWN
	db 31, ICY_WIND
	db 33, EARTHQUAKE
	db 37, ICE_BEAM
	db 40, MIST
	db 46, BLIZZARD
	db 55, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, FISSURE
	db 10, MAGNITUDE
	db 15, HAIL
	db 21, AURORA_BEAM
	db 24, DIG
	db 25, FROSTBITE
	db 28, TAKE_DOWN
	db 31, ICY_WIND
	db 33, EARTHQUAKE
	db 40, ICE_BEAM
	db 43, MIST
	db 49, BLIZZARD
	db 60, AMNESIA
	db 74, SHEER_COLD
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, ROCK_THROW
	db 7, HARDEN
	db 13, WATER_GUN
	db 16, RAIN_DANCE
	db 19, RECOVER
	db 20, ROCK_TOMB
	db 22, BUBBLEBEAM
	db 26, TOXIC
	db 31, SPIKE_CANNON
	db 35, ACID_ARMOR
	db 37, MIRROR_COAT
	db 39, TWINEEDLE
	db 41, SCALD
	db 55, ANCIENTPOWER
	db 63, HYDRO_PUMP
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, LEER
	db 1, PURSUIT
	db 11, LOCK_ON
	db 17, BITE
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 27, FAINT_ATTACK
	db 33, FOCUS_ENERGY
	db 36, SCALD
	db 39, CRUNCH
	db 44, ICE_BEAM
	db 55, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, ZAP_CANNON
	db 1, PURSUIT
	db 11, LOCK_ON
	db 17, BITE
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 25, OCTAZOOKA
	db 25, CLAMP
	db 29, FAINT_ATTACK
	db 32, RAIN_DANCE
	db 35, FOCUS_ENERGY
	db 38, SCALD
	db 41, CRUNCH
	db 46, ICE_BEAM
	db 51, HYDRO_PUMP
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, HAIL
	db 1, PROTECT
	db 1, WHIRLWIND
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, BUBBLE
	db 10, CONFUSE_RAY
	db 18, BUBBLEBEAM
	db 22, WING_ATTACK
	db 25, TAKE_DOWN
	db 28, MINIMIZE
	db 32, AGILITY
	db 37, RAZOR_WIND
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 1, SONICBOOM
	db 6, SHARPEN
	db 13, SAND_ATTACK
	db 15, WING_ATTACK
	db 17, SANDSTORM
	db 19, SWIFT
	db 22, STEEL_WING
	db 25, AGILITY
	db 35, RAZOR_WIND
	db 37, FLASH_CANNON
	db 42, SWORDS_DANCE
	db 49, MIRROR_COAT
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 16, SCARY_FACE
	db 20, BITE
	db 22, FLAME_WHEEL
	db 27, FAINT_ATTACK
	db 30, GLARE
	db 35, FLAMETHROWER
	db 37, CRUNCH
	db 45, MOONLIGHT
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEX
	db 1, EXTREMESPEED
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 16, SCARY_FACE
	db 20, BITE
	db 22, FLAME_WHEEL
	db 29, FAINT_ATTACK
	db 32, GLARE
	db 37, FLAMETHROWER
	db 39, CRUNCH
	db 47, MOONLIGHT
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCALD
	db 8, SMOKESCREEN
	db 12, DRAGON_RAGE
	db 22, BUBBLEBEAM
	db 24, TWISTER
	db 30, WATERFALL
	db 39, DRAGONBREATH
	db 45, AGILITY
	db 50, HYDRO_PUMP
	db 54, OUTRAGE
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 14, MUD_SLAP
	db 17, FLAIL
	db 20, SANDSTORM
	db 25, TAKE_DOWN
	db 33, ROLLOUT
	db 37, EARTHQUAKE
	db 43, DOUBLE_EDGE
	db 45, THRASH
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, SUPER_FANG
	db 1, SAND_ATTACK
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 14, MUD_SLAP
	db 17, FLAIL
	db 20, SANDSTORM
	db 25, TAKE_DOWN
	db 26, FURY_ATTACK
	db 33, ROLLOUT
	db 37, EARTHQUAKE
	db 41, RAPID_SPIN
	db 45, DOUBLE_EDGE
	db 49, THRASH
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, SHARPEN
	db 1, QUICK_ATTACK
	db 1, SKETCH
	db 5, SONICBOOM
	db 9, AGILITY
	db 12, PSYBEAM
	db 17, SPIKE_CANNON
	db 20, RECOVER
	db 24, EXTREMESPEED
	db 28, SHARPEN
	db 30, SUBSTITUTE
	db 32, LOCK_ON
	db 36, FLASH_CANNON
	db 44, ZAP_CANNON
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, STOMP
	db 1, CONFUSE_RAY
	db 8, LEER
	db 13, PAIN_SPLIT
	db 15, HYPNOSIS
	db 21, HEADBUTT
	db 23, HEX
	db 31, SAND_ATTACK
	db 35, BONE_RUSH
	db 40, TAKE_DOWN
	db 49, SHADOW_BALL
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, DIZZY_PUNCH
	db 1, SWORDS_DANCE
	db 1, DOUBLE_KICK
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLING_KICK
	db 7, FOCUS_ENERGY
	db 9, AGILITY
	db 13, PURSUIT
	db 19, MACH_PUNCH
	db 25, TRIPLE_KICK
	db 25, DIZZY_PUNCH
	db 31, COUNTER
	db 37, MEGA_PUNCH
	db 43, DETECT
	db 49, HI_JUMP_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, JYNX
	db 0 ; no more evolutions
	db 1, KINESIS
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 17, FROSTBITE
	db 21, CONFUSION
	db 25, SING
	db 33, MEAN_LOOK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, MACH_PUNCH
	db 1, THUNDER_WAVE
	db 1, LEER
	db 9, THUNDERPUNCH
	db 12, RAIN_DANCE
	db 17, LIGHT_SCREEN
	db 25, VITAL_THROW
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 45, CROSS_CHOP
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, MAGMAR
	db 0 ; no more evolutions
	db 1, KARATE_CHOP
	db 1, LEER
	db 1, SMOKESCREEN
	db 9, FIRE_PUNCH
	db 12, SUNNY_DAY
	db 13, SMOG
	db 19, SUBMISSION
	db 25, SMOKESCREEN
	db 31, REVERSAL
	db 35, FLAMETHROWER
	db 41, CONFUSE_RAY
	db 47, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 6, ROCK_THROW
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 17, ROLLOUT
	db 19, MILK_DRINK
	db 26, BIDE
	db 29, BODY_SLAM
	db 34, STRENGTH
	db 37, HEAL_BELL
	db 42, THRASH
	db 49, ROCK_SLIDE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 18, MINIMIZE
	db 20, SEISMIC_TOSS
	db 23, SING
	db 28, EGG_BOMB
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 1, THUNDERSHOCK
	db 11, THUNDER_WAVE
	db 21, RAIN_DANCE
	db 31, SHOCK_WAVE
	db 41, FAINT_ATTACK
	db 46, REFLECT
	db 51, THUNDERBOLT
	db 61, CRUNCH
	db 71, THUNDER
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, PSYBEAM
	db 1, KINESIS
	db 1, EMBER
	db 11, FIRE_SPIN
	db 21, SUNNY_DAY
	db 31, FLAME_WHEEL
	db 41, TRI_ATTACK
	db 46, SWAGGER
	db 51, FLAMETHROWER
	db 61, PSYCHIC_M
	db 71, FIRE_BLAST
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, AURORA_BEAM
	db 1, MIST
	db 1, FROSTBITE
	db 11, HEAL_BELL
	db 21, HAIL
	db 31, BUBBLEBEAM
	db 41, ICY_WIND
	db 46, MIRROR_COAT
	db 51, SURF
	db 61, ICE_BEAM
	db 71, HYDRO_PUMP
	db 81, SHEER_COLD
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 25, PUPITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GLARE
	db 1, ROCK_TOMB
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, SCARY_FACE
	db 43, CRUNCH
	db 50, EARTHQUAKE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 45, TYRANITAR
	db 0 ; no more evolutions
	db 1, BITE
	db 1, GLARE
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 56, EARTHQUAKE
	db 65, HYPER_BEAM
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 1, GLARE
	db 1, DRAGONBREATH
	db 1, RAZOR_WIND
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 45, DRAGON_CLAW
	db 47, CRUNCH
	db 52, NIGHT_SLASH
	db 57, OUTRAGE
	db 61, EARTHQUAKE
	db 75, HYPER_BEAM
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
	db 1, AEROBLAST
	db 11, SAFEGUARD
	db 22, SKY_ATTACK
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, SKY_ATTACK
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, MORNING_SUN
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves

MissingnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, SKY_ATTACK
	db 1, SHOCK_WAVE
	db 0 ; no more level-up moves
