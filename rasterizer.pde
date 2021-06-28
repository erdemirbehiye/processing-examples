PImage img;
import com.hamoid.*;
VideoExport videoExport;
final String rasterizer = getClass().getName();
void setup(){
  size(800,800);
  img=loadImage("laocoon.jpg");
  img.resize(800,800);
}
int i=0;

void draw(){
  background(255);
  fill(0);
  noStroke();
  float tiles=i/5;
  float tileSize=width/tiles;
  translate(tileSize/2,tileSize/2);

  for(int x=0;x<tiles;x++){
    for(int y=0;y<tiles;y++){
      color c = img.get(int(x*tileSize),int(y*tileSize));
      float size=map(brightness(c),0,255,tileSize,0);
      rect(x*tileSize,y*tileSize,size,size);
    }
  }
  i++;
  if (i==900){
  exit();
}
rec();
}

void rec() {
  if (frameCount == 1) {
    videoExport = new VideoExport(this, "./"+rasterizer+".mp4");
    videoExport.setFrameRate(60);  
    videoExport.startMovie();
  }
  videoExport.saveFrame();
}
