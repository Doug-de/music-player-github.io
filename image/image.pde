import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//
//Global Variables
Minim minim;
int numberOfSongs = 3; //Able to Autodetect based on Pathway
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;  //beginning current song as ZERO
//
int appWidth, appHeight;
float imageDIV_X, imageDIV_Y, imageDIV_Width, imageDIV_Height;
//
void setup()
{
  size(1000, 800);
  appWidth = width;
  appHeight = height;
  //Variables for any music button
  imageDIV_Width = appWidth*1/2;
  imageDIV_Height = appHeight*1/2;
  imageDIV_X = imageDIV_Width - imageDIV_Width*1/2;
  imageDIV_Y = imageDIV_Height- imageDIV_Height*1/2;
  //Use if statement to change, introduce ternary operator
  //
  //Population (Variables)
  //Centering, Left Justified, Right Justified
  if ( imageDIV_Width >= imageDIV_Height ) { // Landscape //error: square does not go in the middle    
    println (  );
  } else { //Portrait
    println (  );
  }
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder
  //
  // Load Music
  String musicPathway = "Music/";
  String mp3FileName = ".mp3";
  //Alphebetical order, same as OS ordering files
  String beatYourCompetition = "Beat_Your_Competition";
  String cycles = "Cycles";
  String theSimplest = "The_Simplest";
  //
  //Add Reading into Array
  String directory = "../../../" + musicPathway;
  String file = directory +beatYourCompetition + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + cycles + mp3FileName;
  song[currentSong+=1] = minim.loadFile( file );
  file = directory + theSimplest + mp3FileName;
  //
  currentSong = 0;
  //
  //DIVs
  //rect() based on variables; variables change with program (introduces parameters of a function and TABS)
  //rect( X, Y, Width, Height );
  rect( imageDIV_X, imageDIV_Y, imageDIV_Width, imageDIV_Height );
  //
} //End setup
//
void draw() {
  //background(200); // Gray Scale: 0-255
  rect( imageDIV_X, imageDIV_Y, imageDIV_Width, imageDIV_Height );
  //fill();
} //End draw
//
void mousePressed() {
} //End mousePressed
//
void keyPressed() {
   /* Key Board Short Cuts ... learning what the Music Buttons could be
   if ( key==? || key==? ) ;
   */
  if ( key=='P' || key=='p' ) song[currentSong].play(); //Simple Play, no double tap possible
  //
  //if ( key=='P' || key=='p' ) song[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key==' ' | key==' ' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause(); //single tap
    } else {
      song[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) song[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='I' || key=='i' ) song[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key==CODED || keyCode==RIGHT ) song[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key==CODED || keyCode==LEFT) song[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='M' || key=='m' ) { // MUTE
  //
    if ( song[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      song[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      song[currentSong].mute();
    }
  }
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else {
      song[currentSong].play();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key==CODED || keyCode==BACKSPACE ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    println(currentSong);
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else {
      //
      song[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
   }
    println("Song Playing:", currentSong);
  }
} //End keyPressed
//
// End Main Program
