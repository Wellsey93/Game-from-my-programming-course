
class Score { // class that tracks the score for the player
  
  int score_value, prev_score;
  String[] high_score;
  
  Score() {
    
    score_value = 0; 
    high_score = loadStrings("HIGH_SCORE.txt"); // a file that holds the current high score
    prev_score = int(high_score[0]);
  }
  
  void display_score() {
    
    fill(0);
    String score_text = "SCORE: " + str(score_value);
    text(score_text, width / 1.3, height / 15); // displays the score on the top right of the screen
  
  }
  
  void add_score() {
    
    score_value += 10; // adds score to the value
  
  }
  
  boolean compare_file() {
   
    if (score_value >= prev_score) { // if current score is greater than the one in file....
     
      String[] new_high_score = {str(score_value)};
      saveStrings("HIGH_SCORE.txt", new_high_score); // replace the score with the current one
      return true;
    } else {
      return false;
    
    } 
  }
  
  
  void display_high_score() {
    
    if (compare_file()) { // displays two different texts dependant if the current high score is bigger than the other
      text("The new high score is: " + str(score_value), width / 2, height / 1.5);
    } else {
      text("The high score is still: " + high_score[0], width / 2, height / 1.5);
    
    
    }
  
  }
  
}
