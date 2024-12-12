void setup() {
  size(800, 800);
  background(13, 252, 150);
  strokeWeight(20);
}

void draw () {
  
  // draws the large blade itself
  triangle(400, 400, 450, 40, 500, 400);
  fill(180, 13, 252);
  
  // draws the hilt of the spear
  rect(430, 400, 40, 400);
  
  // draws the second blade of the spear
  triangle(40, 450, 400, 500, 400, 400);
}
