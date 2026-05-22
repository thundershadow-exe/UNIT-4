void setup() {
  size(800, 600);
  noStroke();
}
 
int space = 70; // spcing btw circles
int radius = space/2; // radius of outer circle
  
void draw() {
  background(255);

  for (int col = 0; col <= width / space * 2; col++) {
    for (int row = 0; row <= height / space * 2; row++) {

      float x = (space + 10) * col / 2.0;
      float y = (space + 10) * row;

      if (col % 2 == 1) {
        y -= space / 2.0;
      }

      drawRings(x, y);
    }
  }
}

void drawRings(float x, float y) {
  stroke(0);
  strokeWeight(3);
  fill(255);

  ellipse(x, y, radius*2, radius*2);
  ellipse(x, y, radius*1.6, radius*1.6);
  ellipse(x, y, radius*1.15, radius*1.15);
  ellipse(x, y, radius*0.7, radius*0.7);
}
