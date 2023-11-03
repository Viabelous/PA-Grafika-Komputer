class squamaManitis extends countable {
  squamaManitis(int xI, int yI, int quanI) {
    super(xI, yI,
      "Squama Manitis",
      "uncommon",
      false, quanI, false);
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
  bombby(int xI, int yI, int quan){
    super(xI, yI,
    "Bombby",
    "uncommon",
    false, quan, false);
  }
  
  void preview(){
    pushMatrix();
    scale(0.4);
    build();
    popMatrix();
  };
  
  void thumbnail(){
    pushMatrix();
    translate(x-50, y-50);
    scale(0.2);
    build();
    popMatrix();
  }
  
  void build(){
    pushMatrix();

    stroke(0);
    strokeWeight(4);
    scale(2.1);
    translate(-144,-54);
    
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
  void observe(){
    pushMatrix();

    // ... kodingan untuk tampilan 3D

    popMatrix();
  }



  void stats(){

    // ... kodingan untuk teks stat

  }



  void desc(){

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
      "uncommon",
      false, quanI, false);
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
  
  
  void stats(){
    text("Dapat digunakankan sebagai bahan\n"+
    "enchantment dan dapat dilelehkan untuk\n"+
    "membuat atribut.", 0, 0);
  }
  
  
  void desc(){
    pushMatrix();
    textSize(19);
    translate(0, 30);
    text("Batu sapphire berwarna biru laut yang dapat\n"+
         "ditemukandi kedalaman +2500m sampai\n"+
         "dengan kedalaman +4000m yang merupakan\n"+
         "area mining sapphire.\n", 0, 0);
         //"penempa, sayangnya sisik ini tidak sekuat\n"+
         //"benda logam dalam menahan panas sehingga\n"+
         //"perlu keahlian khusus jika ingin menempanya.", 0, 0);
    popMatrix();
  }
}
