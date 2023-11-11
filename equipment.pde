// ========================================= NIGHTWALKERS SIGHT ========================================= //
class nightwalkersSight extends item {
  int gearRot = 0;
  int lensClr = 0;
  boolean lensBright = true;

  nightwalkersSight(int xI, int yI) {
    super(xI, yI,
      "Nightwalkers Sight",
      "unique");
    discardable = false;
  }


  void preview() {
    pushMatrix();
    scale(0.4);

    translate(10, 50);
    stroke(0);
    strokeWeight(2);

    fill(#3d3683);
    ellipse(240, 203, 323, 148);

    fill(#2e2c66);
    ellipse(240, 175, 212, 69);

    stroke(#846b3f);
    fill(#6e572e);
    for (int i = 0; i < 7; i++) {
      pushMatrix();
      translate(235, 172);
      rotate(radians(gearRot));
      rotate(radians(52*i));
      translate(-235, -172);
      quad(232, 143, 241, 143, 244, 154, 228, 156);
      popMatrix();

      pushMatrix();
      translate(285, 208);
      rotate(radians(gearRot));
      rotate(radians(52*i));
      translate(-285, -208);
      quad(278, 180, 287, 180, 294, 193, 275, 189);
      popMatrix();

      pushMatrix();
      translate(186, 208);
      rotate(radians(gearRot));
      rotate(radians(52*i));
      translate(-186, -208);
      quad(185, 180, 191, 180, 197, 195, 183, 192);
      popMatrix();
    }

    strokeWeight(10);
    noFill();
    circle(235, 172, 36);
    circle(285, 208, 36);
    circle(186, 208, 36);

    strokeWeight(2);
    stroke(0);


    fill(#3d3683);
    circle(235, 199, 71);

    noFill();
    curve(254, -230, 234, 192, 317, 220, 541, -669);
    curve(254, -230, 234, 192, 367, 209, 541, -537);
    curve(254, -148, 234, 192, 184, 223, 152, -617);
    curve(254, -230, 234, 192, 115, 196, 131, -677);

    fill(#226381);
    beginShape();
    curveVertex(268, 864);
    curveVertex(86, 106);
    curveVertex(234, 235);
    curveVertex(1556, -391);
    endShape(CLOSE);

    beginShape();
    curveVertex(3, 751);
    curveVertex(410, 84);
    curveVertex(240, 235);
    curveVertex(-866, -448);
    endShape(CLOSE);

    triangle(216, 250, 236, 211, 256, 250);
    fill(#0a3d52);
    triangle(216, 250, 236, 317, 256, 250);

    fill(#a8e9e7);

    beginShape();
    curveVertex(608, 951);
    curveVertex(194, 226);
    curveVertex(196, 227);
    curveVertex(1225, 90);
    endShape();

    beginShape();
    curveVertex(-128, 951);
    curveVertex(286, 226);
    curveVertex(284, 227);
    curveVertex(-745, 90);
    endShape();

    fill(#FCEDFA, lensClr);

    beginShape();
    curveVertex(608, 951);
    curveVertex(194, 226);
    curveVertex(196, 227);
    curveVertex(1225, 90);
    endShape();

    beginShape();
    curveVertex(-128, 951);
    curveVertex(286, 226);
    curveVertex(284, 227);
    curveVertex(-745, 90);
    endShape();

    strokeWeight(10);
    stroke(#FFFFFF);
    point(355, 196);
    point(159, 202);

    gearRot += (gearRot != 360) ? 2 : -358;
    lensClr += (lensBright) ? 5 : -5;
    if (lensClr == 0) {
      lensBright = true;
    } else if (lensClr == 255) {
      lensBright = false;
    }

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }


  void thumbnail() {
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);

    translate(10, 50);
    stroke(0);
    strokeWeight(2);

    fill(#3d3683);
    ellipse(240, 203, 323, 148);

    fill(#2e2c66);
    ellipse(240, 175, 212, 69);

    stroke(#846b3f);
    fill(#6e572e);
    for (int i = 0; i < 7; i++) {
      pushMatrix();
      translate(235, 172);
      rotate(radians(52*i));
      translate(-235, -172);
      quad(232, 143, 241, 143, 244, 154, 228, 156);
      popMatrix();

      pushMatrix();
      translate(285, 208);
      rotate(radians(52*i));
      translate(-285, -208);
      quad(278, 180, 287, 180, 294, 193, 275, 189);
      popMatrix();

      pushMatrix();
      translate(186, 208);
      rotate(radians(52*i));
      translate(-186, -208);
      quad(185, 180, 191, 180, 197, 195, 183, 192);
      popMatrix();
    }

    strokeWeight(10);
    noFill();
    circle(235, 172, 36);
    circle(285, 208, 36);
    circle(186, 208, 36);

    strokeWeight(2);
    stroke(0);


    fill(#3d3683);
    circle(235, 199, 71);

    noFill();
    curve(254, -230, 234, 192, 317, 220, 541, -669);
    curve(254, -230, 234, 192, 367, 209, 541, -537);
    curve(254, -148, 234, 192, 184, 223, 152, -617);
    curve(254, -230, 234, 192, 115, 196, 131, -677);

    fill(#226381);
    beginShape();
    curveVertex(268, 864);
    curveVertex(86, 106);
    curveVertex(234, 235);
    curveVertex(1556, -391);
    endShape(CLOSE);

    beginShape();
    curveVertex(3, 751);
    curveVertex(410, 84);
    curveVertex(240, 235);
    curveVertex(-866, -448);
    endShape(CLOSE);

    triangle(216, 250, 236, 211, 256, 250);
    fill(#0a3d52);
    triangle(216, 250, 236, 317, 256, 250);

    fill(#a8e9e7);

    beginShape();
    curveVertex(608, 951);
    curveVertex(194, 226);
    curveVertex(196, 227);
    curveVertex(1225, 90);
    endShape();

    beginShape();
    curveVertex(-128, 951);
    curveVertex(286, 226);
    curveVertex(284, 227);
    curveVertex(-745, 90);
    endShape();

    strokeWeight(10);
    stroke(#FFFFFF);
    point(355, 196);
    point(159, 202);

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }



  void stats() {
    text("Tipe: Helmet\n"+
      icon("def", 0, 30)+"DEF +20\n\n"+
      "Saat dikenakan, akan dapat melihat\n"+
      "di kegelapan.", 0, 0);
  }



  void desc() {
    pushMatrix();
    translate(0, -30);
    textSize(19);
    text("Topeng yang dirancang khusus dan menjadi\n"+
      "simbol keanggotaan dari organisasi non\n"+
      "resmi Nightwalker.\n\n"+
      "Topeng ini sudah didesain ulang berkali-kali\n"+
      "oleh penciptanya. Namun, akhirnya rampung\n"+
      "karena kematian mendadak. Meski demikan\n"+
      "tujuan dibuatnya topeng ini sudah tercapai.", 0, 0);
    popMatrix();
  }
}





// ========================================= EMERALD WINGS ========================================= //
class emeraldWings extends item {

  float randX = 250;
  float randY = 250;
  int resh = 132;
  boolean toogleResh = true;

  emeraldWings(int xI, int yI) {
    super(xI, yI,
      "Emerald Wings",
      "rare");
    super.discardable = false;
  }

  void sparkle() {
    pushMatrix();
    if (resh == 132) {
      randX = random(100, 400);
      randY = random(100, 400);
    }

    translate(randX, randY);

    translate(-25, -25);
    scale(0.1);
    strokeWeight(7);
    fill(255);

    if (resh < 130) {
      beginShape();
      vertex(250, 0+resh);
      curveVertex(100, -600);
      curveVertex(250, 0+resh);
      curveVertex(0+resh, 250);
      curveVertex(-400, 0);
      vertex(0+resh, 250);

      curveVertex(-500, 350);
      curveVertex(0+resh, 250);
      curveVertex(250, 500-resh);
      curveVertex(0+resh, 1000);
      vertex(250, 500-resh);

      curveVertex(300, 1000);
      curveVertex(250, 500-resh);
      curveVertex(500-resh, 250);
      curveVertex(1000, 300);
      vertex(500-resh, 250);

      curveVertex(1000, 0);
      curveVertex(500-resh, 250);
      curveVertex(250, 0+resh);
      curveVertex(500, 0);
      endShape();
    }

    if (resh < 60 || resh > 132) {
      toogleResh = !toogleResh;
    }

    if (toogleResh) {
      resh -= 1;
    } else if (!toogleResh) {
      resh+= 1;
    }
    popMatrix();
  }

  void preview() {
    pushMatrix();
    translate(-20, -20);
    scale(0.5);

    //wings sisi kiri
    strokeWeight(2);
    stroke(6, 83, 49);
    fill(6, 118, 67, 190);
    pushMatrix();
    rotate(PI/-8);
    ellipse(65, 335, 130, 35);
    popMatrix();

    stroke(30, 134, 79);
    noFill();
    beginShape();
    curveVertex(260, 355);
    curveVertex(150, 300);
    curveVertex(250, 268);
    curveVertex(480, 279);
    endShape();

    stroke(6, 83, 49);
    fill(6, 118, 67, 190);
    pushMatrix();
    rotate(PI/9);
    ellipse(230, 145, 180, 40);
    popMatrix();

    pushMatrix();
    rotate(PI/90);
    ellipse(184, 247, 145, 30);
    popMatrix();

    pushMatrix();
    rotate(PI/-35);
    ellipse(145, 282, 160, 30);
    popMatrix();

    //wings sisi kanan
    pushMatrix();
    rotate(PI/9);
    ellipse(390, 163, 130, 35);
    popMatrix();

    stroke(30, 134, 79);
    noFill();
    beginShape();
    curveVertex(260, 355);
    curveVertex(350, 300);
    curveVertex(250, 268);
    curveVertex(290, 350);
    endShape();

    stroke(6, 83, 49);
    fill(6, 118, 67, 190);
    pushMatrix();
    rotate(PI/-9);
    ellipse(236, 317, 180, 40);
    popMatrix();

    pushMatrix();
    rotate(PI/-90);
    ellipse(310, 264, 145, 30);
    popMatrix();

    pushMatrix();
    rotate(PI/40);
    ellipse(346, 240, 160, 30);
    popMatrix();

    //corak wings
    stroke(30, 134, 79);
    noFill();
    beginShape();
    curveVertex(220, 87);
    curveVertex(130, 205);
    curveVertex(247, 248);
    curveVertex(203, 329);
    endShape();

    beginShape();
    curveVertex(220, 87);
    curveVertex(365, 205);
    curveVertex(247, 248);
    curveVertex(203, 329);
    endShape();

    fill(125, 170, 131, 35);
    noStroke();
    circle(388, 196, 10);
    circle(113, 196, 10);
    circle(206, 264, 8);
    circle(289, 264, 8);

    // ----------------- outline ----------------
    noFill();
    stroke(0);
    beginShape();
    bezier(417, 190, 409, 168, 297, 195, 250, 236);
    bezier(417, 191, 409, 208, 363, 231, 337, 237);
    bezier(339, 238, 381, 234, 410, 249, 384, 260);
    bezier(385, 259, 438, 274, 385, 288, 349, 284);
    bezier(353, 285, 431, 338, 269, 313, 248, 267);
    bezier(146, 285, 78, 338, 211, 313, 250, 267);
    bezier(114, 260, 65, 274, 91, 289, 145, 286);
    bezier(81, 191, 92, 208, 140, 231, 166, 237);
    bezier(173, 238, 124, 234, 79, 249, 113, 260);
    bezier(82, 193, 59, 153, 211, 195, 250, 236);
    endShape();
    sparkle();

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }


  void thumbnail() {
    pushMatrix();
    translate(x-62, y-62);
    scale(0.25);

    //wings sisi kiri
    stroke(6, 83, 49);
    fill(6, 118, 67, 190);
    pushMatrix();
    rotate(PI/-8);
    ellipse(65, 335, 130, 35);
    popMatrix();

    stroke(30, 134, 79);
    noFill();
    beginShape();
    curveVertex(260, 355);
    curveVertex(150, 300);
    curveVertex(250, 268);
    curveVertex(480, 279);
    endShape();

    stroke(6, 83, 49);
    fill(6, 118, 67, 190);
    pushMatrix();
    rotate(PI/9);
    ellipse(230, 145, 180, 40);
    popMatrix();

    pushMatrix();
    rotate(PI/90);
    ellipse(184, 247, 145, 30);
    popMatrix();

    pushMatrix();
    rotate(PI/-35);
    ellipse(145, 282, 160, 30);
    popMatrix();

    //wings sisi kanan
    pushMatrix();
    rotate(PI/9);
    ellipse(390, 163, 130, 35);
    popMatrix();

    stroke(30, 134, 79);
    noFill();
    beginShape();
    curveVertex(260, 355);
    curveVertex(350, 300);
    curveVertex(250, 268);
    curveVertex(290, 350);
    endShape();

    stroke(6, 83, 49);
    fill(6, 118, 67, 190);
    pushMatrix();
    rotate(PI/-9);
    ellipse(236, 317, 180, 40);
    popMatrix();

    pushMatrix();
    rotate(PI/-90);
    ellipse(310, 264, 145, 30);
    popMatrix();

    pushMatrix();
    rotate(PI/40);
    ellipse(346, 240, 160, 30);
    popMatrix();

    //corak wings
    stroke(30, 134, 79);
    noFill();
    beginShape();
    curveVertex(220, 87);
    curveVertex(130, 205);
    curveVertex(247, 248);
    curveVertex(203, 329);
    endShape();

    beginShape();
    curveVertex(220, 87);
    curveVertex(365, 205);
    curveVertex(247, 248);
    curveVertex(203, 329);
    endShape();

    fill(125, 170, 131, 35);
    noStroke();
    circle(388, 196, 10);
    circle(113, 196, 10);
    circle(206, 264, 8);
    circle(289, 264, 8);

    // ----------------- outline ----------------
    noFill();
    stroke(0);
    beginShape();
    bezier(417, 190, 409, 168, 297, 195, 250, 236);
    bezier(417, 191, 409, 208, 363, 231, 337, 237);
    bezier(339, 238, 381, 234, 410, 249, 384, 260);
    bezier(385, 259, 438, 274, 385, 288, 349, 284);
    bezier(353, 285, 431, 338, 269, 313, 248, 267);
    bezier(146, 285, 78, 338, 211, 313, 250, 267);
    bezier(114, 260, 65, 274, 91, 289, 145, 286);
    bezier(81, 191, 92, 208, 140, 231, 166, 237);
    bezier(173, 238, 124, 234, 79, 249, 113, 260);
    bezier(82, 193, 59, 153, 211, 195, 250, 236);
    endShape();

    translate(10, 50);
    stroke(0);
    strokeWeight(2);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }



  void stats() {
    text("Tipe: Wings\n"+
      icon("def", 0, 30)+"DEF +30\n"+
      icon("speed", 0, 60) + "SPD +30\n\n"+
      "Dapat berkamuflase dengan dedaunan\n"+
      "pohon maupun semak-semak.\n",
      0, 0);
  }



  void desc() {
    text("Sebuah sayap berwarna emerald dengan\n"+
      "masing-masing sisinys memiliki 4 sayap\n"+
      "yang tipis namun dapat menerjang udara\n"+
      "dengan cepat, walaupun tipis sayap ini dapat\n"+
      "membawamu kemana saja.\n\n",
      0, 0);
  }
}




// ========================================= BASEBALL ========================================= //
class baseball extends countable {
  baseball(int xI, int yI, int quan) {
    super(xI, yI,
      "Baseball",
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
    translate(-160, -170);
    scale(2);
    stroke(0);
    strokeWeight(4);

    fill(#DADACC);
    ellipse(215, 215, 150, 150);

    noStroke();
    fill(#F3F3E8);
    ellipse(220, 207, 130, 130);

    stroke(#FA323F);
    noFill();
    beginShape();
    vertex(281, 183);
    bezierVertex(186, 158, 210, 272, 251, 278);
    endShape(OPEN);

    beginShape();
    vertex(178, 154);
    bezierVertex(186, 146, 218, 180, 152, 251);
    endShape(OPEN);

    stroke(#3E3E3E);
    line(259, 215, 264, 233);
    line(259, 227, 272, 246);
    line(200, 266, 185, 283);
    line(189, 283, 197, 263);
    line(222, 163, 205, 182);
    line(227, 177, 203, 170);
    popMatrix();
  }

  void stats() {
    text(icon("atk", 0, 0) + "ATK 30", 0, 0);
  }



  void desc() {
    pushMatrix();
    translate(0, -20);
    textSize(18);
    text("Bola baseball yang masih terlihat\n"+
      "seperti baru. Bola ini memiliki sedikit goresan\n"+
      "pada rajutannya karena tergores oleh\n"+
      "ranting pepohonan yang jatuh.\n\n"+
      "Bola ini dapat membuat hewan peliharaanmu\n"+
      "menjadi lebih sayang kepadamu :)", 0, 0);
    popMatrix();
  }
}
