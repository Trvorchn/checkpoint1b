
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

// shades ==================================
float moonX;
boolean night;


void setup() {


  size(800, 800);

  moonX = 150;
}

void draw() {
  background(black);

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


  if (night == true) {
    //moon
    circle(moonX, 100, 150);

    //moon animation
    moonX = moonX + 0.5;
    if (moonX > width + 50) {
      moonX = -100;
    }
  } else if (night == false){
  background(skyblue);
  
  }
}
