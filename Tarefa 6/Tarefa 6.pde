PFont f;

void setup() {
  size(600, 600, P3D);
  frameRate(60);
  f = createFont("Arial", 16, true);
}

void draw(){
  //Luz
  lights();
  ambientLight(50, 50, 50);  //Luz ambiente
  
  if(mousePressed && (mouseButton == LEFT)){  //Liga a luz direcional
    fill(255, 255, 255);
    textFont(f, 20);
    text("LUZ DIRECIONAL", 200, 120, 1);
    directionalLight(128, 128, 128, mouseX, mouseY, 0);
  }else if (mousePressed && (mouseButton == RIGHT)) {  //Liga a luz de ponto
    textFont(f, 20);
    text("LUZ DE PONTO (POINTLIGHT)", 200, 120, 1);
    pointLight(51, 102, 126, mouseX, mouseY, 0);
  }else if (mousePressed && (mouseButton == CENTER)){  //Liga a luz dentro do predio
    textFont(f, 20);
    text("LUZ DENTRO DO PREDIO (SPOTLIGHT)", 200, 120, 1);
    spotLight(51, 102, 126, 200, 200, 1600, 0, 0, -1, PI/16, 600);
  }

  //Ceu
  fill(0, 50, 255);
  stroke(0, 50, 255);
  rect(0, 0, 600, 600);
  
  //Asfalto
  fill(70, 70, 70);
  stroke(70, 70, 70);
  quad(0,500,600,500,600,600,0,600);
  
  //Grama
  fill(0, 255, 70);
  noStroke();
  quad(0,450,600,450,600,500,0,500);
  
  //Arvore
  fill(80, 37, 1);
  stroke(80, 37, 1);
  quad(450,420,460,420,460,490,450,490);
  fill(80, 200, 1);
  stroke(80, 149, 1);
  pushMatrix();
  translate(438, 380, 60);
  sphere(30);
  popMatrix();  
  
  //Casa
  fill(255, 237, 73);
  stroke(255, 196, 73);
  quad(200,200,400,200,400,500,200,500);
  
  //Telhado
  fill(252, 96, 49);
  stroke(194, 96, 49);
  triangle(300, 150, 190, 200, 410, 200);
  
  //Porta
  fill(150, 150, 150);
  stroke(114, 114, 114);
  quad(320, 440, 350, 440, 350, 500, 320, 500);
  quad(350, 440, 380, 440, 380, 500, 350, 500);
  
  //Janelas
  for(int i=1; i<4; i++){
    janela(i*60,0,1);
    janela(i*60,60,0);
    janela(i*60,120,1);
  }
  janela(60,180,1);
  
  save("exercicio.png");
}

void janela(int x, int y, int c){
  if(c == 0){
    fill(0, 0, 00);
    stroke(0, 0, 0);
  }
  else{
    fill(150, 150, 150);
    stroke(114, 114, 114);
  }
  quad(160+x, 220+y, 180+x, 220+y, 180+x, 260+y, 160+x, 260+y);
  quad(180+x, 220+y, 200+x, 220+y, 200+x, 260+y, 180+x, 260+y);
}
