size(800, 600);
background(255); 

noFill();
stroke(0);
strokeWeight(2);

int spacing = 100;   // distance between circle centers (grid spacing)
int diameter = 140;  // circle size (bigger than spacing = overlap)

for (int y = 0; y <= height; y += spacing) {   // move down the screen
  for (int x = 0; x <= width; x += spacing) {  // move across each row


    ellipse(x, y, diameter, diameter);
  }
}
