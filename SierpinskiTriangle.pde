public void setup()
{
  size(500, 500);
}
public void draw()
{
  background(192);
  sierpinski(8,150,144);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  //remeber to change signs to <=
  if (len >= 20) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  //Triangles go Left Bot, Right Bot, Tip.
  //triangle(x, y, x + len/2, y, x + len/2, y + len/2);
  //triangle(x , y, x, y, x, y);
  //triangle(x , y, x, y, x, y);
}
