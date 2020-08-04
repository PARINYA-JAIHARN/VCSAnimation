// PARINYA JAIHARN
// 4/8/2020
// Draw only balloon
// Add grey balloon on the right 

void setup()
{
  size(1000, 800);
  fill(255);
}

void draw()
{
  background(190);
  fill(255);
  blowBalloon(400, 400, 200, 200);
  fill(175);
  blowBalloon(700, 200, 300, 300);
}

void blowBalloon(int pntX, int pntY, int height, int width)
{
  ellipse(pntX, pntY, width, height);
  line(pntX, pntY+(height/2), pntX, pntY+(height/2)+(height*2));
}
