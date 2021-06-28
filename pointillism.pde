PImage img;
int smallPoint, largePoint;
import com.hamoid.*;
VideoExport videoExport;
final String pointi = getClass().getName();

void setup() {
  size(448,530);
  img = loadImage("annie.png");
  smallPoint = 1;
  largePoint = 14;
  frameRate(1200);
  img.resize(448,530);
  imageMode(CENTER);
  noStroke();
  background(200);
}
int i=0;

void draw() { 
  int a=int(random(800));
  float pointillize = map(a, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 256);
  ellipse(x, y, pointillize, pointillize);
  i++;
  if (i==30000){
  exit();
}
rec();
}

void rec() {
  if (frameCount == 1) {
    videoExport = new VideoExport(this, "./"+pointi+".mp4");
    videoExport.setFrameRate(60);  
    videoExport.startMovie();
  }
  videoExport.saveFrame();
}
