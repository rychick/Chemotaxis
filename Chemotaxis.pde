Car bob;
Car [] mater = {new Car(), new Car(), new Car()};
Car [] mcqueen;

void setup() {
  size(500, 500);
  bob = new Car();
  mcqueen = new Car[30];
  for (int i = 0; i < mcqueen.length; i+=1)
  {
    mcqueen [i] = new Car();
  }
}
void draw() {
  {
    background(192, 192, 192);
    for (int z = 10; z < 500; z+=50)
      {
        for (int t = 10; t < 500; t+=75)
        {
          fill(255, 255, 0);
          rect(z, t, 30, 15);
        }
      }
    bob.walk();
    bob.show();
    mater[0].walk();
    mater[0].show();
    mater[1].walk();
    mater[1].show();
    mater[2].walk();
    mater[2].show();
    for (int i = 0; i < mcqueen.length; i++) {
      mcqueen[i].walk();
      mcqueen[i].show();
    }
  }
}
class Car
{
  int myX, myY;
  int myColor;
  Car() {
    myX = myY = 200;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void walk() {
    myX = myX + (int)(Math.random()*7)-3;
    myY = myY + (int)(Math.random()*7)-3;
    if (mouseX > myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if (mouseY > myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }
  void show() {
    {
      fill(myColor);
      rect(myX, myY, 120, 50);
      noStroke();
      ellipse(myX+40, myY, 80, 80);
      stroke(3);
      fill(255, 255, 0);
      triangle(myX+75, myY+13, myX, myY+5, myX, myY+20);
      fill(0);
      ellipse(myX+25, myY+50, 45, 45);
      ellipse(myX+95, myY+50, 45, 45);
    }
  }
}
