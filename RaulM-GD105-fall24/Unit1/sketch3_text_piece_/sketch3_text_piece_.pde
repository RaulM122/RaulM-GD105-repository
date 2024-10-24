PFont Akoshi;
void setup() {
  size(800, 600); 
  textSize(50);
  Akoshi = loadFont("ArimaKoshi-ExtraBold-48.vlw");
  textFont(Akoshi);
  textAlign(CENTER);
}
void draw() {
  background(#00DEF0); // turquoise background
  fill(#F51B22); // red text
  text("Zex Kazama", width/2, height/2);
}
