void intro() {
  background(white);

  
  
  
   // gif

  image(gif[f], 0, 0, width, height);
  f= f + 1;
  if (f == numberOfFrames) f = 0;

  
  
  
  
  
  
 
  fill(255);
  strokeWeight(5);




  //x = width/2;
  //y = height/2;




  //start button
  tactileR(300, 500, 450, 550);
  rect(width/2, height/2+100, 200, 100);




  //start select

  textSize(50);
  fill(black);
  text("start", width/2, height/2+100);
}



void introClicks () {
  if (mouseX > width/2-100 && mouseX < width/2+100 && mouseY > height/2+50 && mouseY < height/2+150) {
    count = 0;

    mode = TRANSITION;
    TRANSITIONMODE = GAME;
  }
}
