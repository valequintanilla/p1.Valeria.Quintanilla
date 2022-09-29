//program timer
Timer startTimer;
//Buttons
Button firstButton;
Button secondButton;
Button thirdButton;
Button fourthButton;
Button fifthButton;
Button sixthButton;
Button openButton;
Button closeButton;

Screen FloorMonitor;
//color variables
color lighton =color(190, 180, 0);
color original = color(250,250,250);

//variables to represent 
int floor1 = 0;
int floor2 = 0;
int floor3 = 0;
int floor4 = 0;
int floor5 = 0;
int floor6 = 0;
int open = 0;
int close = 0;

void setup(){
  size(600,800); // size of screen
  startTimer = new Timer(0);
  
  //Construct buttons
  firstButton = new Button(300,700,90,90, "G", 250, 250, 250);
  secondButton = new Button(300,600,90,90, "2", 250, 250, 250);
  thirdButton = new Button(300,500,90,90, "3", 250, 250, 250);
  fourthButton = new Button(300,400,90,90, "4", 250, 250, 250);
  fifthButton = new Button(300,300,90,90, "5", 250, 250, 250);
  sixthButton = new Button(300,200,90,90, "6", 250, 250, 250);
  openButton = new Button(150,550,90,90, "open", 250, 250, 250);
  closeButton = new Button(450,550,90,90, "close", 250, 250, 250);
  
  //Construct screen
  FloorMonitor = new Screen(150,50,300,100,"Main", 0, 0, 0, 30);
}

void draw(){
  background(150);
  //rect(150,50,300,100);
  fill(0);
  startTimer.countUp();
  textSize(10);
  text (startTimer.getTime(), 20, 20);
  //checking if buttons are clicked
  
  //first button if first button is clicked then the button will change color
  if((firstButton.isClicked())&&(startTimer.getTime()<= 6)){
    startTimer.setTime(0);
    firstButton.ButtonColor = (lighton);// button turns yellow when clicked
    
    floor1 = 1; 
    
  }
  
  if((floor1==1 )&& (startTimer.getTime()>= 6)){
    firstButton.ButtonColor = (original);
    FloorMonitor.Text = ("Ground Floor");
  }
  
  
  //second button if second button is clicked then the button will change color
  if((secondButton.isClicked())&&(startTimer.getTime()<= 10)){
    startTimer.setTime(0);
    secondButton.ButtonColor = (lighton);
    floor2 = 1;
    
    
  }
  if((floor2 == 1)&&(startTimer.getTime()>= 10)){
    secondButton.ButtonColor = (original);
    FloorMonitor.Text = ("Second Floor");
  }
  
  
  
  
  //Third Button if third button is clicked then the button will change color
  if((thirdButton.isClicked()) && (startTimer.getTime()<= 14)){
    startTimer.setTime(0);
    thirdButton.ButtonColor = (lighton);
    floor3 =1;
    
    
  }
  
  if((floor3 == 1) && (startTimer.getTime()>= 14)){
    thirdButton.ButtonColor = (original);
    FloorMonitor.Text = ("Third Floor");
  }
  
  
    //fourth button: if fourth button is clicked then the button will change color
  if((fourthButton.isClicked())&& (startTimer.getTime()<= 18)){
    startTimer.setTime(0);
    fourthButton.ButtonColor = (lighton);
    floor4 = 1;
    
    
  }
  if((floor4 == 1)&& (startTimer.getTime()>= 18)){
    fourthButton.ButtonColor = (original);
    FloorMonitor.Text = ("Fourth Floor");
  }
  
  
  //fifth button: if fifth button is clicked then the button will change color
  if((fifthButton.isClicked())&& (startTimer.getTime()<= 22)){
    startTimer.setTime(0);
    fifthButton.ButtonColor = (lighton);
    floor5 = 1;
    //FloorMonitor.Text = ("Fifth Floor");
  }
  if((floor5 == 1)&& (startTimer.getTime()>= 22)){
    fifthButton.ButtonColor = (original);
    FloorMonitor.Text = ("Fifth Floor");
  }
  
  //sixth button: if sixth button is clicked then the button will change color
  if(sixthButton.isClicked()&& (startTimer.getTime()<= 26)){
    startTimer.setTime(0);
    sixthButton.ButtonColor = (lighton);
    //FloorMonitor.Text = ("Sixth Floor");
    floor6 = 1;
    
  }
  if(floor6 == 1 && (startTimer.getTime()>= 26)){
    sixthButton.ButtonColor = (original);
    FloorMonitor.Text = ("Sixth Floor");
  }
  
  //open button: if the open button is clicked then the button will change color
  if(openButton.isClicked()&&(startTimer.getTime()<= 5)){
    startTimer.setTime(0);
    openButton.ButtonColor = (lighton);
    FloorMonitor.Text = ("Open Door");
    open = 1;
    
  }
  if(open == 1 && (startTimer.getTime()>= 5)){
    openButton.ButtonColor = (original);
    
  }
  
  //close button: if the close button is clicked then the button will change color
  if(closeButton.isClicked()&&(startTimer.getTime()<= 5)){
    startTimer.setTime(0);
    closeButton.ButtonColor = (lighton);
    FloorMonitor.Text = ("Close Door");
    close = 1;
    
  }
  if(close == 1 && (startTimer.getTime()>= 5)){
    closeButton.ButtonColor = (original);
    
  }
   //These display the monitor and the buttons on the screen
  firstButton.update();
  firstButton.render();
  
  secondButton.update();
  secondButton.render();
  
  thirdButton.update();
  thirdButton.render();
  
  fourthButton.update();
  fourthButton.render();
  
  fifthButton.update();
  fifthButton.render();
  
  sixthButton.update();
  sixthButton.render();
  
  openButton.update();
  openButton.render();
  
  closeButton.update();
  closeButton.render();
  
  FloorMonitor.render();
}
