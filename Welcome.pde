class Welcome
{   
   int x = 10;
   int y = 10;
   
   int x2 = 20;
   int y2 = 20;
   
   int col = 5; 
   int row = 5;
   
   PFont font;
   PFont font2;
   

   
  void welcome()
  {
    frame();
    grid();
    screen();
    center();
    fxn();
  
  }
  
  void frame()
  {   
    
    stroke(41,214,255);
    
    
    line(x, y, width-x, y);
    line(x, y, x, height-y);
    line(x, height-y, width-x, height-y);
    line(width-x, height-y, width-x, y);
    
    line(x2, y2, width-x2,y2);
    line(x2,y2,x2,height-y2);
    line(x2,height-y2,width-x2,height-y2);
    line(width-x2,height-y2,width-x2,y2);
    
  }
  
  void grid()
  {
    smooth();
    
    for(int i = 1; i<col; i++)
    {
      for(int j = 1; j<row; j++)
      {
        
        fill(41,214,255);
        ellipse(i*(width/col), j*(height/row), 1,1);
      }
    }
  }
  
  void screen()
  {
    font = loadFont("Rockwell-CondensedBold-30.vlw");
    font2 = loadFont("LeelawadeeUI-Semilight-20.vlw");
    textFont(font, 30);
    text("SPACE", x+90, y+170);
    text("IMPACT", x+140, y+200);
    textFont(font2,20);
    text("Press spaceship to play!", width/2-90, height-135);
  }
  
  void center()
  {
    ang += 1;
    ang2 += 2;
    ang3 += 3;
    
    noFill();
    ellipse(width/2, height/2+50, 150,150);
    arc(width/2, height/2+50, 160,160, radians(ang), radians(ang+140));
    arc(width/2, height/2+50, 170, 170, radians(-ang2+30), radians(-ang2+240));
    arc(width/2, height/2+50, 180, 180, radians(ang3), radians(ang3+280));
    
    image(spaceship,spaceX, spaceY, 100, 100);
    


  }
  
      void fxn()
  {
        if (mouseX > spaceX && mouseY > spaceY && mouseX < spaceX + 90 && mouseY < spaceY + 100)
    {
      cursor(HAND);
    }
    else
    {
      cursor(ARROW);
    }
    
  }
  



}