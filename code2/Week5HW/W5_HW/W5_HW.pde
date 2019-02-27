
int sceneNumber = 0;

void setup() {
  fullScreen();
}

void draw() {
  switch(sceneNumber){
    case 0 : 
      scene0();
    break;
    
    case 1:
      scene1();
    break;
    
    case 2:
      scene2();
    break;
    
    case 3:
    sceneNumber = 0;
    break;
  }
}

void mousePressed() {
  sceneNumber++;
}

void scene0() {
  background(255, 153, 255);
  noStroke();
  ellipse(350, 350, 100, 100);
}

void scene1() {
  background(153, 204, 255);
   noStroke();
  ellipse(500, 450, 100, 100);
  ellipse(850, 450, 100, 100);
  
  if (mousePressed &&
  dist(mouseX, mouseY, width/2, height/2) < 25){
    sceneNumber = 2;
  }
   noStroke();
  rect(750, 650, 100, 100);
}

void scene2() {
  background(0, 204, 153);
  noStroke();
  //bird
 fill(239, 160, 228);
 ellipse(241, 295, 160, 100);
 triangle(277, 252, 375, 278, 307, 322);
 
 arc(371, 280, 8, 6, radians(-270), radians(160));
 
 //neckpart
 quad(162, 286, 195, 162, 228, 139, 194, 257);
 
 //headpart
 ellipse(184, 137, 85, 65);
 fill(255, 255, 255);
 ellipse(176, 133, 20, 20);
 fill(0);
 ellipse(176, 134, 8, 8);
 fill(226, 141, 36);
 arc(160, 166, 70, 110, radians(160), radians(270));
 
 //legpart
 fill(167, 170, 175);
 quad(167, 469, 205, 341, 211, 343, 173, 472);
 quad(306, 468, 271, 343, 277, 339, 312, 471);
 
}
