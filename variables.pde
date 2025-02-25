//mode framework
int mode;
final int INTRO   = 1;
final int GAME    = 2;
final int PAUSE   = 3;
final int GAMEOVER = 4;
final int TRANSITION = 5;
final int GAMEMODE = 6;


// color palette 
color lime = #D1F2A5;
color red = #F56991;
color pink = #EED3D9;
color blue = #008DDA;
color turq = #97E7E1;
color gold = #FFC94A;
color yellow = #EFFAB4;
color tan = #D2B48C;
color green = #D1F2B9;


/// shades 
color white = #FFFFFF;
color black = #000000;
color grey  = #B5C0D0;


//transitions
int count;
int TRANSITIONMODE;


// fonts
PFont jerseyF;


//game mode player amount
boolean AI;


//GIF
PImage[] gif;
int numberOfFrames;
int f;

//entity variables
float px, py, pd; // paddles
float playerX, playerY;
float playerSize = 200;
float playerSpeed = 5;

//keyboard variables 
boolean akey, dkey;


// target variables
float vx, vy; //target velocity

//money variables
float moneyX;
float moneyY;
float moneySpeed = 12;
float moneySize = 30;
// Score
int score = 0;
