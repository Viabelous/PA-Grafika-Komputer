class bsoj extends item {
  bsoj(int xI, int yI) {
    super(xI, yI,
      "Broken Sword of Judgement",
      "myth");
    discardable = false;
    observable = true;
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
      "\"Keadilan telah disirnakan oleh desersi\".", 0, 0);
  }
}



class skyfeatherBadge extends item {
  skyfeatherBadge(int xI, int yI) {
    super(xI, yI,
      "Skyfeather Badge",
      "myth");
    discardable = false;
    observable = true;
  }

  void preview() {
    pushMatrix();
    translate(-50, -40);
    scale(0.6);
    build();
    popMatrix();
  };

  void thumbnail() {
    pushMatrix();
    translate(x-75, y-70);
    scale(0.3);
    build();
    popMatrix();
  }

  void build() {
    stroke(0);
    pushMatrix();


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
      
      noFill();
      strokeWeight(4);
      stroke(0);
      line(108, 145, 153, 145);
      line(348, 145, 392, 145);
      line(152, 152, 153, 145);
      line(348, 145, 350, 155);
      
      beginShape();
      vertex(250, 343);
      bezierVertex(465, 310, 350, 185, 390, 145);
      endShape();
      
      beginShape();
      vertex(250, 343);
      bezierVertex(45, 310, 150, 185, 108, 145);
      endShape();
      
      beginShape();
      vertex(351, 153);
      bezierVertex(290, 149, 255, 111, 250, 118);
      endShape();
      
      beginShape();
      vertex(153, 152);
      bezierVertex(209, 139, 221, 130, 250, 117);
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
    text("Tipe: Quest Reward", 0, 0);
  }

  void desc() {
    text("Sebuah medali yang didapat ketika pemain\n"+
      "telah memiliki 5 macam wings.\n\n"+
      "\"Item ini dapat dipajang sebagai dekorasi.\"", 0, 0);
  }
}

class hynaPainting extends item {
  hynaPainting(int xI, int yI) {
    super(xI, yI,
      "H.Y.N.A",
      "myth");
    discardable = false;
    observable = true;
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

    // Gambar bingkai foto
    fill(#6C2F2F);  // Warna cokelat
    rectMode(CENTER);
    rect(250, 250, 450, 350);

    // Gambar latar belakang foto
    fill(#FFFFFF);  // Warna putih
    rect(250, 250, 400, 300);

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
    text("H.Y.N.A", 170, 370);
  }

  void observe() {
    sphere(100);
  }

  void stats() {
    text("Tipe: Quest Reward", 0, 0);
  }

  void desc() {
    text("Sebuah lukisan aneh yang didapat setelah\n"+
         "menyelesaikan quest \"Unusual Conference\".\n\n"+
      "\"Item ini dapat dipajang sebagai dekorasi.\"", 0, 0);
  }
}


class kitsuneMask extends item {
  kitsuneMask(int xI, int yI) {
    super(xI, yI,
      "Kitsune Mask",
      "unique");
    discardable = false;
    observable = true;
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
    translate(0, 45, 0);
      
      //base topeng
      strokeWeight(4);
      stroke(0);
      fill(255, 245, 245);
      beginShape();
      vertex(70, 145, 0);
      bezierVertex(60, 75, 110, 30, 200, 130);
      bezierVertex(245, 115, 0, 250, 115, 0, 300, 130, 0);
      bezierVertex(320, 90, 0, 415, 10, 0, 425, 145, 0);
      bezierVertex(480, 204, 0, 470, 280, 0, 410, 303, 0);
      bezierVertex(349, 323, 0, 307, 294, 0, 300, 285, 0);
      bezierVertex(272, 251, 224, 265, 205, 285);
      bezierVertex(175, 310, 156, 305, 127, 305);
      bezierVertex(125, 300, 80, 310, 45, 255);
      bezierVertex(35, 225, 30, 205,  69, 145);
      endShape();
      
      //lubang mata kiri
      noStroke();
      fill(0, 0, 0);
      beginShape();
      vertex(127, 160, 0);
      bezierVertex(110, 230, 170, 240, 210, 235);
      bezierVertex(206, 185, 180, 175, 125, 160);
      endShape();
      
      //lubang mata kiri
      beginShape();
      vertex(380, 160, 0);
      bezierVertex(385, 230, 349, 240, 289, 235);
      bezierVertex(295, 185, 329, 175, 382, 160);
      endShape();
      
      //outline lubang mata kiri
      strokeWeight(6);
      stroke(255, 40, 40);
      noFill();
      beginShape();
      vertex(127, 160, 0);
      bezierVertex(110, 230, 170, 240, 210, 235);
      bezierVertex(206, 185, 180, 175, 125, 160);
      endShape();
      
      //outline lubang mata kanan
      beginShape();
      vertex(380, 160, 0);
      bezierVertex(385, 230, 349, 240, 289, 235);
      bezierVertex(295, 185, 329, 175, 382, 160);
      endShape();
      
      //corak bulat
      fill(255, 40, 40);
      ellipse(250, 170, 25, 25);
      
      //corak pipi kiri
      strokeWeight(2);
      fill(255, 40, 40);
      beginShape();
      vertex(175, 250, 0);
      bezierVertex(145, 260, 84, 255, 95, 230);
      bezierVertex(125, 215, 140, 265, 180, 250);
      endShape();
      
      beginShape();
      vertex(177, 260, 0);
      bezierVertex(155, 290, 105, 285, 100, 270);
      bezierVertex(102, 250, 151, 285, 175, 261);
      endShape();
      
      //corak pipi kanan
      pushMatrix();
        translate(505, 0);
        rotateY(PI/-1);
        beginShape();
        vertex(178, 250, 0);
        bezierVertex(145, 260, 84, 255, 95, 230);
        bezierVertex(125, 215, 140, 265, 180, 250);
        endShape();
        
        beginShape();
        vertex(177, 260, 0);
        bezierVertex(155, 290, 105, 285, 100, 270);
        bezierVertex(102, 250, 151, 285, 175, 261);
        endShape();
      popMatrix();
      
      //telinga kiri
      beginShape();
      curveVertex(225, 200);
      curveVertex(130, 87);
      curveVertex(90, 110);
      curveVertex(99, 136);
      curveVertex(163, 117);
      curveVertex(130, 87);
      curveVertex(10, 14);
      endShape();
      
      //telinga kiri
      pushMatrix();
        translate(496, 0, 3);
        rotateY(PI/-1);
        beginShape();
        curveVertex(225, 200);
        curveVertex(130, 87);
        curveVertex(90, 110);
        curveVertex(99, 136);
        curveVertex(163, 117);
        curveVertex(130, 87);
        curveVertex(10, 14);
        endShape();
      popMatrix();
      
      //hidung
      beginShape();
      curveVertex(265, 240);
      curveVertex(250, 240);
      curveVertex(260, 243);
      curveVertex(250, 255);
      curveVertex(240, 243);
      curveVertex(250, 240);
      curveVertex(250, 240);
      endShape();
      
    popMatrix();
  }

  void observe() {
    pushMatrix();
    translate(-250, -200, 0);
      noStroke();
      fill(255, 245, 245);
      beginShape();
      vertex(70, 145);
      bezierVertex(60, 75, 15, 110, 30, 65, 200, 130, 0);
      bezierVertex(245, 115, 0, 250, 115, 0, 300, 130, 0);
      bezierVertex(320, 90, 0, 415, 10, 52, 425, 145, 0);
      bezierVertex(435, 175, 0, 443, 190, 0, 445, 240, 0);
      
      vertex(424, 145);
      bezierVertex(480, 204, -20, 470, 280, 0, 410, 303, 0);
      bezierVertex(349, 323, -5, 307, 294, 10, 300, 285, 25);
      bezierVertex(272, 251, 50, 224, 265, 40, 205, 285, 20);
      bezierVertex(175, 310, 0, 156, 305, 0, 127, 305, 0);
      bezierVertex(125, 300, 0, 80, 310, 0, 45, 255, -5);
      bezierVertex(35, 225, -10, 30, 205, -5, 69, 145, 0);
      endShape();
      
      beginShape();
      vertex(70, 145);
      bezierVertex(60, 75, 10, 110, 30, 60, 200, 130, -5);
      bezierVertex(245, 115, -5, 250, 115, -5, 300, 130, -5);
      bezierVertex(320, 90, -5, 415, 10, 48, 425, 145, -5);
      bezierVertex(435, 175, -5, 443, 190, -5, 445, 240, -5);
      
      vertex(424, 145);
      bezierVertex(480, 204, -25, 470, 280, -5, 410, 303, -5);
      bezierVertex(349, 323, -10, 307, 294, 5, 300, 285, 20);
      bezierVertex(272, 251, 45, 224, 265, 35, 205, 285, 15);
      bezierVertex(175, 310, -5, 156, 305, -5, 127, 305, -5);
      bezierVertex(125, 300, -5, 80, 310, -5, 45, 255, -10);
      bezierVertex(35, 225, -15, 30, 205, -10, 69, 145, -5);
      endShape();
      
      noFill();
      strokeWeight(30);
      strokeCap(ROUND);
      stroke(255, 245, 245);
      beginShape();
      vertex(70, 145);
      bezierVertex(60, 75, 12, 110, 30, 62, 200, 130, -3);
      bezierVertex(245, 115, -3, 250, 115, -3, 300, 130, -3);
      bezierVertex(320, 90, -3, 415, 10, 49, 425, 145, -3);
      bezierVertex(435, 175, -3, 443, 190, -3, 445, 240, -3);
      
      vertex(424, 145);
      bezierVertex(480, 204, -23, 470, 280, -3, 410, 303, -3);
      bezierVertex(349, 323, -8, 307, 294, 7, 300, 285, 22);
      bezierVertex(272, 251, 47, 224, 265, 37, 205, 285, 17);
      bezierVertex(175, 310, -3, 156, 305, -3, 127, 305, -3);
      bezierVertex(125, 300, -3, 80, 310, -3, 45, 255, -8);
      bezierVertex(35, 225, -13, 30, 205, -8, 69, 145, -3);
      endShape();
      
      noStroke();
      fill(0, 0, 0);
      beginShape();
      vertex(127, 160, 23);
      bezierVertex(110, 230, 23, 170, 240, -5, 210, 235, 20);
      bezierVertex(206, 185, 14, 180, 175, 9, 125, 160, 22);
      endShape();
      
      beginShape();
      vertex(380, 160, 13);
      bezierVertex(385, 230, 23, 349, 240, 0, 289, 235, 23);
      bezierVertex(295, 185, 13, 329, 175, 8, 382, 160, 18);
      endShape();
      
      strokeWeight(6);
      stroke(255, 40, 40);
      noFill();
      beginShape();
      vertex(127, 160, 23);
      bezierVertex(110, 230, 25, 170, 240, -5, 210, 235, 20);
      bezierVertex(206, 185, 15, 180, 175, 10, 125, 160, 22);
      endShape();
      
      beginShape();
      vertex(380, 160, 15);
      bezierVertex(385, 230, 25, 349, 240, 0, 289, 235, 25);
      bezierVertex(295, 185, 15, 329, 175, 10, 382, 160, 20);
      endShape();
      
      pushMatrix();
        translate(0, 0, 18);
        fill(255, 40, 40);
        ellipse(250, 170, 25, 25);
      popMatrix();
      
      strokeWeight(2);
      fill(255, 40, 40);
      beginShape();
      vertex(175, 250, 6);
      bezierVertex(145, 260, 11, 84, 255, 5, 95, 230, 11);
      bezierVertex(125, 215, 10, 140, 265, 13, 180, 250, 5);
      endShape();
      
      beginShape();
      vertex(177, 260, 7);
      bezierVertex(155, 290, 6, 105, 285, 2, 100, 270, 6);
      bezierVertex(102, 250, 15, 151, 285, 4, 175, 261, 8);
      endShape();
      
      pushMatrix();
        translate(506, 0, 19);
        rotateY(PI/-1);
        beginShape();
        vertex(178, 250, 6);
        bezierVertex(145, 260, 11, 84, 255, 5, 95, 230, 11);
        bezierVertex(125, 215, 10, 140, 265, 13, 180, 250, 8);
        endShape();
        
        beginShape();
        vertex(177, 260, 7);
        bezierVertex(155, 290, 6, 105, 285, 2, 100, 270, 6);
        bezierVertex(102, 250, 15, 151, 285, 4, 175, 261, 8);
        endShape();
      popMatrix();
      
      beginShape();
      curveVertex(225, 200, 0);
      curveVertex(130, 87, 38);
      curveVertex(90, 110, 29);
      curveVertex(99, 136, 23);
      curveVertex(163, 117, 30);
      curveVertex(130, 87, 39);
      curveVertex(10, 14, 27);
      endShape();
      
      pushMatrix();
        translate(495, 0, 73);
        rotateY(PI/-1);
        beginShape();
        curveVertex(225, 200, 0);
        curveVertex(130, 87, 48);
        curveVertex(90, 110, 49);
        curveVertex(99, 136, 54);
        curveVertex(163, 117, 60);
        curveVertex(130, 87, 50);
        curveVertex(10, 14, 0);
        endShape();
      popMatrix();
      
      beginShape();
      curveVertex(265, 250, 72);
      curveVertex(250, 250, 40);
      curveVertex(260, 253, 38);
      curveVertex(250, 265, 45);
      curveVertex(240, 253, 35);
      curveVertex(250, 250, 40);
      curveVertex(250, 250, 71);
      endShape();
    popMatrix();
  }

  void stats() {
    text("Tipe: Quest Item", 0, 0);
  }

  void desc() {
    text("Sebuah topeng rubah yang entah mengapa\n"+
      "terasa berbeda dari topeng lainnya di stall\n"+
      "topeng.\n\n"+
      "Mungkin seseorang yang tepat akan dapat\n"+
      "memberitahumu sesuatu terkait topeng ini.", 0, 0);
  }
}



class magicStarBook extends item {
  magicStarBook(int xI, int yI) {
    super(xI, yI,
      "Magic Star Book",
      "unique");
    discardable = false;
    observable = true;
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
    scale(2.0);
    rectMode(CORNER);    
    translate(123, 124);
    stroke(213, 160, 109);
    strokeWeight(3);
    fill(194, 163, 103);
    stroke(196, 147, 83);
    strokeWeight(4);
    rect(-79, -89, 156, 177);
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(1, 1);
      rotateZ(i);
      beginShape();
      fill(188, 150, 49);
      noStroke();
      curveVertex(20, 0);
      curveVertex(20, 0);
      curveVertex(18, 40);
      curveVertex(-20, 0);
      curveVertex(-20, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(45, 57);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0);
      curveVertex(5, 0);
      curveVertex(7, -16);
      curveVertex(-7, 0);
      curveVertex(-39, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-42, 57);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0);
      curveVertex(5, 0);
      curveVertex(-9, -16);
      curveVertex(-7, 0);
      curveVertex(-39, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(41, -55);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0);
      curveVertex(2, 0);
      curveVertex(-5, -16);
      curveVertex(-7, 0);
      curveVertex(-39, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-39, -55);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0);
      curveVertex(5, 0);
      curveVertex(7, -16);
      curveVertex(-7, 0);
      curveVertex(-39, 0);
      endShape(CLOSE);
      popMatrix();
    }
    fill(228, 85, 63);
    noStroke();
    circle(1, 1, 20);
    popMatrix();
  }

    void observe() {
    // Sampul buku depan
    pushMatrix();
    translate(-1, 0, 10 / 2);
    fill(228, 90, 63);
    noStroke();
    sphere(12);

    // Garis pada objek
    stroke(213, 160, 109); // Warna garis
    strokeWeight(3);

    // Garis horizontal
    for (float z = -5; z <= 5; z += 2) {
      line(-10, -10, z, 10, -10, z);
      line(-10, 10, z, 10, 10, z);
    }

    // Garis vertikal
    for (float x = -10; x <= 10; x += 5) {
      line(x, -10, -5, x, 10, 5);
    }


    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(1, 1, 4);
      rotateZ(i);
      beginShape();
      fill(188, 150, 49);
      noStroke();
      curveVertex(20, 0, 0);
      curveVertex(20, 0, 0);
      curveVertex(18, 20 * 2, 0);
      curveVertex(-20, 0, 0);
      curveVertex(-20, 0, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(45, 57, 4);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0, 0);
      curveVertex(5, 0, 0);
      curveVertex(7, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-39, 0, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-42, 57, 4);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0, 0);
      curveVertex(5, 0, 0);
      curveVertex(-9, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-39, 0, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(41, -55, 4);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0, 0);
      curveVertex(2, 0, 0);
      curveVertex(-5, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-39, 0, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-39, -55, 4);
      rotateZ(i);
      beginShape();
      fill(226, 208, 165);
      noStroke();
      curveVertex(-17, 0, 0);
      curveVertex(5, 0, 0);
      curveVertex(7, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-39, 0, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    fill(194, 163, 103);
    stroke(196, 147, 83);
    strokeWeight(4);
    box(200, 250, 5);
    popMatrix();
  
    // Sampul buku belakang
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-49, 34, -12);
      rotateZ(i);
      beginShape();
      fill(219, 206, 179);
      noStroke();
      curveVertex(36, 0, 0);
      curveVertex(5, -6, 0);
      curveVertex(-8, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-147, -33, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-7, 60, -12);
      rotateZ(i);
      beginShape();
      fill(242, 206, 143);
      noStroke();
      curveVertex(36, 0, 0);
      curveVertex(5, -6, 0);
      curveVertex(-8, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-146, 7, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(51, 15, -12);
      rotateZ(i);
      beginShape();
      fill(220, 189, 135);
      noStroke();
      curveVertex(36, 1, 0);
      curveVertex(5, -14, 0);
      curveVertex(-2, 0 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-131, -33, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(41, -65, -12);
      rotateZ(i);
      beginShape();
      fill(209, 185, 121);
      noStroke();
      curveVertex(36, 4, 0);
      curveVertex(5, -8, 0);
      curveVertex(-8, 16 * 0, 0);
      curveVertex(-7, -30, 0);
      curveVertex(-142, -33, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-7, -57, -12);
      rotateZ(i);
      beginShape();
      fill(229, 189, 81);
      noStroke();
      curveVertex(36, 0, 0);
      curveVertex(5, 5, 0);
      curveVertex(-8, 15 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-142, -141, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-49, 78, -12);
      rotateZ(i);
      beginShape();
      fill(229, 189, 81);
      noStroke();
      curveVertex(36, 0, 0);
      curveVertex(5, 5, 0);
      curveVertex(-8, 15 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-142, -141, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(50, 65, -12);
      rotateZ(i);
      beginShape();
      fill(140, 105, 20);
      noStroke();
      curveVertex(36, 0, 0);
      curveVertex(5, 21, 0);
      curveVertex(-8, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-142, -33, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-47, -68, -12);
      rotateZ(i);
      beginShape();
      fill(209, 197, 167);
      noStroke();
      curveVertex(36, 0, 0);
      curveVertex(5, 22, 0);
      curveVertex(-8, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-142, -17, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-50, -23, -12);
      rotateZ(i);
      beginShape();
      fill(140, 105, 20);
      noStroke();
      curveVertex(36, 0, 0);
      curveVertex(5, -6, 0);
      curveVertex(-8, 16 * -1, 0);
      curveVertex(-7, 0, 0);
      curveVertex(-142, 7, 0);
      endShape(CLOSE);
      popMatrix();
    }
  
    pushMatrix();
    translate(0, 0);
    for (float i = 0; i < TWO_PI; i += TWO_PI / 6) {
      pushMatrix();
      translate(-1, -2, 5);
      rotateZ(i);
      beginShape();
      fill(150, 112, 30);
      noStroke();
      curveVertex(8, -24, -4);
      curveVertex(17, 0, -9);
      curveVertex(25, 20 * 2, -15);
      curveVertex(-3, 0, -11);
      curveVertex(-20, 0, 135);
      endShape(CLOSE);
      popMatrix();
    }
    box(200, 250, 7);
    popMatrix();
  
    // Halaman buku
    pushMatrix();
    translate(0, 0, -10 / 2);
    fill(194, 163, 103);
    stroke(196, 147, 83);
    strokeWeight(4);
    box(200, 250, 10);
    popMatrix();
    }
  
  void stats() {
    text("Tipe: Quest Item", 0, 0);
  }

  void desc() {
    text("Sebuah buku ajaib yang berisikan\n"+
      "mantra-mantra yang dapat mempengaruhi\n"+
      "dunia.\n\n"+
      "Untuk mendapatkan buku ini sangatlah sulit.", 0, 0);
  }
}
