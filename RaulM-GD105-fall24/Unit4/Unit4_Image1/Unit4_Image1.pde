class Particle {
  PVector pos;  //The Position     
  PVector vel;  // the velocity    
  float size;   //the size     
  float lifespan; // the lifespan   
  float angle;    // the current rotation   
  float angularVel;  // the speed of the rotation
  PVector gravity;   // the modified particle aka gravity  
  
  Particle(float x, float y) {
    pos = new PVector(x, y);
    vel = PVector.random2D(); // this code will generate Random initial velocity
    vel.mult(random(2, 5));   // this code will generate Random speed multiplier
    size = random(10, 20);    // this code will generate Random shard size
    lifespan = 255;           // this code will generate Full opacity
    angle = random(TWO_PI);   // this code will generate Random initial rotation angle
    angularVel = random(-0.1, 0.1); // Random spin speed
    gravity = new PVector(0, 0.1);  // Constant downward force
  }

  void update() {
    vel.add(gravity);  // this code will Apply gravity
    pos.add(vel);      // this code will Update position
    angle += angularVel; // this code Update rotation
    lifespan -= 3;     // this code will Decrease lifespan for fading
    vel.mult(0.99);    // this code will Add slight friction for smoother motion
  }

  void show() {
    noStroke();
    fill(30, 30, 30, lifespan); // This code displays Dark gray shards with fading effect
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(angle); // This code will Rotate around the shard's center
    // the code below will Draw a triangular shard
    triangle(-size / 2, size / 2, size / 2, size / 2, 0, -size);
    popMatrix();
  }

  boolean isDead() {
    // this code will Mark as "dead" when off-screen or fully faded
    return (lifespan <= 0 || pos.y > height + size);
  }
}
// ArrayList to hold all the particles
ArrayList<Particle> particles;

void setup() {
  size(800, 600);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(0); // Black background
  
  // this code will Add new particles each frame
  if (frameCount % 5 == 0) { // Adjust to control shard frequency
    particles.add(new Particle(random(width), random(height / 4))); // Spawn at random locations near top
  }
  
  // Thhe following code below Update and display all particles
  for (int i = particles.size() - 1; i >= 0; i--) {
    Particle p = particles.get(i);
    p.update();
    p.show();
    
    // this code will Remove the particle if it's "dead" (e.g., off-screen or lifespan expired)
    if (p.isDead()) {
      particles.remove(i);
    }
  }
}
