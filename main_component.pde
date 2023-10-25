abstract class item {
  int x;
  int y;
  places box;
  boolean observable;
  
  item(int xI, int yI, places boxI, boolean obsI){
    x = xI;
    y = yI;
    box = boxI;
    observable = obsI;
  }
  
  abstract void thumbnail();
  abstract void preview();
  void observe(){}
  

  
  boolean getBox(){
    return box.getPos();
  }
}

class places{
  int id;
  int x;
  int y;
  int size;
  
  places(int idI, int xI, int yI, int sizeI){
    id = idI;
    x = xI;
    y = yI;
    size = sizeI;
  }
  
  void build(){
    rectMode(CENTER);
    noFill();
    stroke(150);
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
    super(xI, yI, boxI, false);
  }
  
  void preview(){}
  void thumbnail(){}
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
  
  return "    ";
}
