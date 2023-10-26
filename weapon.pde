class pond_hammer extends item {
  pond_hammer(int xI, int yI, places boxI){
    super(xI, yI, boxI,
    "Pond Hammer",
    "test1",
    "test2",
    false);
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
      curveVertex(72,  105);
      curveVertex(402,  281);
      curveVertex(436,  106);
      curveVertex(86,  96);
      vertex(113, 42);
      curveVertex(647,  325);
      curveVertex(113,  42);
      curveVertex(77,  201);
      curveVertex(489,  108);
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
}



class kunai extends item {
  kunai(int xI, int yI, places boxI){
    super(xI, yI, boxI,
    "Kunai",
    "test3",
    "test4",
    false);
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
      scale(1.1);
      strokeWeight(2);
      
      fill(180);
      quad(236, 220, 316, 326, 288, 351, 201, 248);
      
      beginShape();
      vertex(237, 222);
      vertex(250, 154);
      vertex(50, 35);
      vertex(120, 244);
      vertex(203, 250);
      endShape();
      
      noFill();
      strokeWeight(30);
      stroke(180);
      circle(324, 369, 71);
      
      strokeWeight(2);
      stroke(0);
      
      arc(324, 370, 100, 100, radians(-104), radians(211), OPEN);
      circle(325, 369, 43);
      
      stroke(225);
      line(248, 155, 165, 160);
      line(52, 38, 165, 160);
      line(121, 242, 165, 160);
    popMatrix();
    strokeWeight(1);
    stroke(0);
    fill(0);
  }
}
