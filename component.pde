abstract class item {
  int x;
  int y;
  places box;
  String name;
  boolean consumable = false;
  boolean observable;

  item(int xI, int yI, places boxI,
    String nameI, boolean obsI) {
    x = xI;
    y = yI;
    box = boxI;
    name = nameI;
    observable = obsI;
  }

  abstract void thumbnail();
  abstract void preview();
  void observe() {
  }
  abstract void stats();
  abstract void desc();



  boolean getBox() {
    return box.getPos();
  }
}

class places {
  int id;
  int x;
  int y;
  int size;
  boolean selected = false;

  places(int idI, int xI, int yI, int sizeI) {
    id = idI;
    x = xI;
    y = yI;
    size = sizeI;
  }

  void build() {
    rectMode(CENTER);
    if (!selected) {
      stroke(190, 192, 188);
    } else {
      stroke(241, 250, 15);
    }
    strokeWeight(2);
    fill(71, 78, 118);
    square(x, y, size);
  }

  boolean getPos() {
    return(mousePos(x-size/2, x+size/2, y-size/2, y+size/2));
  }
}


abstract class consumable extends item {
  int quantity = 0;
  boolean foodItem;

  consumable(int xI, int yI, places boxI,
    String nameI, boolean obsI, int quanI,
    boolean foodItemI) {
    super(xI, yI, boxI, nameI, obsI);
    super.consumable = true;
    quantity = quanI;
    foodItem = foodItemI;
  }
}

boolean mousePos(int xLeft, int xRight, int yUp, int yDown) {
  return(mouseX >= xLeft && mouseX <= xRight &&
    mouseY >= yUp && mouseY <= yDown);
}



int getPlaceOwner(places p) {
  int i = -1;
  for (item item : items) {
    i++;
    if (item.box.equals(p)) return i;
  }
  return -1;
}



class air extends item {
  air(int xI, int yI, places boxI) {
    super(xI, yI, boxI,
      "",
      false);
  }

  void preview() {
  }
  void thumbnail() {
  }
  void stats() {
  }
  void desc() {
  }
}



String icon(String namaIcon, int x, int y, float scl) {
  pushMatrix();
  scale(scl);
  translate(x, y);
  if (namaIcon == "atk") {
      pushMatrix();
      translate(25, 25); // Pusat pedang akan diatur di tengah jendela
    
      // Ubah ukuran pedang
      float scaleValue = 0.1;
      scale(scaleValue);
    
      fill(#1559FF);
      arc(200, 200, 100, 300, radians(0), radians(180), CHORD);
      
      fill(#FC3838);
      arc(200, 220, 80, 200, radians(0), radians(180), CHORD);
      
      fill(#FFFFFF);
      rect(195, 240, 10, 40);
      rect(180, 255, 40 ,10);
      popMatrix();
  } else if (namaIcon == "heal") {
  } else if (namaIcon == "mana") {
  } else if (namaIcon == "deffend") {
  } else if (namaIcon == "speed") {
  } else if (namaIcon == "inventory") {
  }
  popMatrix();

  return "         ";
}


void focus() {
  for (int i = items.length - 1; i > -1; i--) {
    if (items[i].box.id == idxSelected) {
      viewItem = i;
      idxSelected = items[i].box.id;
      break;
    }
  }
}


void keyNav(boolean con, int tr, int fs) {
  slots[idxSelected].selected = false;
  idxSelected = con ? tr : fs;
  audioClick.play();
}


item addItem(int id, int ids, int quan) {
  if (id == 0) return new air(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 1) return new pond_hammer(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 2) return new kunai(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 3) return new bsoj(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 4) return new squamaManitis(slots[ids].x, slots[ids].y, slots[ids], quan);
  if (id == 5) return new carrot(slots[ids].x, slots[ids].y, slots[ids], quan);
  if (id == 6) return new nightwalkersSight(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 7) return new magnificentSword(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 8) return new emeraldWings(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 9) return new skyfeatherBadge(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 10) return new bombby(slots[ids].x, slots[ids].y, slots[ids], quan);
  if (id == 11) return new rawMeat(slots[ids].x, slots[ids].y, slots[ids], quan);
  if (id == 12) return new stoneAxe(slots[ids].x, slots[ids].y, slots[ids]);
  if (id == 13) return new hynaPainting(slots[ids].x, slots[ids].y, slots[ids]);
  return null;
}

item addItem(int id, int ids) {
  return addItem(id, ids, 1);
}
