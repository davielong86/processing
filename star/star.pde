void setup()
{
  size(800, 800);
  //background(0);
  //stroke(255);
  //fill(random(),random(),random());
}
void draw()
{
  background(125);
  fill(random(0, 255), random(0, 255), random(0, 255));

  translate(width*0.5, height*0.5);// this positions the shap
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) 
  {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}

