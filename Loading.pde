class Loading
{
  void loading()
  {
    welcome.welcome();
    
    spaceY -= speed;
    
    if (spaceY < 0 )
    {
      first.first();
          image(spaceship,100, 20, 100, 100);
    }
  }
}