void setup() {
  size(800, 800);
  strokeWeight(20);
}

void draw() {
  background(9, 234, 233);
  
  // draws the center blade
  triangle(400, 400, 450, 300, 500, 400);
  
  // draws the left blade
  triangle(350, 400, 400, 250, 450, 400);
  
  // draws the right blade
  triangle(450, 400, 500, 250, 550, 400);
  
  fill(199, 63, 250);
  
  // draws the hilt of the dark claw
     rect(430, 400, 40, 190);
}
