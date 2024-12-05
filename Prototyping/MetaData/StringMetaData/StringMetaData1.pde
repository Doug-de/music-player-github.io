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
int Beat_Your_Competition ;
//
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songTitleMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] songPostionMetaData = new AudioMetaData[numberOfSongs]; //might change
AudioMetaData[] songTimeRemainingMetaData = new AudioMetaData[numberOfSongs]; //might change
AudioMetaData[] songTotalTimeMetaData = new AudioMetaData[numberOfSongs]; //might change
int currentSong = numberOfSongs - numberOfSongs;
//Review if more meta data needed
//
void setup() 
{
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  // Load Music
  String musicPathway = "music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String theSimplest = "The_Simplest";
  //
  //Add Reading into Array
  String directory = "../../../" + musicPathway;
  println ( currentSong, directory );
  String file = directory + beatYourCompetition + mp3FileName;
  println (file); 
  song[currentSong+=1] = minim.loadFile( "../../../music/Beat_Your_Competition.mp3" );
  println (file);
  song[currentSong+=1] = minim.loadFile( "../../../music/Cycles" );
  println( currentSong, song[currentSong] );
  file = directory + cycles + mp3FileName;
  println (file);
  song[currentSong+=1] = minim.loadFile( "../../../music/The_Simplest" );
  println( currentSong, song[currentSong] );
  file = directory + theSimplest + mp3FileName;
  println (file);
  //
  currentSong = 0;
  //
  song[currentSong].play();
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
