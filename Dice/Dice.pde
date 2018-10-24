Die dieRoll;

void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
  size(500,500);
  background(#DE5C38);
  noLoop();
  
  dieRoll = new Die ( width/2, height/2);
  
  /*  Die[] theDice = new Die[ ];
  for(int i = 0; i < theDice.length; i++){
    theDice[i] = new Die(  
    
    */
}

void draw(){
  dieRoll.show();
  dieRoll.roll();
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
		pushMatrix();
    for(int i = 0; i < 315;i+= 105){
      for(int j = 0; j < 315; j+= 105){
          rect(i,j,100,100);
      }
    }  

    popMatrix();

	}
}
