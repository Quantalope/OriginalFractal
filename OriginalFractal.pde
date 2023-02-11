int i = 255;
int d = 0;
void setup()
{
  size(1500,1000);
  noLoop();
  textSize(250);
}
void draw()
{
  i--;
  fill(255,i,i);
  rect(0,0,1500,1000);
  if(i<0)
  {
    fill(0);
    text("IT CONSUMES",20,400);
    exit();
  }
  translate(650,1000);
  pythTree(0,0,100+d);
  d++;
}
void mousePressed()
{
  redraw();
}
public void pythTree(float x, float y, float s)
{
  if(s<=10)
  {
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    rect(x,y-s,s,s);
    triangle(x,y-s,x+s,y-s,x+s/2,y-3*s/2);
  }
  else
  {
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    rect(x,y-s,s,s);
    fill((float)(Math.random()*255),(float)(Math.random()*255),(float)(Math.random()*255));
    triangle(x,y-s,x+s,y-s,x+s/2,y-3*s/2);
    translate(0,-s);
    rotate(-PI/4);
    pythTree(x,y,sqrt(2)/2*s);
    rotate(PI/4);
    translate(0,s);
    translate(x+s/2,y-3*s/2);
    rotate(PI/4);
    pythTree(x,y,sqrt(2)/2*s);
    rotate(-PI/4);
    translate(-x-s/2,-y+3*s/2);
  }
}
