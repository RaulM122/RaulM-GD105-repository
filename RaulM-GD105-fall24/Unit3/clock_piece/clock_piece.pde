int hours, minutes, seconds;

void setup(){
  size(400, 300);
  hours = hour();  // the current hour
  minutes = minute(); // the current minute
  seconds = second(); // the current second
}

void draw(){
  background(#00F099); // cyan background
  
  fill(#360AED);// dark blue box for the time to be displayed over
  noStroke();
  rect(50, 50, 200, 100);
  
  if(second()!= seconds){ // this will update the seconds in every frame
  seconds = second(); // this will update the seconds
}

if(seconds == 0 && hour() != hours) {
  minutes = minute();  // this code will update the minutes
}

if(minutes == 0 && hour() != hours){  // this piece of code will update the hours when the minutes reset to 0
  hours = hour(); // this updates the hours
}

// the following code will show the time as text
fill(#F00000); // red text
textSize(50);
textAlign(CENTER, CENTER);
text(nf(hours, 2) + ":" + nf(minutes, 2) + ":" + nf(seconds, 2), width/3, height/3);
}
