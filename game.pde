void game() {
  background(grey);
  paddleMech();
  money();




  // Check for catching money
  if (moneyY > playerY - playerSize / 2 && moneyX > playerX - playerSize / 2 &&  moneyX < playerX + playerSize / 2) {
    score++;
    spawnMoney();
  }
  if (moneyY > height) {
    spawnMoney();
  }




}

void gameClicks() {
  if (mouseX > 300 && mouseX < 400 && mouseY > 25 && mouseY < 75 ) {
    mode = PAUSE;
  }
}
void paddleMech() {


  paddle();
  //paddle movement
  if (akey == true) {
    px = px - playerSpeed;
  }
  if (dkey == true) {
    px = px + playerSpeed;
  }
}

void paddle() {
character();

}

void character(){
//drawing person
fill(tan);
circle(px, py, pd);
circle(px, py-50, 50);
//suit
fill(white);
rect(px, py + 30, 70, 40);

fill(black);
triangle(px, py+20, px-30, py+75, px-55, py);
triangle(px, py+20, px+30, py+75, px+55, py);

fill(red);
triangle(px, py+20, px+10, py+10, px-10, py+10);
triangle(px, py+20, px+10, py+50, px-10, py+50);
//eyes
fill(green);
circle(px-20, py-20, 10);
circle(px+20, py-20, 10);
fill(black);
rect(px-20, py-17, 15, 3);
rect(px+20, py-17, 15, 3);
}

void money() {
  fill(green);
  ellipse(moneyX, moneyY, moneySize, moneySize);

  moneyY += moneySpeed;

  
 
}



void spawnMoney() {
  moneyX = random(moneySize / 2, width - moneySize / 2);
  moneyY = 0;
}
