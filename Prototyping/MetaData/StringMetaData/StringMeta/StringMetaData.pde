<<<<<<< HEAD
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
int appWidth, appHeight
float MetaDataX1, MetaDataY1, MetaDataWidth1, MetaDataHeight1 ;
float MetaDataX2, MetaDataY2, MetaDataWidth2, MetaDataHeight2 ;
float MetaDataX3, MetaDataY3, MetaDataWidth3, MetaDataHeight3 ;
int beatYourCompetition ;
//
Minim minim;
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songTitleMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] songPostionMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] songTimeRemainingMetaData = new AudioMetaData[numberOfSongs];
AudioMetaData[] songTotalTimeMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfsongs - numberOfSongs;
//Review of more meta data needed
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
  String beatYourCompition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String theimplest = "The_Simplest";
  //
  //Add Reading into Array
  String directory = "../../../" + musicPathway
  println ( currentSong, directory );
  String file = directory + beatYourCompetition + mp3FileName;
  println (file);
  song[currentSong+=1] = mimin.loadFile( "../../../music/Beat_Your_Competition");
=======                                                        

>>>>>>> b8dff4c2d7b4c2f943f4e09a76053c939cf22ade
