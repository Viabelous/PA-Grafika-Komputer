class squamaManitis extends countable {
  squamaManitis(int xI, int yI, int quanI) {
    super(xI, yI,
      "Squama Manitis",
      "uncommon", quanI);
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
    stroke(0);
    strokeWeight(2);

    scale(0.9);
    translate(20, 40);
    fill(#69645a);
    beginShape();
    vertex(77, 95);
    bezierVertex(117, 59, 266, -39, 443, 94);
    vertex(380, 414);
    bezierVertex(277, 469, 228, 395, 121, 410);
    endShape(CLOSE);

    fill(#60584b);
    noStroke();
    beginShape();
    vertex(94, 208);
    bezierVertex(217, 215, 266, 310, 416, 225);
    vertex(380, 414);
    bezierVertex(277, 469, 228, 395, 121, 410);
    endShape(CLOSE);

    fill(#4d4e20);
    noStroke();
    beginShape();
    vertex(114, 359);
    bezierVertex(217, 286, 258, 540, 392, 346);
    vertex(380, 414);
    bezierVertex(277, 469, 228, 395, 121, 410);
    endShape(CLOSE);

    stroke(#4d4e20);
    line(91, 83, 143, 386);
    line(118, 69, 174, 399);
    line(145, 54, 204, 408);
    line(205, 32, 239, 424);
    line(257, 25, 264, 415);
    line(314, 34, 293, 428);
    line(357, 45, 318, 422);
    line(401, 69, 337, 419);
    line(289, 28, 280, 430);
    line(428, 83, 356, 424);
    line(380, 56, 329, 416);
    line(339, 39, 306, 432);

    line(230, 29, 252, 416);
    line(172, 41, 223, 412);

    noStroke();
    fill(224, 39);
    ellipse(261, 91, 197, 69);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }

  void stats() {
    text("Dapat dijadikan bahan tempa atau\n"+
      "obat-obatan", 0, 0);
  }

  void desc() {
    pushMatrix();
    textSize(19);
    translate(0, -30);
    text("Sisik yang keras dari hewan monster\n"+
      "Pholidolphs untuk melindungi dirinya\n"+
      "sekaligus menyerang musuh di hadapan.\n\n"+
      "Kekerasannya yang tahan lama memikat para\n"+
      "penempa, sayangnya sisik ini tidak sekuat\n"+
      "benda logam dalam menahan panas sehingga\n"+
      "perlu keahlian khusus jika ingin menempanya.", 0, 0);
    popMatrix();
  }
}

class bombby extends countable {
  bombby(int xI, int yI, int quan) {
    super(xI, yI,
      "Bombby",
      "uncommon", quan);
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

    stroke(0);
    strokeWeight(4);
    scale(2.1);
    translate(-144, -54);

    rectMode(CORNER);
    fill(57, 55, 52);
    circle(263, 200, 150);
    fill(85, 82, 76);
    rect(229, 110, 51, 32, 55);

    noStroke();
    fill(108, 106, 101);
    rect(240, 109, 28, 15, 8);

    beginShape();
    fill(0);
    curveVertex(230, 110);
    curveVertex(256, 111);
    curveVertex(250, 80);
    curveVertex(288, 90);
    curveVertex(288, 75);
    curveVertex(240, 75);
    curveVertex(246, 110);
    curveVertex(246, 110);
    endShape();

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
    text(icon("atk", 0, 0) + "ATK 100", 0, 0);
  }



  void desc() {
    pushMatrix();
    translate(0, -20);
    textSize(18);
    text("alat untuk meledakkan atau menghancurkan\n"+
      "objek. Biasanya digunakan untuk menciptakan\n"+
      "efek ledakan yang dramatis, mengalahkan\n"+
      "lawan, atau memecahkan teka-teki dalam\n"+
      "dungeon. Penggunaan bom tidak selalu tanpa\n"+
      "risiko. Penggunanya juga perlu berhati-hati agar\n"+
      "tidak terkena ledakan dari bom mereka sendiri,\n"+
      "yang dapat menyebabkan kerusakan.", 0, 0);
    popMatrix();
  }
}


class sapphireChunk extends countable {
  sapphireChunk(int xI, int yI, int quanI) {
    super(xI, yI,
      "Sapphire chunk",
      "uncommon", quanI);
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
    stroke(0);

    strokeWeight(2);
    stroke(0);

    //cahaya sapphire
    pushMatrix();
    fill(196, 233, 255, 115);
    translate(-77, -60, 0);
    scale(1.2);
    beginShape();
    vertex(279, 94);
    vertex(217, 112);
    vertex(198, 179);
    vertex(195, 252);
    vertex(230, 350);
    vertex(316, 416);
    vertex(354, 360);
    vertex(381, 227);
    vertex(339, 132);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-82, -116, 0);
    scale(1.3);
    beginShape();
    vertex(127, 291);
    vertex(99, 344);
    vertex(125, 402);
    vertex(167, 432);
    vertex(195, 392);
    vertex(199, 342);
    vertex(156, 305);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-148, -120);
    scale(1.3);
    beginShape();
    vertex(446, 321);
    vertex(463, 371);
    vertex(453, 412);
    vertex(413, 432);
    vertex(397, 405);
    vertex(395, 370);
    vertex(404, 336);
    endShape(CLOSE);
    popMatrix();

    //base sapphire
    noStroke();
    fill(2, 107, 162);
    pushMatrix();
    translate(-21, 0);
    beginShape();
    vertex(279, 94);
    vertex(217, 112);
    vertex(198, 179);
    vertex(195, 252);
    vertex(230, 350);
    vertex(316, 416);
    vertex(354, 360);
    vertex(381, 227);
    vertex(339, 132);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-35, 0);
    beginShape();
    vertex(127, 291);
    vertex(99, 344);
    vertex(125, 402);
    vertex(167, 432);
    vertex(195, 392);
    vertex(199, 342);
    vertex(156, 305);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-19, 0);
    beginShape();
    vertex(446, 321);
    vertex(463, 371);
    vertex(453, 412);
    vertex(413, 432);
    vertex(397, 405);
    vertex(395, 370);
    vertex(404, 336);
    endShape(CLOSE);
    popMatrix();

    //sapphire bagian tengah
    fill(5, 95, 149);
    pushMatrix();
    translate(-21, 0);
    beginShape();
    vertex(282, 96);
    vertex(217, 115);
    vertex(198, 180);
    vertex(197, 255);
    vertex(232, 350);
    vertex(315, 416);
    vertex(332, 360);
    vertex(334, 230);
    vertex(316, 171);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-35, 0);
    beginShape();
    vertex(128, 294);
    vertex(100, 346);
    vertex(124, 402);
    vertex(167, 430);
    vertex(180, 392);
    vertex(179, 358);
    vertex(156, 323);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-19, 0);
    beginShape();
    vertex(440, 323);
    vertex(445, 375);
    vertex(436, 412);
    vertex(415, 432);
    vertex(398, 405);
    vertex(396, 370);
    vertex(403, 336);
    endShape(CLOSE);
    popMatrix();

    //sapphire bagian gelap
    fill(0, 83, 130);
    pushMatrix();
    translate(-21, 0);
    beginShape();
    vertex(263, 99);
    vertex(216, 115);
    vertex(200, 180);
    vertex(197, 255);
    vertex(232, 350);
    vertex(315, 414);
    vertex(267, 327);
    vertex(250, 230);
    vertex(235, 171);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-35, 0);
    beginShape();
    vertex(126, 295);
    vertex(100, 346);
    vertex(124, 402);
    vertex(167, 430);
    vertex(140, 392);
    vertex(124, 358);
    vertex(125, 323);
    endShape(CLOSE);
    popMatrix();

    pushMatrix();
    translate(-19, 0);
    beginShape();
    vertex(440, 323);
    vertex(415, 358);
    vertex(408, 391);
    vertex(414, 432);
    vertex(398, 405);
    vertex(395, 370);
    vertex(407, 336);
    endShape(CLOSE);
    popMatrix();

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }

  void stats() {
    text("Dapat dilelehkan untuk membuat\n"+
      "atribut dan dapat digunakankan sebagai\n"+
      "bahan enchantment.", 0, 0);
  }


  void desc() {
    pushMatrix();
    text("Batu berwarna biru laut yang dapat\n"+
      "ditemukan di kedalaman +2500m sampai\n"+
      "dengan kedalaman +4000m yang merupakan\n"+
      "area mining sapphire.\n", 0, 0);
    popMatrix();
  }
}




class firefly extends countable {
  int rotA = 0;
  int rotB = 0;
  int time = 0;

  firefly(int xI, int yI, int quanI) {
    super(xI, yI,
      "Firefly",
      "uncommon", quanI);
  }

  void preview() {
    pushMatrix();
    scale(0.4);
    stroke(0);

    noFill();
    strokeWeight(1);
    bezier(150, 397, 144, 365, 319, 348, 350, 397);

    strokeWeight(4);
    fill(#f0f0e7, 80);
    beginShape();
    curveVertex(305, -27);
    curveVertex(150, 390);
    curveVertex(350, 390);
    curveVertex(178, 17);
    vertex(350, 140);
    curveVertex(200, 50);
    curveVertex(350, 140);
    curveVertex(150, 140);
    curveVertex(143, -50);
    endShape(CLOSE);


    pushMatrix();
    translate(250, 225);
    rotate(radians(rotA));
    translate(-250, -225);

    translate(250, 315);
    rotate(radians(-rotB));
    translate(-250, -315);


    stroke(#FFE290);
    strokeWeight(25);
    point(250, 250);
    stroke(#FFEBB2);
    strokeWeight(20);
    point(250, 250);
    stroke(#FFF3D3);
    strokeWeight(15);
    point(250, 250);
    stroke(255);
    strokeWeight(10);
    point(250, 250);
    popMatrix();

    strokeWeight(4);
    stroke(0);
    fill(#CE576F);
    ellipse(250, 140, 215, 73);
    fill(#5792ce);
    ellipse(250, 122, 187, 54);
    fill(#CE576F);
    ellipse(250, 105, 215, 73);
    fill(#a9465b);
    strokeWeight(2);
    ellipse(250, 110, 15, 8);
    ellipse(250, 90, 15, 8);
    ellipse(210, 100, 15, 8);
    ellipse(290, 100, 15, 8);
    fill(255, 90);
    noStroke();
    ellipse(310, 295, 55, 213);

    if (time < 72) {
      rotA += (rotA == 355) ? -355 : 5;
    } else {
      rotB += (rotB == 357) ? -357 : 3;
    }
    fill(0);

    time += (time == 191) ? -191 : 1;
    popMatrix();
  };

  void thumbnail() {
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);
    stroke(0);

    noFill();
    strokeWeight(1);
    bezier(150, 397, 144, 365, 319, 348, 350, 397);

    strokeWeight(4);
    fill(#f0f0e7, 80);
    beginShape();
    curveVertex(305, -27);
    curveVertex(150, 390);
    curveVertex(350, 390);
    curveVertex(178, 17);
    vertex(350, 140);
    curveVertex(200, 50);
    curveVertex(350, 140);
    curveVertex(150, 140);
    curveVertex(143, -50);
    endShape(CLOSE);

    stroke(#FFE290, 150);
    fill(#FFE290, 120);
    beginShape();
    vertex(227, 241);
    bezierVertex(294, 290, 179, 293, 301, 356);
    bezierVertex(184, 292, 319, 292, 239, 226);
    endShape();
    stroke(#FFE290);
    strokeWeight(25);
    point(230, 230);
    stroke(#FFEBB2);
    strokeWeight(20);
    point(230, 230);
    stroke(#FFF3D3);
    strokeWeight(15);
    point(230, 230);
    stroke(255);
    strokeWeight(10);
    point(230, 230);


    strokeWeight(4);
    stroke(0);
    fill(#CE576F);
    ellipse(250, 140, 215, 73);
    fill(#5792ce);
    ellipse(250, 122, 187, 54);
    fill(#CE576F);
    ellipse(250, 105, 215, 73);
    fill(#a9465b);
    strokeWeight(2);
    ellipse(250, 110, 15, 8);
    ellipse(250, 90, 15, 8);
    ellipse(210, 100, 15, 8);
    ellipse(290, 100, 15, 8);
    fill(255, 90);
    noStroke();
    ellipse(310, 295, 55, 213);
    fill(0);
    popMatrix();
  }


  void stats() {
    text("Dapat digunakan sebagai bahan untuk\n"+
      "membuat material, peralatan, ataupun\n"+
      "atribut.", 0, 0);
  }


  void desc() {
    pushMatrix();
    textSize(18);
    text("Spesies kumbang yang dapat mengeluarkan\n"+
      "cahaya menggunakan serbuk luminesens di\n"+
      "badannya yang transparan.\n\n"+
      "Di wilayah timur, kumbang ini dipercaya\n"+
      "adalah jiwa yang tersesat, sehingga mereka\n"+
      "mulai mengadakan festival penangkapan yang\n"+
      "kemudian bersamaan akan dilepaskan di padang\n"+
      "rumput luas.", 0, -30);
    popMatrix();
  }
}

class letter extends item {
  letter(int xI, int yI) {
    super(xI, yI,
      "Letter",
      "common");
  }

  void preview() {
    pushMatrix();
    scale(0.4);
    stroke(0);

    rectMode(CENTER);

    int coorX = 250;
    int coorY = 250;

    fill(#A3A6AF);
    strokeWeight(5);
    rect(coorX, coorY, 300, 200);

    fill(#FC7A7A);
    rect(coorX, coorY - 70, 160, 60);

    fill(#CECECE);
    rect(coorX, coorY + 80, 150, 40);

    line(coorX - 50, coorY + 70, coorX - 50, coorY + 98);
    line(coorX - 20, coorY + 70, coorX - 20, coorY + 98);
    line(coorX + 20, coorY + 70, coorX + 20, coorY + 98);
    line(coorX + 50, coorY + 70, coorX + 50, coorY + 98);

    // Menggambar Love (bayangan)
    fill(#BC1B1B); // Warna merah tua
    beginShape();
    vertex(coorX, coorY);

    bezierVertex(coorX + 60, coorY - 60, coorX + 80, coorY, coorX + 5, coorY + 40);
    bezierVertex(coorX - 60, coorY - 10, coorX - 20, coorY - 40, coorX, coorY);
    endShape(CLOSE);

    // Menggambar Love
    fill(#FF4343); // Warna merah
    beginShape();
    vertex(coorX, coorY);

    bezierVertex(coorX + 40, coorY - 60, coorX + 70, coorY - 20, coorX, coorY + 35);
    bezierVertex(coorX - 60, coorY - 10, coorX - 40, coorY - 60, coorX, coorY);
    endShape(CLOSE);

    // Menambahkan tulisan "H.Y.N.A"
    fill(#FFFFFF); // Warna hitam untuk teks
    textSize(30);
    text("H.Y.N.A", coorX - 45, coorY - 60);

    popMatrix();
  };

  void thumbnail() {
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);
    stroke(0);
    rectMode(CENTER);

    int coorX = 250;
    int coorY = 250;

    fill(#A3A6AF);
    strokeWeight(5);
    rect(coorX, coorY, 300, 200);

    fill(#FC7A7A);
    rect(coorX, coorY - 70, 160, 60);

    fill(#CECECE);
    rect(coorX, coorY + 80, 150, 40);

    line(coorX - 50, coorY + 70, coorX - 50, coorY + 98);
    line(coorX - 20, coorY + 70, coorX - 20, coorY + 98);
    line(coorX + 20, coorY + 70, coorX + 20, coorY + 98);
    line(coorX + 50, coorY + 70, coorX + 50, coorY + 98);

    // Menggambar Love (bayangan)
    fill(#BC1B1B); // Warna merah tua
    beginShape();
    vertex(coorX, coorY);

    bezierVertex(coorX + 60, coorY - 60, coorX + 80, coorY, coorX + 5, coorY + 40);
    bezierVertex(coorX - 60, coorY - 10, coorX - 20, coorY - 40, coorX, coorY);
    endShape(CLOSE);

    // Menggambar Love
    fill(#FF4343); // Warna merah
    beginShape();
    vertex(coorX, coorY);

    bezierVertex(coorX + 40, coorY - 60, coorX + 70, coorY - 20, coorX, coorY + 35);
    bezierVertex(coorX - 60, coorY - 10, coorX - 40, coorY - 60, coorX, coorY);
    endShape(CLOSE);

    // Menambahkan tulisan "H.Y.N.A"
    fill(#FFFFFF); // Warna hitam untuk teks
    textSize(30);
    text("H.Y.N.A", coorX - 45, coorY - 60);

    popMatrix();
  }


  void stats() {
    text("Dapat digunakan sebagai bahan untuk\n"+
      "membuat material, peralatan, ataupun\n"+
      "atribut.", 0, 0);
  }


  void desc() {
    pushMatrix();
    textSize(18);
    text("Surat yang dibuat untuk para petualang.\n"+
      "Di wilayah timur, kumbang ini dipercaya\n"+
      "adalah jiwa yang tersesat, sehingga mereka\n"+
      "mulai mengadakan festival penangkapan yang\n"+
      "kemudian bersamaan akan dilepaskan di padang\n"+
      "rumput luas.", 0, 0);
    popMatrix();
  }
}


class goldOilLamp extends countable {
  goldOilLamp(int xI, int yI, int quanI) {
    super(xI, yI,
      "Gold Oil Lamp",
      "uncommon",
      quanI);
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
    translate(-50, -68);
    scale(1.2);
    pushMatrix();
    translate(50, 100);
    scale(0.8);
    strokeWeight(4);

    //pegangan lampu
    noFill();
    stroke(213, 174, 16);
    beginShape();
    bezier(263, 21, 314, -45, 187, -45, 238, 21);
    endShape();

    fill(249, 206, 5);
    arc(250, 32, 30, 35, -3, PI/-20);

    fill(248, 206, 8);
    stroke(243, 200, 0);
    //cahaya lampu
    pushMatrix();
    translate(-101, -120);
    scale(1.4);
    beginShape();
    vertex(250, 245);
    bezierVertex(221, 307, 216, 325, 235, 356);
    bezierVertex(308, 390, 271, 274, 250, 240);
    endShape();
    popMatrix();

    //bohlam lampu
    fill(255, 221, 49);
    stroke(255, 216, 21);
    beginShape();
    vertex(250, 245);
    bezierVertex(221, 307, 216, 325, 235, 356);
    bezierVertex(308, 390, 271, 274, 250, 240);
    endShape();


    //----------- pelindung bohlam lampu -----------
    //bagian kiri
    stroke(208, 208, 208);
    fill(236, 235, 235, 140);
    beginShape();
    vertex(250, 358);
    curveVertex(288, 572);
    curveVertex(170, 355);
    curveVertex(150, 235);
    curveVertex(180, 135);
    curveVertex(165, 82);
    curveVertex(250, 79);
    curveVertex(249, 157);
    endShape();

    //bagian kanan
    pushMatrix();
    translate(500, 0);
    rotateY(PI/-1);
    beginShape();
    vertex(250, 357);
    curveVertex(288, 572);
    curveVertex(170, 355);
    curveVertex(150, 235);
    curveVertex(180, 135);
    curveVertex(165, 82);
    curveVertex(250, 86);
    curveVertex(249, 153);
    endShape();
    popMatrix();

    //tali penutup pelindung lampu
    noFill();
    strokeWeight(3);
    stroke(211, 159, 0);
    beginShape();
    bezier(149, 230, 73, 252, 428, 333, 338, 338);
    bezier(161, 338, 73, 333, 428, 252, 351, 229);
    endShape();

    //------------- tiang lampu ------------
    noFill();
    strokeWeight(10);
    stroke(223, 168, 0);

    //bagian kiri
    beginShape();
    vertex(137, 69);
    bezierVertex(91, 23, 50, 116, 110, 226);
    bezierVertex(130, 302, 55, 377, 122, 378);
    endShape();

    //bagian kanan
    pushMatrix();
    translate(500, 0);
    rotateY(PI/-1);
    beginShape();
    vertex(137, 69);
    bezierVertex(91, 23, 50, 116, 110, 226);
    bezierVertex(130, 302, 55, 377, 122, 378);
    endShape();
    popMatrix();

    //----------- penutup lampu --------------
    strokeWeight(30);
    stroke(251, 204, 78);
    fill(251, 204, 78);
    //bagian atas
    ellipse(320, 49, 27, 20);
    ellipse(179, 49, 25, 20);
    line(136, 72, 360, 70);

    ellipse(143, 76, 4, 12);
    ellipse(356, 76, 4, 13);
    line(164, 43, 335, 44);

    stroke(255, 212, 84);
    fill(255, 212, 82);
    line(136, 81, 361, 81);

    //bagian bawah
    strokeWeight(30);
    stroke(251, 204, 78);
    fill(251, 204, 78);
    ellipse(361, 379, 20, 20);
    ellipse(143, 379, 20, 20);
    line(115, 398, 387, 398);

    ellipse(381, 406, 6, 2);
    ellipse(118, 406, 6, 2);
    line(132, 369, 368, 369);

    stroke(255, 212, 84);
    fill(255, 212, 82);
    ellipse(400, 414, 6, 5);
    ellipse(102, 414, 6, 5);
    line(92, 416, 406, 414);


    //---------------- outline ---------------
    noFill();
    strokeWeight(4);
    stroke(0);

    //pegangan lampu
    beginShape();
    bezier(266, 22, 314, -50, 187, -48, 235, 21);
    endShape();

    //----------- pelindung bohlam lampu -----------
    //bagian kiri
    beginShape();
    vertex(127, 67);
    bezierVertex(123, 103, 138, 94, 163, 97);
    endShape();

    beginShape();
    vertex(163, 98);
    bezierVertex(191, 144, 171, 126, 149, 227);
    endShape();

    beginShape();
    bezier(147, 248, 142, 281, 148, 288, 154, 324);
    bezier(162, 341, 161, 353, 167, 353, 167, 353);
    endShape();

    beginShape();
    vertex(167, 352);
    bezierVertex(110, 351, 122, 370, 115, 370);
    endShape();

    //bagian kanan
    pushMatrix();
    translate(500, 0);
    rotateY(PI/-1);
    beginShape();
    vertex(125, 67);
    bezierVertex(123, 103, 138, 94, 163, 97);
    endShape();

    beginShape();
    vertex(163, 98);
    bezierVertex(191, 144, 171, 126, 149, 227);
    endShape();

    beginShape();
    bezier(147, 248, 142, 281, 148, 288, 154, 324);
    bezier(162, 341, 161, 353, 167, 353, 167, 353);
    endShape();

    beginShape();
    vertex(167, 352);
    bezierVertex(110, 351, 122, 370, 115, 370);
    endShape();
    popMatrix();

    pushMatrix();
    translate(498, 0);
    rotateY(PI/1);
    //kiri atas
    arc(353, 238, 22, 22, -2, PI/2);
    //kiri bawah
    arc(333, 332, 46, 20, -1, PI/2);
    ;
    popMatrix();
    //kanan atas
    arc(353, 238, 22, 22, -2, PI/2);
    //kanan bawah
    arc(333, 332, 46, 20, -1, PI/2);

    //------------- tiang lampu ------------
    //bagian kiri sisi kanan
    beginShape();
    vertex(126, 69);
    bezierVertex(101, 36, 56, 116, 114, 226);
    bezierVertex(136, 302, 67, 368, 118, 372);
    endShape();

    //bagian kiri sisi kiri
    beginShape();
    vertex(134, 59);
    bezierVertex(86, 23, 45, 112, 104, 226);
    bezierVertex(124, 302, 46, 368, 115, 384);
    endShape();

    //bagian kanan
    pushMatrix();
    translate(500, 0);
    rotateY(PI/-1);
    //sisi kiri
    beginShape();
    vertex(126, 69);
    bezierVertex(101, 36, 56, 116, 114, 226);
    bezierVertex(136, 302, 67, 368, 118, 372);
    endShape();

    //sisi kanan
    beginShape();
    vertex(134, 59);
    bezierVertex(86, 23, 45, 116, 104, 226);
    bezierVertex(124, 302, 46, 368, 115, 384);
    endShape();
    popMatrix();

    //----------- penutup lampu --------------
    beginShape();
    bezier(235, 21, 245, 39, 151, 11, 156, 39);
    bezier(127, 69, 132, 48, 150, 70, 156, 39);
    bezier(116, 372, 114, 380, 121, 395, 97, 397);
    bezier(100, 397, 78, 398, 73, 437, 112, 432);
    endShape();

    pushMatrix();
    translate(500, 0);
    rotateY(PI/-1);
    beginShape();
    bezier(235, 21, 245, 39, 151, 11, 156, 39);
    bezier(127, 69, 132, 48, 150, 70, 156, 39);
    bezier(116, 372, 114, 380, 121, 395, 97, 397);
    bezier(100, 397, 78, 398, 73, 437, 112, 432);
    endShape();
    popMatrix();

    line(112, 432, 395, 432);
    popMatrix();
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }


  void stats() {
    text("Cahaya dan aroma dari api dapat berbeda\n"+
      "tergantung dari minyak yang digunakan.", 0, 0);
  }


  void desc() {
    pushMatrix();
    textSize(19);
    translate(0, 30);
    text("Sebuah lampu minyak berbahan dasar\n"+
      "gold ingot. Cahayanya dapat menerangi\n"+
      "dan menghangatkan malam yang gelap\n"+
      "dan dingin.\n\n"+
      "\"Dapat digantung ataupun diletakkan\n"+
      "dimana saja.\"", 0, -40);
    popMatrix();
  }
}
