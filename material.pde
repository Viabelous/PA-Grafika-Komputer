class squamaManitis extends consumable {
  squamaManitis(int xI, int yI, places boxI, int quanI) {
    super(xI, yI, boxI,
      "Squama Manitis",
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

class bombby extends consumable { 
  bombby(int xI, int yI, places boxI, int quan){
    super(xI, yI, boxI, 
    "Bombby",  // Sesuaikan
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

    // ... kodingan untuk teks deskripsi

  }
}
