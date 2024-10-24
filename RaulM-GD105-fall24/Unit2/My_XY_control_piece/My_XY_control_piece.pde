 float x;
 float y;


void setup() {
 size(800, 600);
 background(234, 0, 4);
 x = width / 2;
 y = height / 2;
}
void draw () {
 fill(128, 0, 128);
 noStroke();
 ellipse(x, y, 50, 50);
 
 x = x + 1;
 y = y + 1;
 
 if (x > width) {
   x =0;
 }
 if(y > height) {
   y = 0;
 }
}
