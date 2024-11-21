/*Static Text
- text Aspect Ratio
*/
//Global Variables
int appwidth, appheight;
float titleX, titleY, titleWidth, titleHeight;
float supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
//
//Display
size( 500, 700); //Portrait CANVAS
appwidth = width;
appheight = height;
//Population
titleX = appwidth*1/10;
titleY = appheight*1/10;
titleWidth = appwidth*8/10;
titleHeight = appheight*1/10;
supercoolPhraseX = titleX;
supercoolPhraseY = appheight*4.5/10;
supercoolPhraseWidth = titleWidth;
supercoolPhraseHeight = titleHeight;
footerX = titleX;
footerY = appheight*8/10;
footerWidth = titleWidth;
footerHeight = titleHeight;
//DIVs
rect( titleX, titleY, titleWidth, titleHeight );
rect( supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight );
rect( footerX, footerY, footerWidth, footerHeight );
