ArrayList land=new ArrayList();
int monstartime=1;
int doublemon=0;
int monsizefactor=.1+1/1000;
PImage one; //they'll find me out
PImage two;//star
PImage three;//red nobody
PImage four; //im average
PImage five; //the poo
PImage six; // imposter
PImage seven; //eyes
PImage sevenBlink;
PImage eight;
PImage threeBlink;
PImage oneBlink;
PImage sixBlink;
PImage eightBlink;
PImage fiveBlink;
PImage fourBlink;
PFont font;
PImage[] monsters = new monsters[14];
int animationChange = 0;
boolean increase=true;
boolean intro=true;
boolean scoreIncrease = true;
NegativeWords words = new NegativeWords();
PImage tree;
PImage b;
PImage one;
PImage s1;
PImage s2;
PImage s3;
PImage s4;
PImage s5;
PImage s5;
PImage s6;
PImage s22;
PImage s23;
PImage s24;
PImage s25;
PImage s25;
PImage s26; 
PImage g1;
PImage g2;
PImage g3;
PImage g4;
PImage g5;
PImage g6;
PImage g7;
PImage g8;
PImage g9;
PImage g10;
PImage g11;
PImage g12;
PImage g13;
PImage rg1;
PImage rg2;
PImage rg3;
PImage rg4;
PImage rg5;
PImage rg6;
PImage rg7;
PImage rg8;
PImage rg9;
PImage rg10;
PImage rg11;
PImage rg12;
PImage rg13;
PImage mountains;
PImage g14;
PImage cabin;
PImage hope;
PImage backgr;
PImage[] starimages=new PImage[20];
PImage[] girlimages=new PImage[14];
PImage [] backgroundimages=new PImage[7];
PImage youWin;
PImage celebrate;
PImage finalBackground;
int x = 350;
int randX = (int)(Math.random()*430)+100;
int top = 600;
boolean red=false;
boolean reach=true;
boolean peak=true;
boolean newmonster=false;
boolean newstar = false;
boolean gameWon=true;
boolean replay=false;
boolean move = false;
int width=740;
int height=600;
int reachc=0;
int count=0;
int curve=(int)(Math.random()*18)+2;
int curveAlso=(int)(Math.random()*18)+2;
int curveAgain=(int)(Math.random()*18)+2;
int rcount=0;
int speed=1.03;
int animatestar=0;
int yStar;
int xStar;
int backnumber = 0;
Life life = new Life();
Score score= new Score();
ExtraLife extra = new ExtraLife();
int hx=(int)(Math.random()*540);
int hopeCounter=0;
int hy=(int)(Math.random()*400);
int star=0;
int gw = 60;
void setup()
{
  size(740, 600);
  font=loadFont("orangefont.ttf");
  cabin=loadImage("cabin.png");
  hope=loadImage("hope.png");
  s1= loadImage("star.png");
  s2= loadImage("star2.png");
  s3= loadImage("star3.png");
  s4= loadImage("star4.png");
  s5= loadImage("star5.png");
  s6= loadImage("star6.png");
  s21= loadImage("star.png");
  s22= loadImage("star22.png");
  s23= loadImage("star23.png");
  s24= loadImage("star24.png");
  s25= loadImage("star25.png");
  s26= loadImage("star26.png");
  backgr=loadImage("background.png");
  mountains=loadImage("mountains.png");
  rg1= loadImage("rgirl1.png");
  rg2= loadImage("rgirl2.png");
  rg3= loadImage("rgirl3.png");
  rg4= loadImage("rgirl4.png");
  rg5= loadImage("rgirl5.png");
  rg6= loadImage("rgirl6.png");
  rg7= loadImage("rgirl7.png"); 
  rg8= loadImage("rgirl8.png");
  rg9= loadImage("rgirl9.png");
  rg10= loadImage("rgirl10.png");
  rg11= loadImage("rgirl11.png");
  rg12= loadImage("rgirl12.png");
  rg13= loadImage("rgirl13.png");
  rg14= loadImage("rgirl14.png");
  g1= loadImage("girl1.png");
  g2= loadImage("girl2.png");
  g3= loadImage("girl3.png");
  g4= loadImage("girl4.png");
  g5= loadImage("girl5.png");
  g6= loadImage("girl6.png");
  g7= loadImage("girl7.png"); 
  g8= loadImage("girl8.png");
  g9= loadImage("girl9.png");
  g10= loadImage("girl10.png");
  g11= loadImage("girl11.png");
  g12= loadImage("girl12.png");
  g13= loadImage("girl13.png");
  g14= loadImage("girl14.png");
  starimages[0]=s1;
  starimages[1]=s2;
  starimages[2]=s3;
  starimages[3]=s4;
  starimages[4]=s5;
  starimages[5]=s6;
  starimages[6]=s5;
  starimages[7]=s4;
  starimages[8]=s3;
  starimages[9]=s2;
  starimages[10]=s1;
  starimages[11]=s22;
  starimages[12]=s23;
  starimages[13]=s24;
  starimages[14]=s25;
  starimages[15]=s26;
  starimages[16]=s25;
  starimages[17]=s24;
  starimages[18]=s23;
  starimages[19]=s22;
  girlimages[0]=g1;
  girlimages[1]=g2;
  girlimages[2]=g3;
  girlimages[3]=g4;
  girlimages[4]=g5;
  girlimages[5]=g6;
  girlimages[6]=g7;
  girlimages[7]=g8;
  girlimages[8]=g10;
  girlimages[9]=g12;
  girlimages[10]=g13;
  girlimages[11]=g14;
  back1=loadImage("back1.png");
  back2=loadImage("back2.png");
  back3=loadImage("back3.png");
  back4=loadImage("back4.png");
  back5=loadImage("back5.png");
  back6=loadImage("back6.png");
  back7=loadImage("back7.png");
  backgroundimages[0]=back1;
  backgroundimages[1]=back2;
  backgroundimages[2]=back3;
  backgroundimages[3]=back4;
  backgroundimages[4]=back5;
  backgroundimages[5]=back6;
  backgroundimages[6]=back7;
  youWin=loadImage("youwin.png");
  celebrate=loadImage("celebration.png");
  one = loadImage("newMonster1.png");
  two = loadImage("star.png");
  three = loadImage("monster2.png");
  four = loadImage("monster3.png");
  five = loadImage("monster4.png");
  six = loadImage("monster5.png");
  seven = loadImage("monster6.png");
  sevenBlink = loadImage("monster6Blink.png");
  eight=loadImage("monster7.png");
  threeBlink=loadImage("monster2Blink.png");
  oneBlink=loadImage("newMonsterBlink1.png");
  sixBlink = loadImage("monster5Blink.png");
  eightBlink = loadImage("monster7Blink.png");
  fourBlink = loadImage("monster3Blink.png");
  fiveBlink=loadImage("monster4Blink.png");
  monsters[0]=one;
  monsters[1]=oneBlink;
  monsters[2]=three;
  monsters[3]=threeBlink;//blink
  monsters[4]=four;
  monsters[5]=fourBlink;
  monsters[6]=five;
  monsters[7]=fiveBlink;
  monsters[8]=six;
  monsters[9]=sixBlink;
  monsters[10]=seven;
  monsters[11]=sevenBlink;
  monsters[12]=eight;
  monsters[13]=eightBlink; 
  finalBackground=loadImage("finalbackground.png");  
  tree=loadImage("tree.png");
  land.add(new landscape(188, -100, tree, 170, 0, 0));
  land.add(new landscape(258, -10, tree, 150, -120, 70));
  land.add(new landscape(268, 0, tree, 170, 0, 0));
  land.add(new landscape(108, -100, tree, 120, -408, 400));
  land.add(new landscape(218, -40, tree, 140, -180, 250));
}
void keyReleased() {
  move=false;
}
void draw() {
  if (intro==true)
  {
    if (backnumber==0)
    {
      image(backgroundimages[backnumber], 0, 0, 740, 600);
    }
  } else {
    if (life.lifeCounter!=0) {
      background(255, 255, 255);
      if (animationChange==50)
      {
        animationChange=0;
      }
      animationChange++;
      scrollingBackground();
      if ((((width/2)-100)+count<((width/2)+100)-count)&&(reach=true)&&(peak==true))
      {
        count++;
        if (count==100) {
          reach=false;
        }
      }
      if ((reach==false)&&(peak==true))
      {
        reachc++;
        if ((height/2+reachc)==height)
        {
          peak=false;
        }
      }
      keyPressed();
      if (star>=0 && star<=1090) {
        drawStar(420, 165);
      }
      star++;
      if (star==5000) {
        star=0;
      }
      words.drawMonsters(435, 165);
      drawTree();
      drawGirl(x);
      life.lessLives();
      score.increaseScore();
      score.displayGameScore();
      life.displayLives();
      life.addLives();
      life.noGame();
    } else if (life.lifeCounter==0 && extra.redemp==false) {
      extra.drawBackground();
      extra.displayScore();
      extra.timer();
      if (hopeCounter>=15 && hopeCounter<=50) {
        extra.drawHope(hx, hy); 
        extra.mouse();
      }
      if (hopeCounter==15) {
        extra.changeBool();
      }
      if (hopeCounter==50) {
        hopeCounter=0;
        hx=(int)(Math.random()*540);
        hy =(int)(Math.random()*400);
      }  
      hopeCounter++;
    }
    if (score.s>=25) {
      drawGameWon();
    }
  }
}
class Life {
  int lifeCounter;
  Life() {
    lifeCounter=3;
  }
  void addLives() {
    int y=470;
    if (yStar+sizefactor*130>y && yStar+sizefactor*130<630 && increase == true && lifeCounter!=0 && xStar<=(x+gw) && xStar+sizefactor*130>=(x)) {
      if (xStar<=(x+gw) && xStar>=(x)) {
        lifeCounter++;
        xStar=-800;
        yStar=-800;
        increase = false;
        newstar=true;
      }
    }
  }
  void displayLives() {
    noStroke();
    fill(175, 213, 247);
    rect(0, 0, 150, 75);
    fill(255, 255, 255);
    textFont(font, 25);
    text(("Lives: " + lifeCounter), 30, 40);
  } 
  void lessLives() { 
    int y=490;
    if (words.y+monsizefactor*130>y && words.y+monsizefactor*130<600 && increase == true && lifeCounter!=0 && words.x<=(x+gw) && words.x+(monsizefactor)*130>(x)) {
      newmonster=true;
      red=true;
      lifeCounter-=1;
      increase = false;
    } else if (words.yAlso+monsizefactor*130>y && words.yAlso+monsizefactor*130<600 && increase == true && lifeCounter!=0 && words.xAlso<=(x+gw) && words.Also+(monsizefactor)*130>(x)) {
      newmonster=true;
      red=true;
      lifeCounter-=1;
      increase = false;
    } 
  }
  void noGame() {
    if (extra.redemp==true && lifeCounter==0) {
      fill(255, 255, 255);
      textFont(font, 100);
      text("Game Over!", 100, 350); 
      fill(255, 255, 255);
      textFont(font, 25);
      text("Press tab key to replay the game", 250, 500);
    }
  }
}
class Score {
  int s;
  Score() {
    s=0;
  }
  void increaseScore() {
    if (red==false && words.y+monsizefactor*130>450 && increase==true && scoreIncrease== true) {
      s++;
      scoreIncrease=false;
    }
  }
  void displayGameScore() {
    noStroke();
    fill(175, 213, 247);
    rect(0, 75, 150, 45);
    fill(255, 255, 255);
    textFont(font, 25);
    text(("Score: " + s), 30, 95);
  }
}
class NegativeWords {  
  int c = -2;
  int decide = (int)(Math.random()*7);
  int decideAlso = (int)(Math.random()*7);
  int[] animation = new animation[7];
  NegativeWords() {
    for (int i=0; i<animation.length (); i++) {
      c=c+2;
      animation[i]=c;
    }
  }
  int y;
  int x;
  int yAgain;
  int xAgain;
  int yAlso;
  int xAlso;
  int randDistance = (int)(Math.random()*20);
  int offset=(int)(Math.random()*3)+1;
  int dyHolder;
  int dyAlsoHolder;
  void drawMonsters(int xinitial, int yinitial) {
    if (yinitial-dyHolder+monsizefactor*150>700||newmonster==true) { 
      curve=(int)(Math.random()*18)+2;
      curveAlso=(int)(Math.random()*18)+2;
      curveAgain=(int)(Math.random()*18)+2;
      decide=(int)(Math.random()*7);
      decideAlso = (int)(Math.random()*7);
      increase=true;
      monstartime=1;
      doublemon++;
      if(doublemon==2){
        doublemon=0;
      }
      offset=(int)(Math.random()*3)+1;
      randDistance = (int)(Math.random()*20);
      newmonster=false;
      scoreIncrease = true;
    }
    monstartime=speed*(monstartime+((double)monstartime/300));
    int dx=monstartime/curve;
    int dxAlso=monstartime/curveAlso;
    int dy=-Math.sqrt(440*monstartime/3)+.24*monstartime/2;
    int dyAlso=-Math.sqrt(400*monstartime/3)+.5*monstartime/2;
    dyHolder=dy;
    dyAlsoHolder=dyAlso;
    monsizefactor=.1+monstartime/1000;
    if (life.lifeCounter==0) {
      xinitial=-800;
      yinitial=-800;
    }
    if (animationChange<25){
      image(monsters[animation[decide]], 335, 5, 340, 175);
      image(monsters[animation[decide]], (xinitial-dx)+offset, yinitial-dy, monsizefactor*150, monsizefactor*150);
      if (words.y>=165 && words.y<600 && doublemon==1) {
        image(monsters[animation[decide]],385, 5, 187, 175);
        image(monsters[animation[decideAlso]], 440, 5, 183, 175);
        image(monsters[animation[decideAlso]], (xinitial+randDistance-dxAlso), yinitial-dyAlso, monsizefactor*150, monsizefactor*150);
      }
    }
    if (animationChange>=25) {
      image(monsters[animation[decide]], 335, 5, 340, 175);
      image(monsters[animation[decide]+1], (xinitial-dx)+offset, yinitial-dy, monsizefactor*150, monsizefactor*150);
      if (words.y>=165 && words.y<600 && doublemon==1) {
        image(monsters[animation[decide]],385, 5, 187, 175);
        image(monsters[animation[decideAlso]], 440, 5, 183, 175);
        image(monsters[animation[decideAlso]+1], (xinitial+randDistance-dxAlso), yinitial-dyAlso, monsizefactor*150, monsizefactor*150);
      }
    }
    x=xinitial-dx;
    y=yinitial-dy;
    xAlso=xinitial+randDistance-dxAlso;
    yAlso=yinitial+randDistance-dyAlso;
  }
}
int treetime=0;
void drawTree() {
  for (int i=0; i<land.size (); i++)
  {
    land.get(i).drawLand();
  }
}

int janim=0;
int startime=1;
int sizefactor=.1+startime/1000;
int dyHolder;

void drawStar(int xinital, int yinitial) {
  if (yinitial-dyHolder+sizefactor*150>600||newstar==true) { 
    curve=(int)(Math.random()*18)+2;
    increase=true;
    startime=1;
    offset=(int)(Math.random()*3)+1;
    newstar=false;
  }
  if (janim==2) {
    janim=0;
    animatestar++;
    if (animatestar==20) {
      animatestar=0;
    }
  }
  startime=1.003*(startime+((double)startime/300));
  int dx=startime/curve;
  int dy=-Math.sqrt(440*startime/3)+.24*startime/2;
  dyHolder=dy;
  sizefactor=.1+startime/1000;
  xStar=xinital-dx;
  yStar= yinitial-dy;
  image(starimages[animatestar], xStar, yStar, sizefactor*130, sizefactor*130);
  janim++;
}
int animategirl=0;
int janimg=0;
int animatebackground=0;
void scrollingBackground() {
  if (-2440+animatebackground/4>200)
  {
    animatebackground=0;
  }
  animatebackground+=3;
  int yvalue=-150+animatebackground/40;
  if (yvalue>-10) {
    yvalue=-10;
  }
  image(mountains, -2440+animatebackground/4, yvalue, 3184, 490);
  image(backgr, 0, 0, 740, 600);
}

void drawGirl() {
  if (red==true)
  {
    girlimages[0]=rg1;
    girlimages[1]=rg2;
    girlimages[2]=rg3;
    girlimages[3]=rg4;
    girlimages[4]=rg5;
    girlimages[5]=rg6;
    girlimages[6]=rg7;
    girlimages[7]=rg8;
    girlimages[8]=rg10;
    girlimages[9]=rg12;
    girlimages[10]=rg13;
    girlimages[11]=rg14;
    rcount++;
  }
  if (rcount==90)
  {
    red=false;
    rcount=0;
    girlimages[0]=g1;
    girlimages[1]=g2;
    girlimages[2]=g3;
    girlimages[3]=g4;
    girlimages[4]=g5;
    girlimages[5]=g6;
    girlimages[6]=g7;
    girlimages[7]=g8;
    girlimages[8]=g10;
    girlimages[9]=g12;
    girlimages[10]=g13;
    girlimages[11]=g14;
  }
  janimg=janimg+1;
  image(girlimages[animategirl], x, 450, 90, 110);
  if (janimg==3) {
    janimg=0;
    animategirl++;
    if (animategirl==12) {
      animategirl=0;
    }
  }
}
void keyPressed() {
  if (intro==true)
  {
    if (keyCode==RIGHT)
    {
      if (move==false)
      {
        move=true;
        backnumber++;
        if (backnumber==7)
        {
          intro=false;
        }
        image(backgroundimages[backnumber], 0, 0, 740, 600);
      }
      if (backnumber==0)
      {
        image(backgroundimages[backnumber], 0, 0, 740, 600);
      }
    }
    if (keyCode==LEFT)
    {
      if (move==false)
      {
        move==true;
        if (backnumber>0)
        {
          backnumber--;
        }
        image(backgroundimages[backnumber], 0, 0, 740, 600);
      }
    }
  }
  if (keyCode==TAB) {
    life.lifeCounter=3;
    score.s=0;
    extra.time=0;
    extra.redemp=false;
  }
  if (keyPressed)
  {
    if (keyCode==LEFT)
    {
      if (x>90)
      {
        x=x-20;
      } else {
        x=90;
      }
    } else if (keyCode==RIGHT)
    {
      if (x<500) {
        x=x+20;
      } else {
        x=500;
      }
    }
  }
}

class landscape {
  int xinitial;
  int yinitial;
  int sizefact;
  int startx;
  int starty;
  Pimage name;
  landscape(int xinit, int yinit, PImage landname, int sizefactor, int starx, int stary)
  {
    xinitial=xinit;
    yinitial=yinit;
    sizefact=sizefactor;
    name=landname;
    startx=starx;
    starty=stary;
  }
  int startime=1;
  void drawLand() {
    startime=(1+(yinitial+sizefact)/10000)*(startime+((double)startime/300));
    int dx=startime/1.5;
    int dy=-Math.sqrt(500*startime/3)+.7*startime/2;
    int sizefactor=.9+startime/500;
    if(xinitial-dx+startx<0-sizefactor*sizefact)
    {
      startime=1;
      startx=0;
      starty=0;
    }
    image(name, xinitial-dx+startx, yinitial-dy+starty, sizefactor*sizefact, sizefactor*sizefact);
  }
  PImage getImage() {
    return name;
  }
  int getX() {
    return xinitial;
  }
  int getY() {
    return yinitial;
  }
  int getSize() {
    return sizefact;
  }
}
class ExtraLife {
  int hopeX;
  int hopeY;
  int hopeW;
  int hopeH;
  int mouseCounter;
  int time;
  boolean redemp=false;
  boolean mouseCheck;
  ExtraLife() {
    hopeW=200;
    hopeH=200;
    mouseCounter=0;
    mouseCheck=true;
    time=0;
  }

  void drawBackground() {
    image(cabin, 0, 0, 740, 600);
  }

  void drawHope(int x, int y) {
    hopeX=x;
    hopeY=y;
    image(hope, hopeX, hopeY, hopeW, hopeH);
  }
  void mouse() {
    if (mouseX>=(hopeX) && mouseX<=(hopeX+200)&&mouseCheck==true) {
      if (mouseY>=(hopeY) && mouseY<=(hopeY+200)) {
        mouseCounter++;
        mouseCheck=false;
      }
    }
  }

  void changeBool() {
    mouseCheck=true;
  }
  void timer() {
    if (time>=1000 && mouseCounter>=15) {
      fill(255, 255, 255);
      textFont(font, 100);
      text("Congrats!", 150, 350);
      redemp = true;
      mouseCounter=0;
      life.lifeCounter=3;
    } else if (time>=1000 && mouseCounter!=15) {
      fill(255, 255, 255);
      textFont(font, 100);
      text("Game Over!", 100, 350);
      fill(255,255,255);
      textFont(font, 25);
      text("Press tab key to replay the game", 200, 500);
      hx=-800;
      hy=-800;
    }
    time++;
  }
  void displayScore() {
    noStroke();
    fill(175, 213, 247);
    rect(0, 0, 150, 75);
    fill(255, 255, 255);
    textFont(font, 25);
    text(("Score: " + mouseCounter), 30, 40);
  }
}
int gameOneAnimation=1;
void drawGameWon() {
  gameOneAnimation++;
  girlimages[0]=g1;
  girlimages[1]=g2;
  girlimages[2]=g3;
  girlimages[3]=g4;
  girlimages[4]=g5;
  girlimages[5]=g6;
  girlimages[6]=g7;
  girlimages[7]=g8;
  girlimages[8]=g10;
  girlimages[9]=g12;
  girlimages[10]=g13;
  girlimages[11]=g14;
  image(finalBackground, 0, 0, 780, 600);
  fill(255,255,255);
  textFont(font, 25);
  text("Press tab key to replay the game", 200, 500);
  int girldX=gameOneAnimation/2;
  int girldY=.00255*girldX*girldX;
  if ((330-girldY)<=70) {
    girldX=315;
    girldY=290;
    animategirl=0;
    image(girlimages[animategirl], 60+girldX, 330-girldY, 60, 80);
    image(celebrate, 0, 0, 740, 600);
    image(youWin, 275, 200, 200, 200);
  } else {
    image(girlimages[animategirl], 60+girldX, 330-girldY, 60, 80);
    if (janimg==3) {
      janimg=0;
      animategirl++;
      if (animategirl==12) {
        animategirl=0;
      }
    }
  }

}




