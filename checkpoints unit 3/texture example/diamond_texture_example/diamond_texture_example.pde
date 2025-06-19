float rotx, roty;
PImage diamond;
PImage DirtSide, DirtTop, DirtBottom;
void setup() {
  size(800, 800, P3D);
diamond = loadImage ("Diamond.png");
DirtSide = loadImage ("DirtSide.png");
DirtTop = loadImage ("DirtTop.png");
DirtBottom = loadImage ("DirtBottom.png");
textureMode(NORMAL);
}

void draw(){
  background(255);
pushMatrix();
translate(width/2 - 300,height/2 -300,0);
scale(100);
rotateX(rotx);
rotateY(roty);

noStroke();

beginShape(QUADS);
texture(diamond);

//top  x,y,z,tx,ty
vertex(0,0,0,0,0);
vertex(1,0,0,1,0);
vertex(1,0,1,1,1);
vertex(0,0,1,0,1);

//bottom
vertex(0,1,0,0,0);
vertex(1,1,0,1,0);
vertex(1,1,1,1,1);
vertex(0,1,1,0,1);

//front
vertex(0,0,1,1,0);
vertex(0,1,1,1,1);
vertex(1,1,1,0,1);
vertex(1,0,1,0,0);

//right side
vertex(1,0,1,0,0);
vertex(1,0,0,1,0);
vertex(1,1,0,1,1);
vertex(1,1,1,0,1);
//left side
vertex(0,0,0,0,0);
vertex(0,0,1,1,0);
vertex(0,1,1,1,1);
vertex(0,1,0,0,1);
// back side
vertex(1,0,0,0,0);
vertex(0,0,0,1,0);
vertex(0,1,0,1,1);
vertex(1,1,0,0,1);

endShape();


popMatrix();


pushMatrix();
translate(width/2 ,height/2 );
scale(200);
rotateX(rotx);
rotateY(roty);

noStroke();

beginShape(QUADS);
texture(DirtTop);

//top  x,y,z,tx,ty
vertex(0,0,0,0,0);
vertex(1,0,0,1,0);
vertex(1,0,1,1,1);
vertex(0,0,1,0,1);
endShape();

beginShape(QUADS);
texture(DirtBottom);
//bottom
vertex(0,1,0,0,0);
vertex(1,1,0,1,0);
vertex(1,1,1,1,1);
vertex(0,1,1,0,1);
endShape();
beginShape(QUADS);
texture(DirtSide);
//front
vertex(0,0,1,1,0);
vertex(0,1,1,1,1);
vertex(1,1,1,0,1);
vertex(1,0,1,0,0);

//right side
vertex(1,0,1,0,0);
vertex(1,0,0,1,0);
vertex(1,1,0,1,1);
vertex(1,1,1,0,1);
//left side
vertex(0,0,0,0,0);
vertex(0,0,1,1,0);
vertex(0,1,1,1,1);
vertex(0,1,0,0,1);
// back side
vertex(1,0,0,0,0);
vertex(0,0,0,1,0);
vertex(0,1,0,1,1);
vertex(1,1,0,0,1);

endShape();


popMatrix();







}



void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
