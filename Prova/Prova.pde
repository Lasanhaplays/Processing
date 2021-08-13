//Declaracoes
PFont f;
//Cores normais
color branco = color(255, 255, 255);
color verde = color(0, 150, 0);
color amarelo = color(255, 255, 0);
color azul = color(0, 0, 100);
//Cores invertidas
color inv_verde = color(255, 105, 255);
color inv_amarelo = color(0, 0, 255);
color inv_azul = color(255, 255, 155);

void setup() {
  size(700, 500);
  f = createFont("Arial", 16, true);
}

void draw(){
  Bandeira Brasil = new Bandeira();
  Brasil.Display(0);
  
  //Salvamento da primeira opcao
  save("BandeiraOriginal.png");
  
  //Se o botao do mouse clicado for o da esquerda, ira inverter as cores e salvar
  if (mousePressed && (mouseButton == LEFT)) {
    Brasil.Display(1);
    save("BandeiraInvertida.png");
  }
  
  //Se o botao do mouse clicado for o da direita, ira deslicar a bandeira para a direita e salvar
  if (mousePressed && (mouseButton == RIGHT)) {
    Brasil.Display(2);
    save("BandeiraDeslocada.png");
  }
  
  //Se a tecla T ou t for pressionada, executar a opcao 4
  if(keyPressed && (key == 'T' || key == 't')){
    Brasil.Display(3);
    save("BandeiraTransparencia.png");
  }
  
}

//Classe Bandeira
class Bandeira{
  Bandeira(){   
  }
  //Fundo
  void Fundo(color cor){
    strokeWeight(4);
    stroke(branco);
    fill(cor);
    rect(0, 0, 700, 500);
  }
  //Losango
  void Losango(color cor){
    noStroke();
    fill(cor);
    quad(87.5, 250, 350, 65.5, 612.5, 250, 350, 437.5);
  }
  //Disco
  void Disco(color cor){
    fill(cor);
    circle(350, 250, 233.33);
  }
  //Disco com degrade
  void DiscoDegrade(color cor){
    fill(cor,64);
    circle(350, 250, 233.33);
    fill(cor,127);
    circle(350, 250, 180);
    fill(cor,255);
    circle(350, 250, 130);
  }
  //Texto
  void Texto(color cor){
    fill(cor);
    textFont(f, 20);
    text("ORDEM E PROGRESSO", 236, 250);
  }
  //Texto vertical
  void TextoVertical(color cor){
    fill(cor);
    textFont(f, 20);
    text("ORDEM", 310, 185);
    text("E", 340, 255);
    text("PROGRESSO", 285, 330);
  }
  
  void Display(int modo){
    //Modo de cor | 0 == normal | 1 == invertido | 2 == deslocamento | 3 == opcao 4 |
    if(modo == 0){
      Fundo(verde);
      Losango(amarelo);
      Disco(azul);
      Texto(amarelo);
    }
    else if(modo == 1){
      Fundo(inv_verde);
      Losango(inv_amarelo);
      Disco(inv_azul);
      Texto(inv_amarelo);
    }
    else if(modo == 2){
      Fundo(verde);
      translate(87.5, 0);
      Losango(amarelo);
      Disco(azul);
      Texto(amarelo);
    }
    else if(modo == 3){
      Fundo(verde);
      Losango(amarelo);
      DiscoDegrade(azul);
      TextoVertical(amarelo);
    }
  }
}
