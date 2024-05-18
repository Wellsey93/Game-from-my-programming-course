// initialising necessary classes
Product product1;

Object[] objects;

gameOver game_over;

Score score;

Hearts hearts;

void setup() {
  
  int x_axis = width / 5;
  size(1000, 750);
  ellipseMode(CENTER);
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER);
  textSize(50);
  // initialises the necessary classes into objects
  product1 = new Product(100);
  objects = new Object[5];
  game_over = new gameOver();
  score = new Score();
  hearts = new Hearts();
  
  for (int i = 0; i <= 4; i++) { // adding the inherited objects to the object array.
    
    if (i == 3) {
      
    objects[i] = new Drink(x_axis, height + 37, -2);
    
    } else {
      
      objects[i] = new Food(x_axis, 0 - 37, int(random(3, 6)));
    
    }
    
    x_axis += 150; 
  
  }
 
}



void draw() {
  background(255);
  if (game_over.endGame(hearts)) { // checks if the hearts are above 3
  
   if (score.score_value < 50) {
      
      player_stage(1, 2);
      
   }
   if (score.score_value >= 50 && score.score_value < 100) {
     
     player_stage(2, 3);
   
   }
   if (score.score_value >= 100) {
     
     player_stage(3, 4);
      
   }
   
  } else { // if not, display a game over screen and display the high score
    
    game_over.displayText(); 
    score.display_high_score();
    // This sets both the product and components to null when the game has ended
    product1 = null;                                                         
    for (int i = 0; i < 4; i++) {       
         objects[i] = null;     
       }
    
    }
  
}

void player_stage(int req_components, int num_components) { // Afunction that reduces repeated code in the draw function
     product1.display(req_components);
     product1.borders(score, hearts, req_components);
      
      
     for (int i = 0; i < num_components; i++) {
       objects[i].display();
       objects[i].product_interaction(product1);
       
      
     }


}
