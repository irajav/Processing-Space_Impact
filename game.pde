Welcome welcome;
Loading loading;
First first;

PImage spaceship;
PImage gradient;
PImage asteroid;

Asteroid[] asteroids = new Asteroid[5];

boolean load = false;

//cursor

   int ang = 1;
   int ang2 = 2;
   int ang3 = 3;
   
   int spaceX = 128;
   int spaceY = 290;
   
   int speed = 5;
   
   int gameX = 125;
   int gameY = 500;
   
   float astX = 30;
   float astY = 30;
void setup()
{
  size(348,600);
  
  spaceship = loadImage("spaceship.png");
  gradient = loadImage("gradient.jpg");
  asteroid = loadImage("asteroid.png");
  
  welcome = new Welcome();
  loading = new Loading();
  first = new First();
  
  for (int i=0; i<asteroids.length; i++)
  {
    asteroids[i] = new Asteroid(100+i*50, 40, random(36,72));
  }
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
  }
}
  