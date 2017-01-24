Welcome welcome;
Loading loading;

PImage spaceship;

boolean b;


   int ang = 1;
   int ang2 = 2;
   int ang3 = 3;
   
   int spaceX = 128;
   int spaceY = 290;
   
   int speed = 5;

void setup()
{
  size(350,600);
  
  spaceship = loadImage("spaceship.png");
  
  welcome = new Welcome();
  loading = new Loading();
}

void draw()
{
  background(0);
  welcome.welcome();
  
  if(b==true)
  {
    loading.loading();
  }

}


void mousePressed()
{
  if(mouseX > spaceX && mouseY > spaceY )
  {
    b=!b;
  }
}

  