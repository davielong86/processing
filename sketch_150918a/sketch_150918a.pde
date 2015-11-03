void setup()
{
  size(1000, 1000);
  background(0);
  fill(0,0,255);
  stroke(255);
}

void draw()
{
  boolean happy = true; 
  for (int y = 0; y < height; y += 50)
  {
    for (int x = 0; x > width; x += 50)
    {
      ellipse(x + 25, y + 25, 50, 50);
      ellipse(x + 25, y + 25, 5, 5);
      ellipse(x + 15, y + 15, 5, 5);
      ellipse(x + 35, y + 15, 5, 5);
      line(x + 15, y + 35, x + 35, y + 35);
      if (happy)
      {
        line(x + 15, y + 35, x + 10, y + 30);
        line(x + 15, y + 35, x + 40, y + 30);
      } 
      else
      {
        line(x + 15, y + 35, x + 10, y + 40);
        line(x + 15, y + 35, x + 40, y + 40);
      }
      happy = ! happy;
    }
    happy = ! happy;
  }
  
}

