class Button{
  PVector Pos = new PVector(0,0); // position 
  float Width = 0; //width of button
  float Height = 0; //height of button
  color ButtonColor; 
  String Text; //text inside button
  Boolean Pressed = false; 
  Boolean Clicked = false; //button is clicked if true
  //Constructor to create a button 
  Button(int x, int y, int w, int h, String t,int r, int g, int b){
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    ButtonColor = color(r,g,b);
    Text = t;
  }
  
  //must be placed in void draw to work
  void update(){
    if(mousePressed == true && mouseButton == LEFT && Pressed == false){
        Pressed = true; // after making sure the mouse wasnt pressed we press it.
        // to make sur ethat it is being pressed inside of the square
        if(mouseX>= Pos.x && mouseX<= Pos.x+Width && mouseY>= Pos.y && mouseY<= Pos.y+Height ){
            Clicked = true;
        }
    }else{
      Clicked = false; // if mouse is not pressed then clicked cant be true.
      Pressed = false;
    }
    if(mousePressed != true){
      Pressed = false;
    }
    
  }
  //render must be placed in void draw to rende in screen
  void render(){
   fill(ButtonColor);
   ellipse(Pos.x, Pos.y, Width, Height);
   fill(0);
   textAlign(CENTER);
   ellipseMode(CENTER);
   //textAlign(CENTER, CENTER); //aligns text in the center of the button
   //text(Text, Pos.x+(Width/2), Pos.y+(Height/2)); //text in the middle
   textSize(15);
   text(Text,Pos.x, Pos.y);
  }
  
  //function that we use in a if statement to check is button has been clicked
  boolean isClicked(){
     return Clicked;
  }
}
