int selected = -1; // Untuk mengakses item dengan mouse
int viewItem = 0; // Untuk menampilkan item pada preview
boolean firstGet = true; // Untuk mengatasi bug item terbawa
// ketika mouse ditekan dan di-hover
// ke item
boolean observeMode = false; // Untuk mengganti layar ke 3D
int idxSelected = 0;



// List Daftar Slot Item
places[] slots = {
  new places(0, 125, 475, 100),
  new places(1, 275, 475, 100),
  new places(2, 425, 475, 100),
  new places(3, 575, 475, 100),
  new places(4, 725, 475, 100),
  new places(5, 875, 475, 100),
  new places(6, 1025, 475, 100),
  new places(7, 1175, 475, 100),
  new places(8, 1325, 475, 100),
  new places(9, 1475, 475, 100),
  new places(10, 125, 625, 100),
  new places(11, 275, 625, 100),
  new places(12, 425, 625, 100),
  new places(13, 575, 625, 100),
  new places(14, 725, 625, 100),
  new places(15, 875, 625, 100),
  new places(16, 1025, 625, 100),
  new places(17, 1175, 625, 100),
  new places(18, 1325, 625, 100),
  new places(19, 1475, 625, 100),
  new places(20, 125, 775, 100),
  new places(21, 275, 775, 100),
  new places(22, 425, 775, 100),
  new places(23, 575, 775, 100),
  new places(24, 725, 775, 100),
  new places(25, 875, 775, 100),
  new places(26, 1025, 775, 100),
  new places(27, 1175, 775, 100),
  new places(28, 1325, 775, 100),
  new places(29, 1475, 775, 100)
};

item[] items = {
  addItem(1, 0), addItem(2, 1), addItem(0, 2),
  addItem(0, 3), addItem(0, 4), addItem(0, 5),
  addItem(0, 6), addItem(0, 7), addItem(0, 8),
  addItem(0, 9), addItem(0, 10), addItem(0, 11),
  addItem(0, 12), addItem(0, 13), addItem(0, 14),
  addItem(0, 15), addItem(0, 16), addItem(0, 17),
  addItem(0, 18), addItem(0, 19), addItem(0, 20),
  addItem(0, 21), addItem(0, 22), addItem(0, 23),
  addItem(0, 24), addItem(0, 25), addItem(0, 26),
  addItem(0, 27), addItem(0, 28), addItem(0, 29)
};



void mouseClicked() {
  for (int i = items.length - 1; i > -1; i--) {
    if (items[i].getBox()) {
      viewItem = i;
      slots[idxSelected].selected = false;
      idxSelected = items[i].box.id;
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

  focus();

  selected = -1;
}



void keyPressed() {
  if (key == CODED || key == 'w' || key == 'a'
    || key == 'd' || key == 'd') {
    if (keyCode == UP || key == 'w') {
      slots[idxSelected].selected = false;
      idxSelected = (idxSelected - 9 <= 0) ?
        20 + idxSelected : idxSelected - 10;
    } else if (keyCode == RIGHT || key == 'd') {
      slots[idxSelected].selected = false;
      idxSelected = (idxSelected == 29) ?
        0 : idxSelected + 1;
    } else if (keyCode == LEFT || key == 'a') {
      slots[idxSelected].selected = false;
      idxSelected = (idxSelected == 0) ?
        29 : idxSelected - 1;
    } else if (keyCode == DOWN || key == 's') {
      slots[idxSelected].selected = false;
      idxSelected = (idxSelected + 10 >= 30) ?
        idxSelected - 20 : idxSelected + 10;
    }
  }

  focus();
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
    slots[idxSelected].selected = true;

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

    // tombol Observe
    if(items[viewItem].observable){
      fill(52, 58, 106);
      stroke(159, 162, 185);
      strokeWeight(2);
      rect(90, 270, 220, 60);
      fill(255);
      textSize(16);
      textSize(40);
      text("OBSERVE", 10, 280);
    }


    // Menampilkan Box Desc
    fill(65, 71, 124);
    translate(550, 70);
    stroke(159, 162, 185);
    strokeWeight(5);
    rect(250, 70, 1000, 350, 200);
    line(-160, -90, 650, -90);
    line(-160, 230, 650, 230);
    line(245, -70, 245, 200);
    line(-190, -70, -190, 200);
    line(670, -70, 670, 200);
    arc(-172, -80, 35, 38, radians(-38), radians(155));
    arc(-172, 209, 38, 41, radians(-163), radians(70));
    arc(657, -80, 30, 30, radians(12), radians(211));
    arc(652, 207, 38, 38, radians(-267), radians(-22));
    line(-210, -20, -210, 150);
    line(690, -20, 690, 150);
    line(-230, -0, -230, 130);
    line(710, -0, 710, 130);
    rect(250, 70, 43, 60, 100);


    // membuat border di pinggir
    stroke(49, 53, 85);
    strokeWeight(30);
    line(-700, -124, 900, -124);
    line(885, -120, 885, 900);
    line(-700, 746, 870, 746);
    line(-686, -110, -686, 740);
  
    
  } else {
    // ... kodingan untuk tampilan 3D
    // your code goes here.
  }
}
