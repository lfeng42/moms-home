
//{{BLOCK(controls)

//======================================================================
//
//	controls, 256x256@8, 
//	+ palette 256 entries, not compressed
//	+ 242 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 15488 + 2048 = 18048
//
//	Time-stamp: 2017-12-05, 17:46:25
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_CONTROLS_H
#define GRIT_CONTROLS_H

#define controlsTilesLen 15488
extern const unsigned short controlsTiles[7744];

#define controlsMapLen 2048
extern const unsigned short controlsMap[1024];

#define controlsPalLen 512
extern const unsigned short controlsPal[256];

#endif // GRIT_CONTROLS_H

//}}BLOCK(controls)
