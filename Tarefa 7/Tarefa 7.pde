void setup() {
  size(600, 600, P3D);
  frameRate(60);
}

void draw(){
  background(0, 0, 0);
  //Luz
  lights();
  ambientLight(50, 50, 50);  //Luz ambiente
  spotLight(51, 102, 126, 200, 200, 1600, 0, 0, -1, PI/16, 600);
  
  camera(mouseX, mouseY, (height/2) / tan(PI/6), width/2, height/2, 0, 0, 1, 0);

  translate(232, 192, 0); 
  rotateY(0.5);
  fill(255, 255, 0);
  box(160, 80, 200);
  
  translate(232, 192, 0); 
  rotateY(0.5);
  fill(159, 255, 250);
  box(160);
  
  noStroke();
  translate(232, 192, 0);
  fill(193, 57, 250);
  sphere(112);
}
