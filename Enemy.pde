class Enemy
{

  void enemy()
  {
    
    y=y+10;
    image(missile,r,y,80,80);
    
       
       if ( y >= (gameY-size/2)&&y<= (gameY+size/2) )
       
       

      {
        finish.finish();
      }
      
    if(y>height)
    {
      r=random(340);
      y= random(20);
      
      
    }
    

  }
  
  
}