public void setup(){
  size(400,400);
  background(0, 59, 111);
  fill(224, 191, 42);
  stroke(250);
}

public void draw(){
  myFractal(200,200,400);
}

public void myFractal(int x, int y, int rad){
  ellipse(x,y,rad,rad);
  if(rad >= 32){
    myFractal(x-rad/4-rad/32-rad/64+rad/256, y, rad/4+rad/8+rad/32+rad/256);
    myFractal(x+rad/4+rad/32+rad/64-rad/256, y, rad/4+rad/8+rad/32+rad/256);
    myFractal(x, y-rad/4-rad/32-rad/64+rad/256, rad/4+rad/8+rad/32+rad/256);
    myFractal(x, y+rad/4+rad/32+rad/64-rad/256, rad/4+rad/8+rad/32+rad/256);
    myFractal(x, y, rad/8+rad/16-rad/64);
    myFractal(x-rad/4-rad/32-rad/64+rad/256, y-rad/4-rad/32-rad/64+rad/256, rad/8+rad/16-rad/64);
    myFractal(x+rad/4+rad/32+rad/64-rad/256, y+rad/4+rad/32+rad/64-rad/256, rad/8+rad/16-rad/64);
    myFractal(x-rad/4-rad/32-rad/64+rad/256, y+rad/4+rad/32+rad/64-rad/256, rad/8+rad/16-rad/64);
    myFractal(x+rad/4+rad/32+rad/64-rad/256, y-rad/4-rad/32-rad/64+rad/256, rad/8+rad/16-rad/64);

  }
}
