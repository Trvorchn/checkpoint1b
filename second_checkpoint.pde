
// color palette ===========================
color red = #F56991;
color pink = #EED3D9;
color blue = #008DDA;
color turq = #97E7E1;
color gold = #FFC94A;
color yellow = #EFFAB4;
color navy = #001d3d;
color green = #097969;
color skyblue = #87CEEB;

// color palette ===========================

// shades ==================================
color white = #FFFFFF;
color black = #000000;
color lightgrey  = #B5C0D0;
color darkGrey  = #222222;
color grey  = #3b3b3b;
color moongrey = #94908D;

// shades ==================================
float moonX;
float sunX;

boolean phase;

void setup() {




  phase = true;


  size(800, 800);

  moonX = -50;
  sunX = -900;
}

void draw() {

  moonX = moonX + 2;
  sunX = sunX + 2;

  //night and day
  if (moonX < 900) {
    phase = false;
  } else if (moonX > 900) {
    phase = true;
  }

  if (phase == true) {
    background(skyblue);
  } else if (phase == false) {
    background(black);
  }


  //animation

  if (phase == false) {

    //moon
    fill(moongrey);
    circle(moonX, 100, 150);
    fill(moongrey, 25);
    circle(moonX, 100, 200);
  } else if (phase == true) {

    fill(yellow);
    circle (sunX, 100, 150);
    fill(yellow, 50);
    circle(sunX, 100, 200);
  }

  if (moonX > 1800) {
    moonX = -100;
  }

  if (sunX > 1800) {
    sunX = -100;
  }



  //ground
  noStroke();
  fill(green);
  rect(0, 300, 800, 800);

  //road
  noStroke();
  fill(grey);
  rect(0, 600, 800, 600);

  stroke(yellow);
  strokeWeight(10);
  line(100, 700, 200, 700);
  line(300, 700, 400, 700);
  line(600, 700, 500, 700);
  line(700, 700, 800, 700);

  //house-body
  stroke(lightgrey);
  fill(lightgrey);
  square(125, 345, 250);

  //window
  fill(yellow);
  square(250, 400, 125);

  //door
  noStroke();
  fill(grey);
  rect(125, 425, 100, 175);
  fill(yellow);
  circle(200, 515, 10);

  //roof
  noStroke();
  fill(darkGrey);
  triangle(50, 375, 250, 375, 250, 250);
  fill(grey);
  triangle(250, 375, 250, 250, 450, 375);

  //light
  fill(yellow, 30);
  circle(600, 260, 100);
  fill(yellow, 76);
  circle(600, 260, 50);
  fill(yellow, 80);
  circle(600, 260, 40);
  fill(yellow, 90);
  circle(600, 260, 30);
  fill(yellow, 95);
  circle(600, 260, 20);
  fill(yellow, 100);
  circle(600, 260, 10);

  //lightpole
  fill(lightgrey);
  rect(700, 200, 10, 400);
  rect(600, 200, 100, 10);
  triangle(600, 200, 575, 250, 625, 250);

  println(sunX);
}
