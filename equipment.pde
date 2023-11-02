class nightwalkersSight extends item {
  int gearRot = 0;
  int lensClr = 0;
  boolean lensBright = true;
  
  nightwalkersSight(int xI, int yI){
    super(xI, yI,
    "Nightwalkers Sight",
    "unique",
    false);
  }
  
  
  void preview(){
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
    for(int i = 0; i < 7; i++){
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
    if(lensClr == 0){
      lensBright = true;
    } else if(lensClr == 255){
      lensBright = false;
    }

    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }
  
  
  void thumbnail(){
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
    for(int i = 0; i < 7; i++){
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



  void stats(){
    text("Tipe: Helmet\n"+
         icon("def", 0, 30)+"DEF +20\n\n"+
         "Saat dikenakan, akan dapat melihat\n"+
         "di kegelapan.", 0, 0);

  }



  void desc(){
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



class emeraldWings extends item {
  
  float randX = 250;
  float randY = 250;
  int resh = 130;
  boolean toogleResh = true;
  
  emeraldWings(int xI, int yI){
    super(xI, yI,
    "Emerald Wings",
    "rare",
    false);
    super.discardable = false;
  }
  
  void sparkle(){
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
    
      if(resh < 130){
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
      
      if(toogleResh){
        resh -= 1;
      } else if(!toogleResh){
        resh+= 1;
      }
    popMatrix();
  }
  
  void preview(){
    pushMatrix();
    translate(-20, -20);
    scale(0.5);
    
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
      
      fill(255);
      stroke(69, 142, 86);
      sparkle();
      
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }
  
  
  void thumbnail(){
    pushMatrix();
    translate(x-62, y-62);
    scale(0.25);
      
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
      
      fill(255);
      stroke(69, 142, 86);
      
      
      
    translate(10, 50);
    stroke(0);
    strokeWeight(2);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }



  void stats(){
    text("Tipe: Cape", 0, 0);
  }



  void desc(){
    text("Sayap berwarna emerald yang dapat berkamuflase\n"+
         "dengan dedaunan pohon maupun semak-semak.\n\n"+
         "\"Item ini dapat dipajang sebagai dekorasi.\"", 0, 0);
  }
  
}
