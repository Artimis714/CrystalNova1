; Pokémon swarms in grass

SwarmGrassWildMons:

; Dunsparce swarm
	map_id DARK_CAVE_VIOLET_ENTRANCE
	db 4 percent, 4 percent, 4 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, DUNSPARCE, 	  5,  15
	db 30, ZUBAT, 	          5,  15
	db 20, DUNSPARCE, 	  5,  15
	db 10, RHYHORN, 	  5,  15
	db  5, DUNSPARCE, 	  5,  15
	db  4, DUNSPARCE, 	  5,  15
	db  1, DUNSPARCE, 	  5,  15

	; day
	;  %, species,		min, max
	db 30, DUNSPARCE, 	  5,  15
	db 30, ZUBAT, 	          5,  15
	db 20, DUNSPARCE, 	  5,  15
	db 10, MARILL, 	          5,  15
	db  5, DUNSPARCE, 	  5,  15
	db  4, DUNSPARCE, 	  5,  15
	db  1, DUNSPARCE, 	  5,  15

	; nite
	;  %, species,		min, max
	db 30, DUNSPARCE, 	  5,  15
	db 30, ZUBAT, 	          5,  15
	db 20, DUNSPARCE, 	  5,  15
	db 10, MARILL, 	          5,  15
	db  5, DUNSPARCE, 	  5,  15
	db  4, DUNSPARCE, 	  5,  15
	db  1, DUNSPARCE, 	  5,  15

; Yanma swarm
	map_id ROUTE_35
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	;  %, species,		min, max
	db 30, YANMA, 	          8,  27
	db 30, HOPPIP, 	          8,  27
	db 20, YANMA, 	          8,  27
	db 10, FURRET, 	         12,  27
	db  5, YANMA, 	          8,  27
	db  4, YANMA, 	          8,  27
	db  1, YANMA, 	          8,  27

	; day
	;  %, species,		min, max
	db 30, YANMA, 	          8,  27
	db 30, SENTRET, 	  8,  27
	db 20, YANMA, 	          8,  27
	db 10, FURRET, 	         12,  27
	db  5, YANMA, 	          8,  27
	db  4, YANMA, 	          8,  27
	db  1, YANMA, 	          8,  27

	; nite
	;  %, species,		min, max
	db 30, YANMA, 	          8,  27
	db 30, SNUBBULL, 	  8,  27
	db 20, YANMA, 	          8,  27
	db 10, DROWZEE, 	  8,  27
	db  5, YANMA, 	          8,  27
	db  4, YANMA, 	          8,  27
	db  1, YANMA, 	         18,  27

	db -1 ; end
