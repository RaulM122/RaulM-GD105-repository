PFont font;

void setup() {
  size(800, 800);
  background(100, 13, 252);
  
  font = createFont("AKTelivigala-Regular-48.vlw", 32, true);
  textFont(font);
  fill(13, 218, 252);
  textAlign(CENTER, CENTER);
}

void draw() {
  textFont(font);
  text("Hunter Natsu Dragneel", width/2, height/2);
}
