PVector player;
float moveSpeed = 1;
float sprintSpeed = 10;

void setup() {
  size(800, 800);
  player = new PVector(width/2, height/2);
  fill(#F9FA3F);
  strokeWeight(6);
  background(207, 9, 234);
}

void draw() {
  circle(player.x, player.y, 50);
}

void keyPressed () {
  if(key == 'a' || key == 'A'){
    player.x -= moveSpeed;
  }
  if(key == 'd' || key == 'D'){
    player.x += moveSpeed;
  }
  if(key == 'w' || key == 'W'){
    player.y -= moveSpeed;
  }
  if(key == 's' || key == 'S'){
    player.y += moveSpeed;
  }
}
