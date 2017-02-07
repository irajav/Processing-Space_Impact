Welcome welcome;
Loading loading;
First first;
Finish finish;
//Second second;
Enemy enemy;
Enemy2 enemy2;


import processing.sound.*;
SoundFile bang;
SoundFile powerup;
SoundFile pew;
SoundFile boom;
SoundFile sonic;
SoundFile countdown;
SoundFile bgsound;


PImage spaceship;
//PImage gradient;
PImage asteroid;
PImage missile;
PImage missile2;
PImage galaxy;
PImage monster;
PImage monster2;

boolean load = false;

boolean shoot = false;

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

int two_index =0;

int one_index = 0;

int three_index = 0;

int score = 0;


   int ang = 1;
   int ang2 = 2;
   int ang3 = 3;
   
   int spaceSize = 100;
   
   int enemyS = 80;
   
   int enemy2S = 70;
   
   int spaceX = 128;
   int spaceY = 290;
   
   int speed = 5;
   
   int gameX = 125;
   int gameY = 500;
   
   int monsterX = 125;
   int monsterSpeed = 5;
   
   int monster2X = 20;
   int monsterSpeed2 = 3;
   
   int getRandomX()
   {
     return int(random(50,250));
     
   }
   
   int size = 50;
   
   int[] astX = {getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX()};
   int[] astY = {60,60,60,60,60};
   
  int missileDrops = 5;
  Enemy[] drops = new Enemy[missileDrops]; 
   
   int missD = 3;
   Enemy2[] drops2 = new Enemy2[missD];
   
   float r = random(340);
  float y = random(20);
  
   float r2 = random(330);
   float y2 = random(20);
   
void setup()
{
  size(348,600);
  frameRate(-50);
  smooth();

  spaceship = loadImage("spaceship.png");
//  gradient = loadImage("gradient.jpg");
  asteroid = loadImage("asteroid.png");
  missile = loadImage("missile.png");
  missile2 = loadImage("missile2.png");
  galaxy = loadImage("galaxy.jpg");
  monster = loadImage("monster.png");
  monster2 = loadImage("monster2.png");
  
  
  
  welcome = new Welcome();
  loading = new Loading();
  first = new First();
  finish = new Finish();
// second = new Second();
  
//  asteroids = new Asteroids();
  
  bang = new SoundFile(this, "bang.mp3");
  powerup = new SoundFile(this, "powerup.mp3");
  pew = new SoundFile(this, "pew.wav");
  boom = new SoundFile(this, "boom.mp3");
  sonic = new SoundFile(this,"sonic.wav");
  countdown = new SoundFile(this, "countdown.mp3");

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
 
   bgsound = new SoundFile(this, "bgsound.wav");
   bgsound.play();
   bgsound.stop();
   bgsound.loop();
   
  countdown.play();
  
 // bgsound.play();


  
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
  