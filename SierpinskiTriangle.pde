public void setup()
{
  size(500, 500);
}
public void draw()
{
  background(192);
  sierpinski(20,375,360);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  triangle(x , y, x, y, x, y);
  triangle(x , y, x, y, x, y);
  triangle(x , y, x, y, x, y);
}
