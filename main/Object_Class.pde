
class Object { // object class at which the components inherit from

  PVector location, velocity, mouse;
  boolean border_bool, in_product, inProduct;
  int radius, size, static_x, set_y_location, set_y_velocity;
  
  Object(int location_x, int location_y, int y_velocity) {
  
    radius = size / 2;
    size = 75;
    set_y_location = location_y - radius;
    set_y_velocity = y_velocity;
    location = new PVector(location_x, location_y - radius);
    velocity = new PVector(0, y_velocity);
    mouse = new PVector(mouseX, mouseY);
    border_bool = false;
    inProduct = true;
    static_x = location_x;
  }

  void display() {
    location.add(velocity);
    borders();
    float distance = mouse_distance();
    mouse_pressed(distance);
    if (border_bool) {
      reset_border();
    }
  
  }
  
  void borders() {
    if (location.y > height + radius) {
      border_bool = true;
    }
  
  }
  
  void reset_border() {
    
    border_bool = false;
    
    
    location.y = set_y_location;
    
    velocity.y = set_y_velocity;
    
  }
  
 float mouse_distance() { 
    
    mouse.set(mouseX, mouseY);
    float distance = PVector.dist(mouse, location); 
    return distance;
    
  }
  
  void mouse_pressed(float distance) {
    
    if ((mousePressed && distance < radius) && inProduct) { // 
          
           radius = width;
           location.x = mouse.x;
           location.y = mouse.y;
                    
        } else {
          radius = size / 2;
          location.x = static_x;
       
        } 
    
  
  
  }
  
  
  void product_interaction(Product product) {
    
  }
  
}
