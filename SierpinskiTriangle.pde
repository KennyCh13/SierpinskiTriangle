public void setup()
{
  size(500, 500);
}
public void draw()
{
  background(192);
  sierpinski(20, 375, 360);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  //remeber to change signs to <=
  if (len <= 20) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  //Triangles go Left Bot, Right Bot, Tip.
  //triangle(x, y, x + len/2, y, x + len/4, y - len/2);
  //triangle(x , y, x, y, x, y);
  //triangle(x , y, x, y, x, y);
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
