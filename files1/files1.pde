// This is how the processing map method works
/*float mapRange(float value, float start1, float stop1, float start2, float stop2)
 {
 float inRange = stop1 - start1;
 float howFar = value - start1;
 float percentageInRange = howFar / inRange;
 
 float outRange = stop2 - start2;
 return start2 + (percentageInRange * outRange) ;
 }
 */
void setup()
{
  size(600, 600, P3D);

  //String fsVal = "100.99";
  //float fVal = Float.parseFloat(fsVal); // Java
  //fVal = parseFloat(fsVal); // Processing
  String[] lines = loadStrings("sum.csv"); // Load each line into a String array
  ArrayList<Float> sumData = new ArrayList<Float>(); // Create an arraylist
  for (String s : lines)
  {
    // Add each element from the string array to the arrraylist
    float f = Float.parseFloat(s);
    sumData.add(f);
  }  

  // Find the year with the lowest rainfall
  float lowest = sumData.get(0);
  int lowestIndex = 0;  
  for (int i = 1; i < sumData.size (); i ++)
  {
    if (sumData.get(i) < lowest)
    {
      lowest = sumData.get(i);
      lowestIndex = i;
    }
  }
  // Find the year with the heigest rainfall
  float highest = sumData.get(0);
  int highIndex = 0;  
  for (int i = 1; i < sumData.size (); i ++)
  {
    if (sumData.get(i) > highest)
    {
      highest = sumData.get(i);
      highIndex = i;
    }
  }
  // Find the year with the heigest rainfall
  float total = sumData.get(0);  
  for (int i = 1; i < sumData.size (); i ++)
  {
    total += sumData.get(i);
  }
  float avg = total/sumData.size();

  // Look! We can use the map function here:
  println("The driest year is: " + (int) map(lowestIndex, 0, sumData.size() - 1, 1850, 2010) + " with rainfall of: " + sumData.get(lowestIndex)+"mm");
  println("The wetest year is: " + (int) map(highIndex, 0, sumData.size() - 1, 1850, 2010) + " with rainfall of: " + sumData.get(highIndex) +"mm");
  println("The avg rainfall per year is: " + avg +"mm");
}


void draw()
{    

}
void drawAxis(ArrayList<Float> sumData)
{
  stroke(200, 200, 200);
  fill(200, 200, 200);  

  float border = width  * 0.1f;
  // Draw the horizontal azis  
  line(border, height - border, width - border, height - border);
 
  float windowRange = (width - (border * 2.0f));  
  float horizInterval =  windowRange / (sumdata.size() - 1);
  
  float tickSize = border * 0.1f;


  for (int i = 0; i < data.size (); i ++)
  {   
    // Draw the ticks
    float x = border + (i * horizInterval);
    line(x, height - (border - tickSize)
      , x, (height - border));
    float textY = height - (border * 0.5f);

    // Print the text 
    textAlign(CENTER, CENTER);
    text(horizLabels[i].substring(0, 3), x, textY);
  }

  // Draw the vertical axis
  line(border, border, border, height - border);

  float verticalDataGap = vertDataRange / verticalIntervals;
  float verticalWindowRange = height - (border * 2.0f);
  float verticalWindowGap = verticalWindowRange / verticalIntervals; 
  for (int i = 0; i <= verticalIntervals; i ++)
  {
    float y = (height - border) - (i * verticalWindowGap);
    line(border - tickSize, y, border, y);
    float hAxisLabel = verticalDataGap * i;

    textAlign(RIGHT, CENTER);  
    //text(, border - (tickSize * 2.0f), y);
  }
}//end of draw axis

