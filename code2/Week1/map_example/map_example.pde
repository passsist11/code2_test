void setup() {
  size(600, 600);
  for(int i = 0; i < width; i++) {
    float red = map(i, 0, width, 0, 255);
    stroke(red, 0, 0);
    line(i, 0, i, height);
  }
  
  //for(int i = 0; i < width; i++) {
  //  for(int j = 0; j < height; j++) {
  //    float red = map(i, 0, width, 0, 255);
  //    float green = map(j, 0, height, 0, 255);
  //    stroke(red, green, 255);
  //    point(i, j);
  //  }
  //}
}