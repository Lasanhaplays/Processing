PImage foto;

void setup() {  // setup() runs once
  size(984, 655);
  background(0);
  stroke(255);
  frameRate(60);
  noLoop();
  foto = loadImage("img.jpg");
}

void draw(){
  image(foto, 0, 0);
  save("exercicio_01.png");
}
