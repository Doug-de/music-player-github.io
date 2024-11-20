//Global Variables
int appWidth, appHeight;
float backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight;
float Obi_wan_star_wars_jediX, Obi_wan_star_wars_jediY, Obi_wan_star_wars_jediWidth, Obi_wan_star_wars_jediHeight;
PImage picBackground, picObi_wan_star_wars_jedi;
int picObi_wan_star_wars_jediWidth, picObi_wan_star_wars_jediHeight;
float picObi_wan_star_wars_jediX_Changed, Obi_wan_star_wars_jediY_Changed, Obi_wan_star_wars_jediX_Changed, Obi_wan_star_wars_jedi;
float picObi_wan_star_wars_jediWidthChanged, picObi_wan_star_wars_jediHeightChanged, biggerSide, smallerSide, ratio;
//
void setup() {
  size( 700, 900 ); //Landscape
  appWidth = width;
  appHeight = height;
  //
  //Population
  backgroundImageX = appWidth*0;
  backgroundImageY = appHeight*0;
  backgroundImageWidth = appWidth-1;
  backgroundImageHeight = appHeight-1;
  println(picBackground);
  picBackground = loadImage("../../images/Square/FunnyPatrick.jpg");
  println(picBackground);
  Obi_wan_star_wars_jediX_Changed = Obi_wan_star_wars_jediX = appWidth * 1/4;
  Obi_wan_star_wars_jediY_Changed = Obi_wan_star_wars_jediY = appHeight * 1/4;
  Obi_wan_star_wars_jediWidth = appWidth * 1/2;
  Obi_wan_star_wars_jediHeight = appHeight * 1/2;
  picObi_wan_star_wars_jedi = loadImage("../../images/Landscape/Obi-wan-star-wars-jedi.jpg");
  println(picObi_wan_star_wars_jedi);
  picObi_wan_star_wars_jediWidthChanged = picObi_wan_star_wars_jediWidth = 900;
  picObi_wan_star_wars_jediHeightChanged = picObi_wan_star_wars_jediHeight = 800;
  //
  //Image Compression
  float biggerSide = ( Obi_wan_star_wars_jediWidth > picObi_wan_star_wars_jediHeight ) ? picObi_wan_star_wars_jediWidth : picObi_wan_star_wars_jediHeight ;
  float smallerSide = ( picObi_wan_star_wars_jediHeight < picObi_wan_star_wars_jediWidth ) ? picObi_wan_star_wars_jediHeight : picObi_wan_star_wars_jediWidth ;  ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  float ratio = biggerSide / smallerSide; //Ratio bigger than one, divide means smaller side, multiply means larger side
  println( "Big Side:", biggerSide, "\tSmall Side:", smallerSide, "\tRatio:", ratio );
  /* Algorithm
  - Establish Landscape or Portrait of DIV
  - Note: I always fill smaller side of DIV, then calculate larger side of DIV
  - Hardcode if ratio will be >1 or <1 ... influences * or /
  - In the image, decide if calculating the larger side or the smaller side
  */
  if ( Obi_wan_star_wars_jediWidth > Obi_wan_star_wars_jediHeight ) { //DIV Landscape, find larger side
   picObi_wan_star_wars_jediHeightChanged = Obi_wan_star_wars_jediHeight;
   picObi_wan_star_wars_jediWidthChanged = ( picObi_wan_star_wars_jediWidth > picObi_wan_star_wars_jediHeight ) ? picObi_wan_star_wars_jediWidthChanged / ratio : picObi_wan_star_wars_jediWidthChanged * ratio;
   println( "Inside If-true:", picObi_wan_star_wars_jediWidthChanged );
  } else { //DIV Portrait
  picObi_wan_star_wars_jediWidthChanged = Obi_wan_star_wars_jediWidth;
  picObi_wan_star_wars_jediHeightChanged = ( picObi_wan_star_wars_jediWidth > Obi_wan_star_wars_jediHeight ) ? picObi_wan_star_wars_jediWidthChanged / ratio : picObi_wan_star_wars_jediWidthChanged * ratio;
  println( "Inside If-false:",picObi_wan_star_wars_jediHeightChanged );
  }
  println( "Changed Width:", picObi_wan_star_wars_jediWidthChanged, "\tChanged Height:", picObi_wan_star_wars_jediHeightChanged );
  //
  //DIVs
  rect( backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  rect( Obi_wan_star_wars_jedi, Obi_wan_star_wars_jediY, Obi_wan_star_wars_jediWidth, Obi_wan_star_wars_jediHeight );
}
//
void draw() {
  //Draw Image One Time, for testing
  image( picBackground, backgroundImageX, backgroundImageY, backgroundImageWidth, backgroundImageHeight );
  image( picObi_wan_star_wars_jedi, Obi_wan_star_wars_jediX_Changed, Obi_wan_star_wars_jediY_Changed, picObi_wan_star_wars_jediWidthChanged, picObi_wan_star_wars_jediHeightChanged );
}
//
void mousePressed() {
}
//
void keyPressed() {
}
//
//End MAIN
