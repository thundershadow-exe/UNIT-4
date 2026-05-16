size(800, 600);
noStroke();

int square = 60;  // size of each square

for (int y = 0; y < height; y += square) {
  for (int x = 0; x < width; x += square) {

    // alternate colour
    if ((x/square + y/square) % 2 == 0) {
      fill(255);   // white
    } else {
      fill(0);     // black
    }

    rect(x, y, square, square);
  }
}
