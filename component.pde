abstract class item {
  int x;
  int y;
  places box;
  String name;
  boolean observable;
  
  item(int xI, int yI, places boxI,
       String nameI, boolean obsI){
    x = xI;
    y = yI;
    box = boxI;
    name = nameI;
    observable = obsI;
  }
  
  abstract void thumbnail();
  abstract void preview();
  void observe(){}
  abstract void stats();
  abstract void desc();
  

  
  boolean getBox(){
    return box.getPos();
  }
}

class places{
  int id;
  int x;
  int y;
  int size;
  boolean selected = false;
  
  places(int idI, int xI, int yI, int sizeI){
    id = idI;
    x = xI;
    y = yI;
    size = sizeI;
  }
  
  void build(){
    rectMode(CENTER);
    if(!selected){
      stroke(190,192,188);
    } else{
      stroke(241, 250, 15);
    }
    strokeWeight(2);
    fill(71,78,118);
    square(x, y, size);
  }
  
  boolean getPos(){
    return(mousePos(x-size/2, x+size/2, y-size/2, y+size/2));
  }
}



boolean mousePos(int xLeft, int xRight, int yUp, int yDown){
  return(mouseX >= xLeft && mouseX <= xRight &&
         mouseY >= yUp && mouseY <= yDown);
}



int getPlaceOwner(places p){
  int i = -1;
  for (item item : items) {
    i++;
    if(item.box.equals(p)) return i;
  }
  return -1;
}



class air extends item {
  air(int xI, int yI, places boxI){
    super(xI, yI, boxI,
    "",
     false);
  }
  
  void preview(){}
  void thumbnail(){}
  void stats(){}
  void desc(){}
}



String Icon(String namaIcon, int x, int y, float scl){
  pushMatrix();
  scale(scl);
  translate(x, y);
  if(namaIcon == "atk"){}
  else if(namaIcon == "heal"){}
  else if(namaIcon == "mana"){}
  else if(namaIcon == "deffend"){}
  else if(namaIcon == "speed"){}
  else if(namaIcon == "inventory"){}
  popMatrix();
  
  return "     ";
}


void focus(){
  for (int i = items.length - 1; i > -1; i--) {
    if (items[i].box.id == idxSelected) {
      viewItem = i;
      idxSelected = items[i].box.id;
      break;
    }
  }
}



item addItem(int id, int ids){
  if(id == 0) return new air(slots[ids].x, slots[ids].y, slots[ids]);
  if(id == 1) return new pond_hammer(slots[ids].x, slots[ids].y, slots[ids]);
  if(id == 2) return new kunai(slots[ids].x, slots[ids].y, slots[ids]);
  if(id == 3) return new bsoj(slots[ids].x, slots[ids].y, slots[ids]);
  return null;
}
