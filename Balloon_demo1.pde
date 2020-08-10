// PARINYA JAIHARN
// 4/8/2020
// Draw only balloon
// Add grey balloon on the right 

// 10/8/2020
// Remove grey balloon and create simple movement(hardcode)

int i = 800;
void setup()
{
  size(1000, 800);
  fill(255);
}

void draw()
{
  background(190);
  blowBalloon(400, i, 200, 200);
  delay(1);
  i = i - 1;
  redraw();
}

void blowBalloon(int pntX, int pntY, int height, int width)
{
  fill(255);
  ellipse(pntX, pntY, width, height);
  line(pntX, pntY+(height/2), pntX, pntY+(height/2)+(height*2));
}
