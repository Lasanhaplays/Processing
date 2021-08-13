void setup() {
  size(600, 600);
  frameRate(60);
}

void draw(){
  //Ceu
  //O ceu fica de dia ou de noite de acordo com o movimento do mouse
  fill(0, (0.25*mouseX), ((0.25*mouseX)+100));
  stroke(0, (0.25*mouseX), ((0.25*mouseX)+100));
  rect(0, 0, 600, 600);
  
  //Asfalto
  fill(70, 70, 70);
  stroke(70, 70, 70);
  quad(0,500,600,500,600,600,0,600);
  
  //Grama
  fill(0, 255, 70);
  stroke(0, 255, 70);
  quad(0,450,600,450,600,500,0,500);
  
  //Arvore
  fill(80, 37, 1);
  stroke(80, 37, 1);
  quad(450,420,460,420,460,490,450,490);
  fill(80, 200, 1);
  stroke(80, 149, 1);
  if(mousePressed){
    fill(250, 200, 1);
    stroke(230, 160, 1);
    save("exercicioArvoreAmarela.png");
  }
  ellipse(455, 380, 60, 100);
  
  
  //Casa
  fill(255, 237, 73);
  stroke(255, 196, 73);
  if(mouseX>200 && mouseX<400 && mouseY>200 && mouseY<500){
    fill(170, 160, 255);
    stroke(170, 160, 255);
  }
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
  if(mousePressed){
    save("exercicioArvoreAmarela.png");
  }
  if(mouseX>200 && mouseX<400 && mouseY>200 && mouseY<500){
    save("exercicioCasaRoxa.png");
  }
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
