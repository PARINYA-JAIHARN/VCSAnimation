// PARINYA JAIHARN
// 4/8/2020
// Draw only balloon
// Add grey balloon on the right 

// 10/8/2020
// Remove grey balloon and create simple movement(hardcode)
// Build class for stop balloon condition
// Add random color function
// Add more balloon

class Balloon
{
  float pntX;
  float pntY;
  float baseY;
  float width;
  float height;

  Balloon(float o_pntX, float o_pntY, float o_width, float o_height)
  {
    this.pntX = o_pntX;
    this.pntY = o_pntY;
    this.baseY = o_pntY;
    this.width = o_width;
    this.height = o_height;
  }
  void blowBalloon()
  {
    //fill(255);
    ellipse(this.pntX, this.pntY, this.width, this.height);
    line(this.pntX, this.pntY+(height/2), this.pntX,                   
      this.pntY+(height/2)+(this.height*2));
  }

  void riseUp()
  {
    if (mousePressed)
    {
      this.pntY = this.pntY + 1;
    }
    if (this.pntY - (this.height/2) > 0)
    {
      delay(1);
      this.pntY = this.pntY - 1;
    }
    if (this.pntY - (this.height/2) == 0 && mousePressed)
    {
      this.pntY = this.baseY+(this.height/2);
    }
    blowBalloon();
  }
  
  void fillColor()
  {
    float redTone = random(0, 255);
    float greenTone = random(0, 255);
    float blueTone = random(0, 255);
    fill(redTone, greenTone, blueTone);
  }
}

Balloon firstballoon, secondballoon, thirdballoon;

void setup()
{
  size(1000, 800);
  firstballoon = new Balloon(400, 400, 200, 200);
  firstballoon.fillColor();
  secondballoon = new Balloon(800, 500, 150, 150);
  secondballoon.fillColor();
  thirdballoon = new Balloon(500, 600, 250, 250);
  thirdballoon.fillColor();
}

void draw()
{
  background(255);
  firstballoon.riseUp();
  secondballoon.riseUp();
  thirdballoon.riseUp();
}
