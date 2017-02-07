/*
Ira Javier - C15362901
Second Assignment
Due - 8th February 2017
*/


//classes 
Welcome welcome;
Loading loading;
First first;
Enemy enemy;
Enemy2 enemy2;
Winner winner;
Finish finish;


//sound files variables
import processing.sound.*;
SoundFile bang;
SoundFile powerup;
SoundFile pew;
SoundFile boom;
SoundFile sonic;
SoundFile countdown;
SoundFile bgsound;


//image files stored here
PImage spaceship;
PImage asteroid;
PImage missile;
PImage missile2;
PImage galaxy;
PImage monster;
PImage monster2;
PImage monster3;

//boolean variable for loading function
boolean load = false;

//here are the 3 strings that connect to each level
String[] one = 
{
  "------------------\n******LEVEL 1******\n------------------"
};

String[] two =
{
  "------------------\n******LEVEL 2******\n------------------"
};

String[] three =
{
  "------------------\n******MASTER******\n------------------"
};


//these 3 variables are connected to the strings
int two_index =0;
int one_index = 0;
int three_index = 0;


//variable for score
int score = 0;


//variables for rotating ellipses in the welcome screen
int ang = 1;  
int ang2 = 2; 
int ang3 = 3; 


//speed of the spaceship once it's been clicked by the user [loading fxn]
int speed = 5;


//variables for the spaceship which the user controls
int spaceX = 128;
int spaceY = 290;
int spaceSize = 100;
int gameX = 125;
int gameY = 500;

//variables for asteroids falling down
int getRandomX()
{
  return int(random(50,250));   
}
   
int size = 50;
   
int[] astX = {getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX()};
int[] astY = {60,60,60,60,60};
   
   
//variables for enemy objects
int enemyS = 80;
int enemy2S = 70;   
   
int missileDrops = 5;
Enemy[] drops = new Enemy[missileDrops]; 
   
int missD = 3;
Enemy2[] drops2 = new Enemy2[missD];
   
float r = random(340);
float y = random(20);
  
float r2 = random(330);
float y2 = random(20);

//variables for 3 monsters in master level
int monsterX = 125;
int monsterY =120;
int monsterSpeed = 5;
int monstSize = 100;
     
int monster2X = 20;
int monster2Y = 230; 
int monsterSpeed2 = 3;
int monstSize2 = 80;
   
int monster3X = 160;
int monster3Y = 300; 
int monsterSpeed3 = 4;
int monstSize3 = 150;

   
void setup()
{
  size(348,600);
  frameRate(-50);
  smooth();

  //images
  spaceship = loadImage("spaceship.png");
  asteroid = loadImage("asteroid.png");
  missile = loadImage("missile.png");
  missile2 = loadImage("missile2.png");
  galaxy = loadImage("galaxy.jpg");
  monster = loadImage("monster.png");
  monster2 = loadImage("monster2.png");
  monster3 = loadImage("monster3.png");
  
  //classes
  welcome = new Welcome();
  loading = new Loading();
  first = new First();
  finish = new Finish();
  winner = new Winner();
  
  //sound effects
  bang = new SoundFile(this, "bang.mp3");
  powerup = new SoundFile(this, "powerup.mp3");
  pew = new SoundFile(this, "pew.wav");
  boom = new SoundFile(this, "boom.mp3");
  sonic = new SoundFile(this,"sonic.wav");
  countdown = new SoundFile(this, "countdown.mp3");

  //missiles
  for (int i = 0; i <drops.length; i++)
  {
    drops[i] = new Enemy();
    enemy = new Enemy();
  }
  
  for(int i = 0; i<drops2.length; i++)
  {
    drops2[i] = new Enemy2();
    enemy2 = new Enemy2();
  }
 
   //main soundtrack of the game
   bgsound = new SoundFile(this, "bgsound.wav");
   bgsound.play();
   bgsound.stop();
   bgsound.loop();
   
   
   //only played at the very beginning
  countdown.play();
 
}


void draw()
{
  background(0);
  welcome.welcome();
  

  if(load)
  {
    loading.loading();
  }
}



void mousePressed()
{
  if(mouseX > spaceX && mouseY > spaceY)
  {
    load = true;
    powerup.play();
    countdown.stop();
  }
}
  