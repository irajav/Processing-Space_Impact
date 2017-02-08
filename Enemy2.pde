class Enemy2
{
  void enemy2()
  {
    mission2(gameX);
  }
  
  void mission2(float x)
  {
    y2=y2+10;
    image(missile2,r2,y2,enemy2S,enemy2S);
    
     if ( gameY <= y2+enemy2S/2 && x >= r2-enemy2S/2 && x<=r2+enemy2S/2)
     {
        sonic.play();
        finish.finish();
      }//end if
      
      
     // if bomb reaches the bottom of the screen, it will show up again at the top anywhere between 0 and 330 
    if(y2>height)
    {
      
      r2=random(330);
      y2= random(20);
    }//end if
    
    if(score >= 30)
    {
      r2 = -100;
      y2 = -100;
    }//end if
  }
}