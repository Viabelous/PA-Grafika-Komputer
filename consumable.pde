class carrot extends consumable {
  carrot(int xI, int yI, places boxI, int quanI) {
    super(xI, yI, boxI,
      "Carrot",
      false, quanI);
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
  }
  
  void stats() {
    text("Tipe: Sayuran", 0, 0);
  }

  void desc() {
    text("Bahkan sebuah wortel yang akan\n"+
         "menyelamatkanmu disaat masa-masa kritis", 0, 0);
  }
}
