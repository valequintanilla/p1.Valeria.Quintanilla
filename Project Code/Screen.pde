class Screen{
  PVector Pos = new PVector(0,0); // position 
  float Width = 0; //width of screen
  float Height = 0; //height of screen
  color ScreenColor; 
  float textsize;
  String Text; //text inside screen
  
  
  Screen(int x, int y, int w, int h, String t, int r, int g, int b, int ts){
    Pos.x = x;
    Pos.y = y;
    Width = w;
    Height = h;
    ScreenColor = color(r,g,b);
    Text = t;
    textsize= ts;
  }
  //Displays the screen 
   void render(){
   fill(ScreenColor);
   rect(Pos.x, Pos.y, Width, Height);
   fill(255,255,255);
   textAlign(CENTER,CENTER);//aligns text in the center of the button
   textSize(textsize);
   text(Text, Pos.x+(Width/2), Pos.y+(Height/2)); //text in the middle
   
  }

}
