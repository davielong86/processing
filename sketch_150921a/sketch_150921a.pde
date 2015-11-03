void setup()
{
  size(500, 500);
  fill(0, 0, 255);
  stroke(255);
}

void draw()
{
  int rad = 50;2
  background(0);
  ellipse(x + 25, y + 25, 50, 50);
  ellipse(x + 25, y + 25, 5, 5);
  ellipse(x + 15, y + 15, 5, 5);
  ellipse(x + 35, y + 15, 5, 5);
  line(x + 15, y + 35, x + 35, y + 35);
  line(x + 15, y + 35, x + 10, y + 30);
  line(x + 35, y + 35, x + 40, y + 30);
}

