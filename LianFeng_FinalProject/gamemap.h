
//{{BLOCK(gamemap)

//======================================================================
//
//	gamemap, 512x512@4, 
//	+ palette 256 entries, not compressed
//	+ 357 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x64 
//	Total size: 512 + 11424 + 8192 = 20128
//
//	Time-stamp: 2017-11-26, 23:48:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GAMEMAP_H
#define GRIT_GAMEMAP_H

#define gamemapTilesLen 11424
extern const unsigned short gamemapTiles[5712];

#define gamemapMapLen 8192
extern const unsigned short gamemapMap[4096];

#define gamemapPalLen 512
extern const unsigned short gamemapPal[256];

#endif // GRIT_GAMEMAP_H

//}}BLOCK(gamemap)
