PImage img;

void setup() {
  size(1080, 1080);
  img = loadImage("img.jpg");
}

void draw() {
  loadPixels(); 

  img.loadPixels(); 
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      int loc = x + y*width;
      
      float r = 255-red(img.pixels[loc]);
      float g = 255-green(img.pixels[loc]);
      float b = 255-blue(img.pixels[loc]);
      
      pixels[loc] =  color(r,g,b);          
    }
  }
  updatePixels();
  save("exercicio.png");
}
