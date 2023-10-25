int selected = -1; // Untuk mengakses item dengan mouse
int viewItem = 0; // Untuk menampilkan item pada preview
boolean firstGet = true; // Untuk mengatasi bug item terbawa
                         // ketika mouse ditekan dan di-hover
                         // ke item
boolean observeMode = false; // Untuk mengganti layar ke 3D



// List Daftar Slot Item
places[] slots = {
  new places(1, 100, 150, 100),
  new places(2, 250, 150, 100),
  new places(3, 400, 150, 100),
  new places(4, 100, 300, 100),
  new places(5, 250, 300, 100),
  new places(6, 400, 300, 100)
};

item[] items = {
  new pond_hammer(slots[0].x, slots[0].y, slots[0]),
  new kunai(slots[1].x, slots[1].y, slots[1]),
  new air(slots[2].x, slots[2].y, slots[2]),
  new air(slots[3].x, slots[3].y, slots[3]),
  new air(slots[4].x, slots[4].y, slots[4]),
  new air(slots[5].x, slots[5].y, slots[5])
};



void mouseClicked(){
    for(int i = items.length - 1; i > -1; i--){
      if(items[i].getBox()){
        viewItem = i;
        break;
      }      
    }
}



void mouseDragged(){
  if(selected == -1){
    if(!firstGet) return; 
    for(int i = items.length - 1; i > -1; i--){
      if(items[i].getBox() &&
         items[i].getClass() != new air(0, 0, null).getClass()){
        selected = i;
        break;
      }
    firstGet = false;
    }
  } else{
    items[selected].x = mouseX;
    items[selected].y = mouseY;
  }
}



void mouseReleased(){
  firstGet = true;
  if(selected != -1){
    for (places slot : slots) {
      if(slot.getPos()){
        int item = getPlaceOwner(slot);
        items[item].box = items[selected].box;
        items[item].x = items[item].box.x;
        items[item].y = items[item].box.y;
        items[selected].box = slot;
        break;
      }
    }
    items[selected].x = items[selected].box.x;
    items[selected].y = items[selected].box.y;
  }
  
  selected = -1;
}

void setup() {
  hint(DISABLE_OPTIMIZED_STROKE);
  size(1600, 900, P3D);
  surface.setTitle("Item Inventory");
  surface.setLocation(0, 0);
}

void draw() {
  if(!observeMode){
    // ... kodingan untuk tampilan 2D
    background(255);
    
    for (places slot : slots) slot.build(); // menampilkan slot item
    for (item item : items) item.thumbnail(); // menampilkan thumbnail

    // Menampilkan preview
    noFill();
    translate(900, 100);
    square(100, 100, 200);
    items[viewItem].preview();
    
  } else{
    // ... kodingan untuk tampilan 3D
    // your code goes here.
    
  }
}
