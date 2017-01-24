Welcome display = new Welcome();

PImage spaceship;

void setup()
{
  size(350,600);
  
  spaceship = loadImage("spaceship.png");
}

void draw()
{
  background(0);
  display.w();
  
}