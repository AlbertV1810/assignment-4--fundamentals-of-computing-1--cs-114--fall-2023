void drawBackground(){
  background(255,255,255);
  line(width/3, 0, width/3, height);
  line(width/3*2, 0, width/3*2, height);
  line(0, height/3, width, height/3);
  line(0, height/3*2, width, height/3*2);
}

public void drawCircle(float circleX, float circleY){
  strokeWeight(2);
  stroke(0, 125, 125);
  circle(circleX, circleY, width/3); 
  stroke(0,0,0);
}

public void drawCross(float crossX1, float crossY1, float crossX2, float crossY2, float crossX3, float crossY3, float crossX4, float crossY4){
  strokeWeight(2);
  stroke(175,0,0);
  line(crossX1,crossY1,crossX2,crossY2);
  line(crossX3,crossY3,crossX4,crossY4);
  stroke(0,0,0);
}
