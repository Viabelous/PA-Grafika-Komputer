// ========================================= SWAMP HAMMER ========================================= //
class swamp_hammer extends item {
  swamp_hammer(int xI, int yI) {
    super(xI, yI,
      "Swamp Hammer",
      "common");
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
    stroke(0);
    pushMatrix();
    strokeWeight(2);
    fill(206);
    quad(192, 291, 207, 301, 182, 432, 166, 426);

    fill(#816711);
    bezier(176, 132, 149, 378, 228, 309, 264, 253);
    quad(166, 424, 183, 428, 186, 452, 152, 444);

    fill(#8dbc92);
    arc(217, 250, 94, 38, radians(134), radians(439), PIE);
    arc(166, 231, 97, 33, radians(173), radians(497), PIE);
    arc(285, 260, 98, 29, radians(84), radians(419), PIE);

    fill(#7C8E7F);
    strokeWeight(2);
    beginShape();
    curveVertex(72, 105);
    curveVertex(402, 281);
    curveVertex(436, 106);
    curveVertex(86, 96);
    vertex(113, 42);
    curveVertex(647, 325);
    curveVertex(113, 42);
    curveVertex(77, 201);
    curveVertex(489, 108);
    endShape(CLOSE);

    stroke(#BAD3BD);
    fill(#BAD3BD);
    rotate(radians(10));
    ellipse(272, 59, 214, 15);
    ellipse(125, 58, 32, 6);
    ellipse(442, 118, 91, 167);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }

  void stats() {
    text(icon("atk", 0, 0) + "ATK 75", 0, 0);
  }

  void desc() {
    text("Martil aneh dengan desain mirip\n"+
      "benda-benda rawa.\n\n"+
      "Walau terlihat seperti terbuat dari\n"+
      "benda-benda rawa, martil ini sebenarnya\n"+
      "terbuat dari batuan berwarna hijau.", 0, 0);
  }
}



class kunai extends item {
  kunai(int xI, int yI) {
    super(xI, yI,
      "Kunai",
      "common");
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
    stroke(0);
    pushMatrix();
    scale(1.1);
    strokeWeight(4);

    fill(140);

    beginShape();
    vertex(237, 222);
    vertex(250, 154);
    vertex(50, 35);
    vertex(120, 244);
    vertex(203, 250);
    endShape();

    fill(140);
    circle(298, 334, 36);

    fill(#9B7B5B);
    beginShape();
    vertex(316, 326);
    bezierVertex(293, 325, 289, 337, 288, 351);
    vertex(201, 248);
    bezierVertex(201, 248, 203, 217, 236, 220);
    endShape(CLOSE);


    noFill();
    strokeWeight(30);
    stroke(140);
    circle(335, 375, 71);

    strokeWeight(4);
    stroke(0);

    arc(333, 374, 100, 100, radians(-110), radians(208), OPEN);
    circle(334, 374, 43);

    stroke(194);
    line(247, 155, 165, 160);
    line(54, 40, 165, 160);
    line(121, 242, 165, 160);
    fill(194);
    triangle(58, 44, 165, 160, 245, 155);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }

  void stats() {
    text(icon("atk", 0, 0) + "ATK 50", 0, 0);
  }

  void desc() {
    text("Pisau runcing multifungsi yang terbuat\n"+
      "dari mineral keras.\n\n"+
      "Saat dalam perkelahian, pengguna amatiran\n"+
      "biasanya akan melempar benda ini karena\n"+
      "tidak tahu perbedaan antara kunai dengan\n"+
      "tobikunai.", 0, 0);
  }
}





// ========================================= MAMMONS BLADE ========================================= //
class mammonsBlade extends item {
  mammonsBlade(int xI, int yI) {
    super(xI, yI,
      "Mammon's Blade",
      "rare");
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
    scale(1.8);
    translate(80, 184);
    rotate(radians(45));
    translate(-250, -250);
    rectMode(CORNER);

    fill(245, 78, 32);
    noStroke();
    rect(249, 272, 16, 34);


    fill(245, 234, 22);
    stroke(232, 221, 0);
    strokeWeight(5);
    rect(213, 250, 87, 28, 20);

    fill(235, 240, 235);
    stroke(186, 188, 186);
    strokeWeight(4);

    beginShape();
    vertex(253, 250);
    vertex(285, 252);
    vertex(287, 51);
    vertex(262, 11);

    vertex(259, 250);
    vertex(233, 252);
    vertex(234, 51);
    vertex(265, 11);
    endShape();

    fill(245, 234, 22);
    stroke(232, 221, 0);
    strokeWeight(4);
    circle(258, 310, 30);
    noFill();
    stroke(0);
    strokeWeight(3);
    line(220, 252, 236, 251);
    line(249, 278, 251, 297);
    line(265, 280, 266, 297);
    arc(259, 311, 34, 33, radians(-428), radians(-120));
    arc(284, 265, 37, 31, radians(-435), radians(-256));
    arc(229, 265, 34, 30, radians(-279), radians(-117));
    line(228, 280, 248, 279);
    line(266, 280, 284, 280);
    beginShape();
    vertex(287, 252);
    vertex(287, 51);
    vertex(261, 11);
    vertex(232, 52);
    vertex(234, 250);
    endShape();
    popMatrix();
  }





  void stats() {
    text(icon("atk", 0, 0) + "ATK 177", 0, 0);
  }



  void desc() {
    text("Pedang ini didapatkan di kedalaman\n"+
      "Dungeon of Avarice.\n\n"+
      "Terbuat dari iron dan emas, meskipun\n"+
      "terlihat biasa tapi memiliki damage yang\n"+
      "luar biasa", 0, 0);
  }
}





// ========================================= STONE AXE ========================================= //
class stoneAxe extends item {
  stoneAxe(int xI, int yI) {
    super(xI, yI,
      "Stone Axe",
      "common");
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

    scale(1.3);
    translate(250, 250);
    rotate(radians(-20));
    translate(-235, -350);
    rectMode(CORNER);
    fill(142, 112, 3);
    stroke(62, 49, 2);
    strokeWeight(4);
    rect(230, 150, 30, 272);
    fill(62, 49, 2);
    rect(235, 150, 5, 270);

    beginShape();
    noStroke();
    fill(137, 134, 124);
    curveVertex(386, -80);
    curveVertex(249, 163);
    curveVertex(164, 134);
    curveVertex(160, 195);
    curveVertex(170, 255);
    curveVertex(250, 235);
    curveVertex(377, 477);
    endShape();

    beginShape();
    noStroke();
    fill(193, 192, 185);
    curveVertex(180, 140);
    curveVertex(180, 140);
    curveVertex(140, 100);
    curveVertex(130, 195);
    curveVertex(140, 280);
    curveVertex(180, 256);
    curveVertex(180, 256);
    endShape();



    beginShape();
    stroke(0);
    noFill();
    curveVertex(368, -153);
    curveVertex(241, 167);
    curveVertex(146, 100);
    curveVertex(131, 195);
    curveVertex(144, 284);
    curveVertex(233, 243);
    curveVertex(108, 696);
    endShape();

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }



  void stats() {
    text(icon("atk", 0, 0) + "ATK 65", 0, 0);
  }



  void desc() {
    pushMatrix();
    translate(1, -27);
    text("Kapak yang terbuat dengan batu\n"+
      "dan memiliki gaggang kayu.\n\n"+
      "Biasa digunakan oleh pemula karena mudah\n"+
      "dibuat dan bahannya mudah didapat.\n"+
      "Dikatakan oleh penjual, kapak ini dapat\n"+
      "memberikan keberuntungan\n"+
      "(Walau kenyataannya tidak demikian). ", 0, 0);
    popMatrix();
  }
}





// ========================================= BASIC ARROW ========================================= //
class basicArrow extends countable {
  basicArrow(int xI, int yI, int quanI) {
    super(xI, yI,
      "Basic Arrow",
      "common", quanI);
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
    scale(1.5);
    translate(114, -126);
    rotate(radians(30));
    rectMode(CENTER);
    stroke(0);
    strokeWeight(4);

    // Membuat badan anak panah
    fill(#F8D5B9);
    rect(200, 200, 20, 200);

    fill(#E1915C);
    rect(200, 105, 18, 10, 2);
    rect(200, 115, 18, 10, 2);
    rect(200, 125, 18, 10, 2);

    fill(#FE3131);
    rect(200, 105, 18, 10, 2);
    rect(200, 115, 18, 10, 2);

    fill(#56A5CC);
    rect(200, 205, 18, 10, 2);

    fill(#FFFFFF);
    rect(200, 195, 18, 10, 2);
    rect(200, 215, 18, 10, 2);

    fill(#E1915C);
    rect(200, 275, 18, 10, 2);
    rect(200, 285, 18, 10, 2);
    rect(200, 295, 18, 10, 2);

    fill(#E9E3D4);
    // Membuat kepala anak panah
    beginShape();
    vertex(200, 51);
    bezierVertex(283, 190, 225, 50, 158, 117);
    endShape(CLOSE);

    // Membuat bulu ekor anak panah
    fill(#B39B8E);
    beginShape();
    vertex(210, 300);
    bezierVertex(324, 440, 242, 274, 210, 266);
    endShape(CLOSE);

    beginShape();
    vertex(190, 298);
    bezierVertex(112, 402, 104, 346, 190, 266);
    endShape(CLOSE);
    popMatrix();
  }


  void stats() {
    text(icon("atk", 0, 0) + "ATK +18", 0, 0);
  }



  void desc() {
    pushMatrix();
    text("Panah sederhana yang dibuat\n"+
      "dengan batu, kayu dan bulu ayam.\n\n"+
      "Panah ini bisa digunakan untuk berburu,\n"+
      "Berhati-hatilah saat menggunakannya!", 0, 0);
    popMatrix();
  }
}





// ========================================= ELDIS BOW ========================================= //
class eldisBow extends item {
  eldisBow(int xI, int yI) {
    super(xI, yI,
      "Eldis Bow",
      "uncommon");
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
    scale(1.5);
    translate(-100, 60);
    rotate(radians(-35));
    stroke(0);
    strokeWeight(4);
    rectMode(CENTER);

    fill(#895338);
    beginShape();
    vertex(105, 55);
    bezierVertex(456, 186, 292, 297, 189, 426);
    bezierVertex(72, 436, 479, 216, 109, 82);
    endShape(CLOSE);

    fill(#D7452D);
    beginShape();
    vertex(108, 57);
    bezierVertex(149, 69, 105, 95, 110, 72);
    endShape(CLOSE);

    beginShape();
    vertex(167, 421);
    bezierVertex(207, 380, 185, 440, 189, 424);
    endShape(CLOSE);

    fill(#2AA5D8);
    quad(295, 167, 258, 181, 255, 203, 315, 185);
    quad(310, 268, 263, 267, 258, 246, 324, 245);

    fill(#FFFFFF);
    beginShape();
    vertex(126, 91);
    vertex(131, 255);
    vertex(178, 394);
    vertex(184, 384);
    vertex(142, 250);
    vertex(137, 95);
    endShape();

    fill(#F5F1DF);
    textSize(24);
    pushMatrix();
    rotate(radians(13));
    text("M", 145, 56);
    popMatrix();
    pushMatrix();
    rotate(radians(-6));
    text("M", 149, 420);
    popMatrix();

    popMatrix();
  }



  void stats() {
    text(icon("atk", 0, 0) + "ATK 100\n\n" +
         "Hanya dapat dipakai bila terdapat anak\n"+
         "panah di inventory.", 0, 0);
  }



  void desc() {
    pushMatrix();
    text("Busur panah yang berasal dari kerajaan Eldia\n"+
      "yang memiliki ciri unik di kayunya.\n\n"+
      "Terbuat dari kayu pohon yang diambil dari\n"+
      "pegunungan Mathil, membuatnya menjadi\n"+
      "ringan dan kuat.", 0, 0);
    popMatrix();
  }
}
