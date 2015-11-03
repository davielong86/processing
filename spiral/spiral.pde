void setup()
{
  size (1000, 1000);
  cx = width / 2.0f;
  cy = height / 2.0f;
  rad = 5.0f;
  theta = 0.01f;
}
float cx, cy;
float rad;
float smallR = 5.0f;
float theta;
float frameoffset;
int arms = 10;
void draw()
{
  background(0);
  stroke(255);
  fill(random(0, 255), random(0, 255), random(0, 255));
  float thetaInc = TWO_PI / arms;
  float offset = 0.01f;
  for (int cCount = 0; cCount < 100; cCount ++)
  {
    for (float theta = 0; theta < TWO_PI; theta += thetaInc)
    {
      float x, y;
      x = cx + sin (theta + frameoffset) * rad;
      y = cy - cos (theta + frameoffset) * rad;
      ellipse(x, y, smallR, smallR);
      theta += 0.03f;
      rad += 0.01;
    }
    smallR += 0.02f;
    offset += 0.03f;
  }
  frameoffset += 0.01f;
}

