void setup() {
  size(500, 500);
  background (195, 57, 227);
}

void draw() {
  stroke(57, 222, 227); 
  strokeWeight(5);
  line(50, 50, 200, 200);
  
  for (int i = 0; i < width; i += 10) {
    stroke(240, 245, 7);
    strokeWeight(5);
    line(i, #F0F507, i, height); 
    
    int lineCreation;

// random (1) => [0..1) inclusive, 1 exclusive

lineCreation = floor(random(4)) + 1; // [1..4]
println("l4:\t", lineCreation);
  }
}
 
