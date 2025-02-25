void gameover() {

  fill(white);
  tactileR(300, 500, 550, 650);
  rect(400, 600, 200, 100);
  fill(lime);
  textSize(50);
  text("HOME", 400, 600);
}
void gameoverClicks() {
  if ( mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
    mode = INTRO;
  }
}
