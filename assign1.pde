/* please implement your assign1 code in this file. */
PImage bgOne;
PImage bgTwo;
PImage ene;
PImage FT;
PImage hp;   
PImage Ecan;

int bgOneX = 0;
int bgTwoX = -640;
int bgSetup =1280;
int bgOneXCalon = 1280;
int bgTwoXCalon = 1280;

int eneX = 0;

int hpRandom = floor(random(50,200));
int EcanGenerateX = floor(random(0,519));
int EcanGenerateY = floor(random(52,449));

void setup () {
  size(640,480) ;  // must use this size.
  // my code
     bgOne = loadImage("img//bg1.png");
     bgTwo = loadImage("img//bg2.png");
     
     ene = loadImage("img//enemy.png");
     FT = loadImage("img//fighter.png");
     hp = loadImage("img//hp.png");
     Ecan = loadImage("img//treasure.png");
}

void draw() {
  // my code
  background(0);
  
  image(bgOne, bgOneX, 0);
  image(bgTwo, bgTwoX, 0);
  bgTwoX = bgSetup - 640;
  bgOneX = bgSetup - 1280;
  bgSetup += 3.5f;
  bgTwoXCalon = bgTwoX %= 1280;
  bgOneXCalon = bgOneX %= 1280;
  bgOneX = bgOneXCalon - 640;
  bgTwoX = bgTwoXCalon - 640;
  
   
  
  
  image(FT, 560, 240);
  
  fill(255,0,0);
  rect(25, 20, hpRandom, 31);
  image(hp, 20, 20);
  
  image(Ecan, EcanGenerateX, EcanGenerateY);
  
  image(ene, eneX, 320);
  eneX += 2;
  eneX %= 640;
}
