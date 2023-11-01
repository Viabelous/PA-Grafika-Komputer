abstract class item {
  int x;
  int y;
  String name;
  boolean consumable = false;
  boolean observable;

  item(int xI, int yI,
       String nameI, boolean obsI) {
    x = xI;
    y = yI;
    name = nameI;
    observable = obsI;
  }

  abstract void thumbnail();
  abstract void preview();
  void observe() {}
  abstract void stats();
  abstract void desc();
}



class places {
  int id;
  int itemIndex;
  int x;
  int y;
  int size;
  boolean selected = false;

  places(int idI, int itemIndexI, int xI, int yI, int sizeI) {
    id = idI;
    itemIndex = itemIndexI;
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
    items[itemIndex].thumbnail();
    if(items[itemIndex].consumable == true){
        if(((countable)items[itemIndex]).quantity != 1){
          textSize(20);
          fill(255);
          text(((countable)items[itemIndex]).quantity, x-45, y+40);
        }
      }
  }

  boolean getPos() {
    return(mousePos(x-size/2, x+size/2, y-size/2, y+size/2));
  }
}



abstract class countable extends item {
  int quantity = 0;
  boolean foodItem;

  countable(int xI, int yI, String nameI,
            boolean obsI, int quanI,
            boolean foodItemI) {
    super(xI, yI, nameI, obsI);
    super.consumable = true;
    quantity = quanI;
    foodItem = foodItemI;
  }
}



boolean mousePos(int xLeft, int xRight, int yUp, int yDown) {
  return(mouseX >= xLeft && mouseX <= xRight &&
    mouseY >= yUp && mouseY <= yDown);
}



class air extends item {
  air(int xI, int yI) {
    super(xI, yI, "", false);
  }

  void preview() {}
  void thumbnail() {}
  void stats() {}
  void desc() {}
}



String icon(String namaIcon, int x, int y, float scl) {
  pushMatrix();
  scale(scl);
  translate(x, y);
  if (namaIcon == "def") {
      pushMatrix();
      float scaleValue = 0.1;
      scale(scaleValue);
    
      fill(#1559FF);
      arc(200, -130, 100, 300, radians(0), radians(180), CHORD);
      
      fill(#FC3838);
      arc(200, -110, 80, 200, radians(0), radians(180), CHORD);
      
      fill(#FFFFFF);
      rect(200, -60, 10, 40);
      rect(200, -60, 40, 10);
      popMatrix();
  } else if (namaIcon == "heal") {
  } else if (namaIcon == "atk") {
  } else if (namaIcon == "speed") {
  }
  popMatrix();

  return "         ";
}


void focus() {
  viewItem = slots[idxSelected].itemIndex; // ubah Preview
}


void keyNav(boolean con, int tr, int fs) {
  slots[idxSelected].selected = false;
  idxSelected = con ? tr : fs;
  audioClick.play();
}


item addItem(int id, int ids, int quan) {
  if (id == 0) return new air(slots[ids].x, slots[ids].y);
  if (id == 1) return new swamp_hammer(slots[ids].x, slots[ids].y);
  if (id == 2) return new kunai(slots[ids].x, slots[ids].y);
  if (id == 3) return new bsoj(slots[ids].x, slots[ids].y);
  if (id == 4) return new squamaManitis(slots[ids].x, slots[ids].y, quan);
  if (id == 5) return new carrot(slots[ids].x, slots[ids].y, quan);
  if (id == 6) return new nightwalkersSight(slots[ids].x, slots[ids].y);
  if (id == 7) return new magnificentSword(slots[ids].x, slots[ids].y);
  if (id == 8) return new emeraldWings(slots[ids].x, slots[ids].y);
  if (id == 9) return new skyfeatherBadge(slots[ids].x, slots[ids].y);
  if (id == 10) return new bombby(slots[ids].x, slots[ids].y, quan);
  if (id == 11) return new rawMeat(slots[ids].x, slots[ids].y, quan);
  if (id == 12) return new stoneAxe(slots[ids].x, slots[ids].y);
  if (id == 13) return new hynaPainting(slots[ids].x, slots[ids].y);
  if (id == 14) return new kitsuneMask(slots[ids].x, slots[ids].y);
  return null;
}

item addItem(int id, int ids) {
  return addItem(id, ids, 1);
}
