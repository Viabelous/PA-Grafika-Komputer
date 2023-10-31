class carrot extends consumable {
  carrot(int xI, int yI, places boxI, int quanI) {
    super(xI, yI, boxI,
      "Carrot",
      false, quanI, true);
  }

  void preview() {
    pushMatrix();
    scale(0.4);
    build();
    popMatrix();
  };

  void thumbnail() {
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);
    build();
    popMatrix();
  }

  void build() {
    float x = 250;
    float y = 90;
    float size = 200;

    strokeWeight(2);

    // Menggambar daun wortel
    noStroke();
    fill(#65F965);
    beginShape();
    vertex(x + 100, y - size / 2);
    bezierVertex(x, y - size / 2, x - size / 2 + 10, y - size / 2, x - size / 2 + 10, y + size / 4);
    endShape(CLOSE);

    // Menggambar badan wortel
    fill(#EE883A);

    beginShape();
    vertex(x, y);
    bezierVertex(x - size, y, x - size, y + size/2, x, y + size*2);
    bezierVertex(x + size, y, x + size/2, y, x, y);
    endShape(CLOSE);

    // Menggambar bagian dalam wortel
    fill(#FF923E);
    beginShape();
    vertex(x, y);
    bezierVertex(x - size + 10, y, x - size, y + size/2, x, y + size*2);
    bezierVertex(x + size - 80, y, x + size/2, y + 10, x, y);
    endShape(CLOSE);

    fill(#EE883A);
    ellipse(x - size/5, y + size/2, x - 100, y / 2);
  }


  void stats() {
    text("Tipe: Sayuran", 0, 0);
  }

  void desc() {
    text("Bahkan sebuah wortel akan dapat\n"+
      "menyelamatkanmu di masa-masa kritis", 0, 0);
  }
}

class rawMeat extends consumable {
  rawMeat(int xI, int yI, places boxI, int quan) {
    super(xI, yI, boxI,
      "Raw Meat",
      false, quan, true);
  }

  void preview() {
    pushMatrix();
    scale(0.4);
    build();
    popMatrix();
  };

  void thumbnail() {
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);
    build();
    popMatrix();
  }

  void build() {
    pushMatrix();

    rectMode(CORNER);
    scale(1.7);
    translate(-100, -113);
    stroke(180, 32, 2);

    strokeWeight(5);

    beginShape();
    fill(203, 91, 78);
    stroke(0);
    curveVertex(130, 270);
    curveVertex(130, 270);
    curveVertex(124, 298);
    curveVertex(217, 364);
    curveVertex(375, 220);
    curveVertex(360, 183);
    curveVertex(360, 183);
    endShape();



    beginShape();
    fill(206, 64, 48);
    stroke(0);
    curveVertex(293, 286);
    curveVertex(293, 286);
    curveVertex(192, 336);
    curveVertex(128, 276);
    curveVertex(167, 228);
    curveVertex(198, 163);
    curveVertex(359, 184);
    curveVertex(294, 287);
    curveVertex(294, 287);
    endShape();



    beginShape();
    fill(144, 21, 7);
    stroke(219, 106, 106);
    curveVertex(183, 310);
    curveVertex(183, 310);
    curveVertex(192, 316);
    curveVertex(150, 276);
    curveVertex(182, 230);
    curveVertex(242, 227);
    curveVertex(254, 249);
    curveVertex(212, 309);
    curveVertex(212, 309);
    endShape();

    beginShape();
    fill(144, 21, 7);
    stroke(219, 106, 106);
    curveVertex(347, 225);
    curveVertex(343, 187);
    curveVertex(269, 171);
    curveVertex(215, 190);
    curveVertex(226, 214);
    curveVertex(278, 240);
    curveVertex(296, 252);
    curveVertex(341, 215);
    curveVertex(341, 215);
    endShape();

    arc(268, 332, 57, 40, radians(-188), radians(-77));
    rect(210, 204, -20, 10, 10);
    rect(259, 269, 24, 10, 10);
    rect(250, 242, 39, 43, 34);
    rect(199, 340, 20, 19, 10);

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }


  // buat fungsi di bawah ini jika dan hanya jika
  // benda memiliki mode observe (3D)
  void observe() {
    pushMatrix();

    // ... kodingan untuk tampilan 3D

    popMatrix();
  }



  void stats() {

    // ... kodingan untuk teks stat
  }



  void desc() {

    // ... kodingan untuk teks deskripsi
  }
}
