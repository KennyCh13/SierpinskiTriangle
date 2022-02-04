public void setup()
{
  background(192);
  size(500, 500);
}
public void draw()
{
  if(mousePressed == true){
  background(5); 
  }
  sierpinski(50, 425, 390);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
