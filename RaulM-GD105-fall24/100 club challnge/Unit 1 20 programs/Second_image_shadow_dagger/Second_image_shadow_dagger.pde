void setup() {
  size(900, 900);
  background(200, 101, 237);
}

void draw() {
  // draws the shadow
  fill(0, 50);
  noStroke();
  beginShape();
  vertex(400,300);
  vertex(430, 240);
  vertex(410, 600);
  vertex(350, 220);
  endShape(CLOSE);
  
  // draws the dagger
  stroke(101, 237, 229);
  strokeWeight(15);
  line(400, 200, 400, 600);
  line(400, 200, 380, 240);
  line(400, 200, 420, 240);
  
  strokeWeight(10);
  line(390, 600, 410, 600);
} 
