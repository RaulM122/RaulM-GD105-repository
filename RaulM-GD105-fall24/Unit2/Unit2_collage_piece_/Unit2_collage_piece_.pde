PImage ichigo, riku, leon, sparda, zeref;

void setup() {
  size(800, 600);  
  
  
  ichigo = loadImage("ichigo.png");
  riku = loadImage("riku.png");
  leon = loadImage("leon.png");
  sparda = loadImage("sparda.png");
  zeref = loadImage("zeref.png");
  
  
  ichigo.resize(200, 300);  
  riku.resize(200, 300);
  leon.resize(200, 300);
  sparda.resize(200, 300);
  zeref.resize(200, 300);
  
  background(229, 19, 36);  
}

void draw() {
  
  image(ichigo, 50, 50);  // Top left
  image(riku, 300, 50);   // Top center
  image(leon, 550, 50);   // Top right
  image(sparda, 175, 350); // Bottom left-center
  image(zeref, 425, 350); // Bottom right-center
  
  fill(0, 217, 234); 
  textSize(32);
  text("Collage of Characters", 250, 30);
}
