void setup() {  // setup() runs once
  size(600, 600);
  background(0);
  stroke(255);
  frameRate(60);
  noLoop();
}

void draw(){
  fill(0,230,100,100);
  translate(300,300);
  circle(0, 0, 100);
  fill(0,230,100,70);
  translate(100,0);
  scale(0.5);
  circle(0, 0, 100);
  fill(0,230,100,50);
  translate(100,0);
  scale(0.3);
  circle(0, 0, 100);
  
  save("exercicio_01.png");
}
