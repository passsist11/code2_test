Spot spot1;
Spot spot2;

void setup() {
  size(600, 600);
  noStroke();
  spot1 = new Spot(height/2, width/2, 70);
  spot2 = new Spot(100, 50, 100);
}

void draw() {
  fill(0, 15);
  rect(0, 0, width, height);
  fill(255, 180, 0);
  spot1.display();
  spot1.moving();
  spot2.display();
  spot2.moving();
  }
  


class Spot {
  //fields
  float x;
  float y;
  float diameter;
  int direction;
  //constructor
  Spot (float tempX, float tempY, float tempDiameter) {
    x = tempX;
    y = tempY;
    diameter = tempDiameter;
    direction = 1;
  }
  //methods  
  void moving () {
     x += (1.5 * direction);
  if ((x > (width - diameter/2)) || (x < diameter/2)) {
    direction *= -1;
  }
  }
  
  void display() {
    ellipse(x, y, diameter, diameter);
  }
  
}
