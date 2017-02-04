class Enemy
{
  float r = random(340);
  float y = random(20);
  
  void enemy()
  {
    
    y=y+7;
    image(missile,r,y,10,10);
    
    if(y>height)
    {
      r=random(340);
      y= random(20);
      
    }
  }
}