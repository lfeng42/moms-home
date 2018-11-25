
//{{BLOCK(seethru)

//======================================================================
//
//	seethru, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 57 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3648 + 2048 = 6208
//
//	Time-stamp: 2017-12-05, 14:40:01
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SEETHRU_H
#define GRIT_SEETHRU_H

#define seethruTilesLen 3648
extern const unsigned short seethruTiles[1824];

#define seethruMapLen 2048
extern const unsigned short seethruMap[1024];

#define seethruPalLen 512
extern const unsigned short seethruPal[256];

#endif // GRIT_SEETHRU_H

//}}BLOCK(seethru)
