int selected = -1; // Untuk mengakses item dengan mouse
int viewItem = 0; // Untuk menampilkan item pada preview
boolean firstGet = true; // Untuk mengatasi bug item terbawa
// ketika mouse ditekan dan di-hover
// ke item
boolean observeMode = false; // Untuk mengganti layar ke 3D



// List Daftar Slot Item
places[] slots = {
  new places(1, 125, 775, 100),
  new places(2, 275, 775, 100),
  new places(3, 425, 775, 100),
  new places(4, 575, 775, 100),
  new places(5, 725, 775, 100),
  new places(6, 875, 775, 100),
  new places(7, 1025, 775, 100),
  new places(8, 1175, 775, 100),
  new places(9, 1325, 775, 100),
  new places(10, 1475, 775, 100),
  new places(11, 125, 625, 100),
  new places(12, 275, 625, 100),
  new places(13, 425, 625, 100),
  new places(14, 575, 625, 100),
  new places(15, 725, 625, 100),
  new places(16, 875, 625, 100),
  new places(17, 1025, 625, 100),
  new places(18, 1175, 625, 100),
  new places(19, 1325, 625, 100),
  new places(20, 1475, 625, 100),
  new places(21, 125, 475, 100),
  new places(22, 275, 475, 100),
  new places(23, 425, 475, 100),
  new places(24, 575, 475, 100),
  new places(25, 725, 475, 100),
  new places(26, 875, 475, 100),
  new places(27, 1025, 475, 100),
  new places(28, 1175, 475, 100),
  new places(29, 1325, 475, 100),
  new places(30, 1475, 475, 100)
};

item[] items = {
  new pond_hammer(slots[0].x, slots[0].y, slots[0]),
  new kunai(slots[1].x, slots[1].y, slots[1]),
  new air(slots[2].x, slots[2].y, slots[2]),
  new air(slots[3].x, slots[3].y, slots[3]),
  new air(slots[4].x, slots[4].y, slots[4]),
  new air(slots[5].x, slots[5].y, slots[5]),
  new air(slots[6].x, slots[6].y, slots[6]),
  new air(slots[7].x, slots[7].y, slots[7]),
  new air(slots[8].x, slots[8].y, slots[8]),
  new air(slots[9].x, slots[9].y, slots[9]),
  new air(slots[10].x, slots[10].y, slots[10]),
  new air(slots[11].x, slots[11].y, slots[11]),
  new air(slots[12].x, slots[12].y, slots[12]),
  new air(slots[13].x, slots[13].y, slots[13]),
  new air(slots[14].x, slots[14].y, slots[14]),
  new air(slots[15].x, slots[15].y, slots[15]),
  new air(slots[16].x, slots[16].y, slots[16]),
  new air(slots[17].x, slots[17].y, slots[17]),
  new air(slots[18].x, slots[18].y, slots[18]),
  new air(slots[19].x, slots[19].y, slots[19]),
  new air(slots[20].x, slots[20].y, slots[20]),
  new air(slots[21].x, slots[21].y, slots[21]),
  new air(slots[22].x, slots[22].y, slots[22]),
  new air(slots[23].x, slots[23].y, slots[23]),
  new air(slots[24].x, slots[24].y, slots[24]),
  new air(slots[25].x, slots[25].y, slots[25]),
  new air(slots[26].x, slots[26].y, slots[26]),
  new air(slots[27].x, slots[27].y, slots[27]),
  new air(slots[28].x, slots[28].y, slots[28]),
  new air(slots[29].x, slots[29].y, slots[29])
};



void mouseClicked() {
  for (int i = items.length - 1; i > -1; i--) {
    if (items[i].getBox()) {
      viewItem = i;
      break;
    }
  }
}



void mouseDragged() {
  if (selected == -1) {
    if (!firstGet) return;
    for (int i = items.length - 1; i > -1; i--) {
      if (items[i].getBox() &&
        items[i].getClass() != new air(0, 0, null).getClass()) {
        selected = i;
        break;
      }
      firstGet = false;
    }
  } else {
    items[selected].x = mouseX;
    items[selected].y = mouseY;
  }
}



void mouseReleased() {
  firstGet = true;
  if (selected != -1) {
    for (places slot : slots) {
      if (slot.getPos()) {
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
  if (!observeMode) {
    // ... kodingan untuk tampilan 2D
    background(114, 120, 152);

    for (places slot : slots) slot.build(); // menampilkan slot item
    for (item item : items) item.thumbnail(); // menampilkan thumbnail

    // Menampilkan preview
    fill(71, 78, 118);
    translate(150, 70);
    square(100, 100, 200);
    stroke(43, 46, 72);
    strokeWeight(5);
    line(0, 0, 200, 0);
    line(200, 0, 200, 200);
    stroke(159, 162, 185);
    strokeWeight(5);
    line(0, 0, 0, 200);
    line(0, 200, 200, 200);
    items[viewItem].preview();
    
    // Membuat tombol Observe
    fill(52, 58, 106);
    stroke(159, 162, 185);
    strokeWeight(2);
    rect(90, 270, 220, 60);
    fill(255); 
    textSize(16); 
    textSize(40);
    text("OBSERVE", 10, 280); 


    // Menampilkan Box Desc
    fill(65, 71, 124);
    translate(550, 70);
    rect(250, 70, 1000, 350, 200);
    stroke(159, 162, 185);
    strokeWeight(5);
    line(-160, -90, 650, -90);
    line(-160, 230, 650, 230);
    line(245, -70, 245, 200);
    line(-190, -70, -190, 200);
    line(670, -70, 670, 200);
    arc(-175, -80, 30, 30, radians(-41), radians(159));
    arc(-170, 209, 34, 34, radians(-166), radians(88));
    arc(657, -80, 30, 30, radians(12), radians(211));
    arc(652, 209, 34, 34, radians(-267), radians(-22));
    line(-210, -20, -210, 150);
    line(690, -20, 690, 150);
    line(-230, -0, -230, 130);
    line(710, -0, 710, 130);
    rect(250, 70, 70, 60, 100);
    
    

  
    
  } else {
    // ... kodingan untuk tampilan 3D
    // your code goes here.
  }
}
