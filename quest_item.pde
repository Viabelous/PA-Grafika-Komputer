class bsoj extends item {
  bsoj(int xI, int yI, places boxI){
    super(xI, yI, boxI,
    "Broken Sword of Judgement",
    true);
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
  

  void observe(){
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
      for(int i = 0; i <= 6; i++){
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
  
  void stats(){
    text("Tipe: Quest Item", 0, 0);
  }
  
  void desc(){
    text("Sebuah pedang yang tak pernah berkarat milik\n"+
         "Dewi Keadilan, Themis.\n\n"+
         "Bilahnya yang mengkilap namun retak itu seakan\n"+
         "berbisik:\n"+
         "\"Keadilan telah disirnakan oleh desersi\"", 0, 0);
  }
}
