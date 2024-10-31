int hours, minutes, seconds;

void setup(){
  size(500, 500);
  hours =  hour(); // the current hour
  minutes = minute(); //the current minute
  seconds = second(); // the current second
}

void draw(){
  background(#4A11EA); // purple background
  
  fill(#E8E110); // yellow circle for the time to be displayed on
  stroke(#0CDBF0); //Turquoise shape
  ellipse(224, 184, 400, 220);
  
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
textAlign(CENTER, RIGHT);
text(nf(hours, 2) + ":" + nf(minutes, 2) + ":" + nf(seconds, 2), width/2, height/2.5);
}
