Walker[] bob;

void setup()
{
  size(750,750);
  bob = new Walker[25];
  for(int i = 0; i < bob.length; i++)
  {
  bob[i] = new Walker();
  }
}

void draw()
{
  background(0);
  for(int i = 0; i < bob.length; i++)
  {
  bob[i].walk();
  bob[i].show();
  }
}

class Walker
{
  int myX, myY;
  {
    myX = 500;
    myY = 250;
  }
  void walk()
  {
    if(myX > mouseX){
      myX -= (int)(Math.random()*10);
    } else if(myX < mouseX){
      myX += (int)(Math.random()*10);
    } else {
      myX = myX + (int)(Math.random()*10)-10;
    }
      
    if(myY > mouseY){
      myY -= (int)(Math.random()*10);
    } else if(myY < mouseY) {
      myY += (int)(Math.random()*10);
    }
    else {
      myY = myY + (int)(Math.random()*10)-10;
    }
  }
  void show()
  {
    fill((int)(Math.random()*255+100),(int)(Math.random()*255+100),(int)(Math.random()*255+100));
    ellipse(myX,myY,50,50);
  }
}

