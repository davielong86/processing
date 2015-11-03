void setup()
{
  size (500, 500);
  background(0);
  stroke(255);
  fill(125);
  }

float px = 100, py = 400;
float a,o,h = 176;
float theta = 27;
void draw()
{
  o = sin(radians(theta)) * h;
  a = cos(radians(theta)) * h;
  h = height - mouseY;
  
  line(px, py, px + a, py - o);
  line(px + a, py - o, px, py);
  line(px, py, px + a, py);

  text("kite extends: " + h, 10, 20);
  text("kite height: " + o, 10, 40);
  text("kite ground distance: " + a, 10, 60);
}

