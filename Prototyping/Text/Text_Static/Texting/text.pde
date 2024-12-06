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
color ink, orange=#FF8400, white=#FFFFFF, resetDefaultInk=white; //Not Night Mode Friendly
int size;
String title = "steel ball run", footer="This is NOT at the bottom", phrase="ORA-ORA-ORA";
Boolean randomColour=false, randomColour2=false, randomColour3=false;
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
  String[] fontList = PFont.list(); //To list all fonts available on OS
  printArray(fontList); //For listing all possible fonts to choose from, then createFont
  titleFont = createFont("Tempus Sans ITC", 50); //Verify the font exists in Processing.Java
  footerFont = createFont("Ravie", 50);
  phraseFont = createFont("SimSun-ExtB", 50);
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
  textAlign(BOTTOM, CENTER); //Align X&Y, see Processing.org / Refrence
  //Values: [ LEFT | CENTER | RIGTHT ] & [ TOP | CENTER | BOTTOM | BASELINE ]
  ink = orange;
  fill(ink);
  size = 40; //Change the number until it fits
  textFont(titleFont, size);
  text( title, titleX, titleY, titleWidth, titleHeight );
  ink = orange;
  fill(ink);
  size = 25; //Change the number until it fits
  textFont( footerFont, size );
  text( footer, footerX, footerY, footerWidth, footerHeight );
  //
  //ink = ( randomColour == true ) ? color (0, 255, 99) color (3, 97, 255) color (255, 0, 0) : orange ; //Ternary Operator
  if ( randomColour==true && randomColour2 == false && randomColour3 == false ) {
    ink = color(0, 255, 99);
  } else if ( randomColour==false && randomColour2==true && randomColour3==false ) {
    ink = color(3, 97, 255);
  } else if ( randomColour == false && randomColour2 == false && randomColour3 == true ) {
    ink = color(255, 0, 0);
  } else { 
    ink = color(255, 132, 0);
  }
  //
  fill(ink);
  size = 45; //Change the number until it fits
  textFont( phraseFont, size );
  text( phrase, supercoolPhraseX, supercoolPhraseY, supercoolPhraseWidth, supercoolPhraseHeight );
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
  if ( key=='R' || key=='r' ) {
    if ( randomColour == false ) {
      randomColour = true;
    } else {
      randomColour = false;
    }
  } 
} //End keyPressed
//
//End MAIN
