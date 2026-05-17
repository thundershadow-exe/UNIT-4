void setup() {
  size(800, 600);
  noStroke();
}

int space = 80;    // spacing btw circles
int radius = 40;   // radius of outer circle

void draw() {
  background(255);

  for (int y = space/2; y < height; y += space) {
    for (int x = space/2; x < width; x += space) {

      boolean blue = ((x/space + y/space) % 2 == 0);

      // 1) filled outer circle
      fill(blue ? color(#007ea7) : color(#ccdbdc));
      ellipse(x, y, radius*2, radius*2);

      // 2) three white outline rings
      noFill();
      stroke(255);
      strokeWeight(3);

      ellipse(x, y, radius*1.6, radius*1.6);
      ellipse(x, y, radius*1.15, radius*1.15);
      ellipse(x, y, radius*0.7, radius*0.7);

      noStroke();
    }
  }
}
