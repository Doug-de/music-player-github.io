/*Statix Text
- text Aspect Ratio
- change the text in middle rect()
*/
//Global Variables
int appwidth, appheight;
float titleX, titleY, titleWidth, titleHeight;
float supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight;
float footerX, footerY, footerWidth, footerHeight;
PFont titleFont, footerFont, phraseFont;
color ink, purple=#6C08FF, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
String title = "How do I write text?", footer="This is at the boottom", phrase="ORA";
Boolean randomColour=false;
//
void setup()
{
//Display
size( 500, 700 ); //Portrait CANVAS
appwidth = width;
appheight = height;
//
//Text: Single Executed Code
//Fonts from OS (Operating System)
//String[] fontList = PFont.list(); //To list all fonts available on OS
//printArray(fontList); //For listing all possible fonts to choose from, then createFont
titleFont = createFont("Tempus Sans ITC", 50); //Verify the font exists in Processing.Java
footerFont = createFont("Ravie", 50);
phraseFont = createFont("OpenDylexic-Bold", 50);
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
} //End setup
//
void draw()
{
//Drawing Text
textAlign(CENTER, CENTER); //Align X&Y, see Processing.org / Refrence
//Values: [ LEFT | CENTER | RIGTHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
ink = purple;
fill(ink); 
size = 47; //Change the number until it fits
textFont(titleFont, size);
text( title, titleX, titleY, titleWidth, titleHeight );
ink = purple;
fill(ink); 
size = 43; //Change the number until it fits
textFont( footerFont, size );
text( footer, footerX, footerY, footerWidth, footerHeight );
//
ink = ( randomColour == true ) ? color( random(0, 256), random(256), random(256) ) : purple ; //Ternary Operator
//
fill(ink); 
size = 83; //Change the number until it fits
textFont( phraseFont, size );
text( phrase, supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight );
} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() { 
  if ( randomColour == true ) {
    randomColour = false;
  } else {
    randomColour = true;
  }
} //End keyPressed
//
//End MAIN
