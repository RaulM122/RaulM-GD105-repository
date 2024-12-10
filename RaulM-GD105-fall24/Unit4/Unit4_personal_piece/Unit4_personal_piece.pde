Particle[] snowflakes; 
int totalFlakes = 100; 

void setup() {
  size(800, 600); 
  snowflakes = new Particle[totalFlakes];
  
  for (int i = 0; i < totalFlakes; i++) {
    snowflakes[i] = new Particle();
  }
}

void draw() {
  background(0); 
  
  // draws a loop through and updates and draws all snowflakes
  for (Particle flake : snowflakes) {
    flake.update();
    flake.display();
  }
}

// Particle class
class Particle {
  float x, y;          // Position
  float speedX, speedY; // Speed in X and Y directions
  float size;          // Size of the snowflake
  float angle;         // Rotation angle
  float transparency;  // Transparency for a softer effect

  // draws the constructor
  Particle() {
    x = random(width);         // Random X position
    y = random(-100, height);  // Start above or within the screen
    speedX = random(-0.5, 0.5); // Slight horizontal drift
    speedY = random(1, 3);     // Falling speed
    size = random(3, 6);       // Random size
    angle = random(TWO_PI);    // Random initial rotation
    transparency = random(150, 255); // Random transparency
  }

  void update() {
    x += speedX;        // Horizontal movement
    y += speedY;        // Vertical movement
    angle += 0.01;      // Rotation

    // This Resets the position if the snowflake falls off the screen
    if (y > height) {
      y = random(-50, -10);
      x = random(width);
    }
  }

  // This piece of code displays the snowflake
  void display() {
    pushMatrix();               
    translate(x, y);            
    rotate(angle);              
    noStroke();                 
    fill(255, transparency);    
    ellipse(0, 0, size, size);  
    popMatrix();                
  }
}
