
class Drink extends Object { // inherits from the object class
  
  String image_name;
  PImage load_image;
  
  Drink(int location_x, int location_y, int y_velocity) {
  super(location_x, location_y, y_velocity);
  image_name = "Beer.png";
  load_image = loadImage(image_name);
  }
  
  void display() {
    
  super.display();
  image(load_image ,location.x, location.y, size, size);
  }
  
  void borders() {
    if (location.y < 0 - radius) {
      border_bool = true;
    }
  
  
  }
  
  void product_interaction(Product product) {
    float distance_product = PVector.dist(location, product.location); 
    
      if (distance_product < size / 3 && mousePressed) {
        
        inProduct = false;
        
        product.update_product(image_name); // updates the product if component is in range
        border_bool = true; // reset the position of the component
        
      }
      if (inProduct == false) {
      
      inProduct = true;
      mousePressed = false;
    
    }
  
  
  
  }

}
