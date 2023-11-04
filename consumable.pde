class carrot extends countable {
  carrot(int xI, int yI, int quanI) {
    super(xI, yI,
      "Carrot",
      "common", quanI);
    foodItem = true;
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

    stroke(0);
    strokeWeight(2);

    // Menggambar daun wortel
    fill(#65F965);
    beginShape();
    vertex(x + 100, y - size / 6);
    bezierVertex(x, y - size / 2, x - size / 6, y - size / 6, x - size / 2, y + size / 6);
    endShape(CLOSE);

    // Menggambar badan wortel
    stroke(0);
    strokeWeight(2);
    fill(#EE883A);

    beginShape();
    vertex(x, y);
    bezierVertex(x - size, y, x - size, y + size/2, x, y + size + y + 50);
    bezierVertex(x + size, y, x + size/2, y, x, y);
    endShape(CLOSE);

    // Menggambar bagian dalam wortel

    noStroke();
    fill(#FF923E);
    beginShape();
    vertex(x, y);
    bezierVertex(x - size + 10, y, x - size, y + size/2, x, y + size + y + 50);
    bezierVertex(x + size - 80, y, x + size/2, y + 10, x, y);
    endShape(CLOSE);

    fill(#EE883A);
    ellipse(x - size/5, y + size/2, x - 100, y / 2);
  }


  void stats() {
    text(icon("heal", 0, 0) + "HP +10", 0, 0);
  }

  void desc() {
    text("Bahkan sebuah wortel akan dapat\n"+
      "menyelamatkanmu di masa-masa kritis\n\n"+
      "Sering ditemukan di beberapa tempat\n"+
      "seperti perkebunan atau di chest yang\n"+
      "tersembunyi di goa maupun di hutan", 0, 0);
  }
}

class rawMeat extends countable {
  rawMeat(int xI, int yI, int quan) {
    super(xI, yI,
      "Raw Meat",
      "common", quan);
    foodItem = true;
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
    pushMatrix();
    translate(0, -10);
    text("Sumber nutrisi\n"+
      "atau makanan yang dapat mengembalikan,\n"+
      "energi, kesehatan, atau stamina.\n\n"+
      "ini sangat penting dalam situasi di mana\n"+
      "harus menghindari kematian atau kelelahan.", 0, 0);
    popMatrix();
  }
}


class happyCllate extends countable {
  happyCllate(int xI, int yI, int quan) {
    super(xI, yI,
      "Happy Cllate",
      "common", quan);
    foodItem = true;
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

    scale(3.9);
    translate(250, 250);
    rotate(radians(45));
    translate(-388, -147);
    rectMode(CORNER);

    stroke(0);
    strokeWeight(2);
    fill(132, 69, 19);
    rect(100, 100, 20, 20);
    rect(120, 100, 20, 20);
    rect(139, 100, 20, 20);
    rect(100, 120, 20, 20);
    rect(100, 140, 20, 20);
    rect(120, 120, 20, 20);
    rect(139, 120, 20, 20);
    rect(118, 140, 20, 20);
    rect(139, 140, 20, 20);
    fill(182, 15, 31);
    rect(97, 148, 64, 48);
    fill(214, 101, 114);
    triangle(83, 150, 97, 128, 131, 154);
    triangle(121, 154, 161, 116, 160, 150);




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
  }
}




class healPotion extends countable {
  healPotion(int xI, int yI, int quanI) {
    super(xI, yI,

      "Heal Potion",
      "common", quanI);
    foodItem = true;
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
    translate(45, -5);
    scale(0.9);

    //potion
    noStroke();
    fill(121, 11, 0);
    quad(283, 170, 392, 201, 142, 452, 50, 362);

    pushMatrix();
    noStroke();
    translate(275, 61);
    rotate(PI/4);
    arc(118, 371, 130, 130, 0, PI/1);
    popMatrix();

    //penutup potion bagian tengah
    noStroke();
    fill(108, 56, 0);
    quad(388, 82, 444, 142, 387, 182, 346, 136);

    //penutup potion bagian atas
    pushMatrix();
    translate(0, 0);
    rotate(PI/4);
    noStroke();
    fill(137, 73, 4);
    ellipse(374, -216, 78, 21);
    popMatrix();

    //penutup potion bagian bawah
    pushMatrix();
    translate(0, 0);
    rotate(PI/4);
    fill(108, 56, 0);
    ellipse(373, -147, 64, 21);
    popMatrix();

    //botol potion bagian tengah
    fill(255, 255, 255, 115);
    quad(354, 114, 416, 175, 142, 453, 50, 360);

    //botol potion bagian bawah
    pushMatrix();
    translate(275, 61);
    rotate(PI/4);
    arc(118, 371, 130, 130, 0, PI/1);
    popMatrix();

    //pembatas tutup potion
    noStroke();
    fill(255, 255, 255, 90);
    quad(343, 114, 414, 187, 407, 194, 336, 120);

    // ----------------- outline ----------------
    //penutup potion
    pushMatrix();
    translate(0, 0);
    rotate(PI/4);
    noFill();
    stroke(0);
    arc(373, -213, 81, 27, -3, PI/117);
    popMatrix();

    //botol potion bagian bawah
    pushMatrix();
    translate(275, 61);
    rotate(PI/4);
    arc(118, 371, 130, 130, 0, PI/1);
    popMatrix();

    //sisi kiri potion
    line(49, 362, 341, 125);
    //sisi kanan potion
    line(141, 455, 402, 189);

    //batas penutup potion
    //kiri atas
    line(361, 119, 354, 112);

    //kanan atas
    line(415, 173, 408, 166);

    //kiri sisi
    line(348, 119, 354, 112);
    //kiri bagian pembatas atas
    line(348, 119, 343, 114);
    //kiri sisi samping
    line(343, 114, 336, 121);
    //kiri bawah
    line(341, 126, 337, 121);

    //kanan bagian pembatas atas
    line(415, 188, 408, 181);
    //kanan bagian kanan sisi
    line(417, 173, 409, 182);
    //kanan bagian samping
    line(416, 187, 408, 195);
    //kanan bawah
    line(401, 189, 407, 194);

    //penutup potion kiri
    line(360, 119, 388, 82);
    //penutup potion kanan
    line(408, 167, 444, 141);

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }



  void stats() {
    text(icon("heal", 0, 0)+
      "HP +100", 0, 0);
  }



  void desc() {
    pushMatrix();
    translate(0, 0);
    text("Sebuah potion yang dibuat oleh\n"+
      "potioneer-potioneer berbakat di desa\n"+
      "barat. Diimport ke berbagai stall di berbagai\n"+
      "negara di penjuru benua Elzern.", 0, 0);
    popMatrix();
  }
}




class panamaBerry extends countable {
  panamaBerry(int xI, int yI, int quanI) {
    super(xI, yI,
      "Panama Berry",
      "common", quanI);
    foodItem = true;
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

    // Batang
    noFill();
    stroke(#937547);
    strokeWeight(21);
    curve(-694, 885, 111, 162, 450, 458, 432, 996);
    strokeWeight(8);
    curve(117, 590, 310, 197, 337, 290, 297, 246);
    curve(435, 240, 275, 187, 256, 358, 279, 295);
    curve(100, 372, 210, 145, 221, 253, 27, 959);
    curve(179, 403, 158, 159, 126, 339, 249, 750);
    curve(34, 54, 136, 103, 167, 143, 227, 209);
    curve(82, 163, 95, 143, 124, 155, 69, 154);
    curve(218, 223, 212, 161, 200, 178, 241, 200);
    curve(246, 74, 268, 170, 285, 112, 437, 32);
    curve(329, 343, 355, 327, 377, 310, 461, 266);
    curve(404, 340, 390, 311, 410, 262, 531, 206);
    
    // line Batang
    strokeWeight(2);
    stroke(0);
    line(440, 462, 460, 454);
    curve(743, 1176, 460, 454, 412, 266, 718, 204);
    curve(247, 359, 406, 264, 386, 292, 375, 484);
    curve(704, 1127, 440, 462, 376, 315, 305, 205);
    curve(309, 388, 353, 335, 383, 310, 393, 313);
    curve(242, 398, 346, 329, 379, 302, 440, 267);
    curve(219, 537, 315, 198, 331, 288, 244, 269);
    curve(146, 595, 311, 193, 340, 291, 258, 340);
    curve(228, 85, 344, 264, 372, 307, 368, 301);
    curve(376, 282, 344, 231, 385, 292, 345, 269);
    curve(218, 153, 273, 166, 334, 220, 421, 356);
    curve(283, 114, 273, 166, 284, 118, 360, 65);
    curve(313, 282, 265, 161, 278, 113, 223, 177);
    curve(218, 185, 275, 192, 335, 252, 412, 363);
    curve(358, 280, 275, 192, 259, 350, 314, 638);
    curve(400, 233, 269, 186, 252, 348, 290, 177);
    curve(79, 391, 217, 143, 219, 246, 121, 554);
    curve(124, 357, 210, 140, 228, 244, 45, 929);
    curve(318, 216, 269, 186, 240, 171, 166, 152);
    curve(375, 258, 230, 166, 204, 176, 239, 130);
    curve(199, 169, 201, 160, 196, 172, 205, 201);
    curve(236, 130, 264, 160, 239, 149, 183, 137);
    curve(318, 216, 269, 186, 240, 171, 166, 152);
    curve(409, 211, 231, 146, 169, 139, 295, 134);
    curve(289, 216, 201, 160, 115, 172, 168, 187);
    curve(237, 130, 157, 160, 129, 327, 198, 630);
    curve(192, 502, 120, 328, 146, 163, 242, 152);
    curve(47, 87, 141, 102, 173, 148, 178, 111);
    curve(65, 98, 135, 107, 163, 151, 169, 187);
    
    curve(237, 129, 158, 140, 122, 148, 103, 164);
    curve(141, 156, 122, 148, 95, 139, 37, 152);
    curve(149, 186, 110, 152, 95, 146, 79, 136);
    line(110, 153, 115, 171);
    
    // Daun
    strokeWeight(3);
    stroke(0);
    fill(#3DB760);
    bezier(51, 41, 129, 204, 208, 37, 51, 41);
    bezier(28, 145, 87, 228, 145, 72, 28, 145);
    bezier(380, 48, 353, 223, 144, 52, 380, 48);
    bezier(173, 236, 275, 185, 144, 125, 173, 236);
    bezier(478, 170, 514, 358, 267, 241, 478, 170);
    bezier(297, 365, 407, 367, 339, 252, 297, 365);
    
    // Buah
    stroke(0);
    fill(0);
    circle(127, 377, 20);
    circle(221, 309, 18);
    circle(256, 405, 6);
    circle(335, 327, 16);
    
    rectMode(CORNER);
    strokeWeight(2);
    fill(213, 62, 62);
    rect(99, 326, 55, 58, 30);
    fill(213, 74, 63);
    rect(312, 283, 48, 50, 30);
    fill(230, 98, 57);
    rect(189, 244, 67, 69, 34);
    fill(213, 133, 63);
    rect(228, 348, 55, 58, 30);

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }



  void stats() {
    text(icon("heal", 0, 0)+
      "HP +5\n\n"+
      "Dapat langsung dimakan atau dijadikan\n"+
      "bahan untuk memasak.", 0, 0);
  }



  void desc() {
    pushMatrix();
    translate(0, 0);
    text("Buah yang sedikit manis dan dapat\n"+
      "berbuah di mana-mana di sepanjang jalan\n"+
      "benua Elzern.\n\n"+
      "Anak-anak sangat menyukai buah ini.", 0, 0);
    popMatrix();
  }
}
