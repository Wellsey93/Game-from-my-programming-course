// class that displays the game over screen
class gameOver {
  
  String game_over;
  
  
  gameOver() {
    game_over = "Game Over";
   
    
  }
  
  boolean endGame(Hearts hearts) { // boolean method that checks if the hearts are present
    
    if (hearts.check_hearts_empty()) {
      
      return false;
      
    } else {
      
      return true;
    }
  }
  
  void displayText() { // displays the game over string when the game ends
    
      fill(0);
      text("GAME OVER", width / 2, height / 2);
    
  }
    
}
