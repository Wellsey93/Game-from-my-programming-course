
class Product {
  
  PVector location, velocity;
  int size;
  
  boolean game_over_check;
  
  
  Required_Components required_components;
  
  
  PImage lunch_box; 
  
  Product(int givensize) {
    
    location = new PVector(width + size / 2, height / 1.5);
    velocity = new PVector(-1, 0);
    
    lunch_box = loadImage("LunchBox.png");
    
    required_components = new Required_Components();
    size = givensize;
    
    
        
  }
 
  void display(int comp_amount) {
    
     // if the game is not over:
    
           
    image(lunch_box, location.x, location.y, size, size);
         
    location.add(velocity);
    
    hearts.display_hearts();
    required_components.add_initial_components(comp_amount);
    required_components.display(location.x, location.y);
    score.display_score();
    
    
    
    if (location.x < width + size / 2 && required_components.list_images.size() == 0) { // if all required components have been reached.......
      velocity.x = -5; // increase the velocity that affects the x movement of the product
    }
  
  }
  
  void borders(Score score, Hearts hearts, int comp_amount) { // checks if the product has reached the edge of the screen
    
    if (location.x < 0 - size / 2) {
      
      if (required_components.list_images.size() == 0) { // if the product has collided with the components
        required_components.add_components(comp_amount);
        score.add_score(); // adds to the score at the top right of the screen
        if (comp_amount >= 3) {
          required_components.add_final_component();
        
        }
        
      } else {
          hearts.num_hearts--; // otherwise decrease the number of hearts
          required_components.remove_all_components();
          required_components.add_components(comp_amount);
          if (comp_amount >= 3) {
          required_components.add_final_component();
        
        }
        
             
      }
      
      location.x = width + size / 2;
      velocity.x = -1; // return the product back to its original speed
      
    }
    
  }
  
  void update_product(String image) { // used in the component class to change the product when a collision is detected
    if (required_components.list_images.size() > 0) {
      
      for (int i = 0; i < required_components.list_images.size(); i++) {
        
        if (required_components.list_images.get(i) == image) {
          
          required_components.delete_component(i);
          break;
          
        }
      }
        
    }
    
  }
  
}
