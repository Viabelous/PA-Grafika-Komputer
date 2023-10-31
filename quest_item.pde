class bsoj extends item {
  bsoj(int xI, int yI, places boxI) {
    super(xI, yI, boxI,
      "Broken Sword of Judgement",
      true);
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

    scale(1.3);
    translate(-55, -11);
    translate(250, 250);
    rotate(radians(45));
    translate(-250, -250);


    rectMode(CORNER);
    fill(#FFE990);
    rect(223, 68, 15, 122);
    fill(#908249);
    square(210, 28, 40);
    square(210, 190, 40);
    square(250, 198, 23);
    square(187, 198, 23);

    beginShape();
    curveVertex(249, 223);
    curveVertex(243, 230);
    curveVertex(273, 259);
    curveVertex(428, 342);
    vertex(273, 259);
    curveVertex(138, 274);
    curveVertex(185, 259);
    curveVertex(217, 230);
    curveVertex(186, 179);
    vertex(217, 230);
    endShape();

    fill(#FFE990);
    beginShape();
    vertex(202, 260);
    vertex(202, 403);
    vertex(222, 380);
    vertex(235, 393);
    vertex(256, 377);
    vertex(256, 260);
    endShape();

    fill(#DEBC33);
    quad(202, 259, 202, 403, 192, 403, 186, 259);
    quad(256, 259, 256, 377, 266, 359, 274, 259);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
    rectMode(CENTER);
  }


  void observe() {
    pushMatrix();
    translate(0, 50);
    fill(#FFE990);
    beginShape();
    vertex(-20, -42, 10);
    vertex(20, -42, 10);
    vertex(15, 60, 5);
    vertex(4, 73, 5);
    vertex(-5, 63, 5);
    vertex(-15, 83, 5);
    endShape(CLOSE);

    beginShape();
    vertex(-20, -42, -10);
    vertex(20, -42, -10);
    vertex(15, 60, -5);
    vertex(4, 73, -5);
    vertex(-5, 63, -5);
    vertex(-15, 83, -5);
    endShape(CLOSE);

    fill(#DEBC33);
    stroke(#e7c920);
    beginShape();
    vertex(-30, -42, 0);
    vertex(-20, -42, -10);
    vertex(-15, 83, -5);
    vertex(-20, 83, 0);
    endShape(CLOSE);

    beginShape();
    vertex(-30, -42, 0);
    vertex(-20, -42, 10);
    vertex(-15, 83, 5);
    vertex(-20, 83, 0);
    endShape(CLOSE);

    beginShape();
    vertex(30, -42, 0);
    vertex(20, -42, -10);
    vertex(15, 60, -5);
    vertex(20, 49, 0);
    endShape(CLOSE);

    beginShape();
    vertex(30, -42, 0);
    vertex(20, -42, 10);
    vertex(15, 60, 5);
    vertex(20, 49, 0);
    endShape(CLOSE);

    fill(#908249);
    stroke(#e7c920);
    beginShape();
    vertex(4, 73, 5);
    vertex(15, 60, 5);
    vertex(20, 49, 0);
    vertex(15, 60, -5);
    vertex(4, 73, -5);
    endShape(CLOSE);

    beginShape();
    vertex(4, 73, 5);
    vertex(-5, 63, 5);
    vertex(-5, 63, -5);
    vertex(4, 73, -5);
    endShape(CLOSE);

    beginShape();
    vertex(-20, 83, 0);
    vertex(-15, 83, 5);
    vertex(-5, 63, 5);
    vertex(-5, 63, -5);
    vertex(-15, 83, -5);
    endShape(CLOSE);

    stroke(#746a33);
    beginShape();
    vertex(30, -42, 0);
    vertex(20, -42, 10);
    curveVertex(47, -42, 10);
    curveVertex(20, -42, 10);
    curveVertex(8, -60, 10);
    curveVertex(5, -93, 10);
    vertex(13, -60, 0);
    curveVertex(24, -93, 0);
    curveVertex(13, -60, 0);
    curveVertex(30, -42, 0);
    curveVertex(51, -42, 0);
    endShape();


    beginShape();
    vertex(30, -42, 0);
    vertex(20, -42, -10);
    curveVertex(47, -42, -10);
    curveVertex(20, -42, -10);
    curveVertex(8, -60, -10);
    curveVertex(5, -93, -10);
    vertex(13, -60, 0);
    curveVertex(24, -93, 0);
    curveVertex(13, -60, 0);
    curveVertex(30, -42, 0);
    curveVertex(51, -42, 0);
    endShape();

    beginShape();
    vertex(-30, -42, 0);
    vertex(-20, -42, 10);
    curveVertex(-47, -42, 10);
    curveVertex(-20, -42, 10);
    curveVertex(-8, -60, 10);
    curveVertex(-5, -93, 10);
    vertex(-13, -60, 0);
    curveVertex(-24, -93, 0);
    curveVertex(-13, -60, 0);
    curveVertex(-30, -42, 0);
    curveVertex(-51, -42, 0);
    endShape();

    beginShape();
    vertex(-30, -42, 0);
    vertex(-20, -42, -10);
    curveVertex(-47, -42, -10);
    curveVertex(-20, -42, -10);
    curveVertex(-8, -60, -10);
    curveVertex(-5, -93, -10);
    vertex(-13, -60, 0);
    curveVertex(-24, -93, 0);
    curveVertex(-13, -60, 0);
    curveVertex(-30, -42, 0);
    curveVertex(-51, -42, 0);
    endShape();

    beginShape();
    vertex(20, -42, -10);
    vertex(-20, -42, -10);
    curveVertex(-47, -42, -10);
    curveVertex(-20, -42, -10);
    curveVertex(-8, -60, -10);
    curveVertex(-5, -93, -10);
    vertex(8, -60, -10);
    curveVertex(16, -53, -10);
    curveVertex(8, -60, -10);
    curveVertex(20, -42, -10);
    curveVertex(59, -40, -10);
    endShape();

    beginShape();
    vertex(20, -42, 10);
    vertex(-20, -42, 10);
    curveVertex(-47, -42, 10);
    curveVertex(-20, -42, 10);
    curveVertex(-8, -60, 10);
    curveVertex(-5, -93, 10);
    vertex(8, -60, 10);
    curveVertex(16, -53, 10);
    curveVertex(8, -60, 10);
    curveVertex(20, -42, 10);
    curveVertex(59, -40, 10);
    endShape();

    pushMatrix();
    translate(0, -74);
    box(25);
    translate(21, 0);
    box(15);
    translate(-42, 0);
    box(15);
    popMatrix();

    fill(#FFE990);
    stroke(#e7c920);
    for (int i = 0; i <= 6; i++) {
      pushMatrix();
      rotateY(radians(i*205));
      beginShape();
      vertex(-2, -87, 4);
      vertex(2, -87, 4);
      vertex(2, -180, 4);
      vertex(-2, -180, 4);
      endShape(CLOSE);
      popMatrix();
    }

    fill(#908249);
    stroke(#746a33);
    translate(0, -193);
    box(25);
    popMatrix();
  }

  void stats() {
    text("Tipe: Quest Item", 0, 0);
  }

  void desc() {
    text("Sebuah pedang yang tak pernah berkarat\n"+
      "milik Dewi Keadilan, Themis.\n\n"+
      "Bilahnya yang mengkilap namun retak itu\n"+
      "seakan berbisik:\n"+
      "\"Keadilan telah disirnakan oleh desersi\"", 0, 0);
  }
}



class skyfeatherBadge extends item {
  skyfeatherBadge(int xI, int yI, places boxI) {
    super(xI, yI, boxI,
      "Skyfeather Badge",
      true);
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

    translate(-50, -50);
    scale(1.25);

    fill(0, 91, 98);
    stroke(0, 76, 82);
    beginShape();
    vertex(250, 339);
    bezierVertex(425, 273, 370, 229, 354, 155);
    bezierVertex(245, 135, 255, 100, 250, 130);
    bezierVertex(250, 132, 250, 267, 250, 335);
    endShape();


    beginShape();
    vertex(250, 339);
    bezierVertex(95, 273, 141, 230, 146, 155);
    bezierVertex(242, 135, 255, 100, 250, 130);
    bezierVertex(250, 132, 250, 267, 250, 335);
    endShape();

    fill(232, 232, 232);
    stroke(200, 200, 200);

    beginShape();
    vertex(350, 145);
    bezierVertex(365, 230, 390, 290, 250, 340);
    bezierVertex(465, 310, 350, 185, 390, 145);
    endShape();

    beginShape();
    vertex(150, 145);
    bezierVertex(150, 230, 115, 290, 250, 340);
    bezierVertex(45, 310, 150, 185, 110, 145);
    endShape();

    fill(240, 240, 240, 195);
    stroke(220, 220, 220);
    beginShape();
    vertex(250, 220);
    bezierVertex(222, 190, 217, 215, 180, 195);
    bezierVertex(180, 190, 185, 228, 225, 225);

    bezierVertex(240, 230, 205, 235, 190, 220);
    bezierVertex(190, 242, 225, 255, 240, 250);

    bezierVertex(225, 260, 202, 255, 200, 250);
    bezierVertex(205, 265, 225, 275, 250, 260);
    endShape();

    beginShape();
    vertex(250, 220);
    bezierVertex(275, 190, 295, 215, 325, 195);
    bezierVertex(325, 190, 320, 228, 280, 225);

    bezierVertex(265, 230, 303, 235, 315, 220);
    bezierVertex(310, 242, 285, 255, 265, 250);

    bezierVertex(270, 260, 305, 255, 300, 250);
    bezierVertex(298, 265, 275, 275, 250, 260);
    endShape();

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
    rectMode(CENTER);
  }


  void observe() {
    pushMatrix();

    translate(-250, -250, 0);
    fill(232, 232, 232);
    stroke(200, 200, 200);

    beginShape();
    vertex(110, 145, -35);
    bezierVertex(145, 193, -40, 55, 315, -30, 250, 340, -20);
    bezierVertex(45, 310, 0, 150, 186, 0, 110, 145, 0);
    endShape();

    beginShape();
    vertex(150, 145, 0);
    bezierVertex(150, 230, 0, 115, 290, 0, 250, 340, -20);
    bezierVertex(45, 310, 0, 150, 185, 0, 110, 145, 0);
    endShape();

    beginShape();
    vertex(150, 145, -40);
    bezierVertex(150, 226, -40, 115, 300, -30, 250, 340, -20);
    bezierVertex(45, 310, -30, 150, 185, -40, 110, 145, -35);
    endShape();

    beginShape();
    vertex(150, 145, -40);
    bezierVertex(150, 230, -40, 115, 300, -30, 250, 340, -20);
    bezierVertex(115, 290, 0, 150, 235, 0, 150, 150, 0);
    endShape();

    beginShape();
    vertex(389, 145, -35);
    bezierVertex(355, 193, -40, 460, 315, -30, 250, 340, -20);
    bezierVertex(465, 310, 0, 350, 185, 0, 390, 145, 0);
    endShape();

    beginShape();
    vertex(350, 145, 0);
    bezierVertex(365, 230, 0, 390, 290, 0, 250, 340, -20);
    bezierVertex(465, 310, 0, 350, 185, 0, 390, 145, 0);
    endShape();

    beginShape();
    vertex(350, 145, -40);
    bezierVertex(370, 226, -40, 385, 300, -30, 250, 340, -20);
    bezierVertex(465, 310, -30, 350, 185, -40, 390, 145, -35);
    endShape();

    beginShape();
    vertex(350, 145, -40);
    bezierVertex(370, 230, -40, 380, 300, -30, 250, 340, -20);
    bezierVertex(390, 290, 0, 365, 235, 0, 350, 150, 0);
    endShape();

    beginShape();
    vertex(110, 145, -35);
    vertex(110, 145, 0);
    vertex(150, 145, 0);
    vertex(150, 145, -41);
    endShape();

    beginShape();
    vertex(390, 145, -35);
    vertex(390, 145, 0);
    vertex(350, 145, 0);
    vertex(350, 145, -41);
    endShape();


    fill(0, 91, 98);
    stroke(0, 76, 82);
    beginShape();
    vertex(250, 339, -20);
    bezierVertex(415, 273, -20, 350, 229, -20, 352, 155, -20);
    bezierVertex(245, 135, 20, 255, 100, 15, 250, 130, 10);
    bezierVertex(250, 132, 10, 250, 267, 10, 250, 335, -20);
    endShape();

    beginShape();
    vertex(250, 339, -20);
    bezierVertex(95, 273, -20, 160, 230, -20, 150, 155, -20);
    bezierVertex(242, 135, 20, 255, 100, 15, 250, 130, 10);
    bezierVertex(250, 132, 10, 250, 267, 10, 250, 335, -20);
    endShape();

    beginShape();
    vertex(250, 339, -20);
    bezierVertex(415, 273, -20, 350, 229, -20, 352, 155, -20);
    bezierVertex(245, 135, -20, 255, 100, -15, 250, 130, -10);
    bezierVertex(250, 132, -10, 250, 267, -10, 250, 335, -20);
    endShape();

    beginShape();
    vertex(250, 339, -20);
    bezierVertex(95, 273, -20, 160, 230, -20, 150, 155, -20);
    bezierVertex(242, 135, -20, 255, 100, -15, 250, 130, -10);
    bezierVertex(250, 132, -10, 250, 267, -10, 250, 335, -20);
    endShape();

    beginShape();
    vertex(250, 125, -15);
    bezierVertex(250, 100, -10, 270, 150, -20, 355, 155, -20);
    bezierVertex(241, 129, 15, 320, 160, -5, 250, 115, 13);
    endShape();

    beginShape();
    vertex(250, 125, -15);
    bezierVertex(270, 100, -10, 195, 150, -20, 150, 155, -20);
    bezierVertex(243, 129, 15, 195, 150, -5, 250, 115, 13);
    endShape();


    fill(240, 240, 240, 195);
    stroke(220, 220, 220);
    beginShape();
    vertex(250, 220, 7);
    bezierVertex(222, 190, 5, 217, 215, 0, 180, 195, 10);
    bezierVertex(180, 190, 5, 185, 228, 5, 225, 225, 0);

    bezierVertex(240, 230, 0, 205, 235, 0, 190, 220, 10);
    bezierVertex(190, 242, 0, 225, 255, 5, 240, 250, 0);

    bezierVertex(225, 260, 7, 202, 255, 2, 200, 250, 10);
    bezierVertex(205, 265, 0, 225, 275, 10, 250, 260, 0);
    endShape();

    beginShape();
    vertex(250, 220, 5);
    bezierVertex(275, 190, 5, 295, 215, 0, 325, 195, 10);
    bezierVertex(325, 190, 5, 320, 228, 5, 280, 225, 0);

    bezierVertex(265, 230, 0, 303, 235, 0, 315, 220, 10);
    bezierVertex(310, 242, 0, 285, 255, 5, 265, 250, 0);

    bezierVertex(270, 260, 7, 305, 255, 2, 300, 250, 10);
    bezierVertex(298, 265, 0, 275, 275, 10, 250, 260, 0);
    endShape();
    popMatrix();
  }

  void stats() {
    text("Tipe: Quest Item", 0, 0);
  }

  void desc() {
    text("Sebuah medali yang didapat ketika pemain\n"+
      "telah memiliki 15 macam wings.\n\n"+
      "\"Item ini dapat dipajang sebagai dekorasi.\"", 0, 0);
  }
}

class hynaPainting extends item {
  hynaPainting(int xI, int yI, places boxI) {
    super(xI, yI, boxI,
      "H.Y.N.A",
      true);
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
    // Menggambar Foto Love
    strokeWeight(2);
    noStroke();

    // Gambar bingkai foto
    fill(#6C2F2F);  // Warna cokelat
    rectMode(CENTER);
    rect(250, 250, 250, 250);

    // Gambar latar belakang foto
    fill(#FFFFFF);  // Warna putih
    rectMode(CENTER);
    rect(250, 250, 200, 200);

    // Menggambar Love
    fill(#FF4343); // Warna merah
    beginShape();
    vertex(250, 200);

    bezierVertex(350, 170, 390, 220, 250, 300);
    bezierVertex(110, 220, 150, 170, 250, 200);
    endShape(CLOSE);

    // Menggambar Love (bayangan)
    fill(#BC1B1B); // Warna merah tua
    beginShape();
    vertex(250, 200);

    bezierVertex(350, 140, 390, 190, 250, 280);
    bezierVertex(110, 220, 150, 170, 250, 200);
    endShape(CLOSE);

    // Menambahkan tulisan "H.Y.N.A"
    fill(0); // Warna hitam untuk teks
    textSize(50);
    textAlign(CENTER, TOP);
    text("H.Y.N.A", 250, 290);
  }

  void observe() {
    sphere(100);
  }

  void stats() {
    text("Tipe: Quest Item", 0, 0);
  }

  void desc() {
    text("Sebuah lukisan yang didapat ketika pemain\n"+
      "telah berinteraksi dengan seluruh developer.\n\n"+
      "\"Item ini dapat dipajang sebagai dekorasi.\"", 0, 0);
  }
}
