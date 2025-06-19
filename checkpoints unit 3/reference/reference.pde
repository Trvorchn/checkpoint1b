float rotx, roty;
import java.awt.Robot;
Robot rbt;

void setup() {
  size(displayWidth, displayHeight, P3D);
}

void draw() {
  pushMatrix();
  translate(width/2, height/2, 0);
  rotateX(rotx);
  rotateY(roty);

  background(255);
  strokeWeight(3);
  sphere(200);

  popMatrix();
  //cube(width/2,height/2,0,#FF2001,200);
  //cube(0,0,0,#0000FF,200);
}

void cube(float x, float y, float z, color c, float size) {
  pushMatrix();
  translate(x, y, z);
  noFill();
  rotateX(rotx);
  rotateY(roty);
  //rotateZ();
  fill(c);
  stroke(0);
  strokeWeight(3);
  box(size);
  popMatrix();
}

void mouseDragged() {
  rotx = rotx + (pmouseY - mouseY)*0.01;
  roty = roty + (pmouseX - mouseX)*-0.01;
}
