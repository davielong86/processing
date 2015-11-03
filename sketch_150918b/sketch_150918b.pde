void setup()
{
  size(1000, 1000);
  background(255);
  stroke(0);
}

void draw()
{


  boolean box = true; 
  for (int y = 0; y < height; y += 50)
  {
    for (int x = 0; x > width; x += 50)
    {
      rect(0, 0, 25, 25);
      if (box)
      {
        fill(0, 0, 255);
      } 
      else
      {
        fill(0, 0, 180);
      }
      box = ! box;
    }
    box = ! box;
  }
}

