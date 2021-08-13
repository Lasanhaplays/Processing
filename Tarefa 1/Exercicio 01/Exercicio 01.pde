void setup() {  // setup() runs once
  size(600, 600);
  background(0);
  stroke(255);
  frameRate(60);
}

void draw(){
  triangle(500, 500, 450, 400, 550 , 400); //Triangulo
  quad(50, 50, 150, 50, 150, 150, 50, 150); //Quadrado
  
  //Ciculo centralizado
  translate(300,300);
  circle(0, 0, 100);
  save("exercicio_01.png");
}r
