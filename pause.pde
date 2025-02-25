void pause () {
  fill(red);
  textSize(150);
  text("PAUSE", 400, 400);

  tactileR(400-275/2, 400+275/2, 500-75/2, 500+75/2);
  textSize(50);
  fill(red);
  rect(400, 500, 275, 75);
  fill(white);
  text("HOME", 400, 500);
}



void pauseClicks () {
  if (mouseX > 300 && mouseX < 500 && mouseY > 25 && mouseY < 75 ) {
    mode = GAME;
  }
  if (mouseX > 400-275/2 && mouseX < 400+275/2 && mouseY > 500-75/2 && mouseY < 500+75/2 ) {
    mode = INTRO;
  }
}
