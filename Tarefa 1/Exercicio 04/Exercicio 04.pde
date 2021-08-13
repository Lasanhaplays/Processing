void setup() {  // setup() runs once
  size(600, 600);
  background(0);
  stroke(255);
  frameRate(60);
}

void draw(){
  triangle(500, 500, 450, 400, 550 , 400); //Triangulo
  fill(152,202,0);
  stroke(204, 150, 100);
  quad(50, 50, 150, 50, 150, 150, 50, 150); //Quadrado
  fill(200,0,200);
  stroke(0, 0, 255);
  
  //Ciculo centralizado
  translate(300,300);
  circle(0, 0, 100);
  fill(0,230,100);
  stroke(255, 0, 0);
  save("exercicio_01.png");
}
