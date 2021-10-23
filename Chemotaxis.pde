Bacteria[] ted;
void setup()
{
  size(500,500);
  frameRate(20);
  ted = new Bacteria[100];
  for(int i = 0; i< ted.length; i++)
   {
     ted[i] = new Bacteria();
   }
     
     
  
}
void draw()
{ 
  background(0);
  for(int i = 0; i< ted.length; i++)
   {
    ted[i].move();
  ted[i].show();
   }
}


class Bacteria{
  int myX,myY;
  Bacteria(){
     myX = 250;
     myY = 250;
  }
  
  void move() 
  {
    myX = myX +(int)(Math.random()*3)-1;
    myY = myY +(int)(Math.random()*3)-1;
   
  }
  
  void show()
  {
    fill((int)(Math.random()*255), (int)(Math.random()*255),(int)(Math.random()*255));
    ellipse(myX,myY, 25, 25);
  }
  
}
