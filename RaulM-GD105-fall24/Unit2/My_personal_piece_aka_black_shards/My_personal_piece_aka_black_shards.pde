float x, y;

void setup() {
  size (500, 600);
  background(32, 229, 228);
  x = width / 2;
  y = height / 2;
}

void draw() {
  fill (0);
  noStroke();
  
  beginShape();
  vertex(x, y);
  vertex(x + 11, y + 6);
  vertex(x + 6, y + 16);
  vertex(x - 6, y + 11);
  endShape(CLOSE);
  x += 2;
  y += 2;
  
  if (x > width || y > height) {
    x = random(0, width); 
    y = random(0, height);
  }
}
