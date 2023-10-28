import processing.sound.*;

int selected = -1; // Untuk mengakses item dengan mouse
int viewItem = 0; // Untuk menampilkan item pada preview
boolean firstGet = true; // Untuk mengatasi bug item terbawa
SoundFile audioClick; // Untuk menggunakan sound saat berpindah2 item
// ketika mouse ditekan dan di-hover
// ke item
String mode = "inventory"; // Untuk mengganti layar {inventory, observe}
int idxSelected = 0;

boolean dragObserve = false; // untuk mouse pada mode 3D
float rotY = 0;
float rotYNow = 0;
float xNow = 0;
float rotX = 0;
float rotXNow = 0;
float yNow = 0;

float scaleFactor = 1.0;
float translateX = 0.0;
float translateY = 0.0;


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
  addItem(1, 0), addItem(2, 1), addItem(3, 2),
  addItem(4, 3, 10), addItem(0, 4), addItem(0, 5),
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
  if (mode == "inventory") {
    for (int i = items.length - 1; i > -1; i--) {
      if (items[i].getBox()) {
        viewItem = i;
        slots[idxSelected].selected = false;
        idxSelected = items[i].box.id;
        audioClick.play();
        break;
      }
    }

    if (items[viewItem].observable &&
      mousePos(130, 345, 310, 365)) mode = "observe";
  } else if (mode == "observe") {
    if (mousePos(20, 60, 25, 70)) mode = "inventory";
  }
}




void mouseDragged() {
  if (mode == "inventory") {
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
  } else if (mode == "observe") {
    if (!dragObserve) {
      xNow = mouseX;
      rotYNow = rotY;
    }
    dragObserve = true;
    rotY = rotYNow + (xNow - mouseX)/100;

    if (!dragObserve) {
      yNow = mouseY;
      rotXNow = rotX;
    }
    dragObserve = true;
    rotX = rotXNow + (yNow - mouseY)/100;
  }
}



void mouseReleased() {
  if (mode == "inventory") {
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
  } else if (mode == "observe") {
    dragObserve = false;
    xNow = 0;
    yNow = 0;
  }
}



void mouseWheel(MouseEvent e) {
  float delta = e.getCount() > 0 ? 1.05 : e.getCount() < 0 ? 1.0/1.05 : 1.0;
  scaleFactor *= delta;
  translateX = (delta*translateX) + mouseX * (1 - delta);
  translateY = (delta*translateY) + mouseY * (1 - delta);
}


void keyPressed() {
  if (mode == "inventory") {
    if (key == CODED || key == 'w' || key == 'a'
      || key == 'd' || key == 's') {
      if (keyCode == UP || key == 'w') {
        keyNav(idxSelected - 9 <= 0,
               20 + idxSelected,
               idxSelected - 10);
               
      } else if (keyCode == RIGHT || key == 'd') {
        keyNav(idxSelected == 29,
               0,
               idxSelected + 1);
               
      } else if (keyCode == LEFT || key == 'a') {
        keyNav(idxSelected == 0,
               29,
               idxSelected - 1);
               
      } else if (keyCode == DOWN || key == 's') {
        keyNav(idxSelected + 10 >= 30,
               idxSelected - 20,
               idxSelected + 10);
               
      }
    }
    
    if (key == 'q') {
      for (int i = items.length - 1; i > -1; i--) {
        if (items[i].box.id == idxSelected) {
          
          if(items[i].consumable == true){
            ((consumable)items[i]).quantity -= 1;
            
            if(((consumable)items[i]).quantity == 0){
              items[i] = addItem(0, idxSelected);
            }
          }
          break;
        }
      }
     }

    focus();
  } else if (mode == "observe") {
    if (key == 'r') {
      scaleFactor = 1;
      translateX = 0.0;
      translateY = 0.0;
      audioClick.play();
    }
  }
}



void setup() {
  hint(DISABLE_OPTIMIZED_STROKE);
  size(1600, 900, P3D);
  surface.setTitle("Item Inventory");
  surface.setLocation(0, 0);
  audioClick = new SoundFile(this, "./audio/click_item.wav");
}

void draw() {
  if (mode == "inventory") {
    // ... kodingan untuk tampilan 2D
    background(114, 120, 152);
    slots[idxSelected].selected = true;

    for (places slot : slots) slot.build(); // menampilkan slot item
    for (item item : items)
    {
      item.thumbnail();
      if(item.consumable == true){
        if(((consumable)item).quantity != 1){
          textSize(20);
          fill(255);
          text(((consumable)item).quantity, item.box.x-45, item.box.y+40);
        }
      }
    }; // menampilkan thumbnail

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
    if (items[viewItem].observable) {
      fill(52, 58, 106);
      stroke(159, 162, 185);
      strokeWeight(2);
      rect(90, 270, 220, 60);
      fill(255);
      textSize(40);
      text("OBSERVE", 10, 283);
      textSize(12);
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
  } else if (mode == "observe") {
    // ... kodingan untuk tampilan 3D
    // your code goes here.
    background(0);

    // tombol kembali ke tampilan 2d
    pushMatrix();
    translate(30, 50, 10);

    noStroke();
    fill(150, 0, 0);
    quad(40, -18, 45, -14, 45, 24, 40, 20);
    quad(4, 25, 0, 20, 45, 20, 44, 25);
    fill(215, 0, 0);
    rect(20, 0, 40, 40);

    fill(255);
    textSize(26);
    text("x", 13, 7);
    popMatrix();

    //
    pushMatrix();
    strokeWeight(2);
    stroke(150);
    translate(width/2, height/2, 0);
    rotateY(rotY);
    rotateX(rotX);

    scale(scaleFactor);

    noFill();
    stroke(50);
    box(1000);

    pushMatrix();
    fill(255);
    stroke(255);
    translate(0, 250, 0);
    beginShape();
    vertex(100, 100);
    endShape();
    popMatrix();

    items[viewItem].observe();
    popMatrix();
  }
}
