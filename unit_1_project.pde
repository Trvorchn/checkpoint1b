


void setup() {
  size(800, 800);
  mode = INTRO ;


  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  noStroke();




  // loop for gifs
  numberOfFrames = 121;
  gif = new PImage[numberOfFrames];

  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("img ("+ (i+1) +").gif");
    i++;
  }


  //paddle
  px = width/2;
  py = height-50;
  pd = 100;


  //movement intialization
  vx = 0;
  vy = 5;
}







void draw() {




  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode ==  GAMEOVER) {
    gameover();
  } else if (mode == TRANSITION) {
    transition();
    //} else if (mode == GAMEMODE) {
    //  gamemode();
  } else {
    println("Mode error: " + mode);
  }
}
