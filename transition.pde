void transition() {
  if (count > 90) {
    mode = TRANSITIONMODE;
  } else {
    count = count + 1;
    noStroke();
    fill(black, 15);
    rect(400, 400, 800, 800);
    fill(white);
    text("CATCH THE MONEY", 400, 400);
  }
  if (TRANSITIONMODE == GAMEMODE) {
    fill(red);
    textSize(200);
    text("PICK", 400, 400);
  } else if (TRANSITIONMODE==GAMEOVER) {
    fill(red);
    textSize(200);
    text("FINISH", 400, 400); // who wins??????????????????
    textSize(50);
   
  }
}
