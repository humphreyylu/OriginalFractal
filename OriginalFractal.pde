int time = millis();
public void setup()
{
  size(800,800);
  ellipseMode(CENTER);
  rectMode(CENTER);
}
public void draw()
{
  background(0);
  myFractal(450,450,800);
}
public void myFractal(int x, int y, int siz)
{
 int passedMillis = millis() - time; // calculates passed milliseconds
  if(passedMillis >= 150){
      time = millis();
      fill(0);  
  }
  ellipse(x,y,siz,siz-siz/2);
   passedMillis = millis() - time; // calculates passed milliseconds
  rect(x,y,siz/3,siz/3);
  if(siz > 10)
  {
    fill(300,100,200);
    myFractal(x-siz/3,y,siz/2);
    fill(2);
    myFractal(x+siz/2,y,siz/2);
    fill(100, 200, 300);
    myFractal(x, y-siz/4, siz/4);
    fill(30,10,20);
    myFractal(x,y+siz/2,siz/2);

  }
}
