PImage img, newImg;
float theta = 57*PI/180;
void setup() {
  size(500, 500);
  img = loadImage("img.jpg");
  newImg = createImage(int(2.5*img.width), int(2.5*img.height), RGB);
  noLoop();
}

void draw() {
  newImg.loadPixels();
  
  for (int y = 0; y < img.height; y++) {
    for (int x = 0; x < img.width; x++) {
      int loc = x + y*img.width;
      
      int newX = int(x*cos(theta)-y*sin(theta));
      int newY = int(x*sin(theta)+y*cos(theta));
      int newLoc = newX+newImg.width/2 + newY*newImg.width + newImg.height*325;
      
      
      newImg.pixels[newLoc] = img.pixels[loc];  
    }
  }
  newImg.updatePixels();
  newImg.save("57Graus.png");
}
