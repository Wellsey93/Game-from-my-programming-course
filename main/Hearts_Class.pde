
class Hearts { // class that displays hearts at the top of the screen

  int size, num_hearts;
  PImage heart;
  
  Hearts() {
    
    size = 50;
    num_hearts = 3;
    heart = loadImage("heart.png"); // heart image to be displayed
  
  }
  
  void display_hearts() { // displays hearts at the top of the screen
    
    
    for (int i = 1; i <= num_hearts; i++) {    
      image(heart, i * size, 30, size, size);
    }
  
  }
  
  boolean check_hearts_empty() { // checks if hearts are empty
    
    if (num_hearts == 0) {
       return true;
    
    } else {
      return false;
    
    }
  }
  
}
