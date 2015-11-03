void setup()
{
  size(1000, 1000);
  background(0);
  fill(255, 255, 0);
  stroke(138, 3, 179);
}

void draw()
{
  int facex;
  int facey = 50;
  int lex;
  int ley = 25;
  int rex;
  int rey = 25;
  int nosex;
  int nosey = 50;
  int mouthx;
  int mouthy = 70;


  for (int i = 0; i < 10; i++)
  {
    //at start of each outer loop the x coordinates are reset to the left margin
    facex = 50;
    lex = 25;
    rex = 75;
    nosex = 50;
    mouthx = 30;

    //inner loop controls each row of faces
    for (int j = 0; j < 10; j++)
    {
      //draw the face outline
      ellipse(facex, facey, 100, 100);

      //draw the left eye
      ellipse(lex, ley, 10, 10);

      //draw the right eye
      ellipse(rex, rey, 10, 10);

      //draw the node
      ellipse(nosex, nosey, 10, 10);

      //draw the mouth
      //if j is even smile
      if (j % 2 == 0)
      {
        //three separate lines
        line(mouthx, mouthy, mouthx + 5, mouthy + 5);
        line(mouthx + 5, mouthy + 5, mouthx + 35, mouthy + 5);
        line(mouthx + 35, mouthy + 5, mouthx + 40, mouthy);
      }
      //else be sad
      else
      {
        line(mouthx, mouthy + 10, mouthx + 5, mouthy + 5);
        line(mouthx + 5, mouthy + 5, mouthx + 35, mouthy + 5);
        line(mouthx + 35, mouthy + 5, mouthx + 40, mouthy + 10);
      }

      //move the x coordinates one whole face width (100) to the right
      facex += 100;
      lex += 100;
      rex += 100;
      nosex += 100;
      mouthx += 100;
    }//end inner for

    //move the y coordinates one whole face height (100) below
    facey += 100;
    ley += 100;
    rey += 100;
    nosey += 100;
    mouthy += 100;
  }//end outer for
}//end draw() meth

