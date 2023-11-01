abstract class pages{
  abstract void build();
  abstract void mouseClicked();
  abstract void mouseDragged();
  abstract void mouseReleased();
  abstract void mouseWheel(MouseEvent e);
  abstract void keyPressed();
}

class inventory extends pages{
  
  void build(){
    background(114, 120, 152);
    slots[idxSelected].selected = true;

    rectMode(CENTER);
    // Menampilkan preview
    pushMatrix();
    fill(71, 78, 118);
    translate(150, 70);
    square(100, 100, 200);
    stroke(43, 46, 72);
    strokeWeight(5);
    line(0, 0, 200, 0);
    line(200, 0, 200, 200);
    stroke(159, 162, 185);
    strokeWeight(5);
    line(0, 0, 0, 200);
    line(0, 200, 200, 200);
    items[viewItem].preview();
    popMatrix();
    rectMode(CENTER);
    
    // tombol Observe
    if (items[viewItem].observable) {
      fill(52, 58, 106);
      stroke(159, 162, 185);
      strokeWeight(2);
      rect(250, 340, 220, 60);
      fill(255);
      textSize(40);
      text("OBSERVE", 165, 350);
      textSize(12);
    }


    // Menampilkan Box Desc
    pushMatrix();
    fill(65, 71, 124);
    translate(650, 150);
    stroke(159, 162, 185);
    strokeWeight(5);
    rect(250, 70, 1000, 350, 200);
    line(-160, -90, 650, -90);
    line(-160, 230, 650, 230);
    line(245, -70, 245, 200);
    line(-190, -70, -190, 200);
    line(670, -70, 670, 200);
    arc(-172, -80, 35, 38, radians(-38), radians(155));
    arc(-172, 209, 38, 41, radians(-163), radians(70));
    arc(657, -80, 30, 30, radians(12), radians(211));
    arc(652, 207, 38, 38, radians(-267), radians(-22));
    line(-210, -20, -210, 150);
    line(690, -20, 690, 150);
    line(-230, -0, -230, 130);
    line(710, -0, 710, 130);
    rect(250, 70, 43, 60, 100);
    textSize(30);
    fill(255);
    text(items[viewItem].name, -160, -20);
    pushMatrix();
    translate(-160, 15);
    textSize(20);
    items[viewItem].stats();
    translate(440, -25);
    items[viewItem].desc();
    popMatrix();



    // membuat border di pinggir
    stroke(49, 53, 85);
    strokeWeight(30);
    line(-646, -130, 948, -130);
    line(-646, 734, 948, 734);
    line(-636, -144, -636, 734);
    line(938, -144, 938, 738);
    popMatrix();
    
    for (places slot : slots) slot.build(); // menampilkan slot item
    for (item item : items)
    {
      item.thumbnail();
      if(item.consumable == true){
        if(((countable)item).quantity != 1){
          textSize(20);
          fill(255);
          text(((countable)item).quantity, item.box.x-45, item.box.y+40);
        }
      }
    }; // menampilkan thumbnail

    fill(0);
    text("X : " +mouseX, 0,30);
    text("Y : " +mouseY, 0,70);
  }
  
  
  
  void mouseClicked(){
    for (int i = items.length - 1; i > -1; i--) {
      if (items[i].getBox()) {
        viewItem = i;
        slots[idxSelected].selected = false;
        idxSelected = items[i].box.id;
        audioClick.play();
        break;
      }
    }

    if (items[viewItem].observable &&
      mousePos(130, 345, 310, 365)) hal = new observe();
  }
  
  
  
  void mouseDragged(){
    if (selected == -1) {
      if (!firstGet) return;
      for (int i = items.length - 1; i > -1; i--) {
        if (items[i].getBox() &&
          items[i].getClass() != new air(0, 0, null).getClass()) {
          selected = i;
          break;
        }
        firstGet = false;
      }
    } else {
      items[selected].x = mouseX;
      items[selected].y = mouseY;
    }
  }
  
  
  
  void mouseReleased(){
    firstGet = true;
    if (selected != -1) {
      for (places slot : slots) {
        if (slot.getPos()) {
          int item = getPlaceOwner(slot);
          items[item].box = items[selected].box;
          items[item].x = items[item].box.x;
          items[item].y = items[item].box.y;
          items[selected].box = slot;
          break;
        }
      }
      items[selected].x = items[selected].box.x;
      items[selected].y = items[selected].box.y;
    }

    focus();

    selected = -1;
  }
  
  
  
  void mouseWheel(MouseEvent e){};
  
  
  
  void keyPressed(){
    if (key == CODED || key == 'w' || key == 'a'
      || key == 'd' || key == 's') {
      if (keyCode == UP || key == 'w') {
        keyNav(idxSelected - 9 <= 0,
               20 + idxSelected,
               idxSelected - 10);
               
      } else if (keyCode == RIGHT || key == 'd') {
        keyNav(idxSelected == 29,
               0,
               idxSelected + 1);
               
      } else if (keyCode == LEFT || key == 'a') {
        keyNav(idxSelected == 0,
               29,
               idxSelected - 1);
               
      } else if (keyCode == DOWN || key == 's') {
        keyNav(idxSelected + 10 >= 30,
               idxSelected - 20,
               idxSelected + 10);
               
      }
    }
    
    if (key == 'q' || key == 't') {
      for (int i = items.length - 1; i > -1; i--) {
        if (items[i].box.id == idxSelected) {
          
          if(items[i].consumable == true && key == 'q'){
            if(((countable)items[i]).foodItem){
              ((countable)items[i]).quantity -= 1;
              
              if(((countable)items[i]).quantity == 0){
                items[i] = addItem(0, idxSelected);
              }
            }
          }
          if(key == 't'){
            items[i] = addItem(0, idxSelected);
          }
          break;
        }
      }
     }

    focus();
  };
}





class observe extends pages{
  void build(){
    background(0);

    // tombol kembali ke tampilan 2d
    pushMatrix();
      translate(30, 50, 10);
  
      noStroke();
      fill(150, 0, 0);
      quad(40, -18, 45, -14, 45, 24, 40, 20);
      quad(4, 25, 0, 20, 45, 20, 44, 25);
      fill(215, 0, 0);
      rect(20, 0, 40, 40);
  
      fill(255);
      textSize(26);
      text("x", 13, 7);
    popMatrix();
      
      
    // tombol light
    pushMatrix();
      translate(90, 50, 10);
  
      noStroke();
      fill(201, 171, 0);
      quad(40, -18, 45, -14, 45, 24, 40, 20);
      quad(4, 25, 0, 20, 45, 20, 44, 25);
      fill(245, 209, 0);
      rect(20, 0, 40, 40);

      pushMatrix();
        translate(10, -13, 0);
        image(lightIcon, 0, 0, 24, 24);
      popMatrix();
    popMatrix();
      
      
      // tampilan 3D
      pushMatrix();
        strokeWeight(2);
        stroke(150);
        translate(width/2, height/2, 0);
        rotateY(rotY);
        rotateX(rotX);
    
        scale(scaleFactor);
    
        noFill();
        stroke(50);
        box(1000);
    
        pushMatrix();
        fill(255);
        stroke(255);
        translate(0, 250, 0);
        beginShape();
        vertex(100, 100);
        endShape();
      popMatrix();
  
      items[viewItem].observe();
    popMatrix();
  }
  
  
  
  void mouseClicked(){
    if (mousePos(20, 60, 25, 70)) hal = new inventory();
    if (mousePos(20, 60, 80, 125));
  }
  
  
  
  void mouseDragged(){
    if (!dragObserve) {
      xNow = mouseX;
      yNow = mouseY;
      rotYNow = rotY;
      rotXNow = rotX;
    }
    dragObserve = true;
    rotY = rotYNow + (xNow - mouseX)/100;
    rotX = rotXNow + (yNow - mouseY)/100;
  }
  
  
  void mouseReleased(){
    dragObserve = false;
    xNow = 0;
    yNow = 0;
  }
  
  
  void mouseWheel(MouseEvent e){
    float delta = e.getCount() > 0 ? 1.05 : e.getCount() < 0 ? 1.0/1.05 : 1.0;
    scaleFactor *= delta;
    
    if(scaleFactor >= scaleMin && scaleFactor <= scaleMax){
      scaleFactor *= delta;
    } else {
      scaleFactor = 1.0;
    }
    
    translateX = (delta*translateX) + mouseX * (1 - delta);
    translateY = (delta*translateY) + mouseY * (1 - delta);
  }
  
  void keyPressed(){
    if (key == 'r') {
      scaleFactor = 1;
      translateX = 0.0;
      translateY = 0.0;
      audioClick.play();
    }
  }
}
