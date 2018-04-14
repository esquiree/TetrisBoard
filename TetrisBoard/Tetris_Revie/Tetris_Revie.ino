

#include "FastLED.h"
#define NUM_LEDS 100
#define DATA_PIN 11
#define FPS 10
#define MAX_BRIGHTNESS 10
CRGB leds[NUM_LEDS];

struct ledData {
  byte r;
  byte g;
  byte b;
};

ledData ledDataArray[11][10]; //Used very breifly to convert thisFrame into colors
ledData oldBlockColor;
byte nextFrame[11][10], thisFrame[11][10]; //Byte array, used to store layer information of pixe;s

int frames; //counter
byte blockcolor[6][3] = {{MAX_BRIGHTNESS, 0, 0}, {0, MAX_BRIGHTNESS, 0}, {0, MAX_BRIGHTNESS, MAX_BRIGHTNESS}, {MAX_BRIGHTNESS, MAX_BRIGHTNESS, 0}, {0, MAX_BRIGHTNESS, MAX_BRIGHTNESS}, {MAX_BRIGHTNESS, 0, MAX_BRIGHTNESS}};

int score;
byte cb, randomcolor; //Current Block
int rotation;
byte mask[6][4][4][4] = {{{{0, 0, 0, 0}, //Pattern #1
      {0, 0, 0, 0},
      {0, 1, 0, 0},
      {1, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {1, 0, 0, 0},
      {1, 1, 0, 0},
      {1, 0, 0, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {1, 1, 1, 0},
      {0, 1, 0, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 1, 0},
      {0, 1, 1, 0},
      {0, 0, 1, 0}
    }
  },

  { { {0, 0, 0, 0}, //Pattern #2
      {0, 0, 1, 0},
      {0, 0, 1, 0},
      {0, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {1, 0, 0, 0},
      {1, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 1, 1, 0},
      {0, 1, 0, 0},
      {0, 1, 0, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 1, 1, 1},
      {0, 0, 0, 1}
    }
  },

  { { {0, 1, 0, 0}, //Pattern #3
      {0, 1, 0, 0},
      {0, 1, 0, 0},
      {0, 1, 0, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 0, 0, 0},
      {1, 1, 1, 1}
    },

    { {0, 1, 0, 0},
      {0, 1, 0, 0},
      {0, 1, 0, 0},
      {0, 1, 0, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 0, 0, 0},
      {1, 1, 1, 1}
    }
  },

  { { {0, 0, 0, 0}, //Pattern #4
      {0, 0, 1, 0},
      {0, 1, 1, 0},
      {0, 1, 0, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {1, 1, 0, 0},
      {0, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 1, 0, 0},
      {0, 1, 1, 0},
      {0, 0, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 0, 1, 1},
      {0, 1, 1, 0}
    }
  },

  { { {0, 0, 0, 0}, //Pattern #5
      {0, 0, 0, 0},
      {0, 1, 1, 0},
      {0, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 1, 1, 0},
      {0, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 1, 1, 0},
      {0, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 1, 1, 0},
      {0, 1, 1, 0}
    }
  },

  { { {0, 0, 0, 0}, //Pattern #6
      {0, 1, 0, 0},
      {0, 1, 0, 0},
      {0, 1, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {1, 1, 1, 0},
      {1, 0, 0, 0}
    },

    { {0, 0, 0, 0},
      {0, 1, 1, 0},
      {0, 0, 1, 0},
      {0, 0, 1, 0}
    },

    { {0, 0, 0, 0},
      {0, 0, 0, 0},
      {0, 0, 1, 0},
      {1, 1, 1, 0}
    }
  }
};

byte  tempMaskID, tempRotation;
int tempX, tempY;
struct objectx {
  byte maskID; //Block shape variable
  byte r;
  byte g;
  byte b;
  int y;
  int x;
};

objectx block;

void setup() {
  // put your setup code here, to run once:
  FastLED.addLeds<NEOPIXEL, DATA_PIN>(leds, NUM_LEDS);
  pinMode(1, OUTPUT);
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);

  pinMode(5,OUTPUT); //Test pin for score 

  pinMode(12, INPUT_PULLUP); //Reset
  pinMode(10, INPUT_PULLUP); //Rotate Left
  pinMode(9, INPUT_PULLUP); //Rotate Right
  pinMode(8, INPUT_PULLUP); //Right
  pinMode(7, INPUT_PULLUP); //Down
  pinMode(6, INPUT_PULLUP); //Left

  //Game Setup occurs when score is negative
  score = -1;
}

void loop() {
  // Defaults for main logic placed at top
  if (frames%3==0){ //Wait 300ms before clearing status lights
    digitalWrite(1, LOW);
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
  }
  

  if (score < 0){
    //PREP GAME HERE
    flashledDataArray();
    digitalWrite(1, HIGH);
    digitalWrite(2, HIGH);
    digitalWrite(3, HIGH);
    delay(500); 
    while ((digitalRead(12) == HIGH)){
      flashledDataArray();
      digitalWrite(1, LOW);
      digitalWrite(2, LOW);
      digitalWrite(3, LOW);
      delay(100);
      digitalWrite(1, HIGH);
      digitalWrite(2, LOW);
      digitalWrite(3, LOW);
      delay(100);
      digitalWrite(1, LOW);
      digitalWrite(2, HIGH);
      digitalWrite(3, LOW);
      delay(100);
      digitalWrite(1, LOW);
      digitalWrite(2, LOW);
      digitalWrite(3, HIGH);
      delay(100);
    }
    digitalWrite(1, LOW);
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
  
    initFrame();
    newObject();
    frames = 0;
    score = 0;
    cb = 3; //Defaults to 3 because of border block id
  }
  //game logic

  //Save temp data in case of illegal user input
  tempY = block.y;
  tempX = block.x;
  tempRotation = rotation;
  tempMaskID = block.maskID;

  //Reset
  if (digitalRead(12) == LOW) {
    score *= -1;
  }
  
  //Rotate Right
  if (digitalRead(9) == LOW) {
    rotation++;
    if (rotation > 3)
      rotation = 0;
  }

  //Rotate Left
  if (digitalRead(10) == LOW) {
    rotation--;
    if (rotation < 0)
      rotation = 3;
  }

  //Move Right
  if (digitalRead(8) == LOW) {
    block.x -= 1;
    digitalWrite(3, HIGH);
  }

  //Move Left
  if (digitalRead(6) == LOW) {
    block.x += 1;
  }

  //Move down and auto move
  if (frames == 15) {
    frames = 0; //Reset frames
    block.y += 1; //automatically move block down
  } else if (digitalRead(7) == LOW) { 
    block.y += 1;
  }

  addGroups();

  if (checkColl() == 1) { //cant move there idiot (illegal move or rotation)
    //block.y = tempY; //Seems to work properly without this statement... Should it?
    block.x = tempX;
    block.maskID = tempMaskID;
    rotation = tempRotation;
    //Undo all previous changes and push the frame as if no changes were made
    addGroups();
    gotoFrame(); //basically throws frame out
    digitalWrite(1, LOW);
    digitalWrite(2, HIGH);
    digitalWrite(3, LOW);
  }
  if (checkImpact() == 1 && tempY < block.y) { //place the current block and create next Block
    newObject();
    gotoFrame();
    
    //Push Frame Before checking Win/Loss to update graphics
    frame2ledData();
    updateLEDS();

    digitalWrite(1, LOW);//Update lights before calling WinLoss
    digitalWrite(2, LOW);
    digitalWrite(3, HIGH);
    
    checkWinLoss();  //removeColumn is executed by this func
    score += 2;
    
  } else {   //legal move
    gotoFrame();
  }

  analogWrite(5, score);

  //Screen Refresh code
  frame2ledData(); //MOve this into else statement?
  updateLEDS();
  delay(100);
  frames++;
}

void newObject() {
  //Add a statement to check collison here when object is created?
  cb++;
  rotation = 0;
  block.x = 4;
  block.y = 1;
  block.maskID = random(0, 5); //Select Block shape type

  oldBlockColor.r = blockcolor[randomcolor][0];
  oldBlockColor.g = blockcolor[randomcolor][1];
  oldBlockColor.b = blockcolor[randomcolor][2];

  randomcolor = random(0, 5);

  block.r = blockcolor[randomcolor][0];
  block.g = blockcolor[randomcolor][1];
  block.b = blockcolor[randomcolor][2];

}


void addGroups() { //This func seems to work well. It combines the current block into the next frame
  for (int y = 0; y < 11; y++) {
    for (int x = 0; x < 10; x++) {
      if (thisFrame[y][x] == cb) { //erase old block
        thisFrame[y][x] = 255;
      }

      if ((y == block.y || y == block.y - 1 || y == block.y - 2 || y == block.y - 3) && (x == block.x || x == block.x + 1 || x == block.x + 2 || x == block.x + 3)) {
        if ( mask[block.maskID][rotation][y - block.y + 3][x - block.x] == 1) {
          nextFrame[y][x] = cb;
        } else {
          nextFrame[y][x] = thisFrame[y][x];
        }
      } else {
        nextFrame[y][x] = thisFrame[y][x];
      }

    }
  }
}

int removeCol(int y) {
  digitalWrite(1, HIGH);
  digitalWrite(2, LOW);
  digitalWrite(3, HIGH);
  if (y == 1) {
    return 1;
  } else {
    for (int x = 1; x < 9; x++) {
      nextFrame[y][x] = nextFrame[y - 1][x];
    }
    return removeCol(y - 1); 
  }
}

int checkWinLoss() { //NEEDS STATUS UPDATE
  for (int y = 0; y < 11; y++) {
    int win = 0;
    
    for (int x = 0; x < 10; x++) {
      if (win < thisFrame[y][x]) {
        win = thisFrame[y][x];
      }
    }
    
    if (win != 255 && y != 10) {
      removeCol(y);
      score += 10;
      gotoFrame();
    }
    
    //check for losing conditions
    if (y==0){
      for (int x = 0; x < 10; x++) {
        if (thisFrame[y][x] > thisFrame[y + 1][x] && thisFrame[y + 1][x] != 255) { //fix this expression
          //make sure row above is larger than row below |||| Makre sure row below is not air
          //Needs to check current block ID [cb]
          //should check 4 rows below block not just first 2
          for(int i=0; i<5; i++){ //Scroll the lights. Basically a delay before flashing the screen
            digitalWrite(1, LOW);
            digitalWrite(2, LOW);
            digitalWrite(3, LOW);
            delay(100);
            digitalWrite(1, HIGH);
            digitalWrite(2, LOW);
            digitalWrite(3, LOW);
            delay(100);
            digitalWrite(1, LOW);
            digitalWrite(2, HIGH);
            digitalWrite(3, LOW);
            delay(100);
            digitalWrite(1, LOW);
            digitalWrite(2, LOW);
            digitalWrite(3, HIGH);
            delay(100);
          }
          digitalWrite(1, LOW);
          digitalWrite(2, LOW);
          digitalWrite(3, LOW);
          //find way to display score
          score *= -1; //negative score means goto reset screen
        }
      }
    }//End of if statement
    
  }
}

int checkColl() {
  for (int y = 0; y < 11; y++) {
    for (int x = 0; x < 10; x++) {
      if (thisFrame[y][x] < nextFrame[y][x]) {
        return 1;
      }
    }
  }
  return 0;
}

int checkImpact() {
  for (int y = 0; y < 10; y++) {
    for (int x = 0; x < 10; x++) {
      if (thisFrame[y + 1][x] < nextFrame[y][x] && nextFrame[y][x] == cb) {
        return 1;
      }
    }
  }
  return 0;
}

void initFrame() { //This func draws the border on THISFRAME, Use goto to apply
  for (int i = 0; i < 11; i++) {
    for (int j = 0; j < 10; j++) {
      thisFrame[i][j] = 255; //empty space DEFAULT CASE
      if (i == 10) {
        thisFrame[i][j] = 0; //Bottom edge
      }
      if (j == 0 || j == 9) { //Border Cases
        thisFrame[i][j] = 1;
      }
    }
  }
}

void frame2ledData() { //This func converts THISFRAME into LEDDATAARRAY
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      if (thisFrame[i+1][j] == cb) { //Movin Block
        ledDataArray[i][j].r = block.r;
        ledDataArray[i][j].g = block.g;
        ledDataArray[i][j].b = block.b;
      }
      if (thisFrame[i+1][j] == cb - 1) { //Old Block (Block placement is after newObject)
        ledDataArray[i][j].r = oldBlockColor.r;
        ledDataArray[i][j].g = oldBlockColor.g;
        ledDataArray[i][j].b = oldBlockColor.b;
      }
      if (thisFrame[i+1][j] == 255) { //Empty Space
        ledDataArray[i][j].r = 0;
        ledDataArray[i][j].g = 0;
        ledDataArray[i][j].b = 0;
      }
      if (thisFrame[i+1][j] == 0) { //bottom border
        ledDataArray[i][j].r = 20;
        ledDataArray[i][j].g = 20;
        ledDataArray[i][j].b = 20;
      }
      if (thisFrame[i+1][j] == 1) { //border
        ledDataArray[i][j].r = 15;
        ledDataArray[i][j].g = 15;
        ledDataArray[i][j].b = 15;
      }
    }
  }
}

void gotoFrame() {
  for (int y = 0; y < 11; y++) {
    for (int x = 0; x < 10; x++) {
      thisFrame[y][x] = nextFrame[y][x];
    }
  }
}

void updateLEDS() {
  for (int i = 0; i < 10; i++) { //For left to right LED placement
    for (int j = 10; j >= 0; j--) {
      leds[i * 10 + j] = CRGB(ledDataArray[i][j].r, ledDataArray[i][j].g, ledDataArray[i][j].b);
    }
  }
  FastLED.show();
}

void flashledDataArray() {
  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      leds[i * 10 + j].r = random(0, MAX_BRIGHTNESS);
      leds[i * 10 + j].g = random(0, MAX_BRIGHTNESS);
      leds[i * 10 + j].b = random(0, MAX_BRIGHTNESS);
    }
  }
  FastLED.show();
}
