void setup(){
  size(500, 500);
  strokeWeight(22);
}

void draw(){
  background(242, 127, 12);

  // this will draw a pattern of diagonal lines across the canvas
  stroke(215, 31, 252); // purple line
  for (int x = 0; x <= width; x += 50) {
    line(x, 0, width - x, height); // Diagonal lines from top to bottom
  }

  // The following code will draw horizontal lines across the canvas
  stroke(193, 0, 44); // red
  for (int y = 50; y < height; y += 50) {
    line(0, y, width, y);
  }

  // This will draw vertical lines across the canvas
  stroke(41, 189, 193); // turquoise
  for (int x = 50; x < width; x += 50) {
    line(x, 0, x, height);
  }

  // this will draw a pattern of shapes using the `beginShape()` and `endShape()`functions
  stroke(8, 8, 8);
  noFill();
  strokeWeight(35.0);
  strokeJoin(BEVEL);
  for (int i = 0; i < 5; i++) {
    beginShape();
    vertex(400 - i * 50, 400 - i * 50);
    vertex(150 + i * 30, 350 - i * 20);
    vertex(140 + i * 20, 80 + i * 30);
    endShape();
  }

  // This will draw a diagonal line from TL to BR with a looped pattern
  stroke(24, 234, 106); // green
  for (int i = 0; i < 5; i++) {
    line(0 + i * 10, 0 + i * 10, 430 - i * 10, 450 - i * 10);
  }

  // this will draw a second shape pattern using the `beginShape()` and `endShape()` functions
  stroke(8, 8, 8);
  strokeWeight(35.0);
  strokeJoin(MITER);
  for (int i = 0; i < 5; i++) {
    beginShape();
    vertex(155 + i * 20, 160 + i * 10);
    vertex(320 - i * 20, 165 + i * 5);
    vertex(150 + i * 15, 80 + i * 10);
    endShape();
  }
}
