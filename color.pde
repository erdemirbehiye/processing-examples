int []a={0,1};
int HEIGHT=800;
PImage img,img1; 
void setup(){

size(800,800);
frameRate(20);
}
int i=0;
void draw(){
background(255,255,255);
noStroke();
fill(random(255)/4,random(255)/4,random(255)/4);
rect(0,0,HEIGHT/2,HEIGHT/2);
fill(255/4+random(255)/4,255/4+random(255)/4,255/4+random(255)/4);
rect(HEIGHT/2,0,HEIGHT/2,HEIGHT/2);
fill(2*255/4+random(255)/4,2*255/4+random(255)/4,2*255/4+random(255)/4);
rect(0,HEIGHT/2,HEIGHT/2,HEIGHT/2);
fill(3*255/4+random(255)/4,3*255/4+random(255)/4,3*255/4+random(255)/4);
rect(HEIGHT/2,HEIGHT/2,HEIGHT/2,HEIGHT/2);

}
