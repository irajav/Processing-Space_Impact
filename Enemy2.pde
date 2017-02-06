class Enemy2
{
  void enemy2()
  {
    mission2(gameX);
  }
  
  void mission2(float x)
  {
    y2=y2+5;
    image(missile2,r2,y2,enemy2S,enemy2S);
    
    
    
           if ( gameY <= y2+enemy2S/2 && x >= r2-enemy2S/2 && x<=r2+enemy2S/2)

      {
        sonic.play();
        finish.finish();

      }
      
    if(y2>height)
    {
      
      r2=random(330);
      y2= random(20);
      
      
    }
  }
}