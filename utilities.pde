void tactileR(float xa, float xb, float ya, float yb) {
  if (mouseX>xa && mouseX<xb && mouseY >ya && mouseY < yb) {
    stroke (white);
  } else {
    stroke(red);
  }
}
