class Required_Components {
  
  StringList list_images;
  String[] arr_image;
  int x, y, size, amount;
  PImage image;
  boolean initial_add;
  String drink_image;
  Required_Components() {
        
    size = 50;
    list_images = new StringList();
    arr_image = new String[]{"Cookie.png", "Chicken_Drumstick.png", "Watermelon.png", "Egg.png", "pizza.png"};
    drink_image = "Beer.png";
    
    initial_add = true;
    
    
    
  }
  
  
  void add_initial_components(int amount) { // adds the first components at the start of the game
    if (initial_add) {
      while (list_images.size() < amount) { 
        list_images.append(arr_image[(int)random(0, arr_image.length)]); 
      
      }
    }
    initial_add = false;
  
  }
  void add_final_component() { // adds thew final drink component to the array list
    list_images.append(drink_image);
  
  }
  
  void add_components(int amount) { // adds three images to the Stringlist 
    while (list_images.size() < amount) {
      list_images.append(arr_image[(int)random(0, arr_image.length)]);
    
    }
  
  }
  
  void delete_component(int index) { // removes component at a specified index 
     list_images.remove(index);
  
  }
  
  void display(float product_x, float product_y) { // displays Required components above product class
    float y = product_y - size;
  
    for (String item : list_images) { 
      image = loadImage(item);
      image(image, product_x, y, size, size);
      y -= size;
      
    }
    y = product_y - size;
    
  
  }
  
  void remove_all_components() { // removes all images from the StringList(list_images)
    
    for (int i = 0; i < list_images.size(); i++) {
      list_images.remove(i);
    
    }
  
  }
    
}
