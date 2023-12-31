abstract class item {
  int x;
  int y;
  String name;
  String rarity; //{air, common, uncommon, rare, unique, myth}
  boolean countable = false;
  boolean discardable = true;
  boolean observable = false;

  item(int xI, int yI,
    String nameI, String rarityI) {
    x = xI;
    y = yI;
    name = nameI;
    rarity = rarityI;
  }

  abstract void thumbnail();
  abstract void preview();
  void observe() {
  }
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
    if (items[itemIndex].countable == true) {
      if (((countable)items[itemIndex]).quantity != 1) {
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
  boolean foodItem = false;

  countable(int xI, int yI, String nameI,
    String rarityI, int quanI) {
    super(xI, yI, nameI, rarityI);
    super.countable = true;
    quantity = quanI;
  }
}



boolean mousePos(int xLeft, int xRight, int yUp, int yDown) {
  return(mouseX >= xLeft && mouseX <= xRight &&
    mouseY >= yUp && mouseY <= yDown);
}



class air extends item {
  air() {
    super(-1, -1, "", "");
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



String icon(String namaIcon, int x, int y) {
  pushMatrix();
  translate(x-5, y);
  if (namaIcon == "def") {
    pushMatrix();
    scale(0.1);

    fill(#1559FF);
    arc(200, -130, 100, 300, radians(0), radians(180), CHORD);

    fill(#FC3838);
    arc(200, -110, 80, 200, radians(0), radians(180), CHORD);

    fill(#FFFFFF);
    rect(200, -60, 10, 40);
    rect(200, -60, 40, 10);
    popMatrix();
  } else if (namaIcon == "heal") {
    pushMatrix();
    translate(2, -1);
    scale(0.2);
    rectMode(CORNER);

    int iconX = 30; // Koordinat X untuk ikon "heal"
    int iconY = -60; // Koordinat Y untuk ikon "heal"

    // Icon Heal
    fill(#35C183); // Warna hijau
    stroke(0);
    rect(iconX, iconY, 100, 60, 20); // Membuat first aid

    // Tanda +
    fill(#FFFFFF); // Warna putih
    noStroke();
    rect(iconX + 42, iconY + 10, 15, 40); // Membuat tanda plus horizontal
    rect(iconX + 29, iconY + 23, 40, 15); // Membuat tanda plus vertikal

    popMatrix();
  } else if (namaIcon == "atk") {
    pushMatrix();
    scale(0.08);
    rectMode(CORNER);

    float centerX = 220; // Koordinat X untuk pusat pedang
    float centerY = 250; // Koordinat Y untuk pusat pedang

    translate(centerX, centerY);
    rotate(radians(45));
    translate(-centerX-200, -centerY+50);

    // pedang
    beginShape();
    vertex(centerX - 12, centerY - 250);
    vertex(centerX + 20, centerY - 248);
    vertex(centerX + 22, centerY - 447);
    vertex(centerX - 3, centerY - 487);
    vertex(centerX - 6, centerY - 248);
    vertex(centerX - 32, centerY - 246);
    vertex(centerX - 31, centerY - 447);
    vertex(centerX + 0, centerY - 487);
    endShape();

    // Holder ganggang pedang
    fill(#F53952);
    ellipse(centerX - 5, centerY - 165, 50, 20);

    // Ganggang pedang
    fill(#1C72FA);
    rect(centerX - 15, centerY - 223, 20, 54);

    fill(#60A3AA);
    stroke(#7741BF);
    strokeWeight(3);
    rect(centerX - 51, centerY - 245, 87, 28, 10);

    popMatrix();
  } else if (namaIcon == "speed") {
    pushMatrix();
    translate(-2, -2);
    scale(0.1);
    rectMode(CENTER);

    int coorX = 200;
    int coorY = -30;

    // Menggambar pelindung mata kaki sepatu
    fill(#EFA65E);
    stroke(#3F250F);
    strokeWeight(5);
    rect(coorX, coorY - 20, 90, 50);

    strokeWeight(3);
    arc(coorX + 45, coorY + 95, 120, 100, radians(270), radians(360), PIE);

    // Menggambar bagian sepatu
    stroke(#3F250F);
    strokeWeight(3);
    fill(#D39255);
    beginShape();
    vertex(coorX - 40, coorY + 5);
    vertex(coorX - 35, coorY - 20);
    vertex(coorX - 40, coorY - 45);
    vertex(coorX + 40, coorY + 5);

    vertex(coorX + 40, coorY);
    vertex(coorX + 35, coorY - 20);
    vertex(coorX + 40, coorY - 45);
    endShape(CLOSE);

    fill(#B56C30);
    strokeWeight(4);
    rect(coorX, coorY + 52, 90, 85);

    fill(#7A481F);
    rect(coorX, coorY + 30, 80, 5);
    rect(coorX, coorY + 60, 80, 5);

    fill(#CC8C4E);
    rect(coorX + 30, coorY + 108, 150, 20, 2);

    popMatrix();
  }
  popMatrix();

  fill(255);
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



void alert(int num) {
  if (num == 0) {
    logs += "> ERROR: Perintah salah\n";
  } else if (num == 1) {
    logs += "> ERROR: Perintah tidak dikenali\n";
  } else if (num == 2) {
    logs += "> HINT: Sesuaikan '/add {item_id} {quantity<opsional>}'\n";
  } else if (num == 3) {
    logs += "> ERROR: Item dengan ID tersebut tidak ditemukan'\n";
  } else if (num == 4) {
    logs += "> ERROR: Inventory penuh\n";
  } else if (num == 5) {
    logs += "> HINT: Sesuaikan '/del {slot_num}'\n";
  } else if (num == 6) {
    logs += "> HINT: Sesuaikan '/set {slot_num} {item_id} {quantity<opsional>}'\n";
  } else if (num == 7) {
    logs += "> HINT: Sesuaikan '/check {item_id}'\n";
  }
}



int findEmptySlot() {
  for (int i = 0; i < slots.length; i++) {
    if (items[slots[i].itemIndex].name == "") {
      return i;
    }
  }
  return -1;
}



item addItem(int id, int ids, int quan) {
  if (id == 0) return new air();
  if (id == 1) return new swamp_hammer(slots[ids].x, slots[ids].y);
  if (id == 2) return new kunai(slots[ids].x, slots[ids].y);
  if (id == 3) return new bsoj(slots[ids].x, slots[ids].y);
  if (id == 4) return new squamaManitis(slots[ids].x, slots[ids].y, quan);
  if (id == 5) return new carrot(slots[ids].x, slots[ids].y, quan);
  if (id == 6) return new nightwalkersSight(slots[ids].x, slots[ids].y);
  if (id == 7) return new mammonsBlade(slots[ids].x, slots[ids].y);
  if (id == 8) return new emeraldWings(slots[ids].x, slots[ids].y);
  if (id == 9) return new skyfeatherBadge(slots[ids].x, slots[ids].y);
  if (id == 10) return new bombby(slots[ids].x, slots[ids].y, quan);
  if (id == 11) return new rawMeat(slots[ids].x, slots[ids].y, quan);
  if (id == 12) return new stoneAxe(slots[ids].x, slots[ids].y);
  if (id == 13) return new hynaPainting(slots[ids].x, slots[ids].y);
  if (id == 14) return new kitsuneMask(slots[ids].x, slots[ids].y);
  if (id == 15) return new happyCllate(slots[ids].x, slots[ids].y, quan);
  if (id == 16) return new starmagisBook(slots[ids].x, slots[ids].y);
  if (id == 17) return new healPotion(slots[ids].x, slots[ids].y, quan);
  if (id == 18) return new sapphireChunk(slots[ids].x, slots[ids].y, quan);
  if (id == 19) return new firefly(slots[ids].x, slots[ids].y, quan);
  if (id == 20) return new goldOilLamp(slots[ids].x, slots[ids].y, quan);
  if (id == 21) return new letter(slots[ids].x, slots[ids].y);
  if (id == 22) return new panamaBerry(slots[ids].x, slots[ids].y, quan);
  if (id == 23) return new pinkPrism(slots[ids].x, slots[ids].y, quan);
  if (id == 24) return new basicArrow(slots[ids].x, slots[ids].y, quan);
  if (id == 25) return new eldisBow(slots[ids].x, slots[ids].y);
  if (id == 26) return new melancia(slots[ids].x, slots[ids].y, quan);
  if (id == 27) return new baseball(slots[ids].x, slots[ids].y, quan);
  if (id == 28) return new glacialWings(slots[ids].x, slots[ids].y);
  return null;
}

// @overloading
item addItem(int id, int ids) {
  return addItem(id, ids, 1);
}
