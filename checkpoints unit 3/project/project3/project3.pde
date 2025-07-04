import java.awt.Robot;

boolean wkey, akey, skey, dkey;
float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ;
float leftRightHeadAngle, upDownHeadAngle;

Robot rbt;
color black = #000000;//sandstone
color white = #FFFFFF;
color dullBlue = #7092BE;//sandstone
color grey = #C3C3C3;//sandstone
color lightBlack = #362C33;
color green = #115B29;// leaves



boolean skipFrame;

int gridSize;
PImage map;
PImage bgImage;

ArrayList<Cloud> clouds;
PImage cloudTexture;



PImage stone;
PImage dirtSide, dirtTop, dirtBottom;
PImage diamond;
PImage gravel;
PImage oakSide, oakTop;
PImage coal, quartz, sandStone,leaf;

ArrayList <GameObject> objects;




float skyTimer = 0;
color dayColor = color(166, 200, 255);
color nightColor = color(10, 10, 35);


void setup() {
  fullScreen(P3D);
  textureMode(NORMAL);

  cloudTexture = loadImage("cloud.png");
  clouds = new ArrayList<Cloud>();
  for (int i = 0; i < 20; i++) {
    clouds.add(new Cloud());
  }

  bgImage = loadImage("palais.jpg");

  objects = new ArrayList<GameObject>();

  wkey = akey = skey = dkey = false;

  eyeX = width/2;
  eyeY = 9 * height / 10.75;
  eyeZ = 0;

  focusX = width/2;
  focusY = height/2;
  focusZ = 10;

  tiltX = 0;
  tiltY = 1;
  tiltZ = 0;

  diamond = loadImage("Diamond.png");
  dirtSide = loadImage("dirtSide.png");
  dirtTop = loadImage("dirtTop.png");
  dirtBottom = loadImage("dirtBottom.png");
  oakSide = loadImage("oakSide.png");
  oakTop = loadImage("oakTop.png");
  gravel = loadImage("gravel.png");
  stone = loadImage("stone.png");
  quartz = loadImage("quartz.png");
  coal = loadImage("coal.png");
  sandStone = loadImage("sandStone.png");
  leaf = loadImage("leaf.png");


  leftRightHeadAngle = radians(360);
  noCursor();

  try {
    rbt = new Robot();
  }
  catch (Exception e) {
    e.printStackTrace();
  }

  map = loadImage("map.png");
  gridSize = 200;
  skipFrame = false;
}

void draw() {


  background(white);

  drawSkyBackground();
  
  
  
  
  
  for (Cloud c : clouds) {
    c.update();
    c.show();
  }

  hint(ENABLE_DEPTH_TEST);
  lights();

  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);

  pointLight(255, 255, 255, eyeX, eyeY, eyeZ);

  pushMatrix();
  translate(width/10, height-1500, -4000);
  scale(7);
  imageMode(CENTER);
  image(bgImage, 0, 0);
  popMatrix();



  drawFloor(-2000, 2000, -3500, 2000, height, gridSize);
  drawFocalPoint();
  drawMap();
  int i = 0;
  while (i < objects.size()) {
    GameObject obj = objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives == 0) {
      objects.remove(i);
    } else {
      i++;
    }
  }

  controlCamera();
}
