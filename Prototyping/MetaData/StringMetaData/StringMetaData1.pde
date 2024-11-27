/* META Data - Strings
*/
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Varaibles
int appWidth, appHeight;
float MetaDataX1, MetaDataY1, MetaDataWidth1, MetaDataHeight1 ;
float MetaDataX2, MetaDataY2, MetaDataWidth2, MetaDataHeight2 ;
float MetaDataX3, MetaDataY3, MetaDataWidth3, MetaDataHeight3 ;
//
void setup() 
{
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //Population
  MetaDataX1 = appWidth*1/10; //Title
  MetaDataY1 = appHeight*4/10; 
  MetaDataWidth1 = appWidth*8/10;
  MetaDataHeight1 = appHeight*1/10;
  MetaDataX2 = appWidth*1/10; //Song Position
  MetaDataY2 = appHeight*3/10;
  MetaDataWidth2 = appWidth*2/10;
  MetaDataHeight2 = appHeight*1/10;
  MetaDataX3 = appWidth*5/10; //Total Song Length | Time Remaning
  MetaDataY3 = appHeight*5/10;
  MetaDataWidth3 = appWidth*3/10;
  MetaDataHeight3 = appHeight*1/10;
  //
  //DIV //X, Y, Width, Height
  rect( MetaDataX1, MetaDataY1, MetaDataWidth1, MetaDataHeight1 );
  rect( MetaDataX2, MetaDataY2, MetaDataWidth2, MetaDataHeight2 );
  rect( MetaDataX3, MetaDataY3, MetaDataWidth3, MetaDataHeight3 );
} //End setup
//
void draw() {} //End draw
//
void mousePressed() {} //End mousePressed
//
void keyPressed() {} //End keyPressed
//
//End MAIN
