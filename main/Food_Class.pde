
class Food extends Object {
  
  
  boolean inProduct, game_end;
  String[] arr_image;
  PImage load_image;
  String rand_image;
    
  Food(int location_x, int location_y, int y_velocity) {
    
    super(location_x, location_y, y_velocity);
    arr_image = new String[]{"Cookie.png", "Chicken_Drumstick.png", "Watermelon.png", "Egg.png", "pizza.png"}; // array of images that is in the same file as main
    rand_image = arr_image[(int)random(arr_image.length)];
    load_image = loadImage(rand_image); // picks a random image from the array
    
  }
  
  
  
  void display() {
    
    super.display();
    image(load_image ,location.x, location.y, size, size); // displays the image 

  }
  
  
  
  void product_interaction(Product product) {
    
      float distance_product = PVector.dist(location, product.location); 
    
      if (distance_product < size / 3 && mousePressed) {
        
        inProduct = false;
        
        product.update_product(rand_image); // updates the product if component is in range
        border_bool = true; // reset the position of the component
        
      }
      if (inProduct == false) {
      
      inProduct = true;
      mousePressed = false;
    
    }
    
  }
  
  void reset_border() {
    super.reset_border();
    rand_image = arr_image[(int)random(arr_image.length)];
    load_image = loadImage(rand_image); // picks a random image from the array
  
  
  }
  
  

   
}
