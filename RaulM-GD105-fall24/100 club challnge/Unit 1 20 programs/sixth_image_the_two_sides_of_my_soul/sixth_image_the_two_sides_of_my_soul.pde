void setup() {
  size(800, 400);
  background(0, 250, 235); // makes te background aquamarine
}

void draw() {
 //Draws the shaft of the spear
  stroke(0);
  strokeWeight(5);
  line(200, 200, 600, 200);
  
  // creates the spearhead
  fill(128); // the fill is grey
  noStroke();
  triangle(600, 190, 630, 200, 600, 210); // this makes the tip of the spear
  
  // this code will divide thhe spear into both light and darkness
  strokeWeight(2);
  stroke(0);
  line(400, 150, 400, 250); // this line divides both sides to distinguish which side goes where.
  
  // this code will add color to both sides of the spear
  fill(182, 0, 250); // the dark half
  rect(200, 190, 200, 20);
  fill(255); // the light half
  rect(400, 190, 200, 20);
}
