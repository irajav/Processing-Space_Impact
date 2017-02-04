class Enemy
{
  float r = random(340);
  float y = random(20);
  
  void enemy()
  {
    
    y=y+10;
    image(missile,r,y,80,80);
    
    if(y>height)
    {
      r=random(340);
      y= random(20);
      
    }
  }
}