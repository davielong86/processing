void setup()
{
  size(500, 500);
  background(0);
  stroke(255);
  for (int i = 0; i < colors.length; i ++)
  {
    colors[i] = color(0, random(100, 255), random(100, 255));
  }
}
float[] rainfall = {
  45, 37, 55, 27, 38, 50, 79, 48, 104, 31, 100, 58
};
String[] months = {
  "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"
};
color[] colors = new color[rainfall.length];



void drawTemplate()
{
  float axisX = width / 10.0f ;
  float axisY = height / 10.0f ;
  float markerLength = 4.0f;
  float gapX = (width - (axisX * 2)) / months.length;
  float gapY = (height - (axisY * 2)) / months.length;
  line(0+axisX, 0+axisY, 0+axisX, 500-axisY);// this is the linr for the y axis
  line(0+axisX, 500-axisY, 500-axisX, 500-axisY);// this is the linr for the x axis
  stroke(255);


  for (float i=0; i<months.length; i = i+gapX)
  {
    line(i +(axisX - (markerLength/2)), 500-axisY,(axisX + (markerLength/2)) - i, 500-axisY);
    println(i);
  }
 
}


  void draw()
  {
    drawTemplate();
  }

