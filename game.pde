Welcome welcome;
Loading loading;
First first;

PImage spaceship;
PImage gradient;

boolean load = false;


   int ang = 1;
   int ang2 = 2;
   int ang3 = 3;
   
   int spaceX = 128;
   int spaceY = 290;
   
   int speed = 5;
   
   int gameX = 125;
   int gameY = 500;

void setup()
{
  size(348,600);
  
  spaceship = loadImage("spaceship.png");
  gradient = loadImage("gradient.jpg");
  
  welcome = new Welcome();
  loading = new Loading();
  first = new First();
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
  