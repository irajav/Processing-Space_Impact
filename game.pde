Welcome welcome;
Loading loading;
First first;
Finish finish;
Second second;

import processing.sound.*;
SoundFile bang;
SoundFile powerup;

PImage spaceship;
PImage gradient;
PImage asteroid;
PImage missile;

boolean load = false;

boolean shoot = false;

String[] one = 
{
  "******LEVEL 1*******"
};

int one_index = 0;

int score = 0;

   int ang = 1;
   int ang2 = 2;
   int ang3 = 3;
   
   int spaceX = 128;
   int spaceY = 290;
   
   int speed = 5;
   
   int gameX = 125;
   int gameY = 500;
   
   int getRandomX()
   {
     return int(random(50,250));
     
   }
   
   int size = 50;
   
   int[] astX = {getRandomX(), getRandomX(), getRandomX(), getRandomX(), getRandomX()};
   int[] astY = {40,40,40,40,40};
   
void setup()
{
  size(348,600);
  frameRate(-50);
  smooth();

  spaceship = loadImage("spaceship.png");
  gradient = loadImage("gradient.jpg");
  asteroid = loadImage("asteroid.png");
  missile = loadImage("missile.png");
  
  welcome = new Welcome();
  loading = new Loading();
  first = new First();
  finish = new Finish();
  second = new Second();
  
  bang = new SoundFile(this, "bang.mp3");
  powerup = new SoundFile(this, "powerup.mp3");
  
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
  }
}
  