class Turtle {
  PVector position;
  PVector heading;
  
  Turtle(float x, float y) {
    position = new PVector(x, y);
    heading = new PVector(1, 0); // This code for this PVector will Initially be pointing to the right
  }
  
  void forward(float distance) {
    PVector step = heading.copy().setMag(distance);
    position.add(step);
    line(position.x - step.x, position.y - step.y, position.x, position.y);
  }
  
  void turn(float angle) {
    heading.rotate(radians(angle));
  }
  
  void teleport(float x, float y) {
    position.set(x, y);
  }
}

// FlyingTurtle subclass
class FlyingTurtle extends Turtle {
  color trailColor;
  
  FlyingTurtle(float x, float y, color c) {
    super(x, y);
    trailColor = c;
  }
  
  // This code will be Overriding the teleport method to add randomness
  void flyToRandomPosition() {
    position.set(random(width), random(height));
  }
  
  // This code will be Overriding forward to leave a unique trail
  @Override
  void forward(float distance) {
    stroke(trailColor); // Custom trail color for the FlyingTurtle
    super.forward(distance);
  }
}
FlyingTurtle flappy;

void setup() {
  size(1024, 1024);
  background(255);
  noSmooth();
  
  // This code will Create a FlyingTurtle instance with a custom color
  flappy = new FlyingTurtle(width * 0.50, height * 0.25, color(9, 234, 233)); // Red trail
}

void draw() {
  // This code will Clear the background
  background(255);
  
  flappy.teleport(width * 0.59, height * 0.32);
  flappy.heading.set(1, 0);
  for (int i = 0; i < 10; i++) {
    flappy.forward(100);
    flappy.turn(36);
  }
  
  if (frameCount % 60 == 0) { // Every 60 frames
    flappy.flyToRandomPosition();
  }
}
