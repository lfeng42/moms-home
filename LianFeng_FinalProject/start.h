
//{{BLOCK(start)

//======================================================================
//
//	start, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 297 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 19008 + 2048 = 21568
//
//	Time-stamp: 2017-12-02, 22:17:41
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_START_H
#define GRIT_START_H

#define startTilesLen 19008
extern const unsigned short startTiles[9504];

#define startMapLen 2048
extern const unsigned short startMap[1024];

#define startPalLen 512
extern const unsigned short startPal[256];

#endif // GRIT_START_H

//}}BLOCK(start)
