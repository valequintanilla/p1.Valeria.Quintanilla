class Timer{
  float Time;

  //constructor when creating a new timer
  Timer(float set){
  Time = set;
  }
  //getTime returns the current time
  float getTime(){
    return(Time);
  }
  //setTime sets the timer to whatever your temp variable ex: 10 , 60 seconds
  void setTime(float set){
    Time = set;
  }  
  //countUp updates the timer by counting up this must be in void draw to work.
  void countUp(){
    Time += 1/frameRate;
  }
  void countDown(){
    Time -= 1/frameRate;
  }
}
