Die oneDie;
Die twoDie;
Die threeDie;
Die fourDie; 
Die fiveDie;
Die sixDie;
Die sevenDie;
Die eightDie;
Die nineDie;

void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size(500,500);
  background(#DE5C38);
  noLoop();

   oneDie = new Die(0,0);
   twoDie = new Die(0,115);
   threeDie = new Die(0,230);
   fourDie = new Die(115,0);
   fiveDie = new Die(115,115);
   sixDie = new Die(115,230);
   sevenDie = new Die(230,0);
   eightDie = new Die(230,115);
   nineDie = new Die(230,230);
   
   
    
  //}
  
      for(int i = 0; i < 345;i+= 115){
      for(int j = 0; j < 345; j+= 115){
          println(i,j);
      }
    }  
    
}

void draw(){
  oneDie.show();
  twoDie.show();
  threeDie.show();
  fourDie.show();
  fiveDie.show();
  sixDie.show();
  sevenDie.show();
  eightDie.show();
  nineDie.show();
  
  oneDie.roll();
  twoDie.roll();
  threeDie.roll();
  fourDie.roll();
  fiveDie.roll();
  sixDie.roll();
  sevenDie.roll();
  eightDie.roll();
  nineDie.roll();
  
}

void mousePressed(){
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
  class Die {
	//variable declarations for your Die instances here
  int x_pos;
  int y_pos;
  int randomRoll;
  


	//constructor
	Die(int x, int y){
		//variable initializations here
  x_pos = x;
  y_pos = y;
	}
	
	//Simulate a roll of a die
	void roll(){
		 randomRoll = (int)(6 * Math.random()) + 1;
    
	}
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
  fill(225);
  rect(x_pos,y_pos,100,100);
  fill(#951818);
  if(randomRoll == 1){
    ellipse(x_pos + 50, y_pos + 50, 20, 20);
  } else if (randomRoll == 2){
    ellipse(x_pos + 25, y_pos + 25, 20, 20);
    ellipse(x_pos + 75, y_pos + 75, 20, 20);
	} else if (randomRoll == 3){
    ellipse(x_pos + 25, y_pos + 25, 20, 20);
    ellipse(x_pos + 50, y_pos + 50, 20,20);
    ellipse(x_pos + 75, y_pos + 75, 20, 20);
  } else if (randomRoll == 4){
    ellipse(x_pos + 25, y_pos + 25, 20, 20);
    ellipse(x_pos + 75, y_pos + 25, 20, 20);
    ellipse(x_pos + 25, y_pos + 75, 20, 20);
    ellipse(x_pos + 75, y_pos + 75, 20, 20);
  } else if (randomRoll == 5){
    ellipse(x_pos + 25, y_pos + 25, 20, 20);
    ellipse(x_pos + 75, y_pos + 25, 20, 20);
    ellipse(x_pos + 50, y_pos + 50, 20, 20);
    ellipse(x_pos + 25, y_pos + 75, 20, 20);
    ellipse(x_pos + 75, y_pos + 75, 20, 20);
  } else {
    ellipse(x_pos + 25, y_pos + 25, 20, 20);
    ellipse(x_pos + 75, y_pos + 25, 20, 20);
    ellipse(x_pos + 25, y_pos + 50, 20, 20);
    ellipse(x_pos + 75, y_pos + 50, 20, 20);
    ellipse(x_pos + 25, y_pos + 75, 20, 20);
    ellipse(x_pos + 75, y_pos + 75, 20, 20);
    }
  }
 }
