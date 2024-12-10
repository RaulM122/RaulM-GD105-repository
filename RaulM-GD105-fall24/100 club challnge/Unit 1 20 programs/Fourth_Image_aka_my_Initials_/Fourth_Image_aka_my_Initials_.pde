PFont font;

void setup() {
  size(800, 600);
  background(13, 234, 252);
  strokeWeight(20);
  
  font = createFont("AKoshi-Rrgular-48.vlw", 30, true);
  textFont(font);
  fill(252, 13, 41);
  textAlign(CENTER, CENTER);
}

void draw() {
  textFont(font);
  text("RM", width/2, height/2);
 
  triangle(500, 500, 450, 200, 600, 400);
  
  triangle(400, 600, 200, 450, 500, 500);
}
