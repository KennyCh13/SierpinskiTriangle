public void setup()
{
  size(500, 500);
}
public void draw()
{
  if(mousePressed == true){
  background((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  sierpinski(0, 500, 500);
}
public void mouseDragged()//optional
{
}
public void sierpinski(int x, int y, int len) 
{
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  if (len <= 25) {
    triangle(x, y, x + len, y, x + len/2, y - len);
  }
  else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
