/*Static Text
- text Aspect Ratio
Tempus Sans ITC , Ravie
*/
//Global Variables
int appwidth, appheight;
float titleX, titleY, titleWidth, titleHeight;
float supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color purple=#6C08FF, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size, title;
String title = "How do I write text?", footer="This isat the boottom", phrase="ORA"
//
//Display
size( 500, 700 ); //Portrait CANVAS
appwidth = width;
appheight = height;
//
//Text: Single Executed Code
//Fonts from OS (Operating System)
//String[] fontList = PFont.list(); //To list all fonts available on OS
//printArray(fontList); //For listing all possible fonts to choose from, then createFont
titleFont = createFont("Tempus Sans ITC", 55); //Verify the font exists in Processing.Java
footerFont = createFont("Ravie", 55);
phraseFont = createFont("OpenDylexic-Bold", 55);
//Population
footerX = supercoolPhraseX = titleX = appwidth*1/10;
footerWidth = supercoolPhraseWidth = titleWidth = appwidth*8/10;
footerHeight = supercoolPhraseHeight = titleHeight = appheight*1/10;
titleY = appheight*1/10;
supercoolPhraseY = appheight*4.5/10; //Ratio done last. How is this Centered Vertically
footerY = appheight*8/10;
//DIVs
rect( titleX, titleY, titleWidth, titleHeight );
rect( supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight );
rect( footerX, footerY, footerWidth, footerHeight );
//
//Drawing Text
fill(purple); //Ink, hexidecimal copied from Color Selector 
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Refrence
//Values: [ LEFT | CENTER | RIGTHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
size = 50; //Change the number until it fits
textFont(titleFont, size);
text( title, titleX, titleY, titleWidth, titleHeight );
textFont( footer, size );
text( footer, footerX, footerY, footerWidth, footerHeight );
textFont( supercoolPhrase, size );
text( Phrase, supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight );
