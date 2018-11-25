
//{{BLOCK(instruct)

//======================================================================
//
//	instruct, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 352 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 22528 + 2048 = 25088
//
//	Time-stamp: 2017-12-05, 23:18:51
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCT_H
#define GRIT_INSTRUCT_H

#define instructTilesLen 22528
extern const unsigned short instructTiles[11264];

#define instructMapLen 2048
extern const unsigned short instructMap[1024];

#define instructPalLen 512
extern const unsigned short instructPal[256];

#endif // GRIT_INSTRUCT_H

//}}BLOCK(instruct)
